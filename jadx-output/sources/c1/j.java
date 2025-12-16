package c1;

import android.accounts.Account;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Scope;
import d1.AbstractC0387a;

/* loaded from: classes.dex */
public final class j extends AbstractC0387a {
    public static final Parcelable.Creator<j> CREATOR = new E0.a(27);

    /* renamed from: c, reason: collision with root package name */
    public final int f5213c;

    /* renamed from: d, reason: collision with root package name */
    public final int f5214d;

    /* renamed from: e, reason: collision with root package name */
    public final int f5215e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public IBinder f5216g;

    /* renamed from: h, reason: collision with root package name */
    public Scope[] f5217h;

    /* renamed from: i, reason: collision with root package name */
    public Bundle f5218i;

    /* renamed from: j, reason: collision with root package name */
    public Account f5219j;

    /* renamed from: k, reason: collision with root package name */
    public Z0.c[] f5220k;

    /* renamed from: l, reason: collision with root package name */
    public Z0.c[] f5221l;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f5222m;
    public final int n;

    public j(int i5) {
        this.f5213c = 4;
        this.f5215e = Z0.f.f3006a;
        this.f5214d = i5;
        this.f5222m = true;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i5) {
        int iT1 = i3.x.t1(parcel, 20293);
        i3.x.w1(parcel, 1, 4);
        parcel.writeInt(this.f5213c);
        i3.x.w1(parcel, 2, 4);
        parcel.writeInt(this.f5214d);
        i3.x.w1(parcel, 3, 4);
        parcel.writeInt(this.f5215e);
        i3.x.p1(parcel, 4, this.f);
        IBinder iBinder = this.f5216g;
        if (iBinder != null) {
            int iT12 = i3.x.t1(parcel, 5);
            parcel.writeStrongBinder(iBinder);
            i3.x.v1(parcel, iT12);
        }
        i3.x.r1(parcel, 6, this.f5217h, i5);
        i3.x.n1(parcel, 7, this.f5218i);
        i3.x.o1(parcel, 8, this.f5219j, i5);
        i3.x.r1(parcel, 10, this.f5220k, i5);
        i3.x.r1(parcel, 11, this.f5221l, i5);
        i3.x.w1(parcel, 12, 4);
        parcel.writeInt(this.f5222m ? 1 : 0);
        i3.x.w1(parcel, 13, 4);
        parcel.writeInt(this.n);
        i3.x.v1(parcel, iT1);
    }

    public j(int i5, int i6, int i7, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, Z0.c[] cVarArr, Z0.c[] cVarArr2, boolean z4, int i8) {
        o oVarQ;
        this.f5213c = i5;
        this.f5214d = i6;
        this.f5215e = i7;
        if ("com.google.android.gms".equals(str)) {
            this.f = "com.google.android.gms";
        } else {
            this.f = str;
        }
        if (i5 < 2) {
            Account accountY = null;
            if (iBinder != null && (oVarQ = AbstractBinderC0215a.q(iBinder)) != null) {
                long jClearCallingIdentity = Binder.clearCallingIdentity();
                try {
                    accountY = ((n) oVarQ).y();
                } catch (RemoteException unused) {
                    Log.w("AccountAccessor", "Remote account accessor probably died");
                } finally {
                    Binder.restoreCallingIdentity(jClearCallingIdentity);
                }
            }
            this.f5219j = accountY;
        } else {
            this.f5216g = iBinder;
            this.f5219j = account;
        }
        this.f5217h = scopeArr;
        this.f5218i = bundle;
        this.f5220k = cVarArr;
        this.f5221l = cVarArr2;
        this.f5222m = z4;
        this.n = i8;
    }
}
