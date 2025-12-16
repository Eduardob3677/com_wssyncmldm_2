package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class A4 extends AbstractC0387a {
    public static final Parcelable.Creator<A4> CREATOR = new C0301m3(10);

    /* renamed from: c, reason: collision with root package name */
    public final String f5327c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5328d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5329e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public String f5330g;

    /* renamed from: h, reason: collision with root package name */
    public final String f5331h;

    /* renamed from: i, reason: collision with root package name */
    public final String f5332i;

    public A4(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this.f5327c = str;
        this.f5328d = str2;
        this.f5329e = str3;
        this.f = str4;
        this.f5330g = str5;
        this.f5331h = str6;
        this.f5332i = str7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 2, this.f5327c);
        x.p1(parcel, 3, this.f5328d);
        x.p1(parcel, 4, this.f5329e);
        x.p1(parcel, 5, this.f);
        x.p1(parcel, 6, this.f5330g);
        x.p1(parcel, 7, this.f5331h);
        x.p1(parcel, 8, this.f5332i);
        x.v1(parcel, iT1);
    }
}
