package a2;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import d1.InterfaceC0388b;
import i3.x;
import java.util.List;

/* loaded from: classes.dex */
public final class p implements InterfaceC0388b {
    public static final Parcelable.Creator<p> CREATOR = new C0106b(3);

    /* renamed from: c, reason: collision with root package name */
    public s f3068c;

    /* renamed from: d, reason: collision with root package name */
    public o f3069d;

    /* renamed from: e, reason: collision with root package name */
    public Y1.r f3070e;

    public p(s sVar) {
        this.f3068c = sVar;
        List list = sVar.f3081g;
        this.f3069d = null;
        for (int i5 = 0; i5 < list.size(); i5++) {
            if (!TextUtils.isEmpty(((q) list.get(i5)).f3077j)) {
                this.f3069d = new o(((q) list.get(i5)).f3072d, ((q) list.get(i5)).f3077j, sVar.f3086l);
            }
        }
        if (this.f3069d == null) {
            this.f3069d = new o(sVar.f3086l);
        }
        this.f3070e = sVar.f3087m;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.o1(parcel, 1, this.f3068c, i5);
        x.o1(parcel, 2, this.f3069d, i5);
        x.o1(parcel, 3, this.f3070e, i5);
        x.v1(parcel, iT1);
    }
}
