package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class Z0 extends m5 {
    private static final Z0 zzb;
    private int zze;

    static {
        Z0 z02 = new Z0();
        zzb = z02;
        m5.f(Z0.class, z02);
    }

    public static Y0 n() {
        return (Y0) zzb.i();
    }

    public static Z0 o() {
        return zzb;
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
            return new Z0();
        }
        if (i6 == 4) {
            return new Y0(zzb);
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
