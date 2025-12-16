package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.b3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0235b3 extends AbstractC0387a {
    public static final Parcelable.Creator<C0235b3> CREATOR = new H2(20);

    /* renamed from: c, reason: collision with root package name */
    public final N4 f5519c;

    public C0235b3(N4 n42) {
        this.f5519c = n42;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.o1(parcel, 1, this.f5519c, i5);
        x.v1(parcel, iT1);
    }
}
