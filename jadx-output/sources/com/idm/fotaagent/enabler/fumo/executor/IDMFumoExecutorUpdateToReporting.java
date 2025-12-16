package com.idm.fotaagent.enabler.fumo.executor;

import android.os.SemSystemProperties;
import com.idm.fotaagent.enabler.fumo.IDMFumoExecuteHandler;
import com.idm.fotaagent.enabler.fumo.IntentManager;
import com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor;
import com.idm.fotaagent.enabler.fumo.expiration.SessionExpirationManager;
import com.idm.fotaagent.enabler.fumo.postpone.PostponeManager;
import com.idm.fotaagent.enabler.ui.IDMUIManager;
import com.idm.fotaagent.enabler.ui.interfaces.IDMUIEventInterface;
import com.idm.fotaagent.enabler.ui.notification.manager.NotificationType;
import com.idm.fotaagent.enabler.ui.notification.manager.NotificationTypeManager;
import com.idm.fotaagent.enabler.ui.whatsnew.MajorUpdate;
import com.idm.fotaagent.utils.GeneralUtils;
import com.idm.fotaagent.utils.UpdateResultUtils;
import com.samsung.android.fotaagent.common.log.Log;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.samsung.android.knox.custom.ProKioskManager;

/* loaded from: classes.dex */
public class IDMFumoExecutorUpdateToReporting extends IDMFumoExecutor {
    private static final String EXTRA_UPDATE_REPORT_VZW = "SOFTWARE_UPDATE_COMPLETE";

    public IDMFumoExecutorUpdateToReporting(String str) {
        super(str, new IDMFumoExecutor.HistoryUpdater(str));
    }

    private boolean isOwnedByOrganizationOrIsKioskMode() {
        if ("true".equals(SemSystemProperties.get("ro.organization_owned", "false"))) {
            Log.I("Organization Owned");
            return true;
        }
        ProKioskManager proKioskManager = CustomDeviceManager.getInstance().getProKioskManager();
        if (proKioskManager == null || !proKioskManager.getProKioskState()) {
            return false;
        }
        Log.I("Kiosk Mode");
        return true;
    }

    private boolean showsUpdateReport() {
        return (MajorUpdate.FOR_WHATS_NEW.isMajorUpdate(this.context) && GeneralUtils.isSetupWizardInstalled(this.context) && !isOwnedByOrganizationOrIsKioskMode()) ? false : true;
    }

    @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
    public String getDefaultResultCode() {
        return null;
    }

    @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
    public void idmCallbackExecute(String str) {
        Log.I("");
    }

    @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
    public void idmExecute(String str) {
        Log.I("");
        idmFumoStart();
    }

    @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
    public void idmFumoStart() {
        Log.I("");
        PostponeManager.cancel();
        SessionExpirationManager.cancel(this.context);
        report();
        if (!showsUpdateReport()) {
            Log.I("Do not show report dialog because of major update");
        } else {
            NotificationTypeManager.notify(NotificationType.IDM_NOTIFICATION_UPDATE_REPORT, this.taskId);
            IDMUIManager.getInstance().sendDialogMessage(IDMUIEventInterface.UIDIALOG.IDM_DIALOG_UPDATE_REPORT);
        }
    }

    public void report() {
        Log.I("");
        IDMFumoExecuteHandler iDMFumoExecuteHandler = new IDMFumoExecuteHandler(this.taskId);
        UpdateResultUtils updateResultUtils = new UpdateResultUtils();
        String updateResultCode = updateResultUtils.getUpdateResultCode();
        updateInformation(updateResultCode);
        if (!updateResultUtils.isUpdateSucceeded()) {
            iDMFumoExecuteHandler.executeIfPossible(80, updateResultCode);
        } else {
            reportUpdateSuccessIfNeeded();
            iDMFumoExecuteHandler.executeIfPossible(100, updateResultCode);
        }
    }

    public void reportUpdateSuccessIfNeeded() {
        Log.I("");
        IntentManager.sendIntentIfSdmPackageExists(EXTRA_UPDATE_REPORT_VZW);
    }

    @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
    public void resumeByNetwork() {
        Log.I("");
        idmFumoStart();
    }

    @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
    public void resumeByReboot() {
        Log.I("");
        idmFumoStart();
    }

    @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
    public void updateActionInfo(String str) {
        Log.I("do nothing");
    }
}
