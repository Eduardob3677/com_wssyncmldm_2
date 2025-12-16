package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;

/* loaded from: classes.dex */
public final class H1 extends m5 {
    private static final H1 zzb;
    private int zze;
    private int zzf;
    private Z4 zzg = Z4.f5499d;

    static {
        H1 h12 = new H1();
        zzb = h12;
        m5.f(H1.class, h12);
    }

    public static G1 m() {
        return (G1) zzb.i();
    }

    public static H1 n() {
        return zzb;
    }

    public static void r(H1 h12) {
        h12.zze = f.n(2);
    }

    public static void s(H1 h12) {
        h12.zzf = f.q(4);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0003\u0000\u0000\u0001\u000b\u0003\u0000\u0000\u0000\u0001\f\u0002\f\u000b\n", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i6 == 3) {
            return new H1();
        }
        if (i6 == 4) {
            return new G1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int o() {
        int i5;
        int i6 = this.zze;
        if (i6 != 0) {
            i5 = 2;
            if (i6 != 2) {
                i5 = 3;
                if (i6 != 3) {
                    i5 = 4;
                    if (i6 != 4) {
                        i5 = 5;
                        if (i6 != 5) {
                            i5 = 0;
                        }
                    }
                }
            }
        } else {
            i5 = 1;
        }
        if (i5 == 0) {
            return 6;
        }
        return i5;
    }

    public final int p() {
        int iC = f.c(this.zzf);
        if (iC == 0) {
            return 7;
        }
        return iC;
    }

    public final Z4 q() {
        return this.zzg;
    }
}
