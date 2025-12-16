package Q1;

import B1.f;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes.dex */
public final class c extends R.b {
    public static final Parcelable.Creator<c> CREATOR = new f(5);

    /* renamed from: e, reason: collision with root package name */
    public final int f2206e;

    public c(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f2206e = parcel.readInt();
    }

    @Override // R.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f2206e);
    }

    public c(AbsSavedState absSavedState, SideSheetBehavior sideSheetBehavior) {
        super(absSavedState);
        this.f2206e = sideSheetBehavior.f6055h;
    }
}
