package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class S2 extends AbstractC0387a {
    public static final Parcelable.Creator<S2> CREATOR = new H2(11);

    /* renamed from: c, reason: collision with root package name */
    public final String f5465c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5466d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5467e;

    public S2(String str, String str2, String str3) {
        this.f5465c = str;
        this.f5466d = str2;
        this.f5467e = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5465c);
        x.p1(parcel, 2, this.f5466d);
        x.p1(parcel, 3, this.f5467e);
        x.v1(parcel, iT1);
    }
}
