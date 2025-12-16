package com.idm.fotaagent.enabler.ui.admin.main;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import androidx.preference.Preference;
import androidx.preference.n;
import androidx.preference.o;
import androidx.preference.z;
import com.idm.fotaagent.database.sqlite.database.mo.a;
import com.idm.fotaagent.utils.DeviceUtils;
import com.samsung.android.fotaagent.common.log.Log;
import com.wssyncmldm.R;
import java.util.Objects;
import java.util.function.BiConsumer;
import x2.C0906a;
import x2.C0907b;
import x2.C0908c;

/* loaded from: classes.dex */
public class AdminMainFragment extends z {
    private <U> void applyMethodToPreference(int i5, BiConsumer<Preference, U> biConsumer, U u5) {
        try {
            biConsumer.accept(findPreference(i5), u5);
        } catch (IllegalArgumentException | NullPointerException e5) {
            Log.printStackTrace(e5);
        }
    }

    private void disablePreferenceOf(int i5) {
        applyMethodToPreference(i5, new a(9), Boolean.FALSE);
    }

    private Preference findPreference(int i5) {
        Context context = getContext();
        Objects.requireNonNull(context, "failed to get key for preference since context is null");
        String string = context.getString(i5);
        Preference preferenceFindPreference = findPreference(string);
        Objects.requireNonNull(preferenceFindPreference, "failed to find preference for " + string);
        return preferenceFindPreference;
    }

    private void setOnPreferenceChangeListener(int i5, n nVar) {
        applyMethodToPreference(i5, new a(10), nVar);
    }

    private void setOnPreferenceClickListenerFor(int i5, o oVar) {
        applyMethodToPreference(i5, new a(8), oVar);
    }

    @Override // androidx.preference.z
    public void onCreatePreferences(Bundle bundle, String str) throws Resources.NotFoundException {
        Log.I("");
        setPreferencesFromResource(R.xml.admin_main, str);
        if (DeviceUtils.isUserShipBinary()) {
            disablePreferenceOf(R.string.dm_settings);
        }
        setOnPreferenceClickListenerFor(R.string.download_and_install, new C0908c(1));
        setOnPreferenceClickListenerFor(R.string.sideload, new C0908c(0));
        setOnPreferenceChangeListener(R.string.command, new C0907b());
        setOnPreferenceClickListenerFor(R.string.device_status, new C0906a(getActivity()));
    }
}
