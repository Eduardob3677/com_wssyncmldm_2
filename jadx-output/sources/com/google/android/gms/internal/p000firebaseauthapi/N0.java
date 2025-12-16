package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class N0 extends m5 {
    private static final N0 zzb;
    private int zze;
    private P0 zzf;

    static {
        N0 n0 = new N0();
        zzb = n0;
        m5.f(N0.class, n0);
    }

    public static M0 n() {
        return (M0) zzb.i();
    }

    public static N0 o(Z4 z4, g5 g5Var) {
        return (N0) m5.k(zzb, z4, g5Var);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zze", "zzf"});
        }
        if (i6 == 3) {
            return new N0();
        }
        if (i6 == 4) {
            return new M0(zzb);
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
        P0 p02 = this.zzf;
        return p02 == null ? P0.o() : p02;
    }
}
