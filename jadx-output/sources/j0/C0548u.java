package j0;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: j0.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0548u implements Parcelable {
    public static final Parcelable.Creator<C0548u> CREATOR = new com.google.android.material.datepicker.d(2);

    /* renamed from: c, reason: collision with root package name */
    public int f7577c;

    /* renamed from: d, reason: collision with root package name */
    public int f7578d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7579e;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        parcel.writeInt(this.f7577c);
        parcel.writeInt(this.f7578d);
        parcel.writeInt(this.f7579e ? 1 : 0);
    }
}
