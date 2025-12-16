package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class L0 extends m5 {
    private static final L0 zzb;
    private int zze;
    private Z4 zzf = Z4.f5499d;
    private P0 zzg;

    static {
        L0 l0 = new L0();
        zzb = l0;
        m5.f(L0.class, l0);
    }

    public static K0 n() {
        return (K0) zzb.i();
    }

    public static L0 o(Z4 z4, g5 g5Var) {
        return (L0) m5.k(zzb, z4, g5Var);
    }

    public static /* synthetic */ void t(L0 l0, P0 p02) {
        p02.getClass();
        l0.zzg = p02;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\n\u0003\t", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i6 == 3) {
            return new L0();
        }
        if (i6 == 4) {
            return new K0(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final P0 p() {
        P0 p02 = this.zzg;
        return p02 == null ? P0.o() : p02;
    }

    public final Z4 q() {
        return this.zzf;
    }
}
