package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.v1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0352v1 extends m5 {
    private static final C0352v1 zzb;

    static {
        C0352v1 c0352v1 = new C0352v1();
        zzb = c0352v1;
        m5.f(C0352v1.class, c0352v1);
    }

    public static C0352v1 m() {
        return zzb;
    }

    public static C0352v1 n(Z4 z4, g5 g5Var) {
        return (C0352v1) m5.k(zzb, z4, g5Var);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0000", null);
        }
        if (i6 == 3) {
            return new C0352v1();
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
