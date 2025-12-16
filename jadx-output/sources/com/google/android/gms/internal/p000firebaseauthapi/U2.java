package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.j;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class U2 extends AbstractC0387a {
    public static final Parcelable.Creator<U2> CREATOR = new H2(13);

    /* renamed from: c, reason: collision with root package name */
    public final String f5474c;

    /* renamed from: d, reason: collision with root package name */
    public final j f5475d;

    public U2(j jVar, String str) {
        this.f5474c = str;
        this.f5475d = jVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5474c);
        x.o1(parcel, 2, this.f5475d, i5);
        x.v1(parcel, iT1);
    }
}
