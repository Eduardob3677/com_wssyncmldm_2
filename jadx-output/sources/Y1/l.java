package Y1;

import android.os.Parcel;
import android.os.Parcelable;
import c1.AbstractC0213D;
import i3.x;

/* loaded from: classes.dex */
public final class l extends c {
    public static final Parcelable.Creator<l> CREATOR = new p(3);

    /* renamed from: c, reason: collision with root package name */
    public final String f2943c;

    public l(String str) {
        AbstractC0213D.c(str);
        this.f2943c = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f2943c);
        x.v1(parcel, iT1);
    }
}
