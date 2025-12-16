package j0;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public final class j0 implements Parcelable {
    public static final Parcelable.Creator<j0> CREATOR = new com.google.android.material.datepicker.d(4);

    /* renamed from: c, reason: collision with root package name */
    public int f7473c;

    /* renamed from: d, reason: collision with root package name */
    public int f7474d;

    /* renamed from: e, reason: collision with root package name */
    public int f7475e;
    public int[] f;

    /* renamed from: g, reason: collision with root package name */
    public int f7476g;

    /* renamed from: h, reason: collision with root package name */
    public int[] f7477h;

    /* renamed from: i, reason: collision with root package name */
    public List f7478i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f7479j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f7480k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f7481l;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        parcel.writeInt(this.f7473c);
        parcel.writeInt(this.f7474d);
        parcel.writeInt(this.f7475e);
        if (this.f7475e > 0) {
            parcel.writeIntArray(this.f);
        }
        parcel.writeInt(this.f7476g);
        if (this.f7476g > 0) {
            parcel.writeIntArray(this.f7477h);
        }
        parcel.writeInt(this.f7479j ? 1 : 0);
        parcel.writeInt(this.f7480k ? 1 : 0);
        parcel.writeInt(this.f7481l ? 1 : 0);
        parcel.writeList(this.f7478i);
    }
}
