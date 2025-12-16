package Y1;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class o extends AbstractC0387a {
    public static final Parcelable.Creator<o> CREATOR = new p(5);

    /* renamed from: c, reason: collision with root package name */
    public String f2946c;

    /* renamed from: d, reason: collision with root package name */
    public String f2947d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2948e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public Uri f2949g;

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 2, this.f2946c);
        x.p1(parcel, 3, this.f2947d);
        x.w1(parcel, 4, 4);
        parcel.writeInt(this.f2948e ? 1 : 0);
        x.w1(parcel, 5, 4);
        parcel.writeInt(this.f ? 1 : 0);
        x.v1(parcel, iT1);
    }
}
