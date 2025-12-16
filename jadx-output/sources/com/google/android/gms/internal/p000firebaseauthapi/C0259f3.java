package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.j;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.f3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0259f3 extends AbstractC0387a {
    public static final Parcelable.Creator<C0259f3> CREATOR = new H2(24);

    /* renamed from: c, reason: collision with root package name */
    public final j f5560c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5561d;

    public C0259f3(j jVar, String str) {
        this.f5560c = jVar;
        this.f5561d = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.o1(parcel, 1, this.f5560c, i5);
        x.p1(parcel, 2, this.f5561d);
        x.v1(parcel, iT1);
    }
}
