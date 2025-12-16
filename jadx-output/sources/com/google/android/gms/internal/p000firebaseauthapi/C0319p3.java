package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.r;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.p3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0319p3 extends AbstractC0387a {
    public static final Parcelable.Creator<C0319p3> CREATOR = new C0301m3(3);

    /* renamed from: c, reason: collision with root package name */
    public final String f5683c;

    /* renamed from: d, reason: collision with root package name */
    public final List f5684d;

    /* renamed from: e, reason: collision with root package name */
    public final r f5685e;

    public C0319p3(String str, ArrayList arrayList, r rVar) {
        this.f5683c = str;
        this.f5684d = arrayList;
        this.f5685e = rVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5683c);
        x.s1(parcel, 2, this.f5684d);
        x.o1(parcel, 3, this.f5685e, i5);
        x.v1(parcel, iT1);
    }
}
