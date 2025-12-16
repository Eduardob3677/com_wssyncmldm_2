package com.google.android.gms.internal.p000firebaseauthapi;

import Y1.a;
import Y1.o;
import Y1.r;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import f1.AbstractC0420a;
import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.m3, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0301m3 implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5650a;

    public /* synthetic */ C0301m3(int i5) {
        this.f5650a = i5;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        C0361w4 c0361w4;
        String strN;
        switch (this.f5650a) {
            case 0:
                int iQ0 = AbstractC0420a.q0(parcel);
                o oVar = null;
                String strN2 = null;
                while (parcel.dataPosition() < iQ0) {
                    int i5 = parcel.readInt();
                    int i6 = 65535 & i5;
                    if (i6 == 1) {
                        oVar = (o) AbstractC0420a.l(parcel, i5, o.CREATOR);
                    } else if (i6 != 2) {
                        AbstractC0420a.n0(parcel, i5);
                    } else {
                        strN2 = AbstractC0420a.n(parcel, i5);
                    }
                }
                AbstractC0420a.u(parcel, iQ0);
                return new C0295l3(oVar, strN2);
            case 1:
                int iQ02 = AbstractC0420a.q0(parcel);
                String strN3 = null;
                String strN4 = null;
                a aVar = null;
                while (parcel.dataPosition() < iQ02) {
                    int i7 = parcel.readInt();
                    int i8 = 65535 & i7;
                    if (i8 == 1) {
                        strN3 = AbstractC0420a.n(parcel, i7);
                    } else if (i8 == 2) {
                        strN4 = AbstractC0420a.n(parcel, i7);
                    } else if (i8 != 3) {
                        AbstractC0420a.n0(parcel, i7);
                    } else {
                        aVar = (a) AbstractC0420a.l(parcel, i7, a.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ02);
                return new C0307n3(aVar, strN3, strN4);
            case 2:
                int iQ03 = AbstractC0420a.q0(parcel);
                Status status = null;
                r rVar = null;
                String strN5 = null;
                String strN6 = null;
                while (parcel.dataPosition() < iQ03) {
                    int i9 = parcel.readInt();
                    int i10 = 65535 & i9;
                    if (i10 == 1) {
                        status = (Status) AbstractC0420a.l(parcel, i9, Status.CREATOR);
                    } else if (i10 == 2) {
                        rVar = (r) AbstractC0420a.l(parcel, i9, r.CREATOR);
                    } else if (i10 == 3) {
                        strN5 = AbstractC0420a.n(parcel, i9);
                    } else if (i10 != 4) {
                        AbstractC0420a.n0(parcel, i9);
                    } else {
                        strN6 = AbstractC0420a.n(parcel, i9);
                    }
                }
                AbstractC0420a.u(parcel, iQ03);
                return new C0313o3(status, rVar, strN5, strN6);
            case 3:
                int iQ04 = AbstractC0420a.q0(parcel);
                String strN7 = null;
                ArrayList arrayListQ = null;
                r rVar2 = null;
                while (parcel.dataPosition() < iQ04) {
                    int i11 = parcel.readInt();
                    int i12 = 65535 & i11;
                    if (i12 == 1) {
                        strN7 = AbstractC0420a.n(parcel, i11);
                    } else if (i12 == 2) {
                        arrayListQ = AbstractC0420a.q(parcel, i11, C0379z4.CREATOR);
                    } else if (i12 != 3) {
                        AbstractC0420a.n0(parcel, i11);
                    } else {
                        rVar2 = (r) AbstractC0420a.l(parcel, i11, r.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ04);
                return new C0319p3(strN7, arrayListQ, rVar2);
            case 4:
                int iQ05 = AbstractC0420a.q0(parcel);
                boolean zC0 = false;
                String strN8 = null;
                String strN9 = null;
                M4 m42 = null;
                ArrayList arrayListO = null;
                boolean zC02 = false;
                while (parcel.dataPosition() < iQ05) {
                    int i13 = parcel.readInt();
                    switch (65535 & i13) {
                        case 2:
                            strN8 = AbstractC0420a.n(parcel, i13);
                            break;
                        case 3:
                            zC0 = AbstractC0420a.c0(parcel, i13);
                            break;
                        case 4:
                            strN9 = AbstractC0420a.n(parcel, i13);
                            break;
                        case 5:
                            zC02 = AbstractC0420a.c0(parcel, i13);
                            break;
                        case 6:
                            m42 = (M4) AbstractC0420a.l(parcel, i13, M4.CREATOR);
                            break;
                        case 7:
                            arrayListO = AbstractC0420a.o(parcel, i13);
                            break;
                        default:
                            AbstractC0420a.n0(parcel, i13);
                            break;
                    }
                }
                AbstractC0420a.u(parcel, iQ05);
                C0320p4 c0320p4 = new C0320p4();
                c0320p4.f5686c = strN8;
                c0320p4.f5687d = zC0;
                c0320p4.f5688e = strN9;
                c0320p4.f = zC02;
                c0320p4.f5689g = m42 == null ? new M4(null) : new M4(m42.f5433d);
                c0320p4.f5690h = arrayListO;
                return c0320p4;
            case 5:
                int iQ06 = AbstractC0420a.q0(parcel);
                C0361w4 c0361w42 = null;
                while (parcel.dataPosition() < iQ06) {
                    int i14 = parcel.readInt();
                    if ((65535 & i14) != 2) {
                        AbstractC0420a.n0(parcel, i14);
                    } else {
                        c0361w42 = (C0361w4) AbstractC0420a.l(parcel, i14, C0361w4.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ06);
                C0349u4 c0349u4 = new C0349u4();
                if (c0361w42 == null) {
                    c0361w4 = new C0361w4();
                } else {
                    c0361w4 = new C0361w4();
                    List list = c0361w42.f5769c;
                    if (list != null && !list.isEmpty()) {
                        c0361w4.f5769c.addAll(list);
                    }
                }
                c0349u4.f5745c = c0361w4;
                return c0349u4;
            case 6:
                int iQ07 = AbstractC0420a.q0(parcel);
                String strN10 = null;
                String strN11 = null;
                String strN12 = null;
                String strN13 = null;
                B4 b42 = null;
                String strN14 = null;
                String strN15 = null;
                r rVar3 = null;
                ArrayList arrayListQ2 = null;
                boolean zC03 = false;
                boolean zC04 = false;
                long jE0 = 0;
                long jE02 = 0;
                while (parcel.dataPosition() < iQ07) {
                    int i15 = parcel.readInt();
                    switch (65535 & i15) {
                        case 2:
                            strN10 = AbstractC0420a.n(parcel, i15);
                            break;
                        case 3:
                            strN11 = AbstractC0420a.n(parcel, i15);
                            break;
                        case 4:
                            zC03 = AbstractC0420a.c0(parcel, i15);
                            break;
                        case 5:
                            strN12 = AbstractC0420a.n(parcel, i15);
                            break;
                        case 6:
                            strN13 = AbstractC0420a.n(parcel, i15);
                            break;
                        case 7:
                            b42 = (B4) AbstractC0420a.l(parcel, i15, B4.CREATOR);
                            break;
                        case 8:
                            strN14 = AbstractC0420a.n(parcel, i15);
                            break;
                        case 9:
                            strN15 = AbstractC0420a.n(parcel, i15);
                            break;
                        case 10:
                            jE0 = AbstractC0420a.e0(parcel, i15);
                            break;
                        case 11:
                            jE02 = AbstractC0420a.e0(parcel, i15);
                            break;
                        case 12:
                            zC04 = AbstractC0420a.c0(parcel, i15);
                            break;
                        case 13:
                            rVar3 = (r) AbstractC0420a.l(parcel, i15, r.CREATOR);
                            break;
                        case 14:
                            arrayListQ2 = AbstractC0420a.q(parcel, i15, C0379z4.CREATOR);
                            break;
                        default:
                            AbstractC0420a.n0(parcel, i15);
                            break;
                    }
                }
                AbstractC0420a.u(parcel, iQ07);
                return new C0355v4(strN10, strN11, zC03, strN12, strN13, b42, strN14, strN15, jE0, jE02, zC04, rVar3, arrayListQ2);
            case 7:
                int iQ08 = AbstractC0420a.q0(parcel);
                ArrayList arrayListQ3 = null;
                while (parcel.dataPosition() < iQ08) {
                    int i16 = parcel.readInt();
                    if ((65535 & i16) != 2) {
                        AbstractC0420a.n0(parcel, i16);
                    } else {
                        arrayListQ3 = AbstractC0420a.q(parcel, i16, C0355v4.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ08);
                return new C0361w4(arrayListQ3);
            case 8:
                int iQ09 = AbstractC0420a.q0(parcel);
                String strN16 = null;
                String strN17 = null;
                Long lValueOf = null;
                String strN18 = null;
                Long lValueOf2 = null;
                while (parcel.dataPosition() < iQ09) {
                    int i17 = parcel.readInt();
                    int i18 = 65535 & i17;
                    if (i18 == 2) {
                        strN16 = AbstractC0420a.n(parcel, i17);
                    } else if (i18 == 3) {
                        strN17 = AbstractC0420a.n(parcel, i17);
                    } else if (i18 == 4) {
                        int iF0 = AbstractC0420a.f0(parcel, i17);
                        if (iF0 == 0) {
                            lValueOf = null;
                        } else {
                            AbstractC0420a.v0(parcel, iF0, 8);
                            lValueOf = Long.valueOf(parcel.readLong());
                        }
                    } else if (i18 == 5) {
                        strN18 = AbstractC0420a.n(parcel, i17);
                    } else if (i18 != 6) {
                        AbstractC0420a.n0(parcel, i17);
                    } else {
                        int iF02 = AbstractC0420a.f0(parcel, i17);
                        if (iF02 == 0) {
                            lValueOf2 = null;
                        } else {
                            AbstractC0420a.v0(parcel, iF02, 8);
                            lValueOf2 = Long.valueOf(parcel.readLong());
                        }
                    }
                }
                AbstractC0420a.u(parcel, iQ09);
                return new C0373y4(strN16, strN17, lValueOf, strN18, lValueOf2);
            case 9:
                int iQ010 = AbstractC0420a.q0(parcel);
                String strN19 = null;
                String strN20 = null;
                String strN21 = null;
                long jE03 = 0;
                while (parcel.dataPosition() < iQ010) {
                    int i19 = parcel.readInt();
                    int i20 = 65535 & i19;
                    if (i20 == 1) {
                        strN19 = AbstractC0420a.n(parcel, i19);
                    } else if (i20 == 2) {
                        strN20 = AbstractC0420a.n(parcel, i19);
                    } else if (i20 == 3) {
                        strN21 = AbstractC0420a.n(parcel, i19);
                    } else if (i20 != 4) {
                        AbstractC0420a.n0(parcel, i19);
                    } else {
                        jE03 = AbstractC0420a.e0(parcel, i19);
                    }
                }
                AbstractC0420a.u(parcel, iQ010);
                return new C0379z4(jE03, strN19, strN20, strN21);
            case 10:
                int iQ011 = AbstractC0420a.q0(parcel);
                String strN22 = null;
                String strN23 = null;
                String strN24 = null;
                String strN25 = null;
                String strN26 = null;
                String strN27 = null;
                String strN28 = null;
                while (parcel.dataPosition() < iQ011) {
                    int i21 = parcel.readInt();
                    switch (65535 & i21) {
                        case 2:
                            strN22 = AbstractC0420a.n(parcel, i21);
                            break;
                        case 3:
                            strN23 = AbstractC0420a.n(parcel, i21);
                            break;
                        case 4:
                            strN24 = AbstractC0420a.n(parcel, i21);
                            break;
                        case 5:
                            strN25 = AbstractC0420a.n(parcel, i21);
                            break;
                        case 6:
                            strN26 = AbstractC0420a.n(parcel, i21);
                            break;
                        case 7:
                            strN27 = AbstractC0420a.n(parcel, i21);
                            break;
                        case 8:
                            strN28 = AbstractC0420a.n(parcel, i21);
                            break;
                        default:
                            AbstractC0420a.n0(parcel, i21);
                            break;
                    }
                }
                AbstractC0420a.u(parcel, iQ011);
                return new A4(strN22, strN23, strN24, strN25, strN26, strN27, strN28);
            case 11:
                int iQ012 = AbstractC0420a.q0(parcel);
                ArrayList arrayListQ4 = null;
                while (parcel.dataPosition() < iQ012) {
                    int i22 = parcel.readInt();
                    if ((65535 & i22) != 2) {
                        AbstractC0420a.n0(parcel, i22);
                    } else {
                        arrayListQ4 = AbstractC0420a.q(parcel, i22, A4.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ012);
                return new B4(arrayListQ4);
            case 12:
                int iQ013 = AbstractC0420a.q0(parcel);
                String strN29 = null;
                String strN30 = null;
                String strN31 = null;
                C0379z4 c0379z4 = null;
                while (parcel.dataPosition() < iQ013) {
                    int i23 = parcel.readInt();
                    int i24 = 65535 & i23;
                    if (i24 == 2) {
                        strN29 = AbstractC0420a.n(parcel, i23);
                    } else if (i24 == 3) {
                        strN30 = AbstractC0420a.n(parcel, i23);
                    } else if (i24 == 4) {
                        strN31 = AbstractC0420a.n(parcel, i23);
                    } else if (i24 != 5) {
                        AbstractC0420a.n0(parcel, i23);
                    } else {
                        c0379z4 = (C0379z4) AbstractC0420a.l(parcel, i23, C0379z4.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ013);
                D4 d42 = new D4();
                d42.f5356c = strN29;
                d42.f5357d = strN30;
                d42.f5358e = strN31;
                d42.f = c0379z4;
                return d42;
            case 13:
                int iQ014 = AbstractC0420a.q0(parcel);
                String strN32 = null;
                String strN33 = null;
                String strN34 = null;
                String strN35 = null;
                String strN36 = null;
                long jE04 = 0;
                boolean zC05 = false;
                boolean zC06 = false;
                while (parcel.dataPosition() < iQ014) {
                    int i25 = parcel.readInt();
                    switch (65535 & i25) {
                        case 1:
                            strN32 = AbstractC0420a.n(parcel, i25);
                            break;
                        case 2:
                            jE04 = AbstractC0420a.e0(parcel, i25);
                            break;
                        case 3:
                            zC05 = AbstractC0420a.c0(parcel, i25);
                            break;
                        case 4:
                            strN33 = AbstractC0420a.n(parcel, i25);
                            break;
                        case 5:
                            strN34 = AbstractC0420a.n(parcel, i25);
                            break;
                        case 6:
                            strN35 = AbstractC0420a.n(parcel, i25);
                            break;
                        case 7:
                            zC06 = AbstractC0420a.c0(parcel, i25);
                            break;
                        case 8:
                            strN36 = AbstractC0420a.n(parcel, i25);
                            break;
                        default:
                            AbstractC0420a.n0(parcel, i25);
                            break;
                    }
                }
                AbstractC0420a.u(parcel, iQ014);
                return new E4(strN32, jE04, zC05, strN33, strN34, strN35, zC06, strN36);
            case 14:
                int iQ015 = AbstractC0420a.q0(parcel);
                int iD0 = 0;
                ArrayList arrayListO2 = null;
                while (parcel.dataPosition() < iQ015) {
                    int i26 = parcel.readInt();
                    int i27 = 65535 & i26;
                    if (i27 == 1) {
                        iD0 = AbstractC0420a.d0(parcel, i26);
                    } else if (i27 != 2) {
                        AbstractC0420a.n0(parcel, i26);
                    } else {
                        arrayListO2 = AbstractC0420a.o(parcel, i26);
                    }
                }
                AbstractC0420a.u(parcel, iQ015);
                return new M4(arrayListO2, iD0);
            case 15:
                int iQ016 = AbstractC0420a.q0(parcel);
                String strN37 = null;
                String str = null;
                String strN38 = null;
                String strN39 = null;
                String strN40 = null;
                String strN41 = null;
                String strN42 = null;
                String strN43 = null;
                String strN44 = null;
                String strN45 = null;
                String strN46 = null;
                String strN47 = null;
                boolean zC07 = false;
                boolean zC08 = false;
                boolean zC09 = false;
                String strN48 = null;
                while (parcel.dataPosition() < iQ016) {
                    int i28 = parcel.readInt();
                    switch (i28 & 65535) {
                        case 2:
                            strN37 = AbstractC0420a.n(parcel, i28);
                            break;
                        case 3:
                            strN48 = AbstractC0420a.n(parcel, i28);
                            break;
                        case 4:
                            strN38 = AbstractC0420a.n(parcel, i28);
                            break;
                        case 5:
                            strN39 = AbstractC0420a.n(parcel, i28);
                            break;
                        case 6:
                            strN40 = AbstractC0420a.n(parcel, i28);
                            break;
                        case 7:
                            strN41 = AbstractC0420a.n(parcel, i28);
                            break;
                        case 8:
                            strN42 = AbstractC0420a.n(parcel, i28);
                            break;
                        case 9:
                            strN43 = AbstractC0420a.n(parcel, i28);
                            break;
                        case 10:
                            zC08 = AbstractC0420a.c0(parcel, i28);
                            break;
                        case 11:
                            zC07 = AbstractC0420a.c0(parcel, i28);
                            break;
                        case 12:
                            strN44 = AbstractC0420a.n(parcel, i28);
                            break;
                        case 13:
                            strN45 = AbstractC0420a.n(parcel, i28);
                            break;
                        case 14:
                            strN46 = AbstractC0420a.n(parcel, i28);
                            break;
                        case 15:
                            strN47 = AbstractC0420a.n(parcel, i28);
                            break;
                        case 16:
                            zC09 = AbstractC0420a.c0(parcel, i28);
                            break;
                        case 17:
                            strN = AbstractC0420a.n(parcel, i28);
                            continue;
                            str = strN;
                        default:
                            AbstractC0420a.n0(parcel, i28);
                            break;
                    }
                    strN = str;
                    str = strN;
                }
                AbstractC0420a.u(parcel, iQ016);
                N4 n42 = new N4();
                n42.f5436c = strN37;
                n42.f5437d = strN48;
                n42.f5438e = strN38;
                n42.f = strN39;
                n42.f5439g = strN40;
                n42.f5440h = strN41;
                n42.f5441i = strN42;
                n42.f5442j = strN43;
                n42.f5443k = zC08;
                n42.f5444l = zC07;
                n42.f5445m = strN44;
                n42.n = strN45;
                n42.f5446o = strN46;
                n42.f5447p = strN47;
                n42.f5448q = zC09;
                n42.f5449r = str;
                return n42;
            default:
                int iQ017 = AbstractC0420a.q0(parcel);
                String strN49 = null;
                boolean zC010 = false;
                long jE05 = 0;
                String strN50 = null;
                while (parcel.dataPosition() < iQ017) {
                    int i29 = parcel.readInt();
                    int i30 = 65535 & i29;
                    if (i30 == 2) {
                        strN49 = AbstractC0420a.n(parcel, i29);
                    } else if (i30 == 3) {
                        strN50 = AbstractC0420a.n(parcel, i29);
                    } else if (i30 == 4) {
                        jE05 = AbstractC0420a.e0(parcel, i29);
                    } else if (i30 != 5) {
                        AbstractC0420a.n0(parcel, i29);
                    } else {
                        zC010 = AbstractC0420a.c0(parcel, i29);
                    }
                }
                AbstractC0420a.u(parcel, iQ017);
                P4 p4 = new P4();
                p4.f5458c = strN49;
                p4.f5459d = strN50;
                p4.f5460e = jE05;
                p4.f = zC010;
                return p4;
        }
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object[] newArray(int i5) {
        switch (this.f5650a) {
            case 0:
                return new C0295l3[i5];
            case 1:
                return new C0307n3[i5];
            case 2:
                return new C0313o3[i5];
            case 3:
                return new C0319p3[i5];
            case 4:
                return new C0320p4[i5];
            case 5:
                return new C0349u4[i5];
            case 6:
                return new C0355v4[i5];
            case 7:
                return new C0361w4[i5];
            case 8:
                return new C0373y4[i5];
            case 9:
                return new C0379z4[i5];
            case 10:
                return new A4[i5];
            case 11:
                return new B4[i5];
            case 12:
                return new D4[i5];
            case 13:
                return new E4[i5];
            case 14:
                return new M4[i5];
            case 15:
                return new N4[i5];
            default:
                return new P4[i5];
        }
    }
}
