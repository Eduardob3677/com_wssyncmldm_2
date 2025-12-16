package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.a;
import Y1.d;
import Y1.j;
import Y1.k;
import android.os.Parcel;
import android.os.Parcelable;
import f1.AbstractC0420a;

/* loaded from: classes.dex */
public final class H2 implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5388a;

    public /* synthetic */ H2(int i5) {
        this.f5388a = i5;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f5388a) {
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
                return new G2(strN, strN2);
            case 1:
                int iQ02 = AbstractC0420a.q0(parcel);
                String strN3 = null;
                String strN4 = null;
                while (parcel.dataPosition() < iQ02) {
                    int i7 = parcel.readInt();
                    int i8 = 65535 & i7;
                    if (i8 == 1) {
                        strN3 = AbstractC0420a.n(parcel, i7);
                    } else if (i8 != 2) {
                        AbstractC0420a.n0(parcel, i7);
                    } else {
                        strN4 = AbstractC0420a.n(parcel, i7);
                    }
                }
                AbstractC0420a.u(parcel, iQ02);
                return new I2(strN3, strN4);
            case 2:
                int iQ03 = AbstractC0420a.q0(parcel);
                String strN5 = null;
                String strN6 = null;
                while (parcel.dataPosition() < iQ03) {
                    int i9 = parcel.readInt();
                    int i10 = 65535 & i9;
                    if (i10 == 1) {
                        strN5 = AbstractC0420a.n(parcel, i9);
                    } else if (i10 != 2) {
                        AbstractC0420a.n0(parcel, i9);
                    } else {
                        strN6 = AbstractC0420a.n(parcel, i9);
                    }
                }
                AbstractC0420a.u(parcel, iQ03);
                return new J2(strN5, strN6);
            case 3:
                int iQ04 = AbstractC0420a.q0(parcel);
                String strN7 = null;
                String strN8 = null;
                while (parcel.dataPosition() < iQ04) {
                    int i11 = parcel.readInt();
                    int i12 = 65535 & i11;
                    if (i12 == 1) {
                        strN7 = AbstractC0420a.n(parcel, i11);
                    } else if (i12 != 2) {
                        AbstractC0420a.n0(parcel, i11);
                    } else {
                        strN8 = AbstractC0420a.n(parcel, i11);
                    }
                }
                AbstractC0420a.u(parcel, iQ04);
                return new K2(strN7, strN8);
            case 4:
                int iQ05 = AbstractC0420a.q0(parcel);
                String strN9 = null;
                String strN10 = null;
                String strN11 = null;
                while (parcel.dataPosition() < iQ05) {
                    int i13 = parcel.readInt();
                    int i14 = 65535 & i13;
                    if (i14 == 1) {
                        strN9 = AbstractC0420a.n(parcel, i13);
                    } else if (i14 == 2) {
                        strN10 = AbstractC0420a.n(parcel, i13);
                    } else if (i14 != 3) {
                        AbstractC0420a.n0(parcel, i13);
                    } else {
                        strN11 = AbstractC0420a.n(parcel, i13);
                    }
                }
                AbstractC0420a.u(parcel, iQ05);
                return new L2(strN9, strN10, strN11);
            case 5:
                int iQ06 = AbstractC0420a.q0(parcel);
                String strN12 = null;
                String strN13 = null;
                String strN14 = null;
                while (parcel.dataPosition() < iQ06) {
                    int i15 = parcel.readInt();
                    int i16 = 65535 & i15;
                    if (i16 == 1) {
                        strN12 = AbstractC0420a.n(parcel, i15);
                    } else if (i16 == 2) {
                        strN13 = AbstractC0420a.n(parcel, i15);
                    } else if (i16 != 3) {
                        AbstractC0420a.n0(parcel, i15);
                    } else {
                        strN14 = AbstractC0420a.n(parcel, i15);
                    }
                }
                AbstractC0420a.u(parcel, iQ06);
                return new M2(strN12, strN13, strN14);
            case 6:
                int iQ07 = AbstractC0420a.q0(parcel);
                String strN15 = null;
                while (parcel.dataPosition() < iQ07) {
                    int i17 = parcel.readInt();
                    if ((65535 & i17) != 1) {
                        AbstractC0420a.n0(parcel, i17);
                    } else {
                        strN15 = AbstractC0420a.n(parcel, i17);
                    }
                }
                AbstractC0420a.u(parcel, iQ07);
                return new N2(strN15);
            case 7:
                int iQ08 = AbstractC0420a.q0(parcel);
                j jVar = null;
                String strN16 = null;
                String strN17 = null;
                while (parcel.dataPosition() < iQ08) {
                    int i18 = parcel.readInt();
                    int i19 = 65535 & i18;
                    if (i19 == 1) {
                        jVar = (j) AbstractC0420a.l(parcel, i18, j.CREATOR);
                    } else if (i19 == 2) {
                        strN16 = AbstractC0420a.n(parcel, i18);
                    } else if (i19 != 3) {
                        AbstractC0420a.n0(parcel, i18);
                    } else {
                        strN17 = AbstractC0420a.n(parcel, i18);
                    }
                }
                AbstractC0420a.u(parcel, iQ08);
                return new O2(jVar, strN16, strN17);
            case 8:
                int iQ09 = AbstractC0420a.q0(parcel);
                j jVar2 = null;
                String strN18 = null;
                while (parcel.dataPosition() < iQ09) {
                    int i20 = parcel.readInt();
                    int i21 = 65535 & i20;
                    if (i21 == 1) {
                        jVar2 = (j) AbstractC0420a.l(parcel, i20, j.CREATOR);
                    } else if (i21 != 2) {
                        AbstractC0420a.n0(parcel, i20);
                    } else {
                        strN18 = AbstractC0420a.n(parcel, i20);
                    }
                }
                AbstractC0420a.u(parcel, iQ09);
                return new P2(jVar2, strN18);
            case 9:
                int iQ010 = AbstractC0420a.q0(parcel);
                String strN19 = null;
                while (parcel.dataPosition() < iQ010) {
                    int i22 = parcel.readInt();
                    if ((65535 & i22) != 1) {
                        AbstractC0420a.n0(parcel, i22);
                    } else {
                        strN19 = AbstractC0420a.n(parcel, i22);
                    }
                }
                AbstractC0420a.u(parcel, iQ010);
                return new Q2(strN19);
            case 10:
                int iQ011 = AbstractC0420a.q0(parcel);
                String strN20 = null;
                String strN21 = null;
                while (parcel.dataPosition() < iQ011) {
                    int i23 = parcel.readInt();
                    int i24 = 65535 & i23;
                    if (i24 == 1) {
                        strN20 = AbstractC0420a.n(parcel, i23);
                    } else if (i24 != 2) {
                        AbstractC0420a.n0(parcel, i23);
                    } else {
                        strN21 = AbstractC0420a.n(parcel, i23);
                    }
                }
                AbstractC0420a.u(parcel, iQ011);
                return new R2(strN20, strN21);
            case 11:
                int iQ012 = AbstractC0420a.q0(parcel);
                String strN22 = null;
                String strN23 = null;
                String strN24 = null;
                while (parcel.dataPosition() < iQ012) {
                    int i25 = parcel.readInt();
                    int i26 = 65535 & i25;
                    if (i26 == 1) {
                        strN22 = AbstractC0420a.n(parcel, i25);
                    } else if (i26 == 2) {
                        strN23 = AbstractC0420a.n(parcel, i25);
                    } else if (i26 != 3) {
                        AbstractC0420a.n0(parcel, i25);
                    } else {
                        strN24 = AbstractC0420a.n(parcel, i25);
                    }
                }
                AbstractC0420a.u(parcel, iQ012);
                return new S2(strN22, strN23, strN24);
            case 12:
                int iQ013 = AbstractC0420a.q0(parcel);
                String strN25 = null;
                N4 n42 = null;
                while (parcel.dataPosition() < iQ013) {
                    int i27 = parcel.readInt();
                    int i28 = 65535 & i27;
                    if (i28 == 1) {
                        strN25 = AbstractC0420a.n(parcel, i27);
                    } else if (i28 != 2) {
                        AbstractC0420a.n0(parcel, i27);
                    } else {
                        n42 = (N4) AbstractC0420a.l(parcel, i27, N4.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ013);
                return new T2(strN25, n42);
            case 13:
                int iQ014 = AbstractC0420a.q0(parcel);
                String strN26 = null;
                j jVar3 = null;
                while (parcel.dataPosition() < iQ014) {
                    int i29 = parcel.readInt();
                    int i30 = 65535 & i29;
                    if (i30 == 1) {
                        strN26 = AbstractC0420a.n(parcel, i29);
                    } else if (i30 != 2) {
                        AbstractC0420a.n0(parcel, i29);
                    } else {
                        jVar3 = (j) AbstractC0420a.l(parcel, i29, j.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ014);
                return new U2(jVar3, strN26);
            case 14:
                int iQ015 = AbstractC0420a.q0(parcel);
                String strN27 = null;
                while (parcel.dataPosition() < iQ015) {
                    int i31 = parcel.readInt();
                    if ((65535 & i31) != 1) {
                        AbstractC0420a.n0(parcel, i31);
                    } else {
                        strN27 = AbstractC0420a.n(parcel, i31);
                    }
                }
                AbstractC0420a.u(parcel, iQ015);
                return new V2(strN27);
            case 15:
                int iQ016 = AbstractC0420a.q0(parcel);
                String strN28 = null;
                a aVar = null;
                while (parcel.dataPosition() < iQ016) {
                    int i32 = parcel.readInt();
                    int i33 = 65535 & i32;
                    if (i33 == 1) {
                        strN28 = AbstractC0420a.n(parcel, i32);
                    } else if (i33 != 2) {
                        AbstractC0420a.n0(parcel, i32);
                    } else {
                        aVar = (a) AbstractC0420a.l(parcel, i32, a.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ016);
                return new W2(strN28, aVar);
            case 16:
                int iQ017 = AbstractC0420a.q0(parcel);
                String strN29 = null;
                a aVar2 = null;
                String strN30 = null;
                while (parcel.dataPosition() < iQ017) {
                    int i34 = parcel.readInt();
                    int i35 = 65535 & i34;
                    if (i35 == 1) {
                        strN29 = AbstractC0420a.n(parcel, i34);
                    } else if (i35 == 2) {
                        aVar2 = (a) AbstractC0420a.l(parcel, i34, a.CREATOR);
                    } else if (i35 != 3) {
                        AbstractC0420a.n0(parcel, i34);
                    } else {
                        strN30 = AbstractC0420a.n(parcel, i34);
                    }
                }
                AbstractC0420a.u(parcel, iQ017);
                return new X2(aVar2, strN29, strN30);
            case 17:
                int iQ018 = AbstractC0420a.q0(parcel);
                E4 e42 = null;
                while (parcel.dataPosition() < iQ018) {
                    int i36 = parcel.readInt();
                    if ((65535 & i36) != 1) {
                        AbstractC0420a.n0(parcel, i36);
                    } else {
                        e42 = (E4) AbstractC0420a.l(parcel, i36, E4.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ018);
                return new Y2(e42);
            case 18:
                int iQ019 = AbstractC0420a.q0(parcel);
                String strN31 = null;
                while (parcel.dataPosition() < iQ019) {
                    int i37 = parcel.readInt();
                    if ((65535 & i37) != 1) {
                        AbstractC0420a.n0(parcel, i37);
                    } else {
                        strN31 = AbstractC0420a.n(parcel, i37);
                    }
                }
                AbstractC0420a.u(parcel, iQ019);
                return new Z2(strN31);
            case 19:
                int iQ020 = AbstractC0420a.q0(parcel);
                String strN32 = null;
                while (parcel.dataPosition() < iQ020) {
                    int i38 = parcel.readInt();
                    if ((65535 & i38) != 1) {
                        AbstractC0420a.n0(parcel, i38);
                    } else {
                        strN32 = AbstractC0420a.n(parcel, i38);
                    }
                }
                AbstractC0420a.u(parcel, iQ020);
                return new C0229a3(strN32);
            case 20:
                int iQ021 = AbstractC0420a.q0(parcel);
                N4 n43 = null;
                while (parcel.dataPosition() < iQ021) {
                    int i39 = parcel.readInt();
                    if ((65535 & i39) != 1) {
                        AbstractC0420a.n0(parcel, i39);
                    } else {
                        n43 = (N4) AbstractC0420a.l(parcel, i39, N4.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ021);
                return new C0235b3(n43);
            case 21:
                int iQ022 = AbstractC0420a.q0(parcel);
                String strN33 = null;
                String strN34 = null;
                while (parcel.dataPosition() < iQ022) {
                    int i40 = parcel.readInt();
                    int i41 = 65535 & i40;
                    if (i41 == 1) {
                        strN33 = AbstractC0420a.n(parcel, i40);
                    } else if (i41 != 2) {
                        AbstractC0420a.n0(parcel, i40);
                    } else {
                        strN34 = AbstractC0420a.n(parcel, i40);
                    }
                }
                AbstractC0420a.u(parcel, iQ022);
                return new C0241c3(strN33, strN34);
            case 22:
                int iQ023 = AbstractC0420a.q0(parcel);
                String strN35 = null;
                String strN36 = null;
                String strN37 = null;
                while (parcel.dataPosition() < iQ023) {
                    int i42 = parcel.readInt();
                    int i43 = 65535 & i42;
                    if (i43 == 1) {
                        strN35 = AbstractC0420a.n(parcel, i42);
                    } else if (i43 == 2) {
                        strN36 = AbstractC0420a.n(parcel, i42);
                    } else if (i43 != 3) {
                        AbstractC0420a.n0(parcel, i42);
                    } else {
                        strN37 = AbstractC0420a.n(parcel, i42);
                    }
                }
                AbstractC0420a.u(parcel, iQ023);
                return new C0247d3(strN35, strN36, strN37);
            case 23:
                int iQ024 = AbstractC0420a.q0(parcel);
                d dVar = null;
                while (parcel.dataPosition() < iQ024) {
                    int i44 = parcel.readInt();
                    if ((65535 & i44) != 1) {
                        AbstractC0420a.n0(parcel, i44);
                    } else {
                        dVar = (d) AbstractC0420a.l(parcel, i44, d.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ024);
                return new C0253e3(dVar);
            case 24:
                int iQ025 = AbstractC0420a.q0(parcel);
                j jVar4 = null;
                String strN38 = null;
                while (parcel.dataPosition() < iQ025) {
                    int i45 = parcel.readInt();
                    int i46 = 65535 & i45;
                    if (i46 == 1) {
                        jVar4 = (j) AbstractC0420a.l(parcel, i45, j.CREATOR);
                    } else if (i46 != 2) {
                        AbstractC0420a.n0(parcel, i45);
                    } else {
                        strN38 = AbstractC0420a.n(parcel, i45);
                    }
                }
                AbstractC0420a.u(parcel, iQ025);
                return new C0259f3(jVar4, strN38);
            case 25:
                int iQ026 = AbstractC0420a.q0(parcel);
                String strN39 = null;
                String strN40 = null;
                String strN41 = null;
                String strN42 = null;
                String strN43 = null;
                long jE0 = 0;
                boolean zC0 = false;
                boolean zC02 = false;
                boolean zC03 = false;
                while (parcel.dataPosition() < iQ026) {
                    int i47 = parcel.readInt();
                    switch (65535 & i47) {
                        case 1:
                            strN39 = AbstractC0420a.n(parcel, i47);
                            break;
                        case 2:
                            strN40 = AbstractC0420a.n(parcel, i47);
                            break;
                        case 3:
                            strN41 = AbstractC0420a.n(parcel, i47);
                            break;
                        case 4:
                            jE0 = AbstractC0420a.e0(parcel, i47);
                            break;
                        case 5:
                            zC0 = AbstractC0420a.c0(parcel, i47);
                            break;
                        case 6:
                            zC02 = AbstractC0420a.c0(parcel, i47);
                            break;
                        case 7:
                            strN42 = AbstractC0420a.n(parcel, i47);
                            break;
                        case 8:
                            strN43 = AbstractC0420a.n(parcel, i47);
                            break;
                        case 9:
                            zC03 = AbstractC0420a.c0(parcel, i47);
                            break;
                        default:
                            AbstractC0420a.n0(parcel, i47);
                            break;
                    }
                }
                AbstractC0420a.u(parcel, iQ026);
                return new C0265g3(strN39, strN40, strN41, jE0, zC0, zC02, strN42, strN43, zC03);
            case 26:
                int iQ027 = AbstractC0420a.q0(parcel);
                k kVar = null;
                String strN44 = null;
                String strN45 = null;
                String strN46 = null;
                String strN47 = null;
                long jE02 = 0;
                boolean zC04 = false;
                boolean zC05 = false;
                boolean zC06 = false;
                while (parcel.dataPosition() < iQ027) {
                    int i48 = parcel.readInt();
                    switch (65535 & i48) {
                        case 1:
                            kVar = (k) AbstractC0420a.l(parcel, i48, k.CREATOR);
                            break;
                        case 2:
                            strN44 = AbstractC0420a.n(parcel, i48);
                            break;
                        case 3:
                            strN45 = AbstractC0420a.n(parcel, i48);
                            break;
                        case 4:
                            jE02 = AbstractC0420a.e0(parcel, i48);
                            break;
                        case 5:
                            zC04 = AbstractC0420a.c0(parcel, i48);
                            break;
                        case 6:
                            zC05 = AbstractC0420a.c0(parcel, i48);
                            break;
                        case 7:
                            strN46 = AbstractC0420a.n(parcel, i48);
                            break;
                        case 8:
                            strN47 = AbstractC0420a.n(parcel, i48);
                            break;
                        case 9:
                            zC06 = AbstractC0420a.c0(parcel, i48);
                            break;
                        default:
                            AbstractC0420a.n0(parcel, i48);
                            break;
                    }
                }
                AbstractC0420a.u(parcel, iQ027);
                return new C0271h3(kVar, strN44, strN45, jE02, zC04, zC05, strN46, strN47, zC06);
            case 27:
                int iQ028 = AbstractC0420a.q0(parcel);
                String strN48 = null;
                String strN49 = null;
                while (parcel.dataPosition() < iQ028) {
                    int i49 = parcel.readInt();
                    int i50 = 65535 & i49;
                    if (i50 == 1) {
                        strN48 = AbstractC0420a.n(parcel, i49);
                    } else if (i50 != 2) {
                        AbstractC0420a.n0(parcel, i49);
                    } else {
                        strN49 = AbstractC0420a.n(parcel, i49);
                    }
                }
                AbstractC0420a.u(parcel, iQ028);
                return new C0277i3(strN48, strN49);
            case 28:
                int iQ029 = AbstractC0420a.q0(parcel);
                String strN50 = null;
                while (parcel.dataPosition() < iQ029) {
                    int i51 = parcel.readInt();
                    if ((65535 & i51) != 1) {
                        AbstractC0420a.n0(parcel, i51);
                    } else {
                        strN50 = AbstractC0420a.n(parcel, i51);
                    }
                }
                AbstractC0420a.u(parcel, iQ029);
                return new C0283j3(strN50);
            default:
                int iQ030 = AbstractC0420a.q0(parcel);
                String strN51 = null;
                String strN52 = null;
                while (parcel.dataPosition() < iQ030) {
                    int i52 = parcel.readInt();
                    int i53 = 65535 & i52;
                    if (i53 == 1) {
                        strN51 = AbstractC0420a.n(parcel, i52);
                    } else if (i53 != 2) {
                        AbstractC0420a.n0(parcel, i52);
                    } else {
                        strN52 = AbstractC0420a.n(parcel, i52);
                    }
                }
                AbstractC0420a.u(parcel, iQ030);
                return new C0289k3(strN51, strN52);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i5) {
        switch (this.f5388a) {
            case 0:
                return new G2[i5];
            case 1:
                return new I2[i5];
            case 2:
                return new J2[i5];
            case 3:
                return new K2[i5];
            case 4:
                return new L2[i5];
            case 5:
                return new M2[i5];
            case 6:
                return new N2[i5];
            case 7:
                return new O2[i5];
            case 8:
                return new P2[i5];
            case 9:
                return new Q2[i5];
            case 10:
                return new R2[i5];
            case 11:
                return new S2[i5];
            case 12:
                return new T2[i5];
            case 13:
                return new U2[i5];
            case 14:
                return new V2[i5];
            case 15:
                return new W2[i5];
            case 16:
                return new X2[i5];
            case 17:
                return new Y2[i5];
            case 18:
                return new Z2[i5];
            case 19:
                return new C0229a3[i5];
            case 20:
                return new C0235b3[i5];
            case 21:
                return new C0241c3[i5];
            case 22:
                return new C0247d3[i5];
            case 23:
                return new C0253e3[i5];
            case 24:
                return new C0259f3[i5];
            case 25:
                return new C0265g3[i5];
            case 26:
                return new C0271h3[i5];
            case 27:
                return new C0277i3[i5];
            case 28:
                return new C0283j3[i5];
            default:
                return new C0289k3[i5];
        }
    }
}
