package C1;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class b extends R.b {
    public static final Parcelable.Creator<b> CREATOR = new B1.f(1);

    /* renamed from: e, reason: collision with root package name */
    public boolean f339e;

    public b(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            b.class.getClassLoader();
        }
        this.f339e = parcel.readInt() == 1;
    }

    @Override // R.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f339e ? 1 : 0);
    }
}
