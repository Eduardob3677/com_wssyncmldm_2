package Y1;

import android.os.Parcel;
import android.os.Parcelable;
import d1.AbstractC0387a;
import i3.x;

/* loaded from: classes.dex */
public final class a extends AbstractC0387a {
    public static final Parcelable.Creator<a> CREATOR = new p(6);

    /* renamed from: c, reason: collision with root package name */
    public final String f2914c;

    /* renamed from: d, reason: collision with root package name */
    public final String f2915d;

    /* renamed from: e, reason: collision with root package name */
    public final String f2916e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f2917g;

    /* renamed from: h, reason: collision with root package name */
    public final String f2918h;

    /* renamed from: i, reason: collision with root package name */
    public final boolean f2919i;

    /* renamed from: j, reason: collision with root package name */
    public final String f2920j;

    /* renamed from: k, reason: collision with root package name */
    public final int f2921k;

    /* renamed from: l, reason: collision with root package name */
    public final String f2922l;

    public a(String str, String str2, String str3, String str4, boolean z4, String str5, boolean z5, String str6, int i5, String str7) {
        this.f2914c = str;
        this.f2915d = str2;
        this.f2916e = str3;
        this.f = str4;
        this.f2917g = z4;
        this.f2918h = str5;
        this.f2919i = z5;
        this.f2920j = str6;
        this.f2921k = i5;
        this.f2922l = str7;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f2914c);
        x.p1(parcel, 2, this.f2915d);
        x.p1(parcel, 3, this.f2916e);
        x.p1(parcel, 4, this.f);
        x.w1(parcel, 5, 4);
        parcel.writeInt(this.f2917g ? 1 : 0);
        x.p1(parcel, 6, this.f2918h);
        x.w1(parcel, 7, 4);
        parcel.writeInt(this.f2919i ? 1 : 0);
        x.p1(parcel, 8, this.f2920j);
        x.w1(parcel, 9, 4);
        parcel.writeInt(this.f2921k);
        x.p1(parcel, 10, this.f2922l);
        x.v1(parcel, iT1);
    }
}
