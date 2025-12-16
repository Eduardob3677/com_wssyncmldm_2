package com.google.android.gms.internal.p000firebaseauthapi;

import android.text.TextUtils;
import c1.AbstractC0213D;
import com.samsung.android.lib.episode.EternalContract;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class K4 implements X3 {

    /* renamed from: c, reason: collision with root package name */
    public final String f5405c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5406d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5407e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f5408g;

    /* renamed from: h, reason: collision with root package name */
    public final String f5409h;

    /* renamed from: i, reason: collision with root package name */
    public final String f5410i;

    /* renamed from: j, reason: collision with root package name */
    public C0302m4 f5411j;

    public K4(String str, String str2, String str3, String str4, String str5, String str6) {
        AbstractC0213D.c(EternalContract.DEVICE_TYPE_PHONE);
        this.f5405c = EternalContract.DEVICE_TYPE_PHONE;
        AbstractC0213D.c(str);
        this.f5406d = str;
        AbstractC0213D.c(str2);
        this.f5407e = str2;
        this.f5408g = str3;
        this.f = str4;
        this.f5409h = str5;
        this.f5410i = str6;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X3
    public final String a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("mfaPendingCredential", this.f5406d);
        jSONObject.put("mfaEnrollmentId", this.f5407e);
        this.f5405c.getClass();
        jSONObject.put("mfaProvider", 1);
        String str = this.f5408g;
        if (str != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("phoneNumber", str);
            String str2 = this.f5409h;
            if (!TextUtils.isEmpty(str2)) {
                jSONObject2.put("recaptchaToken", str2);
            }
            String str3 = this.f5410i;
            if (!TextUtils.isEmpty(str3)) {
                jSONObject2.put("safetyNetToken", str3);
            }
            C0302m4 c0302m4 = this.f5411j;
            if (c0302m4 != null) {
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("appSignatureHash", c0302m4.f5652d);
                jSONObject2.put("autoRetrievalInfo", jSONObject3);
            }
            jSONObject.put("phoneSignInInfo", jSONObject2);
        }
        return jSONObject.toString();
    }
}
