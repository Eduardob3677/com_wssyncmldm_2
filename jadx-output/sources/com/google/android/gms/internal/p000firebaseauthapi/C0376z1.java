package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.z1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0376z1 extends m5 {
    private static final C0376z1 zzb;
    private B1 zze;

    static {
        C0376z1 c0376z1 = new C0376z1();
        zzb = c0376z1;
        m5.f(C0376z1.class, c0376z1);
    }

    public static C0370y1 m() {
        return (C0370y1) zzb.i();
    }

    public static C0376z1 n(Z4 z4, g5 g5Var) {
        return (C0376z1) m5.k(zzb, z4, g5Var);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\t", new Object[]{"zze"});
        }
        if (i6 == 3) {
            return new C0376z1();
        }
        if (i6 == 4) {
            return new C0370y1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final B1 o() {
        B1 b12 = this.zze;
        return b12 == null ? B1.p() : b12;
    }
}
