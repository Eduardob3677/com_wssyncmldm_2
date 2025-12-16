package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class X0 extends m5 {
    private static final X0 zzb;
    private Z0 zze;
    private int zzf;

    static {
        X0 x02 = new X0();
        zzb = x02;
        m5.f(X0.class, x02);
    }

    public static W0 n() {
        return (W0) zzb.i();
    }

    public static X0 o() {
        return zzb;
    }

    public static X0 p(Z4 z4, g5 g5Var) {
        return (X0) m5.k(zzb, z4, g5Var);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zze", "zzf"});
        }
        if (i6 == 3) {
            return new X0();
        }
        if (i6 == 4) {
            return new W0(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zzf;
    }

    public final Z0 q() {
        Z0 z02 = this.zze;
        return z02 == null ? Z0.o() : z02;
    }
}
