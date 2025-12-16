package com.google.android.gms.internal.p000firebaseauthapi;

import c1.AbstractC0213D;
import com.samsung.android.knox.ex.KnoxContract;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.o4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0314o4 implements X3 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5673c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5674d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5675e;
    public final String f;

    public C0314o4(String str) {
        this.f5673c = 2;
        this.f = str;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X3
    public final String a() throws JSONException {
        switch (this.f5673c) {
            case 0:
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("identifier", this.f5674d);
                jSONObject.put("continueUri", this.f5675e);
                String str = this.f;
                if (str != null) {
                    jSONObject.put("tenantId", str);
                }
                return jSONObject.toString();
            case 1:
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("oobCode", this.f5674d);
                String str2 = this.f5675e;
                if (str2 != null) {
                    jSONObject2.put("newPassword", str2);
                }
                String str3 = this.f;
                if (str3 != null) {
                    jSONObject2.put("tenantId", str3);
                }
                return jSONObject2.toString();
            case 2:
                JSONObject jSONObject3 = new JSONObject();
                String str4 = this.f5674d;
                if (str4 != null) {
                    jSONObject3.put("email", str4);
                }
                String str5 = this.f5675e;
                if (str5 != null) {
                    jSONObject3.put(KnoxContract.Config.Settings.PARAM_PASSWORD, str5);
                }
                String str6 = this.f;
                if (str6 != null) {
                    jSONObject3.put("tenantId", str6);
                }
                return jSONObject3.toString();
            default:
                JSONObject jSONObject4 = new JSONObject();
                jSONObject4.put("email", this.f5674d);
                jSONObject4.put(KnoxContract.Config.Settings.PARAM_PASSWORD, this.f5675e);
                jSONObject4.put("returnSecureToken", true);
                String str7 = this.f;
                if (str7 != null) {
                    jSONObject4.put("tenantId", str7);
                }
                return jSONObject4.toString();
        }
    }

    public C0314o4(int i5, String str, String str2, String str3) {
        this.f5673c = i5;
        switch (i5) {
            case 2:
                AbstractC0213D.c(str);
                this.f5674d = str;
                AbstractC0213D.c(str2);
                this.f5675e = str2;
                this.f = str3;
                break;
            case 3:
                AbstractC0213D.c(str);
                this.f5674d = str;
                AbstractC0213D.c(str2);
                this.f5675e = str2;
                this.f = str3;
                break;
            default:
                AbstractC0213D.c(str);
                this.f5674d = str;
                this.f5675e = str2;
                this.f = str3;
                break;
        }
    }

    public C0314o4(String str, String str2) {
        this.f5673c = 0;
        AbstractC0213D.c(str);
        this.f5674d = str;
        this.f5675e = "http://localhost";
        this.f = str2;
    }
}
