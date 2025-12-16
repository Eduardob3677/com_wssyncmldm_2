package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b0 implements Parcelable {
    public static final Parcelable.Creator<b0> CREATOR = new E0.a(13);

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f3825c;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f3826d;

    /* renamed from: e, reason: collision with root package name */
    public C0110b[] f3827e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public String f3828g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f3829h;

    /* renamed from: i, reason: collision with root package name */
    public ArrayList f3830i;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f3831j;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        parcel.writeStringList(this.f3825c);
        parcel.writeStringList(this.f3826d);
        parcel.writeTypedArray(this.f3827e, i5);
        parcel.writeInt(this.f);
        parcel.writeString(this.f3828g);
        parcel.writeStringList(this.f3829h);
        parcel.writeTypedList(this.f3830i);
        parcel.writeTypedList(this.f3831j);
    }
}
