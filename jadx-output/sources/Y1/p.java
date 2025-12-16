package Y1;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.internal.p000firebaseauthapi.N4;
import f1.AbstractC0420a;

/* loaded from: classes.dex */
public final class p implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2950a;

    public /* synthetic */ p(int i5) {
        this.f2950a = i5;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f2950a) {
            case 0:
                int iQ0 = AbstractC0420a.q0(parcel);
                String strN = null;
                String strN2 = null;
                while (parcel.dataPosition() < iQ0) {
                    int i5 = parcel.readInt();
                    int i6 = 65535 & i5;
                    if (i6 == 1) {
                        strN = AbstractC0420a.n(parcel, i5);
                    } else if (i6 != 2) {
                        AbstractC0420a.n0(parcel, i5);
                    } else {
                        strN2 = AbstractC0420a.n(parcel, i5);
                    }
                }
                AbstractC0420a.u(parcel, iQ0);
                return new i(strN, strN2);
            case 1:
                int iQ02 = AbstractC0420a.q0(parcel);
                String strN3 = null;
                String strN4 = null;
                String strN5 = null;
                String strN6 = null;
                String strN7 = null;
                boolean zC0 = false;
                boolean zC02 = false;
                while (parcel.dataPosition() < iQ02) {
                    int i7 = parcel.readInt();
                    switch (65535 & i7) {
                        case 1:
                            strN3 = AbstractC0420a.n(parcel, i7);
                            break;
                        case 2:
                            strN4 = AbstractC0420a.n(parcel, i7);
                            break;
                        case 3:
                            zC0 = AbstractC0420a.c0(parcel, i7);
                            break;
                        case 4:
                            strN5 = AbstractC0420a.n(parcel, i7);
                            break;
                        case 5:
                            zC02 = AbstractC0420a.c0(parcel, i7);
                            break;
                        case 6:
                            strN6 = AbstractC0420a.n(parcel, i7);
                            break;
                        case 7:
                            strN7 = AbstractC0420a.n(parcel, i7);
                            break;
                        default:
                            AbstractC0420a.n0(parcel, i7);
                            break;
                    }
                }
                AbstractC0420a.u(parcel, iQ02);
                return new j(strN3, strN4, zC0, strN5, zC02, strN6, strN7);
            case 2:
                int iQ03 = AbstractC0420a.q0(parcel);
                String strN8 = null;
                String strN9 = null;
                String strN10 = null;
                long jE0 = 0;
                while (parcel.dataPosition() < iQ03) {
                    int i8 = parcel.readInt();
                    int i9 = 65535 & i8;
                    if (i9 == 1) {
                        strN8 = AbstractC0420a.n(parcel, i8);
                    } else if (i9 == 2) {
                        strN9 = AbstractC0420a.n(parcel, i8);
                    } else if (i9 == 3) {
                        jE0 = AbstractC0420a.e0(parcel, i8);
                    } else if (i9 != 4) {
                        AbstractC0420a.n0(parcel, i8);
                    } else {
                        strN10 = AbstractC0420a.n(parcel, i8);
                    }
                }
                AbstractC0420a.u(parcel, iQ03);
                return new k(jE0, strN8, strN9, strN10);
            case 3:
                int iQ04 = AbstractC0420a.q0(parcel);
                String strN11 = null;
                while (parcel.dataPosition() < iQ04) {
                    int i10 = parcel.readInt();
                    if ((65535 & i10) != 1) {
                        AbstractC0420a.n0(parcel, i10);
                    } else {
                        strN11 = AbstractC0420a.n(parcel, i10);
                    }
                }
                AbstractC0420a.u(parcel, iQ04);
                return new l(strN11);
            case 4:
                int iQ05 = AbstractC0420a.q0(parcel);
                String strN12 = null;
                String strN13 = null;
                while (parcel.dataPosition() < iQ05) {
                    int i11 = parcel.readInt();
                    int i12 = 65535 & i11;
                    if (i12 == 1) {
                        strN12 = AbstractC0420a.n(parcel, i11);
                    } else if (i12 != 2) {
                        AbstractC0420a.n0(parcel, i11);
                    } else {
                        strN13 = AbstractC0420a.n(parcel, i11);
                    }
                }
                AbstractC0420a.u(parcel, iQ05);
                return new m(strN12, strN13);
            case 5:
                int iQ06 = AbstractC0420a.q0(parcel);
                boolean zC03 = false;
                String strN14 = null;
                String strN15 = null;
                boolean zC04 = false;
                while (parcel.dataPosition() < iQ06) {
                    int i13 = parcel.readInt();
                    int i14 = 65535 & i13;
                    if (i14 == 2) {
                        strN14 = AbstractC0420a.n(parcel, i13);
                    } else if (i14 == 3) {
                        strN15 = AbstractC0420a.n(parcel, i13);
                    } else if (i14 == 4) {
                        zC03 = AbstractC0420a.c0(parcel, i13);
                    } else if (i14 != 5) {
                        AbstractC0420a.n0(parcel, i13);
                    } else {
                        zC04 = AbstractC0420a.c0(parcel, i13);
                    }
                }
                AbstractC0420a.u(parcel, iQ06);
                o oVar = new o();
                oVar.f2946c = strN14;
                oVar.f2947d = strN15;
                oVar.f2948e = zC03;
                oVar.f = zC04;
                oVar.f2949g = TextUtils.isEmpty(strN15) ? null : Uri.parse(strN15);
                return oVar;
            case 6:
                int iQ07 = AbstractC0420a.q0(parcel);
                String strN16 = null;
                String strN17 = null;
                String strN18 = null;
                String strN19 = null;
                String strN20 = null;
                String strN21 = null;
                String strN22 = null;
                boolean zC05 = false;
                boolean zC06 = false;
                int iD0 = 0;
                while (parcel.dataPosition() < iQ07) {
                    int i15 = parcel.readInt();
                    switch (65535 & i15) {
                        case 1:
                            strN16 = AbstractC0420a.n(parcel, i15);
                            break;
                        case 2:
                            strN17 = AbstractC0420a.n(parcel, i15);
                            break;
                        case 3:
                            strN18 = AbstractC0420a.n(parcel, i15);
                            break;
                        case 4:
                            strN19 = AbstractC0420a.n(parcel, i15);
                            break;
                        case 5:
                            zC05 = AbstractC0420a.c0(parcel, i15);
                            break;
                        case 6:
                            strN20 = AbstractC0420a.n(parcel, i15);
                            break;
                        case 7:
                            zC06 = AbstractC0420a.c0(parcel, i15);
                            break;
                        case 8:
                            strN21 = AbstractC0420a.n(parcel, i15);
                            break;
                        case 9:
                            iD0 = AbstractC0420a.d0(parcel, i15);
                            break;
                        case 10:
                            strN22 = AbstractC0420a.n(parcel, i15);
                            break;
                        default:
                            AbstractC0420a.n0(parcel, i15);
                            break;
                    }
                }
                AbstractC0420a.u(parcel, iQ07);
                return new a(strN16, strN17, strN18, strN19, zC05, strN20, zC06, strN21, iD0, strN22);
            case 7:
                int iQ08 = AbstractC0420a.q0(parcel);
                String strN23 = null;
                String strN24 = null;
                String strN25 = null;
                N4 n42 = null;
                String strN26 = null;
                String strN27 = null;
                String strN28 = null;
                while (parcel.dataPosition() < iQ08) {
                    int i16 = parcel.readInt();
                    switch (65535 & i16) {
                        case 1:
                            strN23 = AbstractC0420a.n(parcel, i16);
                            break;
                        case 2:
                            strN24 = AbstractC0420a.n(parcel, i16);
                            break;
                        case 3:
                            strN25 = AbstractC0420a.n(parcel, i16);
                            break;
                        case 4:
                            n42 = (N4) AbstractC0420a.l(parcel, i16, N4.CREATOR);
                            break;
                        case 5:
                            strN26 = AbstractC0420a.n(parcel, i16);
                            break;
                        case 6:
                            strN27 = AbstractC0420a.n(parcel, i16);
                            break;
                        case 7:
                            strN28 = AbstractC0420a.n(parcel, i16);
                            break;
                        default:
                            AbstractC0420a.n0(parcel, i16);
                            break;
                    }
                }
                AbstractC0420a.u(parcel, iQ08);
                return new r(strN23, strN24, strN25, n42, strN26, strN27, strN28);
            case 8:
                int iQ09 = AbstractC0420a.q0(parcel);
                String strN29 = null;
                String strN30 = null;
                String strN31 = null;
                String strN32 = null;
                boolean zC07 = false;
                while (parcel.dataPosition() < iQ09) {
                    int i17 = parcel.readInt();
                    int i18 = 65535 & i17;
                    if (i18 == 1) {
                        strN29 = AbstractC0420a.n(parcel, i17);
                    } else if (i18 == 2) {
                        strN30 = AbstractC0420a.n(parcel, i17);
                    } else if (i18 == 3) {
                        strN31 = AbstractC0420a.n(parcel, i17);
                    } else if (i18 == 4) {
                        strN32 = AbstractC0420a.n(parcel, i17);
                    } else if (i18 != 5) {
                        AbstractC0420a.n0(parcel, i17);
                    } else {
                        zC07 = AbstractC0420a.c0(parcel, i17);
                    }
                }
                AbstractC0420a.u(parcel, iQ09);
                return new d(strN29, strN30, strN31, strN32, zC07);
            case 9:
                int iQ010 = AbstractC0420a.q0(parcel);
                String strN33 = null;
                while (parcel.dataPosition() < iQ010) {
                    int i19 = parcel.readInt();
                    if ((65535 & i19) != 1) {
                        AbstractC0420a.n0(parcel, i19);
                    } else {
                        strN33 = AbstractC0420a.n(parcel, i19);
                    }
                }
                AbstractC0420a.u(parcel, iQ010);
                return new e(strN33);
            default:
                int iQ011 = AbstractC0420a.q0(parcel);
                String strN34 = null;
                while (parcel.dataPosition() < iQ011) {
                    int i20 = parcel.readInt();
                    if ((65535 & i20) != 1) {
                        AbstractC0420a.n0(parcel, i20);
                    } else {
                        strN34 = AbstractC0420a.n(parcel, i20);
                    }
                }
                AbstractC0420a.u(parcel, iQ011);
                return new h(strN34);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i5) {
        switch (this.f2950a) {
            case 0:
                return new i[i5];
            case 1:
                return new j[i5];
            case 2:
                return new k[i5];
            case 3:
                return new l[i5];
            case 4:
                return new m[i5];
            case 5:
                return new o[i5];
            case 6:
                return new a[i5];
            case 7:
                return new r[i5];
            case 8:
                return new d[i5];
            case 9:
                return new e[i5];
            default:
                return new h[i5];
        }
    }
}
