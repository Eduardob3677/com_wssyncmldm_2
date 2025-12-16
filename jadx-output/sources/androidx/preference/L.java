package androidx.preference;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;

/* loaded from: classes.dex */
public final class L extends C0193m {
    public static final Parcelable.Creator<L> CREATOR = new E0.a(22);

    /* renamed from: c, reason: collision with root package name */
    public int f4617c;

    /* renamed from: d, reason: collision with root package name */
    public int f4618d;

    /* renamed from: e, reason: collision with root package name */
    public int f4619e;

    public L(Parcel parcel) {
        super(parcel);
        this.f4617c = parcel.readInt();
        this.f4618d = parcel.readInt();
        this.f4619e = parcel.readInt();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f4617c);
        parcel.writeInt(this.f4618d);
        parcel.writeInt(this.f4619e);
    }

    public L(AbsSavedState absSavedState) {
        super(absSavedState);
    }
}
