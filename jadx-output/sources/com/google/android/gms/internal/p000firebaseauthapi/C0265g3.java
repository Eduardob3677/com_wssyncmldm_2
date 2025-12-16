package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.g3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0265g3 extends AbstractC0387a {
    public static final Parcelable.Creator<C0265g3> CREATOR = new H2(25);

    /* renamed from: c, reason: collision with root package name */
    public final String f5576c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5577d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5578e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f5579g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f5580h;

    /* renamed from: i, reason: collision with root package name */
    public final String f5581i;

    /* renamed from: j, reason: collision with root package name */
    public final String f5582j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f5583k;

    public C0265g3(String str, String str2, String str3, long j3, boolean z4, boolean z5, String str4, String str5, boolean z6) {
        this.f5576c = str;
        this.f5577d = str2;
        this.f5578e = str3;
        this.f = j3;
        this.f5579g = z4;
        this.f5580h = z5;
        this.f5581i = str4;
        this.f5582j = str5;
        this.f5583k = z6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5576c);
        x.p1(parcel, 2, this.f5577d);
        x.p1(parcel, 3, this.f5578e);
        x.w1(parcel, 4, 8);
        parcel.writeLong(this.f);
        x.w1(parcel, 5, 4);
        parcel.writeInt(this.f5579g ? 1 : 0);
        x.w1(parcel, 6, 4);
        parcel.writeInt(this.f5580h ? 1 : 0);
        x.p1(parcel, 7, this.f5581i);
        x.p1(parcel, 8, this.f5582j);
        x.w1(parcel, 9, 4);
        parcel.writeInt(this.f5583k ? 1 : 0);
        x.v1(parcel, iT1);
    }
}
