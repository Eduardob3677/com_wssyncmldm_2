package androidx.preference;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;

/* renamed from: androidx.preference.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0183c extends C0193m {
    public static final Parcelable.Creator<C0183c> CREATOR = new E0.a(17);

    /* renamed from: c, reason: collision with root package name */
    public String f4705c;

    public C0183c(Parcel parcel) {
        super(parcel);
        this.f4705c = parcel.readString();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeString(this.f4705c);
    }

    public C0183c(AbsSavedState absSavedState) {
        super(absSavedState);
    }
}
