package Y1;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import c1.AbstractC0213D;
import i3.x;

/* loaded from: classes.dex */
public final class j extends c implements Cloneable {
    public static final Parcelable.Creator<j> CREATOR = new p(1);

    /* renamed from: c, reason: collision with root package name */
    public final String f2934c;

    /* renamed from: d, reason: collision with root package name */
    public final String f2935d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f2936e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f2937g;

    /* renamed from: h, reason: collision with root package name */
    public final String f2938h;

    /* renamed from: i, reason: collision with root package name */
    public final String f2939i;

    public j(String str, String str2, boolean z4, String str3, boolean z5, String str4, String str5) {
        boolean z6 = true;
        if ((!z4 || TextUtils.isEmpty(str3) || !TextUtils.isEmpty(str5)) && ((!z4 || !TextUtils.isEmpty(str3) || TextUtils.isEmpty(str5)) && ((TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) && (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4))))) {
            z6 = false;
        }
        AbstractC0213D.a("Cannot create PhoneAuthCredential without either verificationProof, sessionInfo, temporary proof, or enrollment ID.", z6);
        this.f2934c = str;
        this.f2935d = str2;
        this.f2936e = z4;
        this.f = str3;
        this.f2937g = z5;
        this.f2938h = str4;
        this.f2939i = str5;
    }

    public final Object clone() {
        return new j(this.f2934c, this.f2935d, this.f2936e, this.f, this.f2937g, this.f2938h, this.f2939i);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = x.t1(parcel, 20293);
        x.p1(parcel, 1, this.f2934c);
        x.p1(parcel, 2, this.f2935d);
        x.w1(parcel, 3, 4);
        parcel.writeInt(this.f2936e ? 1 : 0);
        x.p1(parcel, 4, this.f);
        boolean z4 = this.f2937g;
        x.w1(parcel, 5, 4);
        parcel.writeInt(z4 ? 1 : 0);
        x.p1(parcel, 6, this.f2938h);
        x.p1(parcel, 7, this.f2939i);
        x.v1(parcel, iT1);
    }
}
