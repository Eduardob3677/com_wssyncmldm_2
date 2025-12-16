package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.a;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.n3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0307n3 extends AbstractC0387a {
    public static final Parcelable.Creator<C0307n3> CREATOR = new C0301m3(1);

    /* renamed from: c, reason: collision with root package name */
    public final String f5658c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5659d;

    /* renamed from: e, reason: collision with root package name */
    public final a f5660e;

    public C0307n3(a aVar, String str, String str2) {
        this.f5658c = str;
        this.f5659d = str2;
        this.f5660e = aVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5658c);
        x.p1(parcel, 2, this.f5659d);
        x.o1(parcel, 3, this.f5660e, i5);
        x.v1(parcel, iT1);
    }
}
