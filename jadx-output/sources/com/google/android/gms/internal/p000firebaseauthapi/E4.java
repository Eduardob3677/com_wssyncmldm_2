package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import c1.AbstractC0213D;
import d1.AbstractC0387a;
import i3.x;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class E4 extends AbstractC0387a implements X3 {
    public static final Parcelable.Creator<E4> CREATOR = new C0301m3(13);

    /* renamed from: c, reason: collision with root package name */
    public final String f5360c;

    /* renamed from: d, reason: collision with root package name */
    public final long f5361d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f5362e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f5363g;

    /* renamed from: h, reason: collision with root package name */
    public final String f5364h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f5365i;

    /* renamed from: j, reason: collision with root package name */
    public final String f5366j;

    /* renamed from: k, reason: collision with root package name */
    public C0302m4 f5367k;

    public E4(String str, long j3, boolean z4, String str2, String str3, String str4, boolean z5, String str5) {
        AbstractC0213D.c(str);
        this.f5360c = str;
        this.f5361d = j3;
        this.f5362e = z4;
        this.f = str2;
        this.f5363g = str3;
        this.f5364h = str4;
        this.f5365i = z5;
        this.f5366j = str5;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X3
    public final String a() throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("phoneNumber", this.f5360c);
        String str = this.f5363g;
        if (str != null) {
            jSONObject.put("tenantId", str);
        }
        String str2 = this.f5364h;
        if (str2 != null) {
            jSONObject.put("recaptchaToken", str2);
        }
        C0302m4 c0302m4 = this.f5367k;
        if (c0302m4 != null) {
            JSONObject jSONObject2 = new JSONObject();
            jSONObject2.put("appSignatureHash", c0302m4.f5652d);
            jSONObject.put("autoRetrievalInfo", jSONObject2);
        }
        String str3 = this.f5366j;
        if (str3 != null) {
            jSONObject.put("safetyNetToken", str3);
        }
        return jSONObject.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5360c);
        x.w1(parcel, 2, 8);
        parcel.writeLong(this.f5361d);
        x.w1(parcel, 3, 4);
        parcel.writeInt(this.f5362e ? 1 : 0);
        x.p1(parcel, 4, this.f);
        x.p1(parcel, 5, this.f5363g);
        x.p1(parcel, 6, this.f5364h);
        x.w1(parcel, 7, 4);
        parcel.writeInt(this.f5365i ? 1 : 0);
        x.p1(parcel, 8, this.f5366j);
        x.v1(parcel, iT1);
    }
}
