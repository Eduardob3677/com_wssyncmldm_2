package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import d1.AbstractC0387a;
import h1.b;
import i3.x;
import org.json.JSONException;
import org.json.JSONObject;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.y4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0373y4 extends AbstractC0387a implements Y3 {
    public static final Parcelable.Creator<C0373y4> CREATOR = new C0301m3(8);

    /* renamed from: c, reason: collision with root package name */
    public String f5787c;

    /* renamed from: d, reason: collision with root package name */
    public String f5788d;

    /* renamed from: e, reason: collision with root package name */
    public Long f5789e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public Long f5790g;

    public C0373y4(String str, String str2, Long l5, String str3, Long l6) {
        this.f5787c = str;
        this.f5788d = str2;
        this.f5789e = l5;
        this.f = str3;
        this.f5790g = l6;
    }

    public static C0373y4 d(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            C0373y4 c0373y4 = new C0373y4();
            c0373y4.f5790g = Long.valueOf(System.currentTimeMillis());
            c0373y4.f5787c = jSONObject.optString("refresh_token", null);
            c0373y4.f5788d = jSONObject.optString("access_token", null);
            c0373y4.f5789e = Long.valueOf(jSONObject.optLong("expires_in"));
            c0373y4.f = jSONObject.optString("token_type", null);
            c0373y4.f5790g = Long.valueOf(jSONObject.optLong("issued_at"));
            return c0373y4;
        } catch (JSONException e5) {
            Log.d("y4", "Failed to read GetTokenResponse from JSONObject");
            throw new F2(e5);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Y3
    public final /* bridge */ /* synthetic */ Y3 b(String str) throws C0360w3 {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f5787c = b.a(jSONObject.optString("refresh_token"));
            this.f5788d = b.a(jSONObject.optString("access_token"));
            this.f5789e = Long.valueOf(jSONObject.optLong("expires_in", 0L));
            this.f = b.a(jSONObject.optString("token_type"));
            this.f5790g = Long.valueOf(System.currentTimeMillis());
            return this;
        } catch (NullPointerException | JSONException e5) {
            throw AbstractC0332s.d(e5, "y4", str);
        }
    }

    public final String e() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("refresh_token", this.f5787c);
            jSONObject.put("access_token", this.f5788d);
            jSONObject.put("expires_in", this.f5789e);
            jSONObject.put("token_type", this.f);
            jSONObject.put("issued_at", this.f5790g);
            return jSONObject.toString();
        } catch (JSONException e5) {
            Log.d("y4", "Failed to convert GetTokenResponse to JSON");
            throw new F2(e5);
        }
    }

    public final boolean f() {
        return System.currentTimeMillis() + 300000 < (this.f5789e.longValue() * 1000) + this.f5790g.longValue();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 2, this.f5787c);
        x.p1(parcel, 3, this.f5788d);
        Long l5 = this.f5789e;
        long jLongValue = l5 == null ? 0L : l5.longValue();
        x.w1(parcel, 4, 8);
        parcel.writeLong(jLongValue);
        x.p1(parcel, 5, this.f);
        Long l6 = this.f5790g;
        l6.getClass();
        x.w1(parcel, 6, 8);
        parcel.writeLong(l6.longValue());
        x.v1(parcel, iT1);
    }
}
