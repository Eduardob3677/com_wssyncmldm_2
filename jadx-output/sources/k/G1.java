package k;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class G1 extends R.b {
    public static final Parcelable.Creator<G1> CREATOR = new B1.f(11);

    /* renamed from: e, reason: collision with root package name */
    public int f7685e;
    public boolean f;

    public G1(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f7685e = parcel.readInt();
        this.f = parcel.readInt() != 0;
    }

    @Override // R.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f7685e);
        parcel.writeInt(this.f ? 1 : 0);
    }
}
