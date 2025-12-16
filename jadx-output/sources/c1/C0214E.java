package c1;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;

/* renamed from: c1.E, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0214E extends AbstractC0387a {
    public static final Parcelable.Creator<C0214E> CREATOR = new E0.a(28);

    /* renamed from: c, reason: collision with root package name */
    public final int f5198c;

    public C0214E(int i5) {
        this.f5198c = i5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = i3.x.t1(parcel, 20293);
        i3.x.w1(parcel, 1, 4);
        parcel.writeInt(this.f5198c);
        i3.x.v1(parcel, iT1);
    }
}
