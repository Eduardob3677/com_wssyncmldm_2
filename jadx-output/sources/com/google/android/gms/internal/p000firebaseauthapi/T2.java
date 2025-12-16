package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class T2 extends AbstractC0387a {
    public static final Parcelable.Creator<T2> CREATOR = new H2(12);

    /* renamed from: c, reason: collision with root package name */
    public final String f5468c;

    /* renamed from: d, reason: collision with root package name */
    public final N4 f5469d;

    public T2(String str, N4 n42) {
        this.f5468c = str;
        this.f5469d = n42;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5468c);
        x.o1(parcel, 2, this.f5469d, i5);
        x.v1(parcel, iT1);
    }
}
