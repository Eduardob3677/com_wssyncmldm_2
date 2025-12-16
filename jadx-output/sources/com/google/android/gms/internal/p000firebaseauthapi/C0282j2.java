package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.j2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0282j2 extends m5 {
    private static final C0282j2 zzb;
    private String zze = "";
    private U1 zzf;

    static {
        C0282j2 c0282j2 = new C0282j2();
        zzb = c0282j2;
        m5.f(C0282j2.class, c0282j2);
    }

    public static C0282j2 n() {
        return zzb;
    }

    public static C0282j2 o(Z4 z4, g5 g5Var) {
        return (C0282j2) m5.k(zzb, z4, g5Var);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"zze", "zzf"});
        }
        if (i6 == 3) {
            return new C0282j2();
        }
        if (i6 == 4) {
            return new C0346u1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final U1 m() {
        U1 u12 = this.zzf;
        return u12 == null ? U1.n() : u12;
    }

    public final String p() {
        return this.zze;
    }

    public final boolean q() {
        return this.zzf != null;
    }
}
