package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.k;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.h3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0271h3 extends AbstractC0387a {
    public static final Parcelable.Creator<C0271h3> CREATOR = new H2(26);

    /* renamed from: c, reason: collision with root package name */
    public final k f5591c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5592d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5593e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f5594g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f5595h;

    /* renamed from: i, reason: collision with root package name */
    public final String f5596i;

    /* renamed from: j, reason: collision with root package name */
    public final String f5597j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f5598k;

    public C0271h3(k kVar, String str, String str2, long j3, boolean z4, boolean z5, String str3, String str4, boolean z6) {
        this.f5591c = kVar;
        this.f5592d = str;
        this.f5593e = str2;
        this.f = j3;
        this.f5594g = z4;
        this.f5595h = z5;
        this.f5596i = str3;
        this.f5597j = str4;
        this.f5598k = z6;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.o1(parcel, 1, this.f5591c, i5);
        x.p1(parcel, 2, this.f5592d);
        x.p1(parcel, 3, this.f5593e);
        x.w1(parcel, 4, 8);
        parcel.writeLong(this.f);
        x.w1(parcel, 5, 4);
        parcel.writeInt(this.f5594g ? 1 : 0);
        x.w1(parcel, 6, 4);
        parcel.writeInt(this.f5595h ? 1 : 0);
        x.p1(parcel, 7, this.f5596i);
        x.p1(parcel, 8, this.f5597j);
        x.w1(parcel, 9, 4);
        parcel.writeInt(this.f5598k ? 1 : 0);
        x.v1(parcel, iT1);
    }
}
