package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.m2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0300m2 extends m5 {
    private static final C0300m2 zzb;
    private int zze;
    private Z4 zzf = Z4.f5499d;

    static {
        C0300m2 c0300m2 = new C0300m2();
        zzb = c0300m2;
        m5.f(C0300m2.class, c0300m2);
    }

    public static C0294l2 n() {
        return (C0294l2) zzb.i();
    }

    public static C0300m2 o(Z4 z4, g5 g5Var) {
        return (C0300m2) m5.k(zzb, z4, g5Var);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0002\u0000\u0000\u0001\u0003\u0002\u0000\u0000\u0000\u0001\u000b\u0003\n", new Object[]{"zze", "zzf"});
        }
        if (i6 == 3) {
            return new C0300m2();
        }
        if (i6 == 4) {
            return new C0294l2(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final Z4 p() {
        return this.zzf;
    }
}
