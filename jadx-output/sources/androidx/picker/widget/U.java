package androidx.picker.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;

/* loaded from: classes.dex */
public final class U extends View.BaseSavedState {
    public static final Parcelable.Creator<U> CREATOR = new E0.a(16);

    /* renamed from: c, reason: collision with root package name */
    public final int f4462c;

    /* renamed from: d, reason: collision with root package name */
    public final int f4463d;

    public U(Parcelable parcelable, int i5, int i6) {
        super(parcelable);
        this.f4462c = i5;
        this.f4463d = i6;
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        super.writeToParcel(parcel, i5);
        parcel.writeInt(this.f4462c);
        parcel.writeInt(this.f4463d);
    }

    public U(Parcel parcel) {
        super(parcel);
        this.f4462c = parcel.readInt();
        this.f4463d = parcel.readInt();
    }
}
