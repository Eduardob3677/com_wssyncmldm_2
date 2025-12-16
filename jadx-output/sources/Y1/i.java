package Y1;

import android.os.Parcel;
import android.os.Parcelable;
import i3.x;

/* loaded from: classes.dex */
public final class i extends c {
    public static final Parcelable.Creator<i> CREATOR = new p(0);

    /* renamed from: c, reason: collision with root package name */
    public final String f2932c;

    /* renamed from: d, reason: collision with root package name */
    public final String f2933d;

    public i(String str, String str2) {
        if (str == null && str2 == null) {
            throw new IllegalArgumentException("Must specify an idToken or an accessToken.");
        }
        if (str != null && str.length() == 0) {
            throw new IllegalArgumentException("idToken cannot be empty");
        }
        if (str2 != null && str2.length() == 0) {
            throw new IllegalArgumentException("accessToken cannot be empty");
        }
        this.f2932c = str;
        this.f2933d = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f2932c);
        x.p1(parcel, 2, this.f2933d);
        x.v1(parcel, iT1);
    }
}
