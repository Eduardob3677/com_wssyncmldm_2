package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import d1.AbstractC0387a;
import h1.b;
import i3.x;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class D4 extends AbstractC0387a implements Y3 {
    public static final Parcelable.Creator<D4> CREATOR = new C0301m3(12);

    /* renamed from: c, reason: collision with root package name */
    public String f5356c;

    /* renamed from: d, reason: collision with root package name */
    public String f5357d;

    /* renamed from: e, reason: collision with root package name */
    public String f5358e;
    public C0379z4 f;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0091  */
    @Override // com.google.android.gms.internal.p000firebaseauthapi.Y3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final /* bridge */ /* synthetic */ Y3 b(String str) throws C0360w3 {
        String str2;
        char c2;
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f5356c = b.a(jSONObject.optString("email"));
            this.f5357d = b.a(jSONObject.optString("newEmail"));
            int iOptInt = jSONObject.optInt("reqType");
            if (iOptInt != 1) {
                switch (iOptInt) {
                    case 4:
                        str2 = "VERIFY_EMAIL";
                        break;
                    case 5:
                        str2 = "RECOVER_EMAIL";
                        break;
                    case 6:
                        str2 = "EMAIL_SIGNIN";
                        break;
                    case 7:
                        str2 = "VERIFY_AND_CHANGE_EMAIL";
                        break;
                    case 8:
                        str2 = "REVERT_SECOND_FACTOR_ADDITION";
                        break;
                    default:
                        str2 = null;
                        break;
                }
            } else {
                str2 = "PASSWORD_RESET";
            }
            this.f5358e = str2;
            if (TextUtils.isEmpty(str2)) {
                String strOptString = jSONObject.optString("requestType");
                switch (strOptString.hashCode()) {
                    case -1874510116:
                        if (!strOptString.equals("REVERT_SECOND_FACTOR_ADDITION")) {
                            c2 = 65535;
                            break;
                        } else {
                            c2 = 5;
                            break;
                        }
                    case -1452371317:
                        if (strOptString.equals("PASSWORD_RESET")) {
                            c2 = 1;
                            break;
                        }
                        break;
                    case -1341836234:
                        if (strOptString.equals("VERIFY_EMAIL")) {
                            c2 = 0;
                            break;
                        }
                        break;
                    case -1099157829:
                        if (strOptString.equals("VERIFY_AND_CHANGE_EMAIL")) {
                            c2 = 3;
                            break;
                        }
                        break;
                    case 870738373:
                        if (strOptString.equals("EMAIL_SIGNIN")) {
                            c2 = 2;
                            break;
                        }
                        break;
                    case 970484929:
                        if (strOptString.equals("RECOVER_EMAIL")) {
                            c2 = 4;
                            break;
                        }
                        break;
                }
                this.f5358e = (c2 == 0 || c2 == 1 || c2 == 2 || c2 == 3 || c2 == 4 || c2 == 5) ? strOptString : null;
            }
            if (jSONObject.has("mfaInfo")) {
                this.f = C0379z4.d(jSONObject.optJSONObject("mfaInfo"));
            }
            return this;
        } catch (NullPointerException | JSONException e5) {
            throw AbstractC0332s.d(e5, "D4", str);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 2, this.f5356c);
        x.p1(parcel, 3, this.f5357d);
        x.p1(parcel, 4, this.f5358e);
        x.o1(parcel, 5, this.f, i5);
        x.v1(parcel, iT1);
    }
}
