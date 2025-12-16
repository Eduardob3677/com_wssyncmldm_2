package a2;

import android.os.Parcel;
import android.os.Parcelable;
import d1.InterfaceC0388b;
import i3.x;

/* loaded from: classes.dex */
public final class t implements InterfaceC0388b {
    public static final Parcelable.Creator<t> CREATOR = new C0106b(0);

    /* renamed from: c, reason: collision with root package name */
    public final long f3088c;

    /* renamed from: d, reason: collision with root package name */
    public final long f3089d;

    public t(long j3, long j5) {
        this.f3088c = j3;
        this.f3089d = j5;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.w1(parcel, 1, 8);
        parcel.writeLong(this.f3088c);
        x.w1(parcel, 2, 8);
        parcel.writeLong(this.f3089d);
        x.v1(parcel, iT1);
    }
}
