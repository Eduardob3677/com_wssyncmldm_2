package Y1;

import android.os.Parcel;
import android.os.Parcelable;
import c1.AbstractC0213D;
import i3.x;

/* loaded from: classes.dex */
public final class m extends c {
    public static final Parcelable.Creator<m> CREATOR = new p(4);

    /* renamed from: c, reason: collision with root package name */
    public final String f2944c;

    /* renamed from: d, reason: collision with root package name */
    public final String f2945d;

    public m(String str, String str2) {
        AbstractC0213D.c(str);
        this.f2944c = str;
        AbstractC0213D.c(str2);
        this.f2945d = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f2944c);
        x.p1(parcel, 2, this.f2945d);
        x.v1(parcel, iT1);
    }
}
