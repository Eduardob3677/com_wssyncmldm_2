package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class Y2 extends AbstractC0387a {
    public static final Parcelable.Creator<Y2> CREATOR = new H2(17);

    /* renamed from: c, reason: collision with root package name */
    public final E4 f5494c;

    public Y2(E4 e42) {
        this.f5494c = e42;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.o1(parcel, 1, this.f5494c, i5);
        x.v1(parcel, iT1);
    }
}
