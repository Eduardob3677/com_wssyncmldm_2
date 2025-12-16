package com.google.firebase.messaging;

import android.text.TextUtils;
import android.util.Log;
import com.samsung.context.sdk.samsunganalytics.internal.util.Preferences;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: d, reason: collision with root package name */
    public static final long f6263d = TimeUnit.DAYS.toMillis(7);

    /* renamed from: a, reason: collision with root package name */
    public final String f6264a;

    /* renamed from: b, reason: collision with root package name */
    public final String f6265b;

    /* renamed from: c, reason: collision with root package name */
    public final long f6266c;

    public r(String str, String str2, long j3) {
        this.f6264a = str;
        this.f6265b = str2;
        this.f6266c = j3;
    }

    public static String a(String str, String str2, long j3) throws JSONException {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("token", str);
            jSONObject.put(Preferences.PREFS_KEY_APP_VERSION, str2);
            jSONObject.put("timestamp", j3);
            return jSONObject.toString();
        } catch (JSONException e5) {
            Log.w("FirebaseMessaging", "Failed to encode token: ".concat(e5.toString()));
            return null;
        }
    }

    public static r b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (!str.startsWith("{")) {
            return new r(str, null, 0L);
        }
        try {
            JSONObject jSONObject = new JSONObject(str);
            return new r(jSONObject.getString("token"), jSONObject.getString(Preferences.PREFS_KEY_APP_VERSION), jSONObject.getLong("timestamp"));
        } catch (JSONException e5) {
            Log.w("FirebaseMessaging", "Failed to parse token: ".concat(e5.toString()));
            return null;
        }
    }
}
