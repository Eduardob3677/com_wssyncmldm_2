package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.d3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0247d3 extends AbstractC0387a {
    public static final Parcelable.Creator<C0247d3> CREATOR = new H2(22);

    /* renamed from: c, reason: collision with root package name */
    public final String f5549c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5550d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5551e;

    public C0247d3(String str, String str2, String str3) {
        this.f5549c = str;
        this.f5550d = str2;
        this.f5551e = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5549c);
        x.p1(parcel, 2, this.f5550d);
        x.p1(parcel, 3, this.f5551e);
        x.v1(parcel, iT1);
    }
}
