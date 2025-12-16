package F0;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class i extends R.b {
    public static final Parcelable.Creator<i> CREATOR = new B1.f(2);

    /* renamed from: e, reason: collision with root package name */
    public int f676e;
    public Parcelable f;

    public i(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        classLoader = classLoader == null ? i.class.getClassLoader() : classLoader;
        this.f676e = parcel.readInt();
        this.f = parcel.readParcelable(classLoader);
    }

    public final String toString() {
        return "FragmentPager.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " position=" + this.f676e + "}";
    }

    @Override // R.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f676e);
        parcel.writeParcelable(this.f, i5);
    }
}
