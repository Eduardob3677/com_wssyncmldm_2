package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.d1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0245d1 extends m5 {
    private static final C0245d1 zzb;
    private C0257f1 zze;
    private int zzf;

    static {
        C0245d1 c0245d1 = new C0245d1();
        zzb = c0245d1;
        m5.f(C0245d1.class, c0245d1);
    }

    public static C0239c1 n() {
        return (C0239c1) zzb.i();
    }

    public static C0245d1 o(Z4 z4, g5 g5Var) {
        return (C0245d1) m5.k(zzb, z4, g5Var);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\u000b", new Object[]{"zze", "zzf"});
        }
        if (i6 == 3) {
            return new C0245d1();
        }
        if (i6 == 4) {
            return new C0239c1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zzf;
    }

    public final C0257f1 p() {
        C0257f1 c0257f1 = this.zze;
        return c0257f1 == null ? C0257f1.o() : c0257f1;
    }
}
