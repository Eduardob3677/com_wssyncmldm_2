package androidx.fragment.app;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class W implements Parcelable {
    public static final Parcelable.Creator<W> CREATOR = new E0.a(12);

    /* renamed from: c, reason: collision with root package name */
    public String f3769c;

    /* renamed from: d, reason: collision with root package name */
    public int f3770d;

    public W(String str, int i5) {
        this.f3769c = str;
        this.f3770d = i5;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        parcel.writeString(this.f3769c);
        parcel.writeInt(this.f3770d);
    }
}
