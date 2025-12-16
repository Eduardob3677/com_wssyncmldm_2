package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class V0 extends m5 {
    private static final V0 zzb;
    private int zze;
    private Z0 zzf;
    private Z4 zzg = Z4.f5499d;

    static {
        V0 v02 = new V0();
        zzb = v02;
        m5.f(V0.class, v02);
    }

    public static U0 n() {
        return (U0) zzb.i();
    }

    public static V0 o() {
        return zzb;
    }

    public static V0 p(Z4 z4, g5 g5Var) {
        return (V0) m5.k(zzb, z4, g5Var);
    }

    public static /* synthetic */ void t(V0 v02, Z0 z02) {
        z02.getClass();
        v02.zzf = z02;
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
            return new V0();
        }
        if (i6 == 4) {
            return new U0(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final Z0 q() {
        Z0 z02 = this.zzf;
        return z02 == null ? Z0.o() : z02;
    }

    public final Z4 r() {
        return this.zzg;
    }
}
