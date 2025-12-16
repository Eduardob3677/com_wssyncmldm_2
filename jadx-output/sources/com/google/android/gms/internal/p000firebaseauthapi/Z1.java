package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class Z1 extends m5 {
    private static final Z1 zzb;
    private int zze;
    private InterfaceC0237c zzf = C0368y.f;

    static {
        Z1 z12 = new Z1();
        zzb = z12;
        m5.f(Z1.class, z12);
    }

    public static W1 o() {
        return (W1) zzb.i();
    }

    public static Z1 q(byte[] bArr, g5 g5Var) {
        return (Z1) m5.l(zzb, bArr, g5Var);
    }

    public static void t(Z1 z12, Y1 y12) {
        InterfaceC0237c interfaceC0237c = z12.zzf;
        if (!((V4) interfaceC0237c).f5478c) {
            int size = interfaceC0237c.size();
            z12.zzf = interfaceC0237c.d(size == 0 ? 10 : size + size);
        }
        z12.zzf.add(y12);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zze", "zzf", Y1.class});
        }
        if (i6 == 3) {
            return new Z1();
        }
        if (i6 == 4) {
            return new W1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        return this.zzf.size();
    }

    public final int n() {
        return this.zze;
    }

    public final Y1 p(int i5) {
        return (Y1) this.zzf.get(i5);
    }

    public final InterfaceC0237c r() {
        return this.zzf;
    }
}
