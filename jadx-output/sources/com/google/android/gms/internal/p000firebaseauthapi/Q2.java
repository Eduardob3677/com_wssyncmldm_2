package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class Q2 extends AbstractC0387a {
    public static final Parcelable.Creator<Q2> CREATOR = new H2(9);

    /* renamed from: c, reason: collision with root package name */
    public final String f5462c;

    public Q2(String str) {
        this.f5462c = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5462c);
        x.v1(parcel, iT1);
    }
}
