package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.i2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0276i2 extends m5 {
    private static final C0276i2 zzb;
    private int zze;
    private C0282j2 zzf;

    static {
        C0276i2 c0276i2 = new C0276i2();
        zzb = c0276i2;
        m5.f(C0276i2.class, c0276i2);
    }

    public static C0270h2 n() {
        return (C0270h2) zzb.i();
    }

    public static C0276i2 o(Z4 z4, g5 g5Var) {
        return (C0276i2) m5.k(zzb, z4, g5Var);
    }

    public static /* synthetic */ void r(C0276i2 c0276i2, C0282j2 c0282j2) {
        c0282j2.getClass();
        c0276i2.zzf = c0282j2;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u000b\u0002\t", new Object[]{"zze", "zzf"});
        }
        if (i6 == 3) {
            return new C0276i2();
        }
        if (i6 == 4) {
            return new C0270h2(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final C0282j2 p() {
        C0282j2 c0282j2 = this.zzf;
        return c0282j2 == null ? C0282j2.n() : c0282j2;
    }
}
