package com.idm.fotaagent.enabler.ui.utagent;

import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.C0109a;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.Z;
import com.idm.fotaagent.enabler.ui.utagent.data.IDMUTAgentRepository;
import com.samsung.android.fotaagent.common.log.Log;
import com.wssyncmldm.R;
import e.AbstractActivityC0410n;
import e.AbstractC0397a;

/* loaded from: classes.dex */
public class IDMUTAgentActivity extends AbstractActivityC0410n {
    private static final String TAG = "FRAGMENT_FOR_UTAGENT_ACTIVITY";

    @Override // e.AbstractActivityC0410n, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        Log.I("");
        super.onConfigurationChanged(configuration);
    }

    @Override // androidx.fragment.app.G, androidx.activity.ComponentActivity, y.h, android.app.Activity
    public void onCreate(Bundle bundle) {
        IDMUTAgentFragment iDMUTAgentFragment;
        Log.I("");
        super.onCreate(bundle);
        AbstractC0397a supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.o(R.string.WSS_RSR_STR_MENU_UTAgentTitle);
        }
        Z supportFragmentManager = getSupportFragmentManager();
        Fragment fragmentB = supportFragmentManager.B(TAG);
        if (fragmentB != null) {
            iDMUTAgentFragment = (IDMUTAgentFragment) fragmentB;
        } else {
            C0109a c0109a = new C0109a(supportFragmentManager);
            IDMUTAgentFragment iDMUTAgentFragment2 = new IDMUTAgentFragment();
            c0109a.c(android.R.id.content, iDMUTAgentFragment2, TAG, 1);
            c0109a.e(true);
            iDMUTAgentFragment = iDMUTAgentFragment2;
        }
        new IDMUTAgentPresenter(iDMUTAgentFragment, new IDMUTAgentRepository(this));
    }
}
