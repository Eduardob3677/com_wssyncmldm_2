package com.idm.fotaagent.abupdate.abenabler;

import B.f;
import D1.b;
import android.content.Context;
import android.text.TextUtils;
import com.idm.agent.dl.DLResultCode;
import com.idm.agent.dl.IDMDlInterface;
import com.idm.fotaagent.IDMApplication;
import com.idm.fotaagent.abupdate.abenabler.fumo.exception.insufficientmemory.AllocateFailedException;
import com.idm.fotaagent.abupdate.abenabler.utils.UpdateEngineWakeLockManager;
import com.idm.fotaagent.abupdate.abenabler.utils.metadata.MetadataDownloader;
import com.idm.fotaagent.abupdate.enablerinterface.MemoryHandler;
import com.idm.fotaagent.abupdate.manager.EnablerManager;
import com.idm.fotaagent.abupdate.updateengine.ErrorCode;
import com.idm.fotaagent.abupdate.updateengine.UpdateStatus;
import com.idm.fotaagent.analytics.samsunganalytics.SALogging;
import com.idm.fotaagent.database.room.data.repository.FotaJobRepository;
import com.idm.fotaagent.database.room.data.repository.GeneralRepository;
import com.idm.fotaagent.database.room.data.repository.InstallParamRepository;
import com.idm.fotaagent.enabler.fumo.DLReporter;
import com.idm.fotaagent.enabler.fumo.IDMFumoExecuteHandler;
import com.idm.fotaagent.enabler.fumo.exception.dd.InvalidDownloadDescriptorException;
import com.idm.fotaagent.enabler.fumo.exception.insufficientmemory.InsufficientMemoryException;
import com.idm.fotaagent.enabler.fumo.exception.insufficientmemory.InvalidStateException;
import com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorDownloadDescriptor;
import com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorDownloadInProgress;
import com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorDownloadPause;
import com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorFumoStart;
import com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorReportDownloadResult;
import com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorUpdateInProgress;
import com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorUpdateToReporting;
import com.idm.fotaagent.enabler.fumo.memory.FumoMemoryHandler;
import com.idm.fotaagent.enabler.fumo.uimanager.taskevent.IDMFumoTaskDownloadInProgress;
import com.idm.fotaagent.enabler.fumo.uimanager.taskevent.IDMFumoTaskDownloadRetryConfirm;
import com.idm.fotaagent.enabler.network.DLNetworkChecker;
import com.idm.fotaagent.enabler.network.NetworkBlockedType;
import com.idm.fotaagent.enabler.ui.IDMUIManager;
import com.idm.fotaagent.enabler.ui.interfaces.IDMUIEventInterface;
import com.idm.fotaagent.enabler.ui.notification.manager.NotificationType;
import com.idm.fotaagent.enabler.ui.notification.manager.NotificationTypeManager;
import com.idm.fotaagent.receiver.dynamic.BatteryChangeReceiver;
import com.idm.fotaagent.receiver.dynamic.IDMDynamicReceivers;
import com.idm.fotaagent.receiver.dynamic.ReceiverToBeSpecifiedFlag;
import com.idm.fotaagent.scheduler.IDMSchedulerHandler;
import com.idm.fotaagent.scheduler.interfaces.IDMSchedulerInterface;
import com.idm.fotaagent.scheduler.jobschedule.NetworkResumeJobScheduleManager;
import com.idm.fotaagent.utils.DeviceUtils;
import com.idm.fotaagent.utils.NetworkUtil;
import com.idm.fotaagent.utils.RebootChecker;
import com.idm.fotaagent.utils.ToastHelper;
import com.idm.fotaagent.utils.UpdateResultUtils;
import com.idm.fotaagent.utils.battery.BatteryChecker;
import com.idm.fotaagent.utils.network.WifiNetworkId;
import com.idm.fotaagent.utils.temperature.TemperatureChecker;
import com.samsung.android.fotaagent.common.log.Log;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public class Executor {
    private static NetworkType prevNetworkType = NetworkType.WIFI;

    public static class AB {

        public static class DownloadDescriptor extends IDMFumoExecutorDownloadDescriptor {
            public DownloadDescriptor(String str) {
                super(str);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$checkMemoryAndStartDownloading$0() {
                try {
                    UpdateEngineWakeLockManager.get().acquireWakeLockIfNeeded();
                    EnablerManager.getInstance().setUpdateStatus(UpdateStatus.EngineStatus.PREPARING_UPDATE.getStatus());
                    MemoryHandler.createInstance(this.taskId, FumoMemoryHandler.CheckStatus.DOWNLOADABLE).check();
                    if (Executor.isUpdateEngineDownloadPossible(this.taskId)) {
                        EnablerManager.getInstance().applyPayload(WifiNetworkId.getNetworkId());
                        TemperatureChecker temperatureChecker = IDMApplication.getEnablerFactory().getTemperatureChecker();
                        SALogging.send(temperatureChecker.getEventIdStartDownload(), temperatureChecker.getTemperature());
                    } else {
                        EnablerManager.getInstance().setUpdateStatus(UpdateStatus.EngineStatus.IDLE.getStatus());
                    }
                } catch (InsufficientMemoryException e5) {
                    Log.printStackTrace(e5);
                    EnablerManager.getInstance().setUpdateStatus(UpdateStatus.EngineStatus.IDLE.getStatus());
                    UpdateEngineWakeLockManager.get().releaseWakeLock();
                    ErrorCode.NOT_ENOUGH_SPACE.reportForFailureToDLDM();
                } catch (InvalidStateException e6) {
                    Log.printStackTrace(e6);
                    EnablerManager.getInstance().setUpdateStatus(UpdateStatus.EngineStatus.IDLE.getStatus());
                    UpdateEngineWakeLockManager.get().releaseWakeLock();
                    if (e6 instanceof AllocateFailedException) {
                        ErrorCode.of(((AllocateFailedException) e6).getErrorCode()).reportForFailureToDLDM();
                        return;
                    }
                    if (!(e6 instanceof MetadataDownloader.DownloadFailedException)) {
                        if ((e6 instanceof MetadataDownloader.DownloadSuspendedException) || (e6 instanceof MetadataDownloader.AlreadyDownloadingException)) {
                            return;
                        }
                        ErrorCode.ERROR.reportForFailureToDLDM();
                        return;
                    }
                    if (TextUtils.isEmpty(e6.getMessage()) || !e6.getMessage().contains("No space left on device")) {
                        ErrorCode.METADATA_DOWNLOAD_FAILED.reportForFailureToDLDM();
                    } else {
                        ErrorCode.NOT_ENOUGH_SPACE.reportForFailureToDLDM();
                    }
                }
            }

            @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorDownloadDescriptor
            public void checkMemoryAndStartDownloading() {
                new IDMFumoExecuteHandler(this.taskId).callbackIfPossible(30, null);
                if (Executor.isMetadataDownloadPossible(this.taskId)) {
                    new IDMFumoTaskDownloadInProgress(this.taskId).execute();
                    new Thread(new b(14, this)).start();
                }
            }
        }

        public static class DownloadPause extends IDMFumoExecutorDownloadPause {
            public DownloadPause(String str) {
                super(str);
            }

            @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorDownloadPause
            public void startFumo() {
                Log.I("");
                EnablerManager.getInstance().suspend();
            }
        }

        public static class DownloadProgress extends IDMFumoExecutorDownloadInProgress {
            public DownloadProgress(String str, int i5) {
                super(str, i5);
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$checkMemoryAndStartDownloading$0() {
                try {
                    UpdateEngineWakeLockManager.get().acquireWakeLockIfNeeded();
                    EnablerManager.getInstance().setUpdateStatus(UpdateStatus.EngineStatus.PREPARING_UPDATE.getStatus());
                    MemoryHandler.createInstance(this.taskId, FumoMemoryHandler.CheckStatus.DOWNLOADABLE).check();
                    if (Executor.isUpdateEngineDownloadPossible(this.taskId)) {
                        EnablerManager.getInstance().resume(WifiNetworkId.getNetworkId());
                    } else {
                        EnablerManager.getInstance().setUpdateStatus(UpdateStatus.EngineStatus.IDLE.getStatus());
                    }
                } catch (InsufficientMemoryException e5) {
                    Log.printStackTrace(e5);
                    EnablerManager.getInstance().setUpdateStatus(UpdateStatus.EngineStatus.IDLE.getStatus());
                    UpdateEngineWakeLockManager.get().releaseWakeLock();
                    ErrorCode.NOT_ENOUGH_SPACE.reportForFailureToDLDM();
                } catch (InvalidStateException e6) {
                    Log.printStackTrace(e6);
                    EnablerManager.getInstance().setUpdateStatus(UpdateStatus.EngineStatus.IDLE.getStatus());
                    UpdateEngineWakeLockManager.get().releaseWakeLock();
                    if (e6 instanceof AllocateFailedException) {
                        ErrorCode.of(((AllocateFailedException) e6).getErrorCode()).reportForFailureToDLDM();
                        return;
                    }
                    if (!(e6 instanceof MetadataDownloader.DownloadFailedException)) {
                        if ((e6 instanceof MetadataDownloader.DownloadSuspendedException) || (e6 instanceof MetadataDownloader.AlreadyDownloadingException)) {
                            return;
                        }
                        ErrorCode.ERROR.reportForFailureToDLDM();
                        return;
                    }
                    if (TextUtils.isEmpty(e6.getMessage()) || !e6.getMessage().contains("No space left on device")) {
                        ErrorCode.METADATA_DOWNLOAD_FAILED.reportForFailureToDLDM();
                    } else {
                        ErrorCode.NOT_ENOUGH_SPACE.reportForFailureToDLDM();
                    }
                }
            }

            private void resumeUpdate() {
                if (Executor.needsNetwork() && DLNetworkChecker.getInstance().shouldShow(DLNetworkChecker.ConfirmType.DOWNLOAD_RETRY_CONFIRM, this.taskId)) {
                    new IDMFumoTaskDownloadRetryConfirm(this.taskId).execute();
                } else {
                    idmFumoStart();
                }
            }

            @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorDownloadInProgress
            public void checkMemoryAndStartDownloading() {
                updateInformation(null);
                if (Executor.isMetadataDownloadPossible(this.taskId)) {
                    new IDMFumoTaskDownloadInProgress(this.taskId).execute();
                    new Thread(new b(15, this)).start();
                }
            }

            @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
            public void resumeByBattery() {
                resumeUpdate();
            }

            @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorDownloadInProgress, com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
            public void resumeByReboot() {
                resumeUpdate();
            }
        }

        public static class FumoStart extends IDMFumoExecutorFumoStart {
            public FumoStart(String str, int i5) {
                super(str, i5);
            }

            @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorFumoStart
            public void check(InstallParamRepository installParamRepository) throws InvalidDownloadDescriptorException {
                super.check(installParamRepository);
                if (installParamRepository.getOffset() < 0 || TextUtils.isEmpty(installParamRepository.getFileHash()) || installParamRepository.getFileSize() <= 0 || TextUtils.isEmpty(installParamRepository.getMetadataHash()) || installParamRepository.getMetadataSize() <= 0) {
                    throw new InvalidDownloadDescriptorException("AB update's attributes not found or invalid");
                }
            }
        }

        public static class ReportDownloadResult extends IDMFumoExecutorReportDownloadResult {
            public ReportDownloadResult(String str, int i5) {
                super(str, i5);
            }

            @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorReportDownloadResult, com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
            public void idmFumoStart() {
                Log.I("");
                DLReporter.ForSuccess.getInstance().report(this.taskId, DLResultCode.SUCCESS.getMessage());
            }

            @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorReportDownloadResult, com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
            public void resumeByNetwork() {
                Log.I("");
                DLReporter.ForSuccess.getInstance().report(this.taskId, DLResultCode.SUCCESS.getMessage());
            }

            @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorReportDownloadResult, com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
            public void resumeByReboot() {
                Log.I("");
                DLReporter.ForSuccess.getInstance().report(this.taskId, DLResultCode.SUCCESS.getMessage());
            }
        }

        public static class UpdateInProgress extends IDMFumoExecutorUpdateInProgress {
            private static boolean mergeNow = false;
            private final UpdateResultUtils updateResultUtils;

            public UpdateInProgress(String str) {
                super(str);
                this.updateResultUtils = new UpdateResultUtils();
            }

            private boolean changesDeviceVersion() {
                Log.I("prevDeviceVersion: " + new GeneralRepository(this.context).getPreviousFirmwareVersion() + ", currentDeviceVersion: " + DeviceUtils.readFirmwareVersion());
                return !r0.equals(r3);
            }

            private boolean changesSlotSuffix() {
                String slotSuffix = new FotaJobRepository(this.context).getSlotSuffix();
                String slotSuffix2 = DeviceUtils.getSlotSuffix();
                Log.I("prevSlotSuffix : " + slotSuffix + ", currentSlotSuffix : " + slotSuffix2);
                if (TextUtils.isEmpty(slotSuffix) || TextUtils.isEmpty(slotSuffix2)) {
                    Log.W("SlotSuffix is empty");
                    return false;
                }
                if (slotSuffix.equalsIgnoreCase(slotSuffix2)) {
                    Log.I("Same SlotSuffix");
                    return false;
                }
                Log.I("SlotSuffix has changed");
                return true;
            }

            private String convertResultCode(int i5) {
                if (i5 != 0) {
                    if (i5 == 1) {
                        return ErrorCode.MERGE_NEEDS_REBOOT.getDmResultCode();
                    }
                    if (i5 != 61) {
                        return IDMDlInterface.IDM_FOTA_GENERIC_UPDATE_FAILED;
                    }
                }
                return ErrorCode.of(i5).getDmResultCode();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public /* synthetic */ void lambda$setNotificationAndStartMergeCallbackListenerService$0() {
                synchronized (UpdateInProgress.class) {
                    waitMergeAndReport();
                }
            }

            private void setNotificationAndStartMergeCallbackListenerService() {
                if (mergeNow) {
                    Log.I("Already merging");
                    return;
                }
                NotificationTypeManager.notify(NotificationType.IDM_NOTIFICATION_AB_UPDATE_MERGE, this.taskId);
                new Thread(new b(16, this)).start();
                mergeNow = true;
            }

            private boolean updatesSuccessfully() {
                return changesSlotSuffix() || changesDeviceVersion();
            }

            private void waitMergeAndReport() {
                int iCleanupSuccessfulUpdate = EnablerManager.getInstance().cleanupSuccessfulUpdate();
                f.D("merge result : ", iCleanupSuccessfulUpdate);
                this.updateResultUtils.setUpdateResultCode(convertResultCode(iCleanupSuccessfulUpdate));
                super.resumeByReboot();
                mergeNow = false;
            }

            @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorUpdateInProgress, com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
            public void idmFumoStart() {
                Log.I("");
                if (updatesSuccessfully()) {
                    setNotificationAndStartMergeCallbackListenerService();
                    ToastHelper.showShortToast(this.context, this.context.getString(R.string.STR_FINISHING_PREVIOUS_UPDATE));
                } else if (RebootChecker.isBootIdChanged(this.context)) {
                    ErrorCode.SLOT_NOT_CHANGED.reportForFailureToDM();
                } else {
                    ErrorCode.REBOOT_FAILED.reportForFailureToDM();
                }
            }

            @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorUpdateInProgress, com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
            public void resumeByReboot() {
                Log.I("");
                TemperatureChecker temperatureChecker = IDMApplication.getEnablerFactory().getTemperatureChecker();
                SALogging.send(temperatureChecker.getEventIdFinishReboot(), temperatureChecker.getTemperature());
                if (updatesSuccessfully()) {
                    setNotificationAndStartMergeCallbackListenerService();
                } else if (RebootChecker.isBootIdChanged(this.context)) {
                    ErrorCode.SLOT_NOT_CHANGED.reportForFailureToDM();
                } else {
                    ErrorCode.REBOOT_FAILED.reportForFailureToDM();
                }
            }
        }

        public static class UpdateToReporting extends IDMFumoExecutorUpdateToReporting {
            public UpdateToReporting(String str) {
                super(str);
            }

            @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutorUpdateToReporting
            public void report() {
                if (!this.actionInfoDao.isTriggeredBySideload()) {
                    super.report();
                } else {
                    Log.I("download via the local file. do not report");
                    IDMSchedulerHandler.getInstance().idmSendMessage(IDMSchedulerInterface.IDM_SCHEDULE_EVENT.SCHEDULE_EVENT_SCHEDULE_FINISH, this.taskId, 0L);
                }
            }
        }
    }

    public enum NetworkType {
        WIFI,
        MOBILE
    }

    private static boolean isBatteryPossible(Context context, String str) {
        if (BatteryChecker.get(context).isEnoughBatteryToUpdate()) {
            return true;
        }
        Log.E("Low Battery");
        IDMDynamicReceivers.getInstance().register(BatteryChangeReceiver.class, ReceiverToBeSpecifiedFlag.Property.NOT_SPECIFY_FOR_SYSTEM);
        IDMUIManager.getInstance().sendDelayedDialogMessage(IDMUIEventInterface.UIDIALOG.IDM_DIALOG_LOW_BATTERY_TO_UPDATE);
        NotificationTypeManager.notify(NotificationType.IDM_NOTIFICATION_AB_UPDATE_FAIL_INSUFFICIENT_BATTERY, str);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isMetadataDownloadPossible(String str) {
        Context contextIdmGetContext = IDMApplication.idmGetContext();
        return isMetadataNetworkPossible(contextIdmGetContext, str) && isBatteryPossible(contextIdmGetContext, str);
    }

    private static boolean isMetadataNetworkPossible(Context context, String str) {
        if (!needsNetwork()) {
            return true;
        }
        NetworkBlockedType networkBlockedType = DLNetworkChecker.getInstance().getNetworkBlockedType(str);
        if (!networkBlockedType.isBlocked()) {
            prevNetworkType = NetworkUtil.isWiFiNetworkConnected(context) ? NetworkType.WIFI : NetworkType.MOBILE;
            return true;
        }
        Log.E("Network is not available");
        networkBlockedType.getFumoTaskEvent(str).execute();
        NetworkResumeJobScheduleManager.schedule(context);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean isUpdateEngineDownloadPossible(String str) {
        Context contextIdmGetContext = IDMApplication.idmGetContext();
        return isUpdateEngineNetworkPossible(contextIdmGetContext, str) && isBatteryPossible(contextIdmGetContext, str);
    }

    private static boolean isUpdateEngineNetworkPossible(Context context, String str) {
        if (!needsNetwork()) {
            return true;
        }
        if (prevNetworkType == (NetworkUtil.isWiFiNetworkConnected(context) ? NetworkType.WIFI : NetworkType.MOBILE)) {
            return true;
        }
        Log.I("Network has been changed");
        return DLNetworkChecker.getInstance().isDLRetriable(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean needsNetwork() {
        int iInstallationStep = new FotaJobRepository(IDMApplication.idmGetContext()).getUpdateInfo().installationStep();
        if (UpdateStatus.InstallationStep.of(iInstallationStep).needsNetwork()) {
            return true;
        }
        f.D("It doesn't require network. installationStep : ", iInstallationStep);
        return false;
    }
}
