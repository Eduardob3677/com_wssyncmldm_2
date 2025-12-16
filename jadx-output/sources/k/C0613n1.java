package k;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* renamed from: k.n1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0613n1 extends View.BaseSavedState {
    public static final Parcelable.Creator<C0613n1> CREATOR = new com.google.android.material.datepicker.d(7);

    /* renamed from: c, reason: collision with root package name */
    public int f7941c;

    /* renamed from: d, reason: collision with root package name */
    public int f7942d;

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f7941c);
        parcel.writeInt(this.f7942d);
    }
}
