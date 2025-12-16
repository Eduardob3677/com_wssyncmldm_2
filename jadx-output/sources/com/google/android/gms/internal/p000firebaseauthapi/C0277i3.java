package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.i3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0277i3 extends AbstractC0387a {
    public static final Parcelable.Creator<C0277i3> CREATOR = new H2(27);

    /* renamed from: c, reason: collision with root package name */
    public final String f5601c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5602d;

    public C0277i3(String str, String str2) {
        this.f5601c = str;
        this.f5602d = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5601c);
        x.p1(parcel, 2, this.f5602d);
        x.v1(parcel, iT1);
    }
}
