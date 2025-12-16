package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.a;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class W2 extends AbstractC0387a {
    public static final Parcelable.Creator<W2> CREATOR = new H2(15);

    /* renamed from: c, reason: collision with root package name */
    public final String f5481c;

    /* renamed from: d, reason: collision with root package name */
    public final a f5482d;

    public W2(String str, a aVar) {
        this.f5481c = str;
        this.f5482d = aVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5481c);
        x.o1(parcel, 2, this.f5482d, i5);
        x.v1(parcel, iT1);
    }
}
