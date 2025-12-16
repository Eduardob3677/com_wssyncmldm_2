package com.samsung.context.sdk.samsunganalytics.internal.setting;

import B.f;
import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import com.samsung.context.sdk.samsunganalytics.internal.policy.Validation;
import com.samsung.context.sdk.samsunganalytics.internal.util.Preferences;
import com.samsung.context.sdk.samsunganalytics.internal.util.Utils;
import h0.AbstractC0432c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class SettingLogReader {
    private static final int STATUS_LOG_BODY_LENGTH_LIMIT = 512;
    private final Set<String> appPrefNames;
    private final Context context;
    private final String threeDepthCollectionDelimiter;
    private final String twoDepthCollectionDelimiter;
    private final String twoDepthKeyValueDelimiter;

    public SettingLogReader(Context context) {
        this.context = context;
        this.appPrefNames = Preferences.getPreferences(context).getStringSet(Preferences.APP_PREF_NAMES, new HashSet());
        Utils.Depth depth = Utils.Depth.TWO_DEPTH;
        this.twoDepthKeyValueDelimiter = depth.getKeyValueDLM();
        this.twoDepthCollectionDelimiter = depth.getCollectionDLM();
        this.threeDepthCollectionDelimiter = Utils.Depth.THREE_DEPTH.getCollectionDLM();
    }

    private Set<String> getKeySet(String str) {
        return Preferences.getPreferences(this.context).getStringSet(str, new HashSet());
    }

    private SharedPreferences getPreference(String str) {
        return this.context.getSharedPreferences(str, 0);
    }

    private List<String> readFromApp() {
        String strValueOf;
        if (this.appPrefNames.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String strH = "";
        for (String str : this.appPrefNames) {
            SharedPreferences preference = getPreference(str);
            Set<String> keySet = getKeySet(str);
            for (Map.Entry<String, ?> entry : preference.getAll().entrySet()) {
                if (keySet.contains(entry.getKey())) {
                    Class<?> cls = entry.getValue().getClass();
                    if (!cls.equals(Integer.class) && !cls.equals(Float.class) && !cls.equals(Long.class) && !cls.equals(String.class) && !cls.equals(Boolean.class)) {
                        strValueOf = "";
                        for (String str2 : (Set) entry.getValue()) {
                            if (!TextUtils.isEmpty(strValueOf)) {
                                strValueOf = strValueOf + this.threeDepthCollectionDelimiter;
                            }
                            strValueOf = AbstractC0432c.h(strValueOf, str2);
                            if (strValueOf.length() >= 1024) {
                                break;
                            }
                        }
                    } else {
                        strValueOf = String.valueOf(entry.getValue());
                    }
                    String strCheckSizeLimit = Validation.checkSizeLimit(entry.getKey(), 100);
                    String strCheckSizeLimit2 = Validation.checkSizeLimit(strValueOf, 1024);
                    StringBuilder sb = new StringBuilder();
                    sb.append(strCheckSizeLimit);
                    String strW = f.w(sb, this.twoDepthKeyValueDelimiter, strCheckSizeLimit2);
                    if (!TextUtils.isEmpty(strH)) {
                        if (strW.length() + strH.length() > 512) {
                            arrayList.add(strH);
                            strH = "";
                        } else {
                            strH = strH + this.twoDepthCollectionDelimiter;
                        }
                    }
                    strH = AbstractC0432c.h(strH, strW);
                }
            }
        }
        if (!strH.isEmpty()) {
            arrayList.add(strH);
        }
        return arrayList;
    }

    public List<String> read() {
        return readFromApp();
    }
}
