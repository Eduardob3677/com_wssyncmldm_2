package c1;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;

/* loaded from: classes.dex */
public final class x extends AbstractC0387a {
    public static final Parcelable.Creator<x> CREATOR = new E0.a(26);

    /* renamed from: c, reason: collision with root package name */
    public Bundle f5266c;

    /* renamed from: d, reason: collision with root package name */
    public Z0.c[] f5267d;

    /* renamed from: e, reason: collision with root package name */
    public int f5268e;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = i3.x.t1(parcel, 20293);
        i3.x.n1(parcel, 1, this.f5266c);
        i3.x.r1(parcel, 2, this.f5267d, i5);
        i3.x.w1(parcel, 3, 4);
        parcel.writeInt(this.f5268e);
        i3.x.v1(parcel, iT1);
    }
}
