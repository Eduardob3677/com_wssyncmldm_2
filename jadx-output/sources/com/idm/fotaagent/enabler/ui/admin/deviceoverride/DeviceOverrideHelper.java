package com.idm.fotaagent.enabler.ui.admin.deviceoverride;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public class DeviceOverrideHelper {
    private static final String PREF_NAME = "device_override_prefs";
    private static final String KEY_ENABLE = "Enable Device Override";
    private static final String KEY_IMEI = "Override IMEI";
    private static final String KEY_MEID = "Override MEID";
    private static final String KEY_MANUFACTURER = "Override Manufacturer";
    private static final String KEY_LANGUAGE = "Override Language";

    public static boolean isOverrideEnabled(Context context) {
        SharedPreferences prefs = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
        return prefs.getBoolean(KEY_ENABLE, false);
    }

    public static String getOverrideImei(Context context) {
        if (!isOverrideEnabled(context)) {
            return null;
        }
        SharedPreferences prefs = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
        String value = prefs.getString(KEY_IMEI, "");
        return value.isEmpty() ? null : value;
    }

    public static String getOverrideMeid(Context context) {
        if (!isOverrideEnabled(context)) {
            return null;
        }
        SharedPreferences prefs = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
        String value = prefs.getString(KEY_MEID, "");
        return value.isEmpty() ? null : value;
    }

    public static String getOverrideManufacturer(Context context) {
        if (!isOverrideEnabled(context)) {
            return null;
        }
        SharedPreferences prefs = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
        String value = prefs.getString(KEY_MANUFACTURER, "");
        return value.isEmpty() ? null : value;
    }

    public static String getOverrideLanguage(Context context) {
        if (!isOverrideEnabled(context)) {
            return null;
        }
        SharedPreferences prefs = context.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
        String value = prefs.getString(KEY_LANGUAGE, "");
        return value.isEmpty() ? null : value;
    }
}
