package com.google.android.gms.internal.p000firebaseauthapi;

import Y0.j;
import b2.b;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPrivateKeySpec;
import java.security.spec.ECPublicKeySpec;
import javax.crypto.spec.SecretKeySpec;
import k.Q0;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.p0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0316p0 {

    /* renamed from: a, reason: collision with root package name */
    public final Class f5676a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f5677b;

    public C0316p0(int i5, Class cls) {
        this.f5677b = i5;
        this.f5676a = cls;
    }

    public final Object a(Object obj) throws GeneralSecurityException {
        switch (this.f5677b) {
            case 0:
                R0 r0 = (R0) obj;
                return new C0359w2((InterfaceC0371y2) new C0375z0(1).q(r0.p(), InterfaceC0371y2.class), (InterfaceC0232b0) new C0375z0(6).q(r0.q(), InterfaceC0232b0.class), r0.q().q().m());
            case 1:
                V0 v02 = (V0) obj;
                return new C0312o2(v02.r().r(), v02.q().m());
            case 2:
                C0233b1 c0233b1 = (C0233b1) obj;
                return new C0318p2(c0233b1.q().r(), c0233b1.p().m());
            case 3:
                return new C0324q2(((C0269h1) obj).p().r());
            case 4:
                return new C0345u0(((C0293l1) obj).p().r());
            case 5:
                return new C0347u2(((C0340t1) obj).p().r(), 0);
            case 6:
                String strO = ((C0258f2) obj).p().o();
                return AbstractC0226a0.a(strO).a(strO);
            case 7:
                C0276i2 c0276i2 = (C0276i2) obj;
                String strP = c0276i2.p().p();
                return new C0333s0(c0276i2.p().m(), AbstractC0226a0.a(strP).a(strP));
            case 8:
                return new C0347u2(((C0300m2) obj).p().r(), 1);
            case 9:
                return new C0329r2(((C0317p1) obj).p().r());
            case 10:
                D1 d12 = (D1) obj;
                B1 b1N = d12.p().n();
                H1 h1Q = b1N.q();
                int iX = AbstractC0332s.x(h1Q.o());
                byte[] bArrR = d12.q().r();
                return new C0353v2((ECPrivateKey) ((KeyFactory) C0365x2.f5780i.a("EC")).generatePrivate(new ECPrivateKeySpec(new BigInteger(1, bArrR), AbstractC0332s.O(iX))), h1Q.q().r(), AbstractC0332s.g(h1Q.p()), AbstractC0332s.D(b1N.m()), new b(b1N.n().o()));
            case 11:
                F1 f12 = (F1) obj;
                B1 b1N2 = f12.n();
                H1 h1Q2 = b1N2.q();
                int iX2 = AbstractC0332s.x(h1Q2.o());
                byte[] bArrR2 = f12.r().r();
                byte[] bArrR3 = f12.s().r();
                ECParameterSpec eCParameterSpecO = AbstractC0332s.O(iX2);
                ECPoint eCPoint = new ECPoint(new BigInteger(1, bArrR2), new BigInteger(1, bArrR3));
                AbstractC0332s.G(eCPoint, eCParameterSpecO.getCurve());
                ECPublicKey eCPublicKey = (ECPublicKey) ((KeyFactory) C0365x2.f5780i.a("EC")).generatePublic(new ECPublicKeySpec(eCPoint, eCParameterSpecO));
                new b(b1N2.n().o());
                h1Q2.q().r();
                AbstractC0332s.g(h1Q2.p());
                AbstractC0332s.D(b1N2.m());
                M m5 = new M(3);
                AbstractC0332s.G(eCPublicKey.getW(), eCPublicKey.getParams().getCurve());
                return m5;
            case 12:
                L0 l0 = (L0) obj;
                return new B2(new C0377z2(l0.q().r()), l0.p().m());
            default:
                L1 l12 = (L1) obj;
                int iN = l12.q().n();
                SecretKeySpec secretKeySpec = new SecretKeySpec(l12.r().r(), "HMAC");
                int iM = l12.q().m();
                int iF = Q0.f(iN);
                if (iF == 1) {
                    return new B2(new j("HMACSHA1", secretKeySpec), iM);
                }
                if (iF == 2) {
                    return new B2(new j("HMACSHA384", secretKeySpec), iM);
                }
                if (iF == 3) {
                    return new B2(new j("HMACSHA256", secretKeySpec), iM);
                }
                if (iF == 4) {
                    return new B2(new j("HMACSHA512", secretKeySpec), iM);
                }
                if (iF == 5) {
                    return new B2(new j("HMACSHA224", secretKeySpec), iM);
                }
                throw new GeneralSecurityException("unknown hash");
        }
    }
}
