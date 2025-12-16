package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class R0 extends m5 {
    private static final R0 zzb;
    private int zze;
    private V0 zzf;
    private L1 zzg;

    static {
        R0 r0 = new R0();
        zzb = r0;
        m5.f(R0.class, r0);
    }

    public static Q0 n() {
        return (Q0) zzb.i();
    }

    public static R0 o(Z4 z4, g5 g5Var) {
        return (R0) m5.k(zzb, z4, g5Var);
    }

    public static /* synthetic */ void t(R0 r0, L1 l12) {
        l12.getClass();
        r0.zzg = l12;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\t", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i6 == 3) {
            return new R0();
        }
        if (i6 == 4) {
            return new Q0(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final V0 p() {
        V0 v02 = this.zzf;
        return v02 == null ? V0.o() : v02;
    }

    public final L1 q() {
        L1 l12 = this.zzg;
        return l12 == null ? L1.o() : l12;
    }
}
