package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class J2 extends AbstractC0387a {
    public static final Parcelable.Creator<J2> CREATOR = new H2(2);

    /* renamed from: c, reason: collision with root package name */
    public final String f5396c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5397d;

    public J2(String str, String str2) {
        this.f5396c = str;
        this.f5397d = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5396c);
        x.p1(parcel, 2, this.f5397d);
        x.v1(parcel, iT1);
    }
}
