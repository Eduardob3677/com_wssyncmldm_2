package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;

/* loaded from: classes.dex */
public final class S1 extends m5 {
    private static final S1 zzb;
    private String zze = "";
    private Z4 zzf = Z4.f5499d;
    private int zzg;

    static {
        S1 s12 = new S1();
        zzb = s12;
        m5.f(S1.class, s12);
    }

    public static R1 m() {
        return (R1) zzb.i();
    }

    public static S1 o() {
        return zzb;
    }

    public static void t(S1 s12, int i5) {
        if (i5 == 6) {
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
        s12.zzg = f.o(i5);
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
            return new S1();
        }
        if (i6 == 4) {
            return new R1(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0014 A[PHI: r1
      0x0014: PHI (r1v1 int) = (r1v0 int), (r1v2 int) binds: [B:5:0x0006, B:9:0x000c] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int n() {
        int i5 = this.zzg;
        int i6 = 1;
        if (i5 != 0) {
            int i7 = 2;
            if (i5 != 1) {
                i6 = 3;
                if (i5 != 2) {
                    i7 = 4;
                    i6 = i5 != 3 ? i5 != 4 ? 0 : 5 : i7;
                }
            }
        }
        if (i6 == 0) {
            return 6;
        }
        return i6;
    }

    public final Z4 p() {
        return this.zzf;
    }

    public final String q() {
        return this.zze;
    }
}
