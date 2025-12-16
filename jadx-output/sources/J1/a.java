package J1;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class a extends R.b {
    public static final Parcelable.Creator<a> CREATOR = new B1.f(4);

    /* renamed from: e, reason: collision with root package name */
    public boolean f1042e;

    public a(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f1042e = parcel.readInt() == 1;
    }

    @Override // R.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f1042e ? 1 : 0);
    }
}
