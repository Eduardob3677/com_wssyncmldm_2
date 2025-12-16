package a2;

import android.os.Parcel;
import android.os.Parcelable;
import c1.AbstractC0213D;
import d1.InterfaceC0388b;
import i3.x;

/* loaded from: classes.dex */
public final class o implements InterfaceC0388b {
    public static final Parcelable.Creator<o> CREATOR = new C0106b(2);

    /* renamed from: c, reason: collision with root package name */
    public final String f3065c;

    /* renamed from: d, reason: collision with root package name */
    public final String f3066d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f3067e;

    public o(boolean z4) {
        this.f3067e = z4;
        this.f3066d = null;
        this.f3065c = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f3065c);
        x.p1(parcel, 2, this.f3066d);
        x.w1(parcel, 3, 4);
        parcel.writeInt(this.f3067e ? 1 : 0);
        x.v1(parcel, iT1);
    }

    public o(String str, String str2, boolean z4) {
        AbstractC0213D.c(str);
        AbstractC0213D.c(str2);
        this.f3065c = str;
        this.f3066d = str2;
        e.c(str2);
        this.f3067e = z4;
    }
}
