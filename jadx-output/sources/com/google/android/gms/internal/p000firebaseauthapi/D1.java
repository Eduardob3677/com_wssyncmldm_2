package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class D1 extends m5 {
    private static final D1 zzb;
    private int zze;
    private F1 zzf;
    private Z4 zzg = Z4.f5499d;

    static {
        D1 d12 = new D1();
        zzb = d12;
        m5.f(D1.class, d12);
    }

    public static C1 n() {
        return (C1) zzb.i();
    }

    public static D1 o(Z4 z4, g5 g5Var) {
        return (D1) m5.k(zzb, z4, g5Var);
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
            return new D1();
        }
        if (i6 == 4) {
            return new C1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final F1 p() {
        F1 f12 = this.zzf;
        return f12 == null ? F1.p() : f12;
    }

    public final Z4 q() {
        return this.zzg;
    }
}
