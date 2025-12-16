package com.google.android.gms.internal.p000firebaseauthapi;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.d2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0246d2 extends m5 {
    private static final C0246d2 zzb;
    private int zze;
    private InterfaceC0237c zzf = C0368y.f;

    static {
        C0246d2 c0246d2 = new C0246d2();
        zzb = c0246d2;
        m5.f(C0246d2.class, c0246d2);
    }

    public static C0228a2 m() {
        return (C0228a2) zzb.i();
    }

    public static void p(C0246d2 c0246d2, C0240c2 c0240c2) {
        InterfaceC0237c interfaceC0237c = c0246d2.zzf;
        if (!((V4) interfaceC0237c).f5478c) {
            int size = interfaceC0237c.size();
            c0246d2.zzf = interfaceC0237c.d(size == 0 ? 10 : size + size);
        }
        c0246d2.zzf.add(c0240c2);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.m5
    public final Object h(int i5) {
        int i6 = i5 - 1;
        if (i6 == 0) {
            return (byte) 1;
        }
        if (i6 == 2) {
            return new C0374z(zzb, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u000b\u0002\u001b", new Object[]{"zze", "zzf", C0240c2.class});
        }
        if (i6 == 3) {
            return new C0246d2();
        }
        if (i6 == 4) {
            return new C0228a2(zzb);
        }
        if (i6 != 5) {
            return null;
        }
        return zzb;
    }

    public final C0240c2 n() {
        return (C0240c2) this.zzf.get(0);
    }
}
