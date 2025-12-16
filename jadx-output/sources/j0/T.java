package j0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class T extends R.b {
    public static final Parcelable.Creator<T> CREATOR = new B1.f(9);

    /* renamed from: e, reason: collision with root package name */
    public Parcelable f7371e;

    public T(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f7371e = parcel.readParcelable(classLoader == null ? J.class.getClassLoader() : classLoader);
    }

    @Override // R.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeParcelable(this.f7371e, 0);
    }
}
