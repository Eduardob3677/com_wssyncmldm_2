package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.r;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.o3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0313o3 extends AbstractC0387a {
    public static final Parcelable.Creator<C0313o3> CREATOR = new C0301m3(2);

    /* renamed from: c, reason: collision with root package name */
    public final Status f5670c;

    /* renamed from: d, reason: collision with root package name */
    public final r f5671d;

    /* renamed from: e, reason: collision with root package name */
    public final String f5672e;
    public final String f;

    public C0313o3(Status status, r rVar, String str, String str2) {
        this.f5670c = status;
        this.f5671d = rVar;
        this.f5672e = str;
        this.f = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.o1(parcel, 1, this.f5670c, i5);
        x.o1(parcel, 2, this.f5671d, i5);
        x.p1(parcel, 3, this.f5672e);
        x.p1(parcel, 4, this.f);
        x.v1(parcel, iT1);
    }
}
