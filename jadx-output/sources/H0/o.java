package H0;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* loaded from: classes.dex */
public final class o extends View.BaseSavedState {
    public static final Parcelable.Creator<o> CREATOR = new B1.f(3);

    /* renamed from: c, reason: collision with root package name */
    public int f854c;

    /* renamed from: d, reason: collision with root package name */
    public int f855d;

    /* renamed from: e, reason: collision with root package name */
    public Parcelable f856e;

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f854c);
        parcel.writeInt(this.f855d);
        parcel.writeParcelable(this.f856e, i5);
    }
}
