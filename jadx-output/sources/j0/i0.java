package j0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class i0 implements Parcelable {
    public static final Parcelable.Creator<i0> CREATOR = new com.google.android.material.datepicker.d(3);

    /* renamed from: c, reason: collision with root package name */
    public int f7465c;

    /* renamed from: d, reason: collision with root package name */
    public int f7466d;

    /* renamed from: e, reason: collision with root package name */
    public int[] f7467e;
    public boolean f;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "FullSpanItem{mPosition=" + this.f7465c + ", mGapDir=" + this.f7466d + ", mHasUnwantedGapAfter=" + this.f + ", mGapPerSpan=" + Arrays.toString(this.f7467e) + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        parcel.writeInt(this.f7465c);
        parcel.writeInt(this.f7466d);
        parcel.writeInt(this.f ? 1 : 0);
        int[] iArr = this.f7467e;
        if (iArr == null || iArr.length <= 0) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(iArr.length);
            parcel.writeIntArray(this.f7467e);
        }
    }
}
