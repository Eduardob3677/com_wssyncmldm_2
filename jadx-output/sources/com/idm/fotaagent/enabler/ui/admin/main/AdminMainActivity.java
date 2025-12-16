package com.idm.fotaagent.enabler.ui.admin.main;

import android.R;
import android.os.Bundle;
import androidx.fragment.app.C0109a;
import androidx.fragment.app.Z;
import com.samsung.android.fotaagent.common.log.Log;
import e.AbstractActivityC0410n;

/* loaded from: classes.dex */
public class AdminMainActivity extends AbstractActivityC0410n {
    private static final String TAG = "FRAGMENT_FOR_ADMIN_MAIN_ACTIVITY";

    @Override // androidx.fragment.app.G, androidx.activity.ComponentActivity, y.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        Log.I("");
        super.onCreate(bundle);
        Z supportFragmentManager = getSupportFragmentManager();
        if (supportFragmentManager.B(TAG) == null) {
            C0109a c0109a = new C0109a(supportFragmentManager);
            c0109a.c(R.id.content, new AdminMainFragment(), TAG, 2);
            c0109a.e(true);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onSearchRequested() {
        return false;
    }
}
