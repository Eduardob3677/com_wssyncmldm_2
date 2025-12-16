package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;

/* loaded from: classes.dex */
public final class B1 extends m5 {
    private static final B1 zzb;
    private H1 zze;
    private C0364x1 zzf;
    private int zzg;

    static {
        B1 b12 = new B1();
        zzb = b12;
        m5.f(B1.class, b12);
    }

    public static A1 o() {
        return (A1) zzb.i();
    }

    public static B1 p() {
        return zzb;
    }

    public static void t(B1 b12, int i5) {
        if (i5 == 5) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        b12.zzg = f.l(i5);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\t\u0003\f", new Object[]{"zze", "zzf", "zzg"});
        }
        if (i6 == 3) {
            return new B1();
        }
        if (i6 == 4) {
            return new A1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final int m() {
        int i5 = this.zzg;
        int i6 = 1;
        if (i5 != 0) {
            if (i5 != 1) {
                i6 = 3;
                if (i5 != 2) {
                    i6 = i5 != 3 ? 0 : 4;
                }
            } else {
                i6 = 2;
            }
        }
        if (i6 == 0) {
            return 5;
        }
        return i6;
    }

    public final C0364x1 n() {
        C0364x1 c0364x1 = this.zzf;
        return c0364x1 == null ? C0364x1.n() : c0364x1;
    }

    public final H1 q() {
        H1 h12 = this.zze;
        return h12 == null ? H1.n() : h12;
    }
}
