package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class F1 extends m5 {
    private static final F1 zzb;
    private int zze;
    private B1 zzf;
    private Z4 zzg;
    private Z4 zzh;

    static {
        F1 f12 = new F1();
        zzb = f12;
        m5.f(F1.class, f12);
    }

    public F1() {
        Y4 y4 = Z4.f5499d;
        this.zzg = y4;
        this.zzh = y4;
    }

    public static E1 o() {
        return (E1) zzb.i();
    }

    public static F1 p() {
        return zzb;
    }

    public static F1 q(Z4 z4, g5 g5Var) {
        return (F1) m5.k(zzb, z4, g5Var);
    }

    public static /* synthetic */ void u(F1 f12, B1 b12) {
        b12.getClass();
        f12.zzf = b12;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n\u0004\n", new Object[]{"zze", "zzf", "zzg", "zzh"});
        }
        if (i6 == 3) {
            return new F1();
        }
        if (i6 == 4) {
            return new E1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final B1 n() {
        B1 b12 = this.zzf;
        return b12 == null ? B1.p() : b12;
    }

    public final Z4 r() {
        return this.zzg;
    }

    public final Z4 s() {
        return this.zzh;
    }
}
