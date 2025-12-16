package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.q0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0322q0 {

    /* renamed from: a, reason: collision with root package name */
    public final Class f5693a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5694b;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0322q0(int i5, Class cls) {
        this(cls);
        this.f5694b = i5;
    }

    public static final V0 f(X0 x02) {
        U0 u0N = V0.n();
        Z0 z0Q = x02.q();
        if (u0N.f5646e) {
            u0N.d();
            u0N.f5646e = false;
        }
        V0.t((V0) u0N.f5645d, z0Q);
        byte[] bArrA = C2.a(x02.m());
        Y4 y4Q = Z4.q(bArrA, 0, bArrA.length);
        if (u0N.f5646e) {
            u0N.d();
            u0N.f5646e = false;
        }
        ((V0) u0N.f5645d).zzg = y4Q;
        if (u0N.f5646e) {
            u0N.d();
            u0N.f5646e = false;
        }
        ((V0) u0N.f5645d).zze = 0;
        return (V0) u0N.b();
    }

    public final /* bridge */ U4 a(Z4 z4) {
        switch (this.f5694b) {
            case 0:
                return T0.n(z4, g5.a());
            case 1:
                return X0.p(z4, g5.a());
            case 2:
                return C0245d1.o(z4, g5.a());
            case 3:
                return C0281j1.o(z4, g5.a());
            case 4:
                return C0305n1.o(z4, g5.a());
            case 5:
                return C0352v1.n(z4, g5.a());
            case 6:
                return C0264g2.n(z4, g5.a());
            case 7:
                return C0282j2.o(z4, g5.a());
            case 8:
                return C0306n2.n(z4, g5.a());
            case 9:
                return C0328r1.o(z4, g5.a());
            case 10:
                return C0376z1.n(z4, g5.a());
            case 11:
                return N0.o(z4, g5.a());
            default:
                return N1.p(z4, g5.a());
        }
    }

    public final Object b(U4 u42) throws InvalidAlgorithmParameterException {
        switch (this.f5694b) {
            case 0:
                T0 t0 = (T0) u42;
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
                V0 v0F = f(t0.o());
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
                Object objB = new C0322q0(12, N1.class).b(t0.p());
                Q0 q0N = R0.n();
                if (q0N.f5646e) {
                    q0N.d();
                    q0N.f5646e = false;
                }
                ((R0) q0N.f5645d).zzf = v0F;
                L1 l12 = (L1) objB;
                if (q0N.f5646e) {
                    q0N.d();
                    q0N.f5646e = false;
                }
                R0.t((R0) q0N.f5645d, l12);
                if (q0N.f5646e) {
                    q0N.d();
                    q0N.f5646e = false;
                }
                ((R0) q0N.f5645d).zze = 0;
                return (R0) q0N.b();
            case 1:
                return f((X0) u42);
            case 2:
                C0245d1 c0245d1 = (C0245d1) u42;
                C0227a1 c0227a1N = C0233b1.n();
                byte[] bArrA = C2.a(c0245d1.m());
                Y4 y4Q = Z4.q(bArrA, 0, bArrA.length);
                if (c0227a1N.f5646e) {
                    c0227a1N.d();
                    c0227a1N.f5646e = false;
                }
                ((C0233b1) c0227a1N.f5645d).zzg = y4Q;
                C0257f1 c0257f1P = c0245d1.p();
                if (c0227a1N.f5646e) {
                    c0227a1N.d();
                    c0227a1N.f5646e = false;
                }
                C0233b1.s((C0233b1) c0227a1N.f5645d, c0257f1P);
                if (c0227a1N.f5646e) {
                    c0227a1N.d();
                    c0227a1N.f5646e = false;
                }
                ((C0233b1) c0227a1N.f5645d).zze = 0;
                return (C0233b1) c0227a1N.b();
            case 3:
                C0263g1 c0263g1N = C0269h1.n();
                byte[] bArrA2 = C2.a(((C0281j1) u42).m());
                Y4 y4Q2 = Z4.q(bArrA2, 0, bArrA2.length);
                if (c0263g1N.f5646e) {
                    c0263g1N.d();
                    c0263g1N.f5646e = false;
                }
                ((C0269h1) c0263g1N.f5645d).zzf = y4Q2;
                if (c0263g1N.f5646e) {
                    c0263g1N.d();
                    c0263g1N.f5646e = false;
                }
                ((C0269h1) c0263g1N.f5645d).zze = 0;
                return (C0269h1) c0263g1N.b();
            case 4:
                C0287k1 c0287k1N = C0293l1.n();
                byte[] bArrA3 = C2.a(((C0305n1) u42).m());
                Y4 y4Q3 = Z4.q(bArrA3, 0, bArrA3.length);
                if (c0287k1N.f5646e) {
                    c0287k1N.d();
                    c0287k1N.f5646e = false;
                }
                ((C0293l1) c0287k1N.f5645d).zzf = y4Q3;
                if (c0287k1N.f5646e) {
                    c0287k1N.d();
                    c0287k1N.f5646e = false;
                }
                ((C0293l1) c0287k1N.f5645d).zze = 0;
                return (C0293l1) c0287k1N.b();
            case 5:
                C0334s1 c0334s1N = C0340t1.n();
                if (c0334s1N.f5646e) {
                    c0334s1N.d();
                    c0334s1N.f5646e = false;
                }
                ((C0340t1) c0334s1N.f5645d).zze = 0;
                byte[] bArrA4 = C2.a(32);
                Y4 y4Q4 = Z4.q(bArrA4, 0, bArrA4.length);
                if (c0334s1N.f5646e) {
                    c0334s1N.d();
                    c0334s1N.f5646e = false;
                }
                ((C0340t1) c0334s1N.f5645d).zzf = y4Q4;
                return (C0340t1) c0334s1N.b();
            case 6:
                C0264g2 c0264g2 = (C0264g2) u42;
                C0252e2 c0252e2N = C0258f2.n();
                if (c0252e2N.f5646e) {
                    c0252e2N.d();
                    c0252e2N.f5646e = false;
                }
                C0258f2.r((C0258f2) c0252e2N.f5645d, c0264g2);
                if (c0252e2N.f5646e) {
                    c0252e2N.d();
                    c0252e2N.f5646e = false;
                }
                ((C0258f2) c0252e2N.f5645d).zze = 0;
                return (C0258f2) c0252e2N.b();
            case 7:
                C0282j2 c0282j2 = (C0282j2) u42;
                C0270h2 c0270h2N = C0276i2.n();
                if (c0270h2N.f5646e) {
                    c0270h2N.d();
                    c0270h2N.f5646e = false;
                }
                C0276i2.r((C0276i2) c0270h2N.f5645d, c0282j2);
                if (c0270h2N.f5646e) {
                    c0270h2N.d();
                    c0270h2N.f5646e = false;
                }
                ((C0276i2) c0270h2N.f5645d).zze = 0;
                return (C0276i2) c0270h2N.b();
            case 8:
                C0294l2 c0294l2N = C0300m2.n();
                if (c0294l2N.f5646e) {
                    c0294l2N.d();
                    c0294l2N.f5646e = false;
                }
                ((C0300m2) c0294l2N.f5645d).zze = 0;
                byte[] bArrA5 = C2.a(32);
                Y4 y4Q5 = Z4.q(bArrA5, 0, bArrA5.length);
                if (c0294l2N.f5646e) {
                    c0294l2N.d();
                    c0294l2N.f5646e = false;
                }
                ((C0300m2) c0294l2N.f5645d).zzf = y4Q5;
                return (C0300m2) c0294l2N.b();
            case 9:
                C0311o1 c0311o1N = C0317p1.n();
                byte[] bArrA6 = C2.a(((C0328r1) u42).m());
                Y4 y4Q6 = Z4.q(bArrA6, 0, bArrA6.length);
                if (c0311o1N.f5646e) {
                    c0311o1N.d();
                    c0311o1N.f5646e = false;
                }
                ((C0317p1) c0311o1N.f5645d).zzf = y4Q6;
                if (c0311o1N.f5646e) {
                    c0311o1N.d();
                    c0311o1N.f5646e = false;
                }
                ((C0317p1) c0311o1N.f5645d).zze = 0;
                return (C0317p1) c0311o1N.b();
            case 10:
                C0376z1 c0376z1 = (C0376z1) u42;
                ECParameterSpec eCParameterSpecO = AbstractC0332s.O(AbstractC0332s.x(c0376z1.o().q().o()));
                KeyPairGenerator keyPairGenerator = (KeyPairGenerator) C0365x2.f5779h.a("EC");
                keyPairGenerator.initialize(eCParameterSpecO);
                KeyPair keyPairGenerateKeyPair = keyPairGenerator.generateKeyPair();
                ECPublicKey eCPublicKey = (ECPublicKey) keyPairGenerateKeyPair.getPublic();
                ECPrivateKey eCPrivateKey = (ECPrivateKey) keyPairGenerateKeyPair.getPrivate();
                ECPoint w2 = eCPublicKey.getW();
                E1 e1O = F1.o();
                if (e1O.f5646e) {
                    e1O.d();
                    e1O.f5646e = false;
                }
                ((F1) e1O.f5645d).zze = 0;
                B1 b1O = c0376z1.o();
                if (e1O.f5646e) {
                    e1O.d();
                    e1O.f5646e = false;
                }
                F1.u((F1) e1O.f5645d, b1O);
                byte[] byteArray = w2.getAffineX().toByteArray();
                Y4 y4Q7 = Z4.q(byteArray, 0, byteArray.length);
                if (e1O.f5646e) {
                    e1O.d();
                    e1O.f5646e = false;
                }
                ((F1) e1O.f5645d).zzg = y4Q7;
                byte[] byteArray2 = w2.getAffineY().toByteArray();
                Y4 y4Q8 = Z4.q(byteArray2, 0, byteArray2.length);
                if (e1O.f5646e) {
                    e1O.d();
                    e1O.f5646e = false;
                }
                ((F1) e1O.f5645d).zzh = y4Q8;
                F1 f12 = (F1) e1O.b();
                C1 c1N = D1.n();
                if (c1N.f5646e) {
                    c1N.d();
                    c1N.f5646e = false;
                }
                ((D1) c1N.f5645d).zze = 0;
                if (c1N.f5646e) {
                    c1N.d();
                    c1N.f5646e = false;
                }
                ((D1) c1N.f5645d).zzf = f12;
                byte[] byteArray3 = eCPrivateKey.getS().toByteArray();
                Y4 y4Q9 = Z4.q(byteArray3, 0, byteArray3.length);
                if (c1N.f5646e) {
                    c1N.d();
                    c1N.f5646e = false;
                }
                ((D1) c1N.f5645d).zzg = y4Q9;
                return (D1) c1N.b();
            case 11:
                N0 n0 = (N0) u42;
                K0 k0N = L0.n();
                if (k0N.f5646e) {
                    k0N.d();
                    k0N.f5646e = false;
                }
                ((L0) k0N.f5645d).zze = 0;
                byte[] bArrA7 = C2.a(n0.m());
                Y4 y4Q10 = Z4.q(bArrA7, 0, bArrA7.length);
                if (k0N.f5646e) {
                    k0N.d();
                    k0N.f5646e = false;
                }
                ((L0) k0N.f5645d).zzf = y4Q10;
                P0 p0P = n0.p();
                if (k0N.f5646e) {
                    k0N.d();
                    k0N.f5646e = false;
                }
                L0.t((L0) k0N.f5645d, p0P);
                return (L0) k0N.b();
            default:
                N1 n12 = (N1) u42;
                K1 k1N = L1.n();
                if (k1N.f5646e) {
                    k1N.d();
                    k1N.f5646e = false;
                }
                ((L1) k1N.f5645d).zze = 0;
                P1 p1Q = n12.q();
                if (k1N.f5646e) {
                    k1N.d();
                    k1N.f5646e = false;
                }
                L1.t((L1) k1N.f5645d, p1Q);
                byte[] bArrA8 = C2.a(n12.m());
                Y4 y4Q11 = Z4.q(bArrA8, 0, bArrA8.length);
                if (k1N.f5646e) {
                    k1N.d();
                    k1N.f5646e = false;
                }
                ((L1) k1N.f5645d).zzg = y4Q11;
                return (L1) k1N.b();
        }
    }

    public Map c() throws GeneralSecurityException {
        switch (this.f5694b) {
            case 0:
                HashMap map = new HashMap();
                map.put("AES128_CTR_HMAC_SHA256", C0369y0.u(16, 16, 1));
                map.put("AES128_CTR_HMAC_SHA256_RAW", C0369y0.u(16, 16, 3));
                map.put("AES256_CTR_HMAC_SHA256", C0369y0.u(32, 32, 1));
                map.put("AES256_CTR_HMAC_SHA256_RAW", C0369y0.u(32, 32, 3));
                return Collections.unmodifiableMap(map);
            case 1:
            case 6:
            case 7:
            default:
                return d();
            case 2:
                HashMap map2 = new HashMap();
                map2.put("AES128_EAX", C0369y0.t(16, 1));
                map2.put("AES128_EAX_RAW", C0369y0.t(16, 3));
                map2.put("AES256_EAX", C0369y0.t(32, 1));
                map2.put("AES256_EAX_RAW", C0369y0.t(32, 3));
                return Collections.unmodifiableMap(map2);
            case 3:
                HashMap map3 = new HashMap();
                map3.put("AES128_GCM", C0375z0.t(16, 1));
                map3.put("AES128_GCM_RAW", C0375z0.t(16, 3));
                map3.put("AES256_GCM", C0375z0.t(32, 1));
                map3.put("AES256_GCM_RAW", C0375z0.t(32, 3));
                return Collections.unmodifiableMap(map3);
            case 4:
                HashMap map4 = new HashMap();
                map4.put("AES128_GCM_SIV", C0369y0.v(16, 1));
                map4.put("AES128_GCM_SIV_RAW", C0369y0.v(16, 3));
                map4.put("AES256_GCM_SIV", C0369y0.v(32, 1));
                map4.put("AES256_GCM_SIV_RAW", C0369y0.v(32, 3));
                return Collections.unmodifiableMap(map4);
            case 5:
                HashMap map5 = new HashMap();
                map5.put("CHACHA20_POLY1305", new W(C0352v1.m(), 1));
                map5.put("CHACHA20_POLY1305_RAW", new W(C0352v1.m(), 3));
                return Collections.unmodifiableMap(map5);
            case 8:
                HashMap map6 = new HashMap();
                map6.put("XCHACHA20_POLY1305", new W(C0306n2.m(), 1));
                map6.put("XCHACHA20_POLY1305_RAW", new W(C0306n2.m(), 3));
                return Collections.unmodifiableMap(map6);
            case 9:
                HashMap map7 = new HashMap();
                C0323q1 c0323q1N = C0328r1.n();
                if (c0323q1N.f5646e) {
                    c0323q1N.d();
                    c0323q1N.f5646e = false;
                }
                ((C0328r1) c0323q1N.f5645d).zze = 64;
                map7.put("AES256_SIV", new W((C0328r1) c0323q1N.b(), 1));
                C0323q1 c0323q1N2 = C0328r1.n();
                if (c0323q1N2.f5646e) {
                    c0323q1N2.d();
                    c0323q1N2.f5646e = false;
                }
                ((C0328r1) c0323q1N2.f5645d).zze = 64;
                map7.put("AES256_SIV_RAW", new W((C0328r1) c0323q1N2.b(), 3));
                return Collections.unmodifiableMap(map7);
            case 10:
                HashMap map8 = new HashMap();
                V vC = AbstractC0332s.c("AES128_GCM");
                byte[] bArr = C0369y0.f;
                map8.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM", C0369y0.w(2, vC, bArr, 1));
                map8.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW", C0369y0.w(2, AbstractC0332s.c("AES128_GCM"), bArr, 3));
                map8.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM", C0369y0.w(3, AbstractC0332s.c("AES128_GCM"), bArr, 1));
                map8.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW", C0369y0.w(3, AbstractC0332s.c("AES128_GCM"), bArr, 3));
                map8.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX", C0369y0.w(3, AbstractC0332s.c("AES128_GCM"), bArr, 3));
                map8.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", C0369y0.w(2, AbstractC0332s.c("AES128_CTR_HMAC_SHA256"), bArr, 1));
                map8.put("ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", C0369y0.w(2, AbstractC0332s.c("AES128_CTR_HMAC_SHA256"), bArr, 3));
                map8.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256", C0369y0.w(3, AbstractC0332s.c("AES128_CTR_HMAC_SHA256"), bArr, 1));
                map8.put("ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW", C0369y0.w(3, AbstractC0332s.c("AES128_CTR_HMAC_SHA256"), bArr, 3));
                return Collections.unmodifiableMap(map8);
            case 11:
                HashMap map9 = new HashMap();
                M0 m0N = N0.n();
                m0N.e();
                O0 o0N = P0.n();
                o0N.e();
                m0N.f((P0) o0N.b());
                map9.put("AES_CMAC", new W((N0) m0N.b(), 1));
                M0 m0N2 = N0.n();
                m0N2.e();
                O0 o0N2 = P0.n();
                o0N2.e();
                m0N2.f((P0) o0N2.b());
                map9.put("AES256_CMAC", new W((N0) m0N2.b(), 1));
                M0 m0N3 = N0.n();
                m0N3.e();
                O0 o0N3 = P0.n();
                o0N3.e();
                m0N3.f((P0) o0N3.b());
                map9.put("AES256_CMAC_RAW", new W((N0) m0N3.b(), 3));
                return Collections.unmodifiableMap(map9);
            case 12:
                HashMap map10 = new HashMap();
                map10.put("HMAC_SHA256_128BITTAG", C0375z0.u(32, 16, 4, 1));
                map10.put("HMAC_SHA256_128BITTAG_RAW", C0375z0.u(32, 16, 4, 3));
                map10.put("HMAC_SHA256_256BITTAG", C0375z0.u(32, 32, 4, 1));
                map10.put("HMAC_SHA256_256BITTAG_RAW", C0375z0.u(32, 32, 4, 3));
                map10.put("HMAC_SHA512_128BITTAG", C0375z0.u(64, 16, 5, 1));
                map10.put("HMAC_SHA512_128BITTAG_RAW", C0375z0.u(64, 16, 5, 3));
                map10.put("HMAC_SHA512_256BITTAG", C0375z0.u(64, 32, 5, 1));
                map10.put("HMAC_SHA512_256BITTAG_RAW", C0375z0.u(64, 32, 5, 3));
                map10.put("HMAC_SHA512_512BITTAG", C0375z0.u(64, 64, 5, 1));
                map10.put("HMAC_SHA512_512BITTAG_RAW", C0375z0.u(64, 64, 5, 3));
                return Collections.unmodifiableMap(map10);
        }
    }

    public final Map d() {
        return Collections.emptyMap();
    }

    public final void e(U4 u42) throws GeneralSecurityException {
        switch (this.f5694b) {
            case 0:
                T0 t0 = (T0) u42;
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
                X0 x0O = t0.o();
                D2.b(x0O.m());
                Z0 z0Q = x0O.q();
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
                N1 n1P = t0.p();
                if (n1P.m() < 16) {
                    throw new GeneralSecurityException("key too short");
                }
                C0375z0.w(n1P.q());
                D2.b(t0.o().m());
                return;
            case 1:
                X0 x02 = (X0) u42;
                D2.b(x02.m());
                Z0 z0Q2 = x02.q();
                if (z0Q2.m() < 12 || z0Q2.m() > 16) {
                    throw new GeneralSecurityException("invalid IV size");
                }
                return;
            case 2:
                C0245d1 c0245d1 = (C0245d1) u42;
                D2.b(c0245d1.m());
                if (c0245d1.p().m() != 12 && c0245d1.p().m() != 16) {
                    throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
                }
                return;
            case 3:
                D2.b(((C0281j1) u42).m());
                return;
            case 4:
                D2.b(((C0305n1) u42).m());
                return;
            case 5:
                return;
            case 6:
                return;
            case 7:
                C0282j2 c0282j2 = (C0282j2) u42;
                if (c0282j2.p().isEmpty() || !c0282j2.q()) {
                    throw new GeneralSecurityException("invalid key format: missing KEK URI or DEK template");
                }
                return;
            case 8:
                return;
            case 9:
                C0328r1 c0328r1 = (C0328r1) u42;
                if (c0328r1.m() == 64) {
                    return;
                }
                int iM = c0328r1.m();
                StringBuilder sb = new StringBuilder(61);
                sb.append("invalid key size: ");
                sb.append(iM);
                sb.append(". Valid keys must have 64 bytes.");
                throw new InvalidAlgorithmParameterException(sb.toString());
            case 10:
                AbstractC0332s.s(((C0376z1) u42).o());
                return;
            case 11:
                N0 n0 = (N0) u42;
                C0369y0.x(n0.p());
                if (n0.m() != 32) {
                    throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
                }
                return;
            default:
                N1 n12 = (N1) u42;
                if (n12.m() < 16) {
                    throw new GeneralSecurityException("key too short");
                }
                C0375z0.w(n12.q());
                return;
        }
    }

    public C0322q0(Class cls) {
        this.f5693a = cls;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C0322q0(C0375z0 c0375z0) {
        this(X0.class);
        this.f5694b = 1;
    }
}
