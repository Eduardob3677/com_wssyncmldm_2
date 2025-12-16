package s1;

import android.os.Parcel;
import android.os.Parcelable;
import c1.t;
import d1.AbstractC0387a;
import i3.x;

/* renamed from: s1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0833f extends AbstractC0387a {
    public static final Parcelable.Creator<C0833f> CREATOR = new com.google.android.material.datepicker.d(9);

    /* renamed from: c, reason: collision with root package name */
    public final int f9012c;

    /* renamed from: d, reason: collision with root package name */
    public final t f9013d;

    public C0833f(int i5, t tVar) {
        this.f9012c = i5;
        this.f9013d = tVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.w1(parcel, 1, 4);
        parcel.writeInt(this.f9012c);
        x.o1(parcel, 2, this.f9013d, i5);
        x.v1(parcel, iT1);
    }
}
