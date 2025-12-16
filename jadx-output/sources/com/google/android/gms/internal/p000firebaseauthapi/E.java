package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class E {
    public static /* bridge */ int a(D d2) {
        return d2.a();
    }

    public static /* bridge */ D b(Object obj) {
        return ((m5) obj).zzc;
    }

    public static boolean c(Object obj, b5 b5Var) throws C0255f {
        int i5 = b5Var.f5521a;
        int i6 = i5 >>> 3;
        int i7 = i5 & 7;
        a5 a5Var = (a5) b5Var.f5524d;
        if (i7 == 0) {
            b5Var.t(0);
            ((D) obj).c(i6 << 3, Long.valueOf(a5Var.h()));
            return true;
        }
        if (i7 == 1) {
            b5Var.t(1);
            ((D) obj).c((i6 << 3) | 1, Long.valueOf(a5Var.g()));
            return true;
        }
        if (i7 == 2) {
            ((D) obj).c((i6 << 3) | 2, b5Var.v());
            return true;
        }
        if (i7 != 3) {
            if (i7 == 4) {
                return false;
            }
            if (i7 != 5) {
                throw C0255f.a();
            }
            b5Var.t(5);
            ((D) obj).c((i6 << 3) | 5, Integer.valueOf(a5Var.d()));
            return true;
        }
        D dB = D.b();
        int i8 = i6 << 3;
        int i9 = i8 | 4;
        while (b5Var.u() != Integer.MAX_VALUE && c(dB, b5Var)) {
        }
        if (i9 != b5Var.f5521a) {
            throw new C0255f("Protocol message end-group tag did not match expected tag.");
        }
        dB.f5354e = false;
        ((D) obj).c(i8 | 3, dB);
        return true;
    }

    public static /* bridge */ void d(D d2, C0303n c0303n) {
        d2.d(c0303n);
    }
}
