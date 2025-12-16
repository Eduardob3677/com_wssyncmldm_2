package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import h1.b;
import i3.x;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class P4 extends AbstractC0387a implements Y3 {
    public static final Parcelable.Creator<P4> CREATOR = new C0301m3(16);

    /* renamed from: c, reason: collision with root package name */
    public String f5458c;

    /* renamed from: d, reason: collision with root package name */
    public String f5459d;

    /* renamed from: e, reason: collision with root package name */
    public long f5460e;
    public boolean f;

    @Override // com.google.android.gms.internal.p000firebaseauthapi.Y3
    public final /* bridge */ /* synthetic */ Y3 b(String str) throws C0360w3 {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f5458c = b.a(jSONObject.optString("idToken", null));
            this.f5459d = b.a(jSONObject.optString("refreshToken", null));
            this.f5460e = jSONObject.optLong("expiresIn", 0L);
            this.f = jSONObject.optBoolean("isNewUser", false);
            return this;
        } catch (NullPointerException | JSONException e5) {
            throw AbstractC0332s.d(e5, "P4", str);
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 2, this.f5458c);
        x.p1(parcel, 3, this.f5459d);
        long j3 = this.f5460e;
        x.w1(parcel, 4, 8);
        parcel.writeLong(j3);
        boolean z4 = this.f;
        x.w1(parcel, 5, 4);
        parcel.writeInt(z4 ? 1 : 0);
        x.v1(parcel, iT1);
    }
}
