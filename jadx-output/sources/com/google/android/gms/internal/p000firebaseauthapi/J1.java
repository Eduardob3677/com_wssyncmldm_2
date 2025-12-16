package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class J1 extends m5 {
    private static final J1 zzb;
    private Z4 zze = Z4.f5499d;
    private C0246d2 zzf;

    static {
        J1 j12 = new J1();
        zzb = j12;
        m5.f(J1.class, j12);
    }

    public static I1 m() {
        return (I1) zzb.i();
    }

    public static J1 n(byte[] bArr, g5 g5Var) {
        return (J1) m5.l(zzb, bArr, g5Var);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002\n\u0003\t", new Object[]{"zze", "zzf"});
        }
        if (i6 == 3) {
            return new J1();
        }
        if (i6 == 4) {
            return new I1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final Z4 o() {
        return this.zze;
    }
}
