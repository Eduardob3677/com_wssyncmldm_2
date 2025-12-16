package E0;

import O.m;
import android.accounts.Account;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.activity.result.j;
import androidx.fragment.app.C0110b;
import androidx.fragment.app.C0111c;
import androidx.fragment.app.W;
import androidx.fragment.app.b0;
import androidx.fragment.app.e0;
import androidx.picker.widget.C0170l;
import androidx.picker.widget.U;
import androidx.preference.A;
import androidx.preference.C0183c;
import androidx.preference.C0186f;
import androidx.preference.C0189i;
import androidx.preference.C0193m;
import androidx.preference.L;
import androidx.preference.M;
import androidx.versionedparcelable.ParcelImpl;
import c1.C0214E;
import c1.t;
import c1.u;
import c1.x;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.material.datepicker.e;
import com.google.android.material.datepicker.o;
import d3.i;
import f1.AbstractC0420a;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class a implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f508a;

    public /* synthetic */ a(int i5) {
        this.f508a = i5;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f508a) {
            case 0:
                return new ParcelImpl(parcel);
            case 1:
                E1.b bVar = new E1.b(parcel);
                bVar.f520c = ((Integer) parcel.readValue(E1.b.class.getClassLoader())).intValue();
                return bVar;
            case 2:
                m mVar = new m(parcel);
                mVar.f1939c = parcel.readInt();
                return mVar;
            case 3:
                int iQ0 = AbstractC0420a.q0(parcel);
                int iD0 = 0;
                String strN = null;
                String strN2 = null;
                String strN3 = null;
                String strN4 = null;
                Uri uri = null;
                String strN5 = null;
                String strN6 = null;
                ArrayList arrayListQ = null;
                String strN7 = null;
                String strN8 = null;
                long jE0 = 0;
                while (parcel.dataPosition() < iQ0) {
                    int i5 = parcel.readInt();
                    switch (65535 & i5) {
                        case 1:
                            iD0 = AbstractC0420a.d0(parcel, i5);
                            break;
                        case 2:
                            strN = AbstractC0420a.n(parcel, i5);
                            break;
                        case 3:
                            strN2 = AbstractC0420a.n(parcel, i5);
                            break;
                        case 4:
                            strN3 = AbstractC0420a.n(parcel, i5);
                            break;
                        case 5:
                            strN4 = AbstractC0420a.n(parcel, i5);
                            break;
                        case 6:
                            uri = (Uri) AbstractC0420a.l(parcel, i5, Uri.CREATOR);
                            break;
                        case 7:
                            strN5 = AbstractC0420a.n(parcel, i5);
                            break;
                        case 8:
                            jE0 = AbstractC0420a.e0(parcel, i5);
                            break;
                        case 9:
                            strN6 = AbstractC0420a.n(parcel, i5);
                            break;
                        case 10:
                            arrayListQ = AbstractC0420a.q(parcel, i5, Scope.CREATOR);
                            break;
                        case 11:
                            strN7 = AbstractC0420a.n(parcel, i5);
                            break;
                        case 12:
                            strN8 = AbstractC0420a.n(parcel, i5);
                            break;
                        default:
                            AbstractC0420a.n0(parcel, i5);
                            break;
                    }
                }
                AbstractC0420a.u(parcel, iQ0);
                return new GoogleSignInAccount(iD0, strN, strN2, strN3, strN4, uri, strN5, jE0, strN6, arrayListQ, strN7, strN8);
            case 4:
                int iQ02 = AbstractC0420a.q0(parcel);
                int iD02 = 0;
                PendingIntent pendingIntent = null;
                String strN9 = null;
                int iD03 = 0;
                while (parcel.dataPosition() < iQ02) {
                    int i6 = parcel.readInt();
                    int i7 = 65535 & i6;
                    if (i7 == 1) {
                        iD02 = AbstractC0420a.d0(parcel, i6);
                    } else if (i7 == 2) {
                        iD03 = AbstractC0420a.d0(parcel, i6);
                    } else if (i7 == 3) {
                        pendingIntent = (PendingIntent) AbstractC0420a.l(parcel, i6, PendingIntent.CREATOR);
                    } else if (i7 != 4) {
                        AbstractC0420a.n0(parcel, i6);
                    } else {
                        strN9 = AbstractC0420a.n(parcel, i6);
                    }
                }
                AbstractC0420a.u(parcel, iQ02);
                return new Z0.a(iD02, iD03, pendingIntent, strN9);
            case 5:
                int iQ03 = AbstractC0420a.q0(parcel);
                String strN10 = null;
                int iD04 = 0;
                long jE02 = -1;
                while (parcel.dataPosition() < iQ03) {
                    int i8 = parcel.readInt();
                    int i9 = 65535 & i8;
                    if (i9 == 1) {
                        strN10 = AbstractC0420a.n(parcel, i8);
                    } else if (i9 == 2) {
                        iD04 = AbstractC0420a.d0(parcel, i8);
                    } else if (i9 != 3) {
                        AbstractC0420a.n0(parcel, i8);
                    } else {
                        jE02 = AbstractC0420a.e0(parcel, i8);
                    }
                }
                AbstractC0420a.u(parcel, iQ03);
                return new Z0.c(jE02, iD04, strN10);
            case 6:
                int iQ04 = AbstractC0420a.q0(parcel);
                int iD05 = 0;
                String strN11 = null;
                while (parcel.dataPosition() < iQ04) {
                    int i10 = parcel.readInt();
                    int i11 = 65535 & i10;
                    if (i11 == 1) {
                        iD05 = AbstractC0420a.d0(parcel, i10);
                    } else if (i11 != 2) {
                        AbstractC0420a.n0(parcel, i10);
                    } else {
                        strN11 = AbstractC0420a.n(parcel, i10);
                    }
                }
                AbstractC0420a.u(parcel, iQ04);
                return new Scope(iD05, strN11);
            case 7:
                int iQ05 = AbstractC0420a.q0(parcel);
                int iD06 = 0;
                String strN12 = null;
                PendingIntent pendingIntent2 = null;
                int iD07 = 0;
                while (parcel.dataPosition() < iQ05) {
                    int i12 = parcel.readInt();
                    int i13 = 65535 & i12;
                    if (i13 == 1) {
                        iD07 = AbstractC0420a.d0(parcel, i12);
                    } else if (i13 == 2) {
                        strN12 = AbstractC0420a.n(parcel, i12);
                    } else if (i13 == 3) {
                        pendingIntent2 = (PendingIntent) AbstractC0420a.l(parcel, i12, PendingIntent.CREATOR);
                    } else if (i13 != 1000) {
                        AbstractC0420a.n0(parcel, i12);
                    } else {
                        iD06 = AbstractC0420a.d0(parcel, i12);
                    }
                }
                AbstractC0420a.u(parcel, iQ05);
                return new Status(iD06, iD07, pendingIntent2, strN12);
            case 8:
                return new androidx.activity.result.a(parcel);
            case 9:
                i.e("inParcel", parcel);
                Parcelable parcelable = parcel.readParcelable(IntentSender.class.getClassLoader());
                i.b(parcelable);
                return new j((IntentSender) parcelable, (Intent) parcel.readParcelable(Intent.class.getClassLoader()), parcel.readInt(), parcel.readInt());
            case 10:
                return new C0110b(parcel);
            case 11:
                return new C0111c(parcel);
            case 12:
                W w2 = new W();
                w2.f3769c = parcel.readString();
                w2.f3770d = parcel.readInt();
                return w2;
            case 13:
                b0 b0Var = new b0();
                b0Var.f3828g = null;
                b0Var.f3829h = new ArrayList();
                b0Var.f3830i = new ArrayList();
                b0Var.f3825c = parcel.createStringArrayList();
                b0Var.f3826d = parcel.createStringArrayList();
                b0Var.f3827e = (C0110b[]) parcel.createTypedArray(C0110b.CREATOR);
                b0Var.f = parcel.readInt();
                b0Var.f3828g = parcel.readString();
                b0Var.f3829h = parcel.createStringArrayList();
                b0Var.f3830i = parcel.createTypedArrayList(C0111c.CREATOR);
                b0Var.f3831j = parcel.createTypedArrayList(W.CREATOR);
                return b0Var;
            case 14:
                return new e0(parcel);
            case 15:
                return new C0170l(parcel);
            case 16:
                return new U(parcel);
            case 17:
                return new C0183c(parcel);
            case 18:
                return new C0186f(parcel);
            case 19:
                return new C0189i(parcel);
            case 20:
                return new C0193m(parcel);
            case 21:
                return new A(parcel);
            case 22:
                return new L(parcel);
            case 23:
                return new M(parcel);
            case 24:
                int iQ06 = AbstractC0420a.q0(parcel);
                int iD08 = 0;
                Account account = null;
                GoogleSignInAccount googleSignInAccount = null;
                int iD09 = 0;
                while (parcel.dataPosition() < iQ06) {
                    int i14 = parcel.readInt();
                    int i15 = 65535 & i14;
                    if (i15 == 1) {
                        iD08 = AbstractC0420a.d0(parcel, i14);
                    } else if (i15 == 2) {
                        account = (Account) AbstractC0420a.l(parcel, i14, Account.CREATOR);
                    } else if (i15 == 3) {
                        iD09 = AbstractC0420a.d0(parcel, i14);
                    } else if (i15 != 4) {
                        AbstractC0420a.n0(parcel, i14);
                    } else {
                        googleSignInAccount = (GoogleSignInAccount) AbstractC0420a.l(parcel, i14, GoogleSignInAccount.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ06);
                return new t(iD08, account, iD09, googleSignInAccount);
            case 25:
                int iQ07 = AbstractC0420a.q0(parcel);
                int iD010 = 0;
                boolean zC0 = false;
                boolean zC02 = false;
                IBinder strongBinder = null;
                Z0.a aVar = null;
                while (parcel.dataPosition() < iQ07) {
                    int i16 = parcel.readInt();
                    int i17 = 65535 & i16;
                    if (i17 == 1) {
                        iD010 = AbstractC0420a.d0(parcel, i16);
                    } else if (i17 == 2) {
                        int iF0 = AbstractC0420a.f0(parcel, i16);
                        int iDataPosition = parcel.dataPosition();
                        if (iF0 == 0) {
                            strongBinder = null;
                        } else {
                            strongBinder = parcel.readStrongBinder();
                            parcel.setDataPosition(iDataPosition + iF0);
                        }
                    } else if (i17 == 3) {
                        aVar = (Z0.a) AbstractC0420a.l(parcel, i16, Z0.a.CREATOR);
                    } else if (i17 == 4) {
                        zC0 = AbstractC0420a.c0(parcel, i16);
                    } else if (i17 != 5) {
                        AbstractC0420a.n0(parcel, i16);
                    } else {
                        zC02 = AbstractC0420a.c0(parcel, i16);
                    }
                }
                AbstractC0420a.u(parcel, iQ07);
                return new u(iD010, strongBinder, aVar, zC0, zC02);
            case 26:
                int iQ08 = AbstractC0420a.q0(parcel);
                Bundle bundleH = null;
                int iD011 = 0;
                Z0.c[] cVarArr = null;
                while (parcel.dataPosition() < iQ08) {
                    int i18 = parcel.readInt();
                    int i19 = 65535 & i18;
                    if (i19 == 1) {
                        bundleH = AbstractC0420a.h(parcel, i18);
                    } else if (i19 == 2) {
                        cVarArr = (Z0.c[]) AbstractC0420a.p(parcel, i18, Z0.c.CREATOR);
                    } else if (i19 != 3) {
                        AbstractC0420a.n0(parcel, i18);
                    } else {
                        iD011 = AbstractC0420a.d0(parcel, i18);
                    }
                }
                AbstractC0420a.u(parcel, iQ08);
                x xVar = new x();
                xVar.f5266c = bundleH;
                xVar.f5267d = cVarArr;
                xVar.f5268e = iD011;
                return xVar;
            case 27:
                int iQ09 = AbstractC0420a.q0(parcel);
                int iD012 = 0;
                int iD013 = 0;
                int iD014 = 0;
                boolean zC03 = false;
                int iD015 = 0;
                String strN13 = null;
                IBinder strongBinder2 = null;
                Scope[] scopeArr = null;
                Bundle bundleH2 = null;
                Account account2 = null;
                Z0.c[] cVarArr2 = null;
                Z0.c[] cVarArr3 = null;
                while (parcel.dataPosition() < iQ09) {
                    int i20 = parcel.readInt();
                    switch (65535 & i20) {
                        case 1:
                            iD012 = AbstractC0420a.d0(parcel, i20);
                            break;
                        case 2:
                            iD013 = AbstractC0420a.d0(parcel, i20);
                            break;
                        case 3:
                            iD014 = AbstractC0420a.d0(parcel, i20);
                            break;
                        case 4:
                            strN13 = AbstractC0420a.n(parcel, i20);
                            break;
                        case 5:
                            int iF02 = AbstractC0420a.f0(parcel, i20);
                            int iDataPosition2 = parcel.dataPosition();
                            if (iF02 != 0) {
                                strongBinder2 = parcel.readStrongBinder();
                                parcel.setDataPosition(iDataPosition2 + iF02);
                                break;
                            } else {
                                strongBinder2 = null;
                                break;
                            }
                        case 6:
                            scopeArr = (Scope[]) AbstractC0420a.p(parcel, i20, Scope.CREATOR);
                            break;
                        case 7:
                            bundleH2 = AbstractC0420a.h(parcel, i20);
                            break;
                        case 8:
                            account2 = (Account) AbstractC0420a.l(parcel, i20, Account.CREATOR);
                            break;
                        case 9:
                        default:
                            AbstractC0420a.n0(parcel, i20);
                            break;
                        case 10:
                            cVarArr2 = (Z0.c[]) AbstractC0420a.p(parcel, i20, Z0.c.CREATOR);
                            break;
                        case 11:
                            cVarArr3 = (Z0.c[]) AbstractC0420a.p(parcel, i20, Z0.c.CREATOR);
                            break;
                        case 12:
                            zC03 = AbstractC0420a.c0(parcel, i20);
                            break;
                        case 13:
                            iD015 = AbstractC0420a.d0(parcel, i20);
                            break;
                    }
                }
                AbstractC0420a.u(parcel, iQ09);
                return new c1.j(iD012, iD013, iD014, strN13, strongBinder2, scopeArr, bundleH2, account2, cVarArr2, cVarArr3, zC03, iD015);
            case 28:
                int iQ010 = AbstractC0420a.q0(parcel);
                int iD016 = 0;
                while (parcel.dataPosition() < iQ010) {
                    int i21 = parcel.readInt();
                    if ((65535 & i21) != 1) {
                        AbstractC0420a.n0(parcel, i21);
                    } else {
                        iD016 = AbstractC0420a.d0(parcel, i21);
                    }
                }
                AbstractC0420a.u(parcel, iQ010);
                return new C0214E(iD016);
            default:
                return new com.google.android.material.datepicker.b((o) parcel.readParcelable(o.class.getClassLoader()), (o) parcel.readParcelable(o.class.getClassLoader()), (e) parcel.readParcelable(e.class.getClassLoader()), (o) parcel.readParcelable(o.class.getClassLoader()), parcel.readInt());
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i5) {
        switch (this.f508a) {
            case 0:
                return new ParcelImpl[i5];
            case 1:
                return new E1.b[i5];
            case 2:
                return new m[i5];
            case 3:
                return new GoogleSignInAccount[i5];
            case 4:
                return new Z0.a[i5];
            case 5:
                return new Z0.c[i5];
            case 6:
                return new Scope[i5];
            case 7:
                return new Status[i5];
            case 8:
                return new androidx.activity.result.a[i5];
            case 9:
                return new j[i5];
            case 10:
                return new C0110b[i5];
            case 11:
                return new C0111c[i5];
            case 12:
                return new W[i5];
            case 13:
                return new b0[i5];
            case 14:
                return new e0[i5];
            case 15:
                return new C0170l[i5];
            case 16:
                return new U[i5];
            case 17:
                return new C0183c[i5];
            case 18:
                return new C0186f[i5];
            case 19:
                return new C0189i[i5];
            case 20:
                return new C0193m[i5];
            case 21:
                return new A[i5];
            case 22:
                return new L[i5];
            case 23:
                return new M[i5];
            case 24:
                return new t[i5];
            case 25:
                return new u[i5];
            case 26:
                return new x[i5];
            case 27:
                return new c1.j[i5];
            case 28:
                return new C0214E[i5];
            default:
                return new com.google.android.material.datepicker.b[i5];
        }
    }
}
