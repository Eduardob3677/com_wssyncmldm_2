package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.o;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.l3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0295l3 extends AbstractC0387a {
    public static final Parcelable.Creator<C0295l3> CREATOR = new C0301m3(0);

    /* renamed from: c, reason: collision with root package name */
    public final o f5640c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5641d;

    public C0295l3(o oVar, String str) {
        this.f5640c = oVar;
        this.f5641d = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.o1(parcel, 1, this.f5640c, i5);
        x.p1(parcel, 2, this.f5641d);
        x.v1(parcel, iT1);
    }
}
