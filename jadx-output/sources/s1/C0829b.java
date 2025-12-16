package s1;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: s1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0829b extends AbstractC0387a {
    public static final Parcelable.Creator<C0829b> CREATOR = new com.google.android.material.datepicker.d(8);

    /* renamed from: c, reason: collision with root package name */
    public final int f9008c;

    /* renamed from: d, reason: collision with root package name */
    public final int f9009d;

    /* renamed from: e, reason: collision with root package name */
    public final Intent f9010e;

    public C0829b(int i5, int i6, Intent intent) {
        this.f9008c = i5;
        this.f9009d = i6;
        this.f9010e = intent;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.w1(parcel, 1, 4);
        parcel.writeInt(this.f9008c);
        x.w1(parcel, 2, 4);
        parcel.writeInt(this.f9009d);
        x.o1(parcel, 3, this.f9010e, i5);
        x.v1(parcel, iT1);
    }
}
