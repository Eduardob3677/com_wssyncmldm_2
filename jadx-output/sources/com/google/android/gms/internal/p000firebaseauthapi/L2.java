package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class L2 extends AbstractC0387a {
    public static final Parcelable.Creator<L2> CREATOR = new H2(4);

    /* renamed from: c, reason: collision with root package name */
    public final String f5418c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5419d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5420e;

    public L2(String str, String str2, String str3) {
        this.f5418c = str;
        this.f5419d = str2;
        this.f5420e = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5418c);
        x.p1(parcel, 2, this.f5419d);
        x.p1(parcel, 3, this.f5420e);
        x.v1(parcel, iT1);
    }
}
