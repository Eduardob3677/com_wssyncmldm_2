package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.r1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0328r1 extends m5 {
    private static final C0328r1 zzb;
    private int zze;
    private int zzf;

    static {
        C0328r1 c0328r1 = new C0328r1();
        zzb = c0328r1;
        m5.f(C0328r1.class, c0328r1);
    }

    public static C0323q1 n() {
        return (C0323q1) zzb.i();
    }

    public static C0328r1 o(Z4 z4, g5 g5Var) {
        return (C0328r1) m5.k(zzb, z4, g5Var);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\u000b", new Object[]{"zze", "zzf"});
        }
        if (i6 == 3) {
            return new C0328r1();
        }
        if (i6 == 4) {
            return new C0323q1(zzb);
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
