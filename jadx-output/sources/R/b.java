package R;

import B1.f;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public abstract class b implements Parcelable {

    /* renamed from: c, reason: collision with root package name */
    public final Parcelable f2270c;

    /* renamed from: d, reason: collision with root package name */
    public static final a f2269d = new a();
    public static final Parcelable.Creator<b> CREATOR = new f(6);

    public b() {
        this.f2270c = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i5) {
        parcel.writeParcelable(this.f2270c, i5);
    }

    public b(Parcelable parcelable) {
        if (parcelable != null) {
            this.f2270c = parcelable == f2269d ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public b(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.f2270c = parcelable == null ? f2269d : parcelable;
    }
}
