package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class P0 extends m5 {
    private static final P0 zzb;
    private int zze;

    static {
        P0 p02 = new P0();
        zzb = p02;
        m5.f(P0.class, p02);
    }

    public static O0 n() {
        return (O0) zzb.i();
    }

    public static P0 o() {
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
            return new P0();
        }
        if (i6 == 4) {
            return new O0(zzb);
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
