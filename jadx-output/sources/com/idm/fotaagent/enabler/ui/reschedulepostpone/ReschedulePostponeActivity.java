package com.idm.fotaagent.enabler.ui.reschedulepostpone;

import android.os.Bundle;
import android.os.PowerManager;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.Z;
import com.idm.fotaagent.enabler.ui.postpone.PostponeDialog;
import com.samsung.android.fotaagent.common.log.Log;
import e.AbstractActivityC0410n;

/* loaded from: classes.dex */
public class ReschedulePostponeActivity extends AbstractActivityC0410n implements PostponeDialog.RefreshListener {
    public static final String TAG_RESCHEDULE_POSTPONE_DIALOG = "ReschedulePostponeDialog";

    private void dismissPostponeDialogIfExists() {
        Fragment fragmentB = getSupportFragmentManager().B(TAG_RESCHEDULE_POSTPONE_DIALOG);
        if (fragmentB != null) {
            ((PostponeDialog) fragmentB).dismissAllowingStateLoss();
        }
    }

    private boolean isLcdOn() {
        PowerManager powerManager = (PowerManager) getSystemService("power");
        return powerManager != null && powerManager.isInteractive();
    }

    @Override // androidx.fragment.app.G, androidx.activity.ComponentActivity, y.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        Log.I(this);
        super.onCreate(bundle);
        String action = getIntent().getAction();
        Z supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager.B(TAG_RESCHEDULE_POSTPONE_DIALOG) == null) {
            PostponeDialog.newInstance(action).show(supportFragmentManager, TAG_RESCHEDULE_POSTPONE_DIALOG);
        }
    }

    @Override // e.AbstractActivityC0410n, androidx.fragment.app.G, android.app.Activity
    public void onStop() {
        Log.I(this);
        super.onStop();
        if (isLcdOn()) {
            dismissPostponeDialogIfExists();
        }
    }

    @Override // com.idm.fotaagent.enabler.ui.postpone.PostponeDialog.RefreshListener
    public void refresh() {
    }
}
