package androidx.preference;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;

/* loaded from: classes.dex */
public final class A extends C0193m {
    public static final Parcelable.Creator<A> CREATOR = new E0.a(21);

    /* renamed from: c, reason: collision with root package name */
    public final int f4550c;

    public A(Parcel parcel) {
        super(parcel);
        this.f4550c = parcel.readInt();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f4550c);
    }

    public A(AbsSavedState absSavedState, int i5) {
        super(absSavedState);
        this.f4550c = i5;
    }
}
