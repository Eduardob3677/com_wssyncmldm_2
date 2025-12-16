package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class T0 extends m5 {
    private static final T0 zzb;
    private X0 zze;
    private N1 zzf;

    static {
        T0 t0 = new T0();
        zzb = t0;
        m5.f(T0.class, t0);
    }

    public static S0 m() {
        return (S0) zzb.i();
    }

    public static T0 n(Z4 z4, g5 g5Var) {
        return (T0) m5.k(zzb, z4, g5Var);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\t", new Object[]{"zze", "zzf"});
        }
        if (i6 == 3) {
            return new T0();
        }
        if (i6 == 4) {
            return new S0(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final X0 o() {
        X0 x02 = this.zze;
        return x02 == null ? X0.o() : x02;
    }

    public final N1 p() {
        N1 n12 = this.zzf;
        return n12 == null ? N1.o() : n12;
    }
}
