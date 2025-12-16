package androidx.preference;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;

/* loaded from: classes.dex */
public final class M extends C0193m {
    public static final Parcelable.Creator<M> CREATOR = new E0.a(23);

    /* renamed from: c, reason: collision with root package name */
    public boolean f4624c;

    public M(Parcel parcel) {
        super(parcel);
        this.f4624c = parcel.readInt() == 1;
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f4624c ? 1 : 0);
    }

    public M(AbsSavedState absSavedState) {
        super(absSavedState);
    }
}
