package com.google.android.gms.internal.p000firebaseauthapi;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import c1.AbstractC0213D;
import h1.AbstractC0443a;
import java.security.NoSuchAlgorithmException;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.e4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0254e4 implements X3 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f5553c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5554d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5555e;

    public C0254e4(int i5, String str, String str2) {
        this.f5553c = i5;
        switch (i5) {
            case 2:
                AbstractC0213D.c(str);
                this.f5554d = str;
                AbstractC0213D.c(str2);
                this.f5555e = str2;
                break;
            default:
                AbstractC0213D.c(str);
                this.f5554d = str;
                this.f5555e = str2;
                break;
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X3
    public String a() throws JSONException {
        switch (this.f5553c) {
            case 1:
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("token", this.f5554d);
                jSONObject.put("returnSecureToken", true);
                String str = this.f5555e;
                if (str != null) {
                    jSONObject.put("tenantId", str);
                }
                return jSONObject.toString();
            default:
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("idToken", this.f5554d);
                jSONObject2.put("mfaEnrollmentId", this.f5555e);
                return jSONObject2.toString();
        }
    }

    public C0254e4(Context context, String str) throws NoSuchAlgorithmException {
        this.f5553c = 0;
        AbstractC0213D.c(str);
        this.f5554d = str;
        try {
            byte[] bArrC = AbstractC0443a.c(context, str);
            if (bArrC == null) {
                String strValueOf = String.valueOf(str);
                Log.e("FBA-PackageInfo", strValueOf.length() != 0 ? "single cert required: ".concat(strValueOf) : new String("single cert required: "));
                this.f5555e = null;
                return;
            }
            this.f5555e = AbstractC0443a.a(bArrC);
        } catch (PackageManager.NameNotFoundException unused) {
            String strValueOf2 = String.valueOf(str);
            Log.e("FBA-PackageInfo", strValueOf2.length() != 0 ? "no pkg: ".concat(strValueOf2) : new String("no pkg: "));
            this.f5555e = null;
        }
    }
}
