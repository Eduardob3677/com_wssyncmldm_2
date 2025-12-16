package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.n2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0306n2 extends m5 {
    private static final C0306n2 zzb;
    private int zze;

    static {
        C0306n2 c0306n2 = new C0306n2();
        zzb = c0306n2;
        m5.f(C0306n2.class, c0306n2);
    }

    public static C0306n2 m() {
        return zzb;
    }

    public static C0306n2 n(Z4 z4, g5 g5Var) {
        return (C0306n2) m5.k(zzb, z4, g5Var);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u000b", new Object[]{"zze"});
        }
        if (i6 == 3) {
            return new C0306n2();
        }
        if (i6 == 4) {
            return new C0346u1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }
}
