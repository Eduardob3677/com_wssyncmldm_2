package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class M2 extends AbstractC0387a {
    public static final Parcelable.Creator<M2> CREATOR = new H2(5);

    /* renamed from: c, reason: collision with root package name */
    public final String f5424c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5425d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5426e;

    public M2(String str, String str2, String str3) {
        this.f5424c = str;
        this.f5425d = str2;
        this.f5426e = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5424c);
        x.p1(parcel, 2, this.f5425d);
        x.p1(parcel, 3, this.f5426e);
        x.v1(parcel, iT1);
    }
}
