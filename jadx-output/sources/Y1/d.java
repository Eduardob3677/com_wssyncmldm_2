package Y1;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import c1.AbstractC0213D;
import i3.x;

/* loaded from: classes.dex */
public final class d extends c {
    public static final Parcelable.Creator<d> CREATOR = new p(8);

    /* renamed from: c, reason: collision with root package name */
    public final String f2926c;

    /* renamed from: d, reason: collision with root package name */
    public final String f2927d;

    /* renamed from: e, reason: collision with root package name */
    public final String f2928e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2929g;

    public d(String str, String str2, String str3, String str4, boolean z4) {
        AbstractC0213D.c(str);
        this.f2926c = str;
        if (TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3)) {
            throw new IllegalArgumentException("Cannot create an EmailAuthCredential without a password or emailLink.");
        }
        this.f2927d = str2;
        this.f2928e = str3;
        this.f = str4;
        this.f2929g = z4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f2926c);
        x.p1(parcel, 2, this.f2927d);
        x.p1(parcel, 3, this.f2928e);
        x.p1(parcel, 4, this.f);
        boolean z4 = this.f2929g;
        x.w1(parcel, 5, 4);
        parcel.writeInt(z4 ? 1 : 0);
        x.v1(parcel, iT1);
    }
}
