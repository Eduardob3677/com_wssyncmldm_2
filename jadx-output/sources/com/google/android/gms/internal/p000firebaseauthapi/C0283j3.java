package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.j3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0283j3 extends AbstractC0387a {
    public static final Parcelable.Creator<C0283j3> CREATOR = new H2(28);

    /* renamed from: c, reason: collision with root package name */
    public final String f5613c;

    public C0283j3(String str) {
        this.f5613c = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5613c);
        x.v1(parcel, iT1);
    }
}
