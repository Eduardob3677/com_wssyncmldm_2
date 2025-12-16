package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.r;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.v4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0355v4 extends AbstractC0387a {
    public static final Parcelable.Creator<C0355v4> CREATOR = new C0301m3(6);

    /* renamed from: c, reason: collision with root package name */
    public final String f5753c;

    /* renamed from: d, reason: collision with root package name */
    public String f5754d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f5755e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public String f5756g;

    /* renamed from: h, reason: collision with root package name */
    public B4 f5757h;

    /* renamed from: i, reason: collision with root package name */
    public String f5758i;

    /* renamed from: j, reason: collision with root package name */
    public final String f5759j;

    /* renamed from: k, reason: collision with root package name */
    public final long f5760k;

    /* renamed from: l, reason: collision with root package name */
    public final long f5761l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f5762m;
    public r n;

    /* renamed from: o, reason: collision with root package name */
    public final List f5763o;

    public C0355v4(String str, String str2, boolean z4, String str3, String str4, B4 b42, String str5, String str6, long j3, long j5, boolean z5, r rVar, ArrayList arrayList) {
        B4 b43;
        this.f5753c = str;
        this.f5754d = str2;
        this.f5755e = z4;
        this.f = str3;
        this.f5756g = str4;
        if (b42 == null) {
            b43 = new B4();
        } else {
            b43 = new B4();
            List list = b42.f5341c;
            if (list != null) {
                b43.f5341c.addAll(list);
            }
        }
        this.f5757h = b43;
        this.f5758i = str5;
        this.f5759j = str6;
        this.f5760k = j3;
        this.f5761l = j5;
        this.f5762m = z5;
        this.n = rVar;
        this.f5763o = arrayList == null ? new ArrayList() : arrayList;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 2, this.f5753c);
        x.p1(parcel, 3, this.f5754d);
        x.w1(parcel, 4, 4);
        parcel.writeInt(this.f5755e ? 1 : 0);
        x.p1(parcel, 5, this.f);
        x.p1(parcel, 6, this.f5756g);
        x.o1(parcel, 7, this.f5757h, i5);
        x.p1(parcel, 8, this.f5758i);
        x.p1(parcel, 9, this.f5759j);
        x.w1(parcel, 10, 8);
        parcel.writeLong(this.f5760k);
        x.w1(parcel, 11, 8);
        parcel.writeLong(this.f5761l);
        boolean z4 = this.f5762m;
        x.w1(parcel, 12, 4);
        parcel.writeInt(z4 ? 1 : 0);
        x.o1(parcel, 13, this.n, i5);
        x.s1(parcel, 14, this.f5763o);
        x.v1(parcel, iT1);
    }
}
