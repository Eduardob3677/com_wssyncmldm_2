package c1;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;

/* loaded from: classes.dex */
public final class u extends AbstractC0387a {
    public static final Parcelable.Creator<u> CREATOR = new E0.a(25);

    /* renamed from: c, reason: collision with root package name */
    public final int f5258c;

    /* renamed from: d, reason: collision with root package name */
    public final IBinder f5259d;

    /* renamed from: e, reason: collision with root package name */
    public final Z0.a f5260e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f5261g;

    public u(int i5, IBinder iBinder, Z0.a aVar, boolean z4, boolean z5) {
        this.f5258c = i5;
        this.f5259d = iBinder;
        this.f5260e = aVar;
        this.f = z4;
        this.f5261g = z5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        return this.f5260e.equals(uVar.f5260e) && AbstractBinderC0215a.q(this.f5259d).equals(AbstractBinderC0215a.q(uVar.f5259d));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = i3.x.t1(parcel, 20293);
        i3.x.w1(parcel, 1, 4);
        parcel.writeInt(this.f5258c);
        IBinder iBinder = this.f5259d;
        if (iBinder != null) {
            int iT12 = i3.x.t1(parcel, 2);
            parcel.writeStrongBinder(iBinder);
            i3.x.v1(parcel, iT12);
        }
        i3.x.o1(parcel, 3, this.f5260e, i5);
        i3.x.w1(parcel, 4, 4);
        parcel.writeInt(this.f ? 1 : 0);
        i3.x.w1(parcel, 5, 4);
        parcel.writeInt(this.f5261g ? 1 : 0);
        i3.x.v1(parcel, iT1);
    }
}
