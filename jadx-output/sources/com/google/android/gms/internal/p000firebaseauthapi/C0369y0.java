package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import k.Q0;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.y0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0369y0 extends X {
    public static final byte[] f = new byte[0];

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f5785e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0369y0(int i5) {
        super(D1.class, new C0316p0[]{new C0316p0(10, T.class)});
        this.f5785e = i5;
        switch (i5) {
            case 1:
                super(R0.class, new C0316p0[]{new C0316p0(0, Q.class)});
                break;
            case 2:
                super(C0233b1.class, new C0316p0[]{new C0316p0(2, Q.class)});
                break;
            case 3:
                super(C0293l1.class, new C0316p0[]{new C0316p0(4, Q.class)});
                break;
            case 4:
                super(C0258f2.class, new C0316p0[]{new C0316p0(6, Q.class)});
                break;
            case 5:
                super(C0300m2.class, new C0316p0[]{new C0316p0(8, Q.class)});
                break;
            default:
                break;
        }
    }

    public static W t(int i5, int i6) {
        C0239c1 c0239c1N = C0245d1.n();
        if (c0239c1N.f5646e) {
            c0239c1N.d();
            c0239c1N.f5646e = false;
        }
        ((C0245d1) c0239c1N.f5645d).zzf = i5;
        C0251e1 c0251e1N = C0257f1.n();
        if (c0251e1N.f5646e) {
            c0251e1N.d();
            c0251e1N.f5646e = false;
        }
        ((C0257f1) c0251e1N.f5645d).zze = 16;
        C0257f1 c0257f1 = (C0257f1) c0251e1N.b();
        if (c0239c1N.f5646e) {
            c0239c1N.d();
            c0239c1N.f5646e = false;
        }
        ((C0245d1) c0239c1N.f5645d).zze = c0257f1;
        return new W((C0245d1) c0239c1N.b(), i6);
    }

    public static W u(int i5, int i6, int i7) {
        W0 w0N = X0.n();
        Y0 y0N = Z0.n();
        if (y0N.f5646e) {
            y0N.d();
            y0N.f5646e = false;
        }
        ((Z0) y0N.f5645d).zze = 16;
        Z0 z02 = (Z0) y0N.b();
        if (w0N.f5646e) {
            w0N.d();
            w0N.f5646e = false;
        }
        ((X0) w0N.f5645d).zze = z02;
        if (w0N.f5646e) {
            w0N.d();
            w0N.f5646e = false;
        }
        ((X0) w0N.f5645d).zzf = i5;
        X0 x02 = (X0) w0N.b();
        M1 m1N = N1.n();
        O1 o1O = P1.o();
        o1O.e(4);
        o1O.f(i6);
        m1N.f((P1) o1O.b());
        m1N.e(32);
        N1 n12 = (N1) m1N.b();
        S0 s0M = T0.m();
        if (s0M.f5646e) {
            s0M.d();
            s0M.f5646e = false;
        }
        ((T0) s0M.f5645d).zze = x02;
        if (s0M.f5646e) {
            s0M.d();
            s0M.f5646e = false;
        }
        ((T0) s0M.f5645d).zzf = n12;
        return new W((T0) s0M.b(), i7);
    }

    public static W v(int i5, int i6) {
        C0299m1 c0299m1N = C0305n1.n();
        if (c0299m1N.f5646e) {
            c0299m1N.d();
            c0299m1N.f5646e = false;
        }
        ((C0305n1) c0299m1N.f5645d).zze = i5;
        return new W((C0305n1) c0299m1N.b(), i6);
    }

    public static W w(int i5, V v4, byte[] bArr, int i6) {
        int i7;
        C0370y1 c0370y1M = C0376z1.m();
        G1 g1M = H1.m();
        if (g1M.f5646e) {
            g1M.d();
            g1M.f5646e = false;
        }
        H1.r((H1) g1M.f5645d);
        if (g1M.f5646e) {
            g1M.d();
            g1M.f5646e = false;
        }
        H1.s((H1) g1M.f5645d);
        Y4 y4Q = Z4.q(bArr, 0, bArr.length);
        if (g1M.f5646e) {
            g1M.d();
            g1M.f5646e = false;
        }
        ((H1) g1M.f5645d).zzg = y4Q;
        H1 h12 = (H1) g1M.b();
        T1 t1M = U1.m();
        t1M.f(v4.f5476a.q());
        U1 u12 = v4.f5476a;
        byte[] bArrR = u12.p().r();
        t1M.g(Z4.q(bArrR, 0, bArrR.length));
        int iF = Q0.f(u12.o());
        int i8 = 4;
        if (iF == 1) {
            i7 = 1;
        } else if (iF == 2) {
            i7 = 2;
        } else if (iF == 3) {
            i7 = 3;
        } else {
            if (iF != 4) {
                throw new IllegalArgumentException("Unknown output prefix type");
            }
            i7 = 4;
        }
        int i9 = i7 - 1;
        if (i9 == 0) {
            i8 = 2;
        } else if (i9 == 1) {
            i8 = 3;
        } else if (i9 != 2) {
            i8 = 5;
        }
        t1M.e(i8);
        U1 u13 = (U1) t1M.b();
        C0358w1 c0358w1M = C0364x1.m();
        if (c0358w1M.f5646e) {
            c0358w1M.d();
            c0358w1M.f5646e = false;
        }
        C0364x1.p((C0364x1) c0358w1M.f5645d, u13);
        C0364x1 c0364x1 = (C0364x1) c0358w1M.b();
        A1 a1O = B1.o();
        if (a1O.f5646e) {
            a1O.d();
            a1O.f5646e = false;
        }
        ((B1) a1O.f5645d).zze = h12;
        if (a1O.f5646e) {
            a1O.d();
            a1O.f5646e = false;
        }
        ((B1) a1O.f5645d).zzf = c0364x1;
        if (a1O.f5646e) {
            a1O.d();
            a1O.f5646e = false;
        }
        B1.t((B1) a1O.f5645d, i5);
        B1 b12 = (B1) a1O.b();
        if (c0370y1M.f5646e) {
            c0370y1M.d();
            c0370y1M.f5646e = false;
        }
        ((C0376z1) c0370y1M.f5645d).zze = b12;
        return new W((C0376z1) c0370y1M.b(), i6);
    }

    public static void x(P0 p02) {
        if (p02.m() < 10) {
            throw new GeneralSecurityException("tag size too short");
        }
        if (p02.m() > 16) {
            throw new GeneralSecurityException("tag size too long");
        }
    }

    public static final void y(D1 d12) {
        if (d12.q().n() == 0) {
            throw new GeneralSecurityException("invalid ECIES private key");
        }
        D2.c(d12.m());
        AbstractC0332s.s(d12.p().n());
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final C0322q0 n() {
        switch (this.f5785e) {
            case 0:
                return new C0322q0(10, C0376z1.class);
            case 1:
                return new C0322q0(0, T0.class);
            case 2:
                return new C0322q0(2, C0245d1.class);
            case 3:
                return new C0322q0(4, C0305n1.class);
            case 4:
                return new C0322q0(6, C0264g2.class);
            case 5:
                return new C0322q0(8, C0306n2.class);
            default:
                return new C0322q0(11, N0.class);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final int o() {
        switch (this.f5785e) {
        }
        return 2;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final /* bridge */ /* synthetic */ U4 p(Z4 z4) {
        switch (this.f5785e) {
            case 0:
                return D1.o(z4, g5.a());
            case 1:
                return R0.o(z4, g5.a());
            case 2:
                return C0233b1.o(z4, g5.a());
            case 3:
                return C0293l1.o(z4, g5.a());
            case 4:
                return C0258f2.o(z4, g5.a());
            case 5:
                return C0300m2.o(z4, g5.a());
            default:
                return L0.o(z4, g5.a());
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final String r() {
        switch (this.f5785e) {
            case 0:
                return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
            case 1:
                return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
            case 2:
                return "type.googleapis.com/google.crypto.tink.AesEaxKey";
            case 3:
                return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
            case 4:
                return "type.googleapis.com/google.crypto.tink.KmsAeadKey";
            case 5:
                return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
            default:
                return "type.googleapis.com/google.crypto.tink.AesCmacKey";
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final void s(U4 u42) throws GeneralSecurityException {
        switch (this.f5785e) {
            case 0:
                y((D1) u42);
                return;
            case 1:
                R0 r0 = (R0) u42;
                D2.c(r0.m());
                C0316p0[] c0316p0Arr = {new C0316p0(1, InterfaceC0371y2.class)};
                HashMap map = new HashMap();
                for (int i5 = 0; i5 <= 0; i5++) {
                    C0316p0 c0316p0 = c0316p0Arr[i5];
                    boolean zContainsKey = map.containsKey(c0316p0.f5676a);
                    Class cls = c0316p0.f5676a;
                    if (zContainsKey) {
                        String strValueOf = String.valueOf(cls.getCanonicalName());
                        throw new IllegalArgumentException(strValueOf.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(strValueOf) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
                    }
                    map.put(cls, c0316p0);
                }
                Class cls2 = c0316p0Arr[0].f5676a;
                Collections.unmodifiableMap(map);
                V0 v0P = r0.p();
                D2.c(v0P.m());
                D2.b(v0P.r().n());
                Z0 z0Q = v0P.q();
                if (z0Q.m() < 12 || z0Q.m() > 16) {
                    throw new GeneralSecurityException("invalid IV size");
                }
                C0316p0[] c0316p0Arr2 = {new C0316p0(13, InterfaceC0232b0.class)};
                HashMap map2 = new HashMap();
                for (int i6 = 0; i6 <= 0; i6++) {
                    C0316p0 c0316p02 = c0316p0Arr2[i6];
                    boolean zContainsKey2 = map2.containsKey(c0316p02.f5676a);
                    Class cls3 = c0316p02.f5676a;
                    if (zContainsKey2) {
                        String strValueOf2 = String.valueOf(cls3.getCanonicalName());
                        throw new IllegalArgumentException(strValueOf2.length() != 0 ? "KeyTypeManager constructed with duplicate factories for primitive ".concat(strValueOf2) : new String("KeyTypeManager constructed with duplicate factories for primitive "));
                    }
                    map2.put(cls3, c0316p02);
                }
                Class cls4 = c0316p0Arr2[0].f5676a;
                Collections.unmodifiableMap(map2);
                C0375z0.v(r0.q());
                return;
            case 2:
                C0233b1 c0233b1 = (C0233b1) u42;
                D2.c(c0233b1.m());
                D2.b(c0233b1.q().n());
                if (c0233b1.p().m() != 12 && c0233b1.p().m() != 16) {
                    throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
                }
                return;
            case 3:
                C0293l1 c0293l1 = (C0293l1) u42;
                D2.c(c0293l1.m());
                D2.b(c0293l1.p().n());
                return;
            case 4:
                D2.c(((C0258f2) u42).m());
                return;
            case 5:
                C0300m2 c0300m2 = (C0300m2) u42;
                D2.c(c0300m2.m());
                if (c0300m2.p().n() != 32) {
                    throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
                }
                return;
            default:
                L0 l0 = (L0) u42;
                D2.c(l0.m());
                if (l0.q().n() != 32) {
                    throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
                }
                x(l0.p());
                return;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0369y0(Class cls, C0316p0[] c0316p0Arr) {
        super(cls, c0316p0Arr);
        this.f5785e = 6;
    }
}
