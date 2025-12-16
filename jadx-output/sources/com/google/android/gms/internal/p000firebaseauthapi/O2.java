package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.j;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class O2 extends AbstractC0387a {
    public static final Parcelable.Creator<O2> CREATOR = new H2(7);

    /* renamed from: c, reason: collision with root package name */
    public final j f5451c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5452d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5453e;

    public O2(j jVar, String str, String str2) {
        this.f5451c = jVar;
        this.f5452d = str;
        this.f5453e = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.o1(parcel, 1, this.f5451c, i5);
        x.p1(parcel, 2, this.f5452d);
        x.p1(parcel, 3, this.f5453e);
        x.v1(parcel, iT1);
    }
}
