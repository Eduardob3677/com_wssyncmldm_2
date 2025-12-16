package c1;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import d1.AbstractC0387a;

/* loaded from: classes.dex */
public final class t extends AbstractC0387a {
    public static final Parcelable.Creator<t> CREATOR = new E0.a(24);

    /* renamed from: c, reason: collision with root package name */
    public final int f5255c;

    /* renamed from: d, reason: collision with root package name */
    public final Account f5256d;

    /* renamed from: e, reason: collision with root package name */
    public final int f5257e;
    public final GoogleSignInAccount f;

    public t(int i5, Account account, int i6, GoogleSignInAccount googleSignInAccount) {
        this.f5255c = i5;
        this.f5256d = account;
        this.f5257e = i6;
        this.f = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = i3.x.t1(parcel, 20293);
        i3.x.w1(parcel, 1, 4);
        parcel.writeInt(this.f5255c);
        i3.x.o1(parcel, 2, this.f5256d, i5);
        i3.x.w1(parcel, 3, 4);
        parcel.writeInt(this.f5257e);
        i3.x.o1(parcel, 4, this.f, i5);
        i3.x.v1(parcel, iT1);
    }
}
