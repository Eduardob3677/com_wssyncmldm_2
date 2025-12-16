package Y1;

import android.os.Parcel;
import android.os.Parcelable;
import c1.AbstractC0213D;
import com.google.android.gms.internal.p000firebaseauthapi.C4;
import com.google.android.gms.internal.p000firebaseauthapi.N4;
import i3.x;

/* loaded from: classes.dex */
public final class r extends c {
    public static final Parcelable.Creator<r> CREATOR = new p(7);

    /* renamed from: c, reason: collision with root package name */
    public final String f2951c;

    /* renamed from: d, reason: collision with root package name */
    public final String f2952d;

    /* renamed from: e, reason: collision with root package name */
    public final String f2953e;
    public final N4 f;

    /* renamed from: g, reason: collision with root package name */
    public final String f2954g;

    /* renamed from: h, reason: collision with root package name */
    public final String f2955h;

    /* renamed from: i, reason: collision with root package name */
    public final String f2956i;

    public r(String str, String str2, String str3, N4 n42, String str4, String str5, String str6) {
        int i5 = C4.f5349a;
        this.f2951c = str == null ? "" : str;
        this.f2952d = str2;
        this.f2953e = str3;
        this.f = n42;
        this.f2954g = str4;
        this.f2955h = str5;
        this.f2956i = str6;
    }

    public static r e(N4 n42) {
        AbstractC0213D.f("Must specify a non-null webSignInCredential", n42);
        return new r(null, null, null, n42, null, null, null);
    }

    public final c d() {
        return new r(this.f2951c, this.f2952d, this.f2953e, this.f, this.f2954g, this.f2955h, this.f2956i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f2951c);
        x.p1(parcel, 2, this.f2952d);
        x.p1(parcel, 3, this.f2953e);
        x.o1(parcel, 4, this.f, i5);
        x.p1(parcel, 5, this.f2954g);
        x.p1(parcel, 6, this.f2955h);
        x.p1(parcel, 7, this.f2956i);
        x.v1(parcel, iT1);
    }
}
