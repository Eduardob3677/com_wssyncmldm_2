package com.idm.fotaagent.enabler.fumo.executor;

import android.text.TextUtils;
import com.idm.fotaagent.LibraryStarter;
import com.idm.fotaagent.enabler.ui.notification.manager.NotificationType;
import com.idm.fotaagent.enabler.ui.notification.manager.NotificationTypeManager;
import com.idm.fotaagent.utils.EnablerUtils;
import com.idm.fotaagent.utils.GeneralUtils;
import com.samsung.android.fotaagent.common.log.Log;

/* loaded from: classes.dex */
public class IDMFumoExecutorReportDownloadResult extends IDMFumoExecutor {
    private final int nDownloadType;

    public IDMFumoExecutorReportDownloadResult(String str, int i5) {
        super(str);
        this.nDownloadType = i5;
    }

    @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
    public String getDefaultResultCode() {
        return String.valueOf(0);
    }

    public String getDmResultCode(int i5) {
        return EnablerUtils.convertDlResultCodeToDmResultCode(i5);
    }

    @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
    public void idmCallbackExecute(String str) {
        Log.I("");
        int i5 = this.nDownloadType;
        if (i5 == 1 || i5 == 2) {
            Log.I("");
            NotificationTypeManager.notify(NotificationType.IDM_NOTIFICATION_SYNC_DM, this.taskId);
            updateInformation(str);
        }
    }

    @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
    public void idmExecute(String str) {
        Log.I("");
        updateInformation(str);
        idmFumoStart();
    }

    @Override // com.idm.fotaagent.enabler.fumo.executor.IDMFumoExecutor
    public void idmFumoStart() {
        Log.I("");
        LibraryStarter.startDLTask(this.actionInfoDao.getActionInfo());
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
        this.actionInfoDao.setCommand(35);
        this.actionInfoDao.setFumoStatus(35);
        this.actionInfoDao.setDlReportCode(GeneralUtils.parseInt(str, Integer.valueOf(getDefaultResultCode()).intValue()));
        String dmResultCode = getDmResultCode(GeneralUtils.parseInt(str, Integer.valueOf(getDefaultResultCode()).intValue()));
        if (TextUtils.isEmpty(dmResultCode)) {
            return;
        }
        this.actionInfoDao.setDmResultCode(dmResultCode);
    }
}
