package androidx.preference;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;

/* renamed from: androidx.preference.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0186f extends C0193m {
    public static final Parcelable.Creator<C0186f> CREATOR = new E0.a(18);

    /* renamed from: c, reason: collision with root package name */
    public String f4710c;

    public C0186f(Parcel parcel) {
        super(parcel);
        this.f4710c = parcel.readString();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeString(this.f4710c);
    }

    public C0186f(AbsSavedState absSavedState) {
        super(absSavedState);
    }
}
