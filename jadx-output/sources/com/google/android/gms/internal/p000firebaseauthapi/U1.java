package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;

/* loaded from: classes.dex */
public final class U1 extends m5 {
    private static final U1 zzb;
    private String zze = "";
    private Z4 zzf = Z4.f5499d;
    private int zzg;

    static {
        U1 u12 = new U1();
        zzb = u12;
        m5.f(U1.class, u12);
    }

    public static T1 m() {
        return (T1) zzb.i();
    }

    public static U1 n() {
        return zzb;
    }

    public static /* synthetic */ void r(U1 u12, String str) {
        str.getClass();
        u12.zze = str;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002\n\u0003\f", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i6 == 3) {
            return new U1();
        }
        if (i6 == 4) {
            return new T1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int o() {
        int iD = f.d(this.zzg);
        if (iD == 0) {
            return 6;
        }
        return iD;
    }

    public final Z4 p() {
        return this.zzf;
    }

    public final String q() {
        return this.zze;
    }
}
