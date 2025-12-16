package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.b1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0233b1 extends m5 {
    private static final C0233b1 zzb;
    private int zze;
    private C0257f1 zzf;
    private Z4 zzg = Z4.f5499d;

    static {
        C0233b1 c0233b1 = new C0233b1();
        zzb = c0233b1;
        m5.f(C0233b1.class, c0233b1);
    }

    public static C0227a1 n() {
        return (C0227a1) zzb.i();
    }

    public static C0233b1 o(Z4 z4, g5 g5Var) {
        return (C0233b1) m5.k(zzb, z4, g5Var);
    }

    public static /* synthetic */ void s(C0233b1 c0233b1, C0257f1 c0257f1) {
        c0257f1.getClass();
        c0233b1.zzf = c0257f1;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u000b\u0002\t\u0003\n", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i6 == 3) {
            return new C0233b1();
        }
        if (i6 == 4) {
            return new C0227a1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zze;
    }

    public final C0257f1 p() {
        C0257f1 c0257f1 = this.zzf;
        return c0257f1 == null ? C0257f1.o() : c0257f1;
    }

    public final Z4 q() {
        return this.zzg;
    }
}
