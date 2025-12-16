package s1;

import android.os.Parcel;
import android.os.Parcelable;
import c1.u;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: s1.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0834g extends AbstractC0387a {
    public static final Parcelable.Creator<C0834g> CREATOR = new com.google.android.material.datepicker.d(10);

    /* renamed from: c, reason: collision with root package name */
    public final int f9014c;

    /* renamed from: d, reason: collision with root package name */
    public final Z0.a f9015d;

    /* renamed from: e, reason: collision with root package name */
    public final u f9016e;

    public C0834g(int i5, Z0.a aVar, u uVar) {
        this.f9014c = i5;
        this.f9015d = aVar;
        this.f9016e = uVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.w1(parcel, 1, 4);
        parcel.writeInt(this.f9014c);
        x.o1(parcel, 2, this.f9015d, i5);
        x.o1(parcel, 3, this.f9016e, i5);
        x.v1(parcel, iT1);
    }
}
