package com.idm.fotaagent.enabler.ui.admin.deviceoverride;

import android.os.Bundle;
import androidx.preference.z;
import com.samsung.android.fotaagent.common.log.Log;
import com.wssyncmldm.R;

/* loaded from: classes.dex */
public class DeviceOverrideFragment extends z {
    @Override // androidx.preference.z
    public void onCreatePreferences(Bundle bundle, String str) {
        Log.I("DeviceOverrideFragment created");
        setPreferencesFromResource(R.xml.device_override_settings, str);
    }
}
