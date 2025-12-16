package com.idm.fotaagent.enabler.ui.dialog.model;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.widget.Button;
import com.idm.fotaagent.database.sqlite.database.dao.ActionInfoDao;
import com.idm.fotaagent.enabler.feature.ResourceGenerator;
import com.idm.fotaagent.enabler.fumo.IDMFumoExecuteHandler;
import com.idm.fotaagent.enabler.ui.dialog.IDMUIDialogContractor;
import com.idm.fotaagent.enabler.ui.dialog.model.IDMUIDialogModel;
import com.idm.fotaagent.enabler.ui.dialog.model.buttonstrategy.ButtonStrategy;
import com.idm.fotaagent.scheduler.jobschedule.NetworkResumeJobScheduleManager;
import com.idm.fotaagent.utils.NetworkUtil;
import com.samsung.android.fotaagent.common.log.Log;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public class DownloadRetryConfirmModel extends IDMUIDialogModel.Base {

    public static class ContinueButtonStrategy extends ButtonStrategy.Positive {
        private final String taskId;

        public ContinueButtonStrategy(String str) {
            super(IDMUIDialogModel.Base.getString(R.string.STR_BTN_CONTINUE));
            this.taskId = str;
        }

        @Override // com.idm.fotaagent.enabler.ui.dialog.model.buttonstrategy.ButtonStrategy.Positive, com.idm.fotaagent.enabler.ui.dialog.model.buttonstrategy.AbstractButtonStrategy
        public void doOnClick(DialogInterface dialogInterface, IDMUIDialogContractor.Presenter presenter) {
            super.doOnClick(dialogInterface, presenter);
            ActionInfoDao actionInfoDao = new ActionInfoDao(this.taskId);
            if (242 == actionInfoDao.getFumoStatus()) {
                Log.I("change fumo status from DOWNLOAD_PAUSE to DOWNLOAD_IN_PROGRESS");
                actionInfoDao.setFumoStatus(30);
            }
            NetworkResumeJobScheduleManager.cancel(IDMUIDialogModel.Base.getContext());
            new IDMFumoExecuteHandler(this.taskId).fumoStartIfPossible();
        }
    }

    public DownloadRetryConfirmModel(String str, boolean z4) {
        super(title(), message(z4), z4 ? ButtonStrategy.Neutral.NONE : new ButtonStrategy.StubCancelNeutral(), z4 ? new ButtonStrategy.StubCancelNegative() : new ButtonStrategy.WifiSettingNegative(), new ContinueButtonStrategy(str));
    }

    private static String message(boolean z4) {
        return IDMUIDialogModel.Base.getString(ResourceGenerator.get().getDownloadRetryMessageId(z4));
    }

    public static boolean shouldReplace(AlertDialog alertDialog) {
        Button button = alertDialog.getButton(-3);
        boolean z4 = button == null || button.getVisibility() != 0;
        Log.I("wasWifiConnected: " + z4 + ", isWifiConnected: " + NetworkUtil.isWiFiNetworkConnected(IDMUIDialogModel.Base.getContext()));
        return z4 != NetworkUtil.isWiFiNetworkConnected(IDMUIDialogModel.Base.getContext());
    }

    private static String title() {
        return IDMUIDialogModel.Base.getString(R.string.STR_FOTA_CONTINUE_DOWNLOADING_SOFTWARE_UPDATE);
    }
}
