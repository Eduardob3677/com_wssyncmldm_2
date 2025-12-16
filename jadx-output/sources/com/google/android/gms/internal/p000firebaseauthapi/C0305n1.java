package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.n1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0305n1 extends m5 {
    private static final C0305n1 zzb;
    private int zze;
    private int zzf;

    static {
        C0305n1 c0305n1 = new C0305n1();
        zzb = c0305n1;
        m5.f(C0305n1.class, c0305n1);
    }

    public static C0299m1 n() {
        return (C0299m1) zzb.i();
    }

    public static C0305n1 o(Z4 z4, g5 g5Var) {
        return (C0305n1) m5.k(zzb, z4, g5Var);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zzf", "zze"});
        }
        if (i6 == 3) {
            return new C0305n1();
        }
        if (i6 == 4) {
            return new C0299m1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }
}
