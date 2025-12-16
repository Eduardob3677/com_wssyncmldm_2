package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;

/* loaded from: classes.dex */
public final class Y1 extends m5 {
    private static final Y1 zzb;
    private S1 zze;
    private int zzf;
    private int zzg;
    private int zzh;

    static {
        Y1 y12 = new Y1();
        zzb = y12;
        m5.f(Y1.class, y12);
    }

    public static X1 p() {
        return (X1) zzb.i();
    }

    public static void t(Y1 y12) {
        y12.zzf = f.m(2);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\t\u0002\f\u0003\u000b\u0004\f", new Object[]{"zze", "zzf", "zzg", "zzh"});
        }
        if (i6 == 3) {
            return new Y1();
        }
        if (i6 == 4) {
            return new X1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zzg;
    }

    public final S1 n() {
        S1 s12 = this.zze;
        return s12 == null ? S1.o() : s12;
    }

    public final int o() {
        int i5 = this.zzf;
        int i6 = 1;
        if (i5 != 0) {
            if (i5 != 1) {
                i6 = 3;
                if (i5 != 2) {
                    i6 = i5 != 3 ? 0 : 4;
                }
            } else {
                i6 = 2;
            }
        }
        if (i6 == 0) {
            return 5;
        }
        return i6;
    }

    public final int q() {
        int iD = f.d(this.zzh);
        if (iD == 0) {
            return 6;
        }
        return iD;
    }

    public final boolean v() {
        return this.zze != null;
    }
}
