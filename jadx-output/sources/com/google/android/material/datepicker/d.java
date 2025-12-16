package com.google.android.material.datepicker;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import f1.AbstractC0420a;
import j0.C0548u;
import j0.i0;
import j0.j0;
import k.C0568N;
import k.C0613n1;
import k.Z0;
import s1.C0829b;
import s1.C0833f;
import s1.C0834g;

/* loaded from: classes.dex */
public final class d implements Parcelable.Creator {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f5964a;

    public /* synthetic */ d(int i5) {
        this.f5964a = i5;
    }

    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        switch (this.f5964a) {
            case 0:
                return new e(parcel.readLong());
            case 1:
                return o.a(parcel.readInt(), parcel.readInt());
            case 2:
                C0548u c0548u = new C0548u();
                c0548u.f7577c = parcel.readInt();
                c0548u.f7578d = parcel.readInt();
                c0548u.f7579e = parcel.readInt() == 1;
                return c0548u;
            case 3:
                i0 i0Var = new i0();
                i0Var.f7465c = parcel.readInt();
                i0Var.f7466d = parcel.readInt();
                i0Var.f = parcel.readInt() == 1;
                int i5 = parcel.readInt();
                if (i5 > 0) {
                    int[] iArr = new int[i5];
                    i0Var.f7467e = iArr;
                    parcel.readIntArray(iArr);
                }
                return i0Var;
            case 4:
                j0 j0Var = new j0();
                j0Var.f7473c = parcel.readInt();
                j0Var.f7474d = parcel.readInt();
                int i6 = parcel.readInt();
                j0Var.f7475e = i6;
                if (i6 > 0) {
                    int[] iArr2 = new int[i6];
                    j0Var.f = iArr2;
                    parcel.readIntArray(iArr2);
                }
                int i7 = parcel.readInt();
                j0Var.f7476g = i7;
                if (i7 > 0) {
                    int[] iArr3 = new int[i7];
                    j0Var.f7477h = iArr3;
                    parcel.readIntArray(iArr3);
                }
                j0Var.f7479j = parcel.readInt() == 1;
                j0Var.f7480k = parcel.readInt() == 1;
                j0Var.f7481l = parcel.readInt() == 1;
                j0Var.f7478i = parcel.readArrayList(i0.class.getClassLoader());
                return j0Var;
            case 5:
                C0568N c0568n = new C0568N(parcel);
                c0568n.f7720c = parcel.readByte() != 0;
                return c0568n;
            case 6:
                Z0 z02 = new Z0(parcel);
                z02.f7813c = ((Boolean) parcel.readValue(null)).booleanValue();
                return z02;
            case 7:
                C0613n1 c0613n1 = new C0613n1(parcel);
                c0613n1.f7941c = parcel.readInt();
                c0613n1.f7942d = parcel.readInt();
                return c0613n1;
            case 8:
                int iQ0 = AbstractC0420a.q0(parcel);
                int iD0 = 0;
                Intent intent = null;
                int iD02 = 0;
                while (parcel.dataPosition() < iQ0) {
                    int i8 = parcel.readInt();
                    int i9 = 65535 & i8;
                    if (i9 == 1) {
                        iD0 = AbstractC0420a.d0(parcel, i8);
                    } else if (i9 == 2) {
                        iD02 = AbstractC0420a.d0(parcel, i8);
                    } else if (i9 != 3) {
                        AbstractC0420a.n0(parcel, i8);
                    } else {
                        intent = (Intent) AbstractC0420a.l(parcel, i8, Intent.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ0);
                return new C0829b(iD0, iD02, intent);
            case 9:
                int iQ02 = AbstractC0420a.q0(parcel);
                int iD03 = 0;
                c1.t tVar = null;
                while (parcel.dataPosition() < iQ02) {
                    int i10 = parcel.readInt();
                    int i11 = 65535 & i10;
                    if (i11 == 1) {
                        iD03 = AbstractC0420a.d0(parcel, i10);
                    } else if (i11 != 2) {
                        AbstractC0420a.n0(parcel, i10);
                    } else {
                        tVar = (c1.t) AbstractC0420a.l(parcel, i10, c1.t.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ02);
                return new C0833f(iD03, tVar);
            default:
                int iQ03 = AbstractC0420a.q0(parcel);
                int iD04 = 0;
                Z0.a aVar = null;
                c1.u uVar = null;
                while (parcel.dataPosition() < iQ03) {
                    int i12 = parcel.readInt();
                    int i13 = 65535 & i12;
                    if (i13 == 1) {
                        iD04 = AbstractC0420a.d0(parcel, i12);
                    } else if (i13 == 2) {
                        aVar = (Z0.a) AbstractC0420a.l(parcel, i12, Z0.a.CREATOR);
                    } else if (i13 != 3) {
                        AbstractC0420a.n0(parcel, i12);
                    } else {
                        uVar = (c1.u) AbstractC0420a.l(parcel, i12, c1.u.CREATOR);
                    }
                }
                AbstractC0420a.u(parcel, iQ03);
                return new C0834g(iD04, aVar, uVar);
        }
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i5) {
        switch (this.f5964a) {
            case 0:
                return new e[i5];
            case 1:
                return new o[i5];
            case 2:
                return new C0548u[i5];
            case 3:
                return new i0[i5];
            case 4:
                return new j0[i5];
            case 5:
                return new C0568N[i5];
            case 6:
                return new Z0[i5];
            case 7:
                return new C0613n1[i5];
            case 8:
                return new C0829b[i5];
            case 9:
                return new C0833f[i5];
            default:
                return new C0834g[i5];
        }
    }
}
