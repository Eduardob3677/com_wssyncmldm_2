package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.b;
import Y1.d;
import android.util.Log;
import c1.AbstractC0213D;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.q4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0326q4 implements X3 {

    /* renamed from: c, reason: collision with root package name */
    public final String f5699c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5700d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5701e;

    static {
        String simpleName = C0326q4.class.getSimpleName();
        String[] strArr = new String[0];
        if (strArr.length != 0) {
            StringBuilder sb = new StringBuilder();
            sb.append('[');
            for (String str : strArr) {
                if (sb.length() > 1) {
                    sb.append(",");
                }
                sb.append(str);
            }
            sb.append(']');
            sb.append(' ');
        }
        Object[] objArr = {simpleName, 23};
        if (!(simpleName.length() <= 23)) {
            throw new IllegalArgumentException(String.format("tag \"%s\" is longer than the %d character maximum", objArr));
        }
        for (int i5 = 2; 7 >= i5 && !Log.isLoggable(simpleName, i5); i5++) {
        }
    }

    public C0326q4(d dVar, String str) {
        String str2 = dVar.f2926c;
        AbstractC0213D.c(str2);
        this.f5699c = str2;
        String str3 = dVar.f2928e;
        AbstractC0213D.c(str3);
        this.f5700d = str3;
        this.f5701e = str;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X3
    public final String a() throws JSONException {
        b bVar;
        int i5 = b.f2923c;
        String str = this.f5700d;
        AbstractC0213D.c(str);
        try {
            bVar = new b(str);
        } catch (IllegalArgumentException unused) {
            bVar = null;
        }
        String str2 = bVar != null ? bVar.f2924a : null;
        String str3 = bVar != null ? bVar.f2925b : null;
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("email", this.f5699c);
        if (str2 != null) {
            jSONObject.put("oobCode", str2);
        }
        if (str3 != null) {
            jSONObject.put("tenantId", str3);
        }
        String str4 = this.f5701e;
        if (str4 != null) {
            jSONObject.put("idToken", str4);
        }
        return jSONObject.toString();
    }
}
