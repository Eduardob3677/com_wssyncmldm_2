package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import c1.AbstractC0213D;
import d1.AbstractC0387a;
import i3.x;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class N4 extends AbstractC0387a implements X3 {
    public static final Parcelable.Creator<N4> CREATOR = new C0301m3(15);

    /* renamed from: d, reason: collision with root package name */
    public String f5437d;

    /* renamed from: e, reason: collision with root package name */
    public String f5438e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public String f5439g;

    /* renamed from: h, reason: collision with root package name */
    public String f5440h;

    /* renamed from: i, reason: collision with root package name */
    public String f5441i;

    /* renamed from: j, reason: collision with root package name */
    public String f5442j;

    /* renamed from: l, reason: collision with root package name */
    public boolean f5444l;

    /* renamed from: m, reason: collision with root package name */
    public String f5445m;
    public String n;

    /* renamed from: o, reason: collision with root package name */
    public String f5446o;

    /* renamed from: p, reason: collision with root package name */
    public String f5447p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f5448q;

    /* renamed from: r, reason: collision with root package name */
    public String f5449r;

    /* renamed from: c, reason: collision with root package name */
    public String f5436c = "http://localhost";

    /* renamed from: k, reason: collision with root package name */
    public boolean f5443k = true;

    public N4(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8) {
        this.f5438e = str;
        this.f = str2;
        this.f5442j = str4;
        this.f5445m = str5;
        this.f5447p = str6;
        this.f5449r = str7;
        if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str5)) {
            throw new IllegalArgumentException("idToken, accessToken and authCode cannot all be null");
        }
        AbstractC0213D.c(str3);
        this.f5439g = str3;
        this.f5440h = null;
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append("id_token=");
            sb.append(str);
            sb.append("&");
        }
        if (!TextUtils.isEmpty(str2)) {
            sb.append("access_token=");
            sb.append(str2);
            sb.append("&");
        }
        if (!TextUtils.isEmpty(null)) {
            sb.append("identifier=null&");
        }
        if (!TextUtils.isEmpty(str4)) {
            sb.append("oauth_token_secret=");
            sb.append(str4);
            sb.append("&");
        }
        if (!TextUtils.isEmpty(str5)) {
            sb.append("code=");
            sb.append(str5);
            sb.append("&");
        }
        if (!TextUtils.isEmpty(str8)) {
            sb.append("nonce=");
            sb.append(str8);
            sb.append("&");
        }
        this.f5441i = f.w(sb, "providerId=", str3);
        this.f5444l = true;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X3
    public final String a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("autoCreate", this.f5444l);
        jSONObject.put("returnSecureToken", this.f5443k);
        String str = this.f5437d;
        if (str != null) {
            jSONObject.put("idToken", str);
        }
        String str2 = this.f5441i;
        if (str2 != null) {
            jSONObject.put("postBody", str2);
        }
        String str3 = this.f5447p;
        if (str3 != null) {
            jSONObject.put("tenantId", str3);
        }
        String str4 = this.f5449r;
        if (str4 != null) {
            jSONObject.put("pendingToken", str4);
        }
        String str5 = this.n;
        if (!TextUtils.isEmpty(str5)) {
            jSONObject.put("sessionId", str5);
        }
        String str6 = this.f5446o;
        if (TextUtils.isEmpty(str6)) {
            String str7 = this.f5436c;
            if (str7 != null) {
                jSONObject.put("requestUri", str7);
            }
        } else {
            jSONObject.put("requestUri", str6);
        }
        jSONObject.put("returnIdpCredential", this.f5448q);
        return jSONObject.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 2, this.f5436c);
        x.p1(parcel, 3, this.f5437d);
        x.p1(parcel, 4, this.f5438e);
        x.p1(parcel, 5, this.f);
        x.p1(parcel, 6, this.f5439g);
        x.p1(parcel, 7, this.f5440h);
        x.p1(parcel, 8, this.f5441i);
        x.p1(parcel, 9, this.f5442j);
        x.w1(parcel, 10, 4);
        parcel.writeInt(this.f5443k ? 1 : 0);
        boolean z4 = this.f5444l;
        x.w1(parcel, 11, 4);
        parcel.writeInt(z4 ? 1 : 0);
        x.p1(parcel, 12, this.f5445m);
        x.p1(parcel, 13, this.n);
        x.p1(parcel, 14, this.f5446o);
        x.p1(parcel, 15, this.f5447p);
        boolean z5 = this.f5448q;
        x.w1(parcel, 16, 4);
        parcel.writeInt(z5 ? 1 : 0);
        x.p1(parcel, 17, this.f5449r);
        x.v1(parcel, iT1);
    }
}
