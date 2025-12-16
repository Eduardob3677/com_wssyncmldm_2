package a2;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.A4;
import com.google.android.gms.internal.p000firebaseauthapi.C0355v4;
import com.google.android.gms.internal.p000firebaseauthapi.F2;
import d1.AbstractC0387a;
import i3.x;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class q extends AbstractC0387a implements Y1.n {
    public static final Parcelable.Creator<q> CREATOR = new C0106b(4);

    /* renamed from: c, reason: collision with root package name */
    public final String f3071c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3072d;

    /* renamed from: e, reason: collision with root package name */
    public final String f3073e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f3074g;

    /* renamed from: h, reason: collision with root package name */
    public final String f3075h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f3076i;

    /* renamed from: j, reason: collision with root package name */
    public final String f3077j;

    public q(C0355v4 c0355v4) {
        AbstractC0213D.e(c0355v4);
        AbstractC0213D.c("firebase");
        String str = c0355v4.f5753c;
        AbstractC0213D.c(str);
        this.f3071c = str;
        this.f3072d = "firebase";
        this.f3074g = c0355v4.f5754d;
        this.f3073e = c0355v4.f;
        Uri uri = !TextUtils.isEmpty(c0355v4.f5756g) ? Uri.parse(c0355v4.f5756g) : null;
        if (uri != null) {
            this.f = uri.toString();
        }
        this.f3076i = c0355v4.f5755e;
        this.f3077j = null;
        this.f3075h = c0355v4.f5759j;
    }

    @Override // Y1.n
    public final String c() {
        return this.f3072d;
    }

    public final String d() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("userId", this.f3071c);
            jSONObject.putOpt("providerId", this.f3072d);
            jSONObject.putOpt("displayName", this.f3073e);
            jSONObject.putOpt("photoUrl", this.f);
            jSONObject.putOpt("email", this.f3074g);
            jSONObject.putOpt("phoneNumber", this.f3075h);
            jSONObject.putOpt("isEmailVerified", Boolean.valueOf(this.f3076i));
            jSONObject.putOpt("rawUserInfo", this.f3077j);
            return jSONObject.toString();
        } catch (JSONException e5) {
            Log.d("DefaultAuthUserInfo", "Failed to jsonify this object");
            throw new F2(e5);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f3071c);
        x.p1(parcel, 2, this.f3072d);
        x.p1(parcel, 3, this.f3073e);
        x.p1(parcel, 4, this.f);
        x.p1(parcel, 5, this.f3074g);
        x.p1(parcel, 6, this.f3075h);
        x.w1(parcel, 7, 4);
        parcel.writeInt(this.f3076i ? 1 : 0);
        x.p1(parcel, 8, this.f3077j);
        x.v1(parcel, iT1);
    }

    public q(A4 a42) {
        AbstractC0213D.e(a42);
        this.f3071c = a42.f5327c;
        String str = a42.f;
        AbstractC0213D.c(str);
        this.f3072d = str;
        this.f3073e = a42.f5328d;
        String str2 = a42.f5329e;
        Uri uri = !TextUtils.isEmpty(str2) ? Uri.parse(str2) : null;
        if (uri != null) {
            this.f = uri.toString();
        }
        this.f3074g = a42.f5332i;
        this.f3075h = a42.f5331h;
        this.f3076i = false;
        this.f3077j = a42.f5330g;
    }

    public q(String str, String str2, String str3, String str4, String str5, String str6, boolean z4, String str7) {
        this.f3071c = str;
        this.f3072d = str2;
        this.f3074g = str3;
        this.f3075h = str4;
        this.f3073e = str5;
        this.f = str6;
        if (!TextUtils.isEmpty(str6)) {
            Uri.parse(str6);
        }
        this.f3076i = z4;
        this.f3077j = str7;
    }
}
