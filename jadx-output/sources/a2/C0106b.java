package a2;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.p000firebaseauthapi.C0373y4;
import f1.AbstractC0420a;
import java.util.ArrayList;

/* renamed from: a2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0106b implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3041a;

    public /* synthetic */ C0106b(int i5) {
        this.f3041a = i5;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f3041a) {
            case 0:
                int iQ0 = AbstractC0420a.q0(parcel);
                long jE0 = 0;
                long jE02 = 0;
                while (parcel.dataPosition() < iQ0) {
                    int i5 = parcel.readInt();
                    int i6 = 65535 & i5;
                    if (i6 == 1) {
                        jE0 = AbstractC0420a.e0(parcel, i5);
                    } else if (i6 != 2) {
                        AbstractC0420a.n0(parcel, i5);
                    } else {
                        jE02 = AbstractC0420a.e0(parcel, i5);
                    }
                }
                AbstractC0420a.u(parcel, iQ0);
                return new t(jE0, jE02);
            case 1:
                int iQ02 = AbstractC0420a.q0(parcel);
                ArrayList arrayListQ = null;
                while (parcel.dataPosition() < iQ02) {
                    int i7 = parcel.readInt();
                    if ((65535 & i7) != 1) {
                        AbstractC0420a.n0(parcel, i7);
                    } else {
                        arrayListQ = AbstractC0420a.q(parcel, i7, Y1.k.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ02);
                return new f(arrayListQ);
            case 2:
                int iQ03 = AbstractC0420a.q0(parcel);
                String strN = null;
                boolean zC0 = false;
                String strN2 = null;
                while (parcel.dataPosition() < iQ03) {
                    int i8 = parcel.readInt();
                    int i9 = 65535 & i8;
                    if (i9 == 1) {
                        strN = AbstractC0420a.n(parcel, i8);
                    } else if (i9 == 2) {
                        strN2 = AbstractC0420a.n(parcel, i8);
                    } else if (i9 != 3) {
                        AbstractC0420a.n0(parcel, i8);
                    } else {
                        zC0 = AbstractC0420a.c0(parcel, i8);
                    }
                }
                AbstractC0420a.u(parcel, iQ03);
                return new o(strN, strN2, zC0);
            case 3:
                int iQ04 = AbstractC0420a.q0(parcel);
                s sVar = null;
                o oVar = null;
                Y1.r rVar = null;
                while (parcel.dataPosition() < iQ04) {
                    int i10 = parcel.readInt();
                    int i11 = 65535 & i10;
                    if (i11 == 1) {
                        sVar = (s) AbstractC0420a.l(parcel, i10, s.CREATOR);
                    } else if (i11 == 2) {
                        oVar = (o) AbstractC0420a.l(parcel, i10, o.CREATOR);
                    } else if (i11 != 3) {
                        AbstractC0420a.n0(parcel, i10);
                    } else {
                        rVar = (Y1.r) AbstractC0420a.l(parcel, i10, Y1.r.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ04);
                p pVar = new p();
                pVar.f3068c = sVar;
                pVar.f3069d = oVar;
                pVar.f3070e = rVar;
                return pVar;
            case 4:
                int iQ05 = AbstractC0420a.q0(parcel);
                String strN3 = null;
                String strN4 = null;
                String strN5 = null;
                String strN6 = null;
                String strN7 = null;
                String strN8 = null;
                String strN9 = null;
                boolean zC02 = false;
                while (parcel.dataPosition() < iQ05) {
                    int i12 = parcel.readInt();
                    switch (65535 & i12) {
                        case 1:
                            strN3 = AbstractC0420a.n(parcel, i12);
                            break;
                        case 2:
                            strN4 = AbstractC0420a.n(parcel, i12);
                            break;
                        case 3:
                            strN7 = AbstractC0420a.n(parcel, i12);
                            break;
                        case 4:
                            strN6 = AbstractC0420a.n(parcel, i12);
                            break;
                        case 5:
                            strN5 = AbstractC0420a.n(parcel, i12);
                            break;
                        case 6:
                            strN8 = AbstractC0420a.n(parcel, i12);
                            break;
                        case 7:
                            zC02 = AbstractC0420a.c0(parcel, i12);
                            break;
                        case 8:
                            strN9 = AbstractC0420a.n(parcel, i12);
                            break;
                        default:
                            AbstractC0420a.n0(parcel, i12);
                            break;
                    }
                }
                AbstractC0420a.u(parcel, iQ05);
                return new q(strN3, strN4, strN5, strN6, strN7, strN8, zC02, strN9);
            default:
                int iQ06 = AbstractC0420a.q0(parcel);
                boolean zC03 = false;
                C0373y4 c0373y4 = null;
                q qVar = null;
                String strN10 = null;
                String strN11 = null;
                ArrayList arrayListQ2 = null;
                ArrayList arrayListO = null;
                String strN12 = null;
                Boolean boolValueOf = null;
                t tVar = null;
                Y1.r rVar2 = null;
                f fVar = null;
                while (parcel.dataPosition() < iQ06) {
                    int i13 = parcel.readInt();
                    switch (i13 & 65535) {
                        case 1:
                            c0373y4 = (C0373y4) AbstractC0420a.l(parcel, i13, C0373y4.CREATOR);
                            break;
                        case 2:
                            qVar = (q) AbstractC0420a.l(parcel, i13, q.CREATOR);
                            break;
                        case 3:
                            strN10 = AbstractC0420a.n(parcel, i13);
                            break;
                        case 4:
                            strN11 = AbstractC0420a.n(parcel, i13);
                            break;
                        case 5:
                            arrayListQ2 = AbstractC0420a.q(parcel, i13, q.CREATOR);
                            break;
                        case 6:
                            arrayListO = AbstractC0420a.o(parcel, i13);
                            break;
                        case 7:
                            strN12 = AbstractC0420a.n(parcel, i13);
                            break;
                        case 8:
                            int iF0 = AbstractC0420a.f0(parcel, i13);
                            if (iF0 != 0) {
                                AbstractC0420a.v0(parcel, iF0, 4);
                                boolValueOf = Boolean.valueOf(parcel.readInt() != 0);
                                break;
                            } else {
                                boolValueOf = null;
                                break;
                            }
                        case 9:
                            tVar = (t) AbstractC0420a.l(parcel, i13, t.CREATOR);
                            break;
                        case 10:
                            zC03 = AbstractC0420a.c0(parcel, i13);
                            break;
                        case 11:
                            rVar2 = (Y1.r) AbstractC0420a.l(parcel, i13, Y1.r.CREATOR);
                            break;
                        case 12:
                            fVar = (f) AbstractC0420a.l(parcel, i13, f.CREATOR);
                            break;
                        default:
                            AbstractC0420a.n0(parcel, i13);
                            break;
                    }
                }
                AbstractC0420a.u(parcel, iQ06);
                return new s(c0373y4, qVar, strN10, strN11, arrayListQ2, arrayListO, strN12, boolValueOf, tVar, zC03, rVar2, fVar);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i5) {
        switch (this.f3041a) {
            case 0:
                return new t[i5];
            case 1:
                return new f[i5];
            case 2:
                return new o[i5];
            case 3:
                return new p[i5];
            case 4:
                return new q[i5];
            default:
                return new s[i5];
        }
    }
}
