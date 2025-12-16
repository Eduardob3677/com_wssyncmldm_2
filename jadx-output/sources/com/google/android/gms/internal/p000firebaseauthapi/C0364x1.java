package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.x1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0364x1 extends m5 {
    private static final C0364x1 zzb;
    private U1 zze;

    static {
        C0364x1 c0364x1 = new C0364x1();
        zzb = c0364x1;
        m5.f(C0364x1.class, c0364x1);
    }

    public static C0358w1 m() {
        return (C0358w1) zzb.i();
    }

    public static C0364x1 n() {
        return zzb;
    }

    public static /* synthetic */ void p(C0364x1 c0364x1, U1 u12) {
        u12.getClass();
        c0364x1.zze = u12;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\t", new Object[]{"zze"});
        }
        if (i6 == 3) {
            return new C0364x1();
        }
        if (i6 == 4) {
            return new C0358w1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final U1 o() {
        U1 u12 = this.zze;
        return u12 == null ? U1.n() : u12;
    }
}
