package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class N1 extends m5 {
    private static final N1 zzb;
    private P1 zze;
    private int zzf;
    private int zzg;

    static {
        N1 n12 = new N1();
        zzb = n12;
        m5.f(N1.class, n12);
    }

    public static M1 n() {
        return (M1) zzb.i();
    }

    public static N1 o() {
        return zzb;
    }

    public static N1 p(Z4 z4, g5 g5Var) {
        return (N1) m5.k(zzb, z4, g5Var);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\u000b\u0003\u000b", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i6 == 3) {
            return new N1();
        }
        if (i6 == 4) {
            return new M1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zzf;
    }

    public final P1 q() {
        P1 p12 = this.zze;
        return p12 == null ? P1.p() : p12;
    }
}
