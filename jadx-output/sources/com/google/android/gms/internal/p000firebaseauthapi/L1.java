package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class L1 extends m5 {
    private static final L1 zzb;
    private int zze;
    private P1 zzf;
    private Z4 zzg = Z4.f5499d;

    static {
        L1 l12 = new L1();
        zzb = l12;
        m5.f(L1.class, l12);
    }

    public static K1 n() {
        return (K1) zzb.i();
    }

    public static L1 o() {
        return zzb;
    }

    public static L1 p(Z4 z4, g5 g5Var) {
        return (L1) m5.k(zzb, z4, g5Var);
    }

    public static /* synthetic */ void t(L1 l12, P1 p12) {
        p12.getClass();
        l12.zzf = p12;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i6 == 3) {
            return new L1();
        }
        if (i6 == 4) {
            return new K1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final P1 q() {
        P1 p12 = this.zzf;
        return p12 == null ? P1.p() : p12;
    }

    public final Z4 r() {
        return this.zzg;
    }
}
