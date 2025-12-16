package com.google.android.gms.internal.p000firebaseauthapi;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class G2 extends AbstractC0387a {
    public static final Parcelable.Creator<G2> CREATOR = new H2(0);

    /* renamed from: c, reason: collision with root package name */
    public final String f5373c;

    /* renamed from: d, reason: collision with root package name */
    public final String f5374d;

    public G2(String str, String str2) {
        this.f5373c = str;
        this.f5374d = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f5373c);
        x.p1(parcel, 2, this.f5374d);
        x.v1(parcel, iT1);
    }
}
