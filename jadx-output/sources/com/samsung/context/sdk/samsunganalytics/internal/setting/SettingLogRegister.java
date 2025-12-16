package com.samsung.context.sdk.samsunganalytics.internal.setting;

import android.content.Context;
import android.content.SharedPreferences;
import com.samsung.context.sdk.samsunganalytics.internal.util.Debug;
import com.samsung.context.sdk.samsunganalytics.internal.util.Preferences;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class SettingLogRegister {
    private final Context context;

    public SettingLogRegister(Context context) {
        this.context = context;
    }

    public void registerLog(Map<String, Set<String>> map) {
        Debug.LogI("register setting status");
        SharedPreferences preferences = Preferences.getPreferences(this.context);
        Iterator<String> it = preferences.getStringSet(Preferences.APP_PREF_NAMES, new HashSet()).iterator();
        while (it.hasNext()) {
            preferences.edit().remove(it.next()).apply();
        }
        preferences.edit().remove(Preferences.APP_PREF_NAMES).apply();
        HashSet hashSet = new HashSet();
        for (Map.Entry<String, Set<String>> entry : map.entrySet()) {
            String key = entry.getKey();
            hashSet.add(key);
            preferences.edit().putStringSet(key, entry.getValue()).apply();
        }
        preferences.edit().putStringSet(Preferences.APP_PREF_NAMES, hashSet).apply();
    }
}
