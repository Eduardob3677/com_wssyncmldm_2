package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.d;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.e3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0253e3 extends AbstractC0387a {
    public static final Parcelable.Creator<C0253e3> CREATOR = new H2(23);

    /* renamed from: c, reason: collision with root package name */
    public final d f5552c;

    public C0253e3(d dVar) {
        this.f5552c = dVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.o1(parcel, 1, this.f5552c, i5);
        x.v1(parcel, iT1);
    }
}
