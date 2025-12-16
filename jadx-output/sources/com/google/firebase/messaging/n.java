package com.google.firebase.messaging;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import o.C0713b;

/* loaded from: classes.dex */
public final class n extends AbstractC0387a {
    public static final Parcelable.Creator<n> CREATOR = new o();

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f6254c;

    /* renamed from: d, reason: collision with root package name */
    public C0713b f6255d;

    public n(Bundle bundle) {
        this.f6254c = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = i3.x.t1(parcel, 20293);
        i3.x.n1(parcel, 2, this.f6254c);
        i3.x.v1(parcel, iT1);
    }
}
