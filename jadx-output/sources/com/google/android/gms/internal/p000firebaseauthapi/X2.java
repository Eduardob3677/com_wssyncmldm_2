package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.a;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class X2 extends AbstractC0387a {
    public static final Parcelable.Creator<X2> CREATOR = new H2(16);

    /* renamed from: c, reason: collision with root package name */
    public final String f5490c;

    /* renamed from: d, reason: collision with root package name */
    public final a f5491d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5492e;

    public X2(a aVar, String str, String str2) {
        this.f5490c = str;
        this.f5491d = aVar;
        this.f5492e = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5490c);
        x.o1(parcel, 2, this.f5491d, i5);
        x.p1(parcel, 3, this.f5492e);
        x.v1(parcel, iT1);
    }
}
