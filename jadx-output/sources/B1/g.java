package B1;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes.dex */
public final class g extends R.b {
    public static final Parcelable.Creator<g> CREATOR = new f(0);

    /* renamed from: e, reason: collision with root package name */
    public final int f204e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f205g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f206h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f207i;

    public g(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f204e = parcel.readInt();
        this.f = parcel.readInt();
        this.f205g = parcel.readInt() == 1;
        this.f206h = parcel.readInt() == 1;
        this.f207i = parcel.readInt() == 1;
    }

    @Override // R.b, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f204e);
        parcel.writeInt(this.f);
        parcel.writeInt(this.f205g ? 1 : 0);
        parcel.writeInt(this.f206h ? 1 : 0);
        parcel.writeInt(this.f207i ? 1 : 0);
    }

    public g(AbsSavedState absSavedState, BottomSheetBehavior bottomSheetBehavior) {
        super(absSavedState);
        this.f204e = bottomSheetBehavior.f5847L;
        this.f = bottomSheetBehavior.f5870e;
        this.f205g = bottomSheetBehavior.f5864b;
        this.f206h = bottomSheetBehavior.f5844I;
        this.f207i = bottomSheetBehavior.f5845J;
    }
}
