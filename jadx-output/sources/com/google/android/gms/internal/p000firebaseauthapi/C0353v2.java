package com.google.android.gms.internal.p000firebaseauthapi;

import b2.b;
import com.samsung.android.knox.custom.CustomDeviceManager;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import java.util.Arrays;
import javax.crypto.KeyAgreement;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.v2, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0353v2 implements T {

    /* renamed from: g, reason: collision with root package name */
    public static final byte[] f5747g = new byte[0];

    /* renamed from: a, reason: collision with root package name */
    public final ECPrivateKey f5748a;

    /* renamed from: b, reason: collision with root package name */
    public final C0303n f5749b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5750c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f5751d;

    /* renamed from: e, reason: collision with root package name */
    public final b f5752e;
    public final int f;

    public C0353v2(ECPrivateKey eCPrivateKey, byte[] bArr, String str, int i5, b bVar) {
        this.f5748a = eCPrivateKey;
        this.f5749b = new C0303n(8, eCPrivateKey);
        this.f5751d = bArr;
        this.f5750c = str;
        this.f = i5;
        this.f5752e = bVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x039e  */
    @Override // com.google.android.gms.internal.p000firebaseauthapi.T
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final byte[] a(byte[] bArr) throws IllegalStateException, GeneralSecurityException {
        int i5;
        int length;
        ECPoint eCPoint;
        U u5;
        boolean z4;
        BigInteger bigIntegerQ = AbstractC0332s.q(this.f5748a.getParams().getCurve());
        BigInteger bigInteger = BigInteger.ONE;
        int iBitLength = (bigIntegerQ.subtract(bigInteger).bitLength() + 7) / 8;
        int i6 = this.f - 1;
        if (i6 != 0) {
            if (i6 == 2) {
                i5 = iBitLength + iBitLength;
            }
            length = bArr.length;
            if (length >= i5) {
                throw new GeneralSecurityException("ciphertext too short");
            }
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, i5);
            b bVar = this.f5752e;
            int i7 = bVar.f5111a;
            ECPrivateKey eCPrivateKey = (ECPrivateKey) this.f5749b.f5655d;
            ECParameterSpec params = eCPrivateKey.getParams();
            EllipticCurve curve = params.getCurve();
            int iBitLength2 = (AbstractC0332s.q(curve).subtract(bigInteger).bitLength() + 7) / 8;
            if (i6 == 0) {
                int length2 = bArrCopyOfRange.length;
                if (length2 != iBitLength2 + iBitLength2 + 1) {
                    throw new GeneralSecurityException("invalid point size");
                }
                if (bArrCopyOfRange[0] != 4) {
                    throw new GeneralSecurityException("invalid point format");
                }
                int i8 = iBitLength2 + 1;
                eCPoint = new ECPoint(new BigInteger(1, Arrays.copyOfRange(bArrCopyOfRange, 1, i8)), new BigInteger(1, Arrays.copyOfRange(bArrCopyOfRange, i8, length2)));
                AbstractC0332s.G(eCPoint, curve);
            } else if (i6 != 2) {
                BigInteger bigIntegerQ2 = AbstractC0332s.q(curve);
                int length3 = bArrCopyOfRange.length;
                if (length3 != iBitLength2 + 1) {
                    throw new GeneralSecurityException("compressed point has wrong length");
                }
                byte b3 = bArrCopyOfRange[0];
                if (b3 == 2) {
                    z4 = false;
                } else {
                    if (b3 != 3) {
                        throw new GeneralSecurityException("invalid format");
                    }
                    z4 = true;
                }
                BigInteger bigInteger2 = new BigInteger(1, Arrays.copyOfRange(bArrCopyOfRange, 1, length3));
                if (bigInteger2.signum() == -1 || bigInteger2.compareTo(bigIntegerQ2) >= 0) {
                    throw new GeneralSecurityException("x is out of range");
                }
                eCPoint = new ECPoint(bigInteger2, AbstractC0332s.B(bigInteger2, z4, curve));
            } else {
                int length4 = bArrCopyOfRange.length;
                if (length4 != iBitLength2 + iBitLength2) {
                    throw new GeneralSecurityException("invalid point size");
                }
                eCPoint = new ECPoint(new BigInteger(1, Arrays.copyOfRange(bArrCopyOfRange, 0, iBitLength2)), new BigInteger(1, Arrays.copyOfRange(bArrCopyOfRange, iBitLength2, length4)));
                AbstractC0332s.G(eCPoint, curve);
            }
            ECPublicKeySpec eCPublicKeySpec = new ECPublicKeySpec(eCPoint, params);
            C0365x2 c0365x2 = C0365x2.f5780i;
            ECPublicKey eCPublicKey = (ECPublicKey) ((KeyFactory) c0365x2.a("EC")).generatePublic(eCPublicKeySpec);
            try {
                ECParameterSpec params2 = eCPublicKey.getParams();
                ECParameterSpec params3 = eCPrivateKey.getParams();
                if (!params2.getCurve().equals(params3.getCurve()) || !params2.getGenerator().equals(params3.getGenerator()) || !params2.getOrder().equals(params3.getOrder()) || params2.getCofactor() != params3.getCofactor()) {
                    throw new GeneralSecurityException("invalid public key spec");
                }
                ECPoint w2 = eCPublicKey.getW();
                AbstractC0332s.G(w2, eCPrivateKey.getParams().getCurve());
                PublicKey publicKeyGeneratePublic = ((KeyFactory) c0365x2.a("EC")).generatePublic(new ECPublicKeySpec(w2, eCPrivateKey.getParams()));
                KeyAgreement keyAgreement = (KeyAgreement) C0365x2.f5778g.a("ECDH");
                keyAgreement.init(eCPrivateKey);
                try {
                    keyAgreement.doPhase(publicKeyGeneratePublic, true);
                    byte[] bArrGenerateSecret = keyAgreement.generateSecret();
                    EllipticCurve curve2 = eCPrivateKey.getParams().getCurve();
                    BigInteger bigInteger3 = new BigInteger(1, bArrGenerateSecret);
                    if (bigInteger3.signum() == -1 || bigInteger3.compareTo(AbstractC0332s.q(curve2)) >= 0) {
                        throw new GeneralSecurityException("shared secret is out of range");
                    }
                    AbstractC0332s.B(bigInteger3, true, curve2);
                    byte[] bArrC = AbstractC0332s.C(bArrCopyOfRange, bArrGenerateSecret);
                    C0365x2 c0365x22 = C0365x2.f;
                    String str = this.f5750c;
                    Mac mac = (Mac) c0365x22.a(str);
                    if (i7 > mac.getMacLength() * CustomDeviceManager.CALL_SCREEN_ALL) {
                        throw new GeneralSecurityException("size too large");
                    }
                    byte[] bArr2 = this.f5751d;
                    if (bArr2 == null || bArr2.length == 0) {
                        mac.init(new SecretKeySpec(new byte[mac.getMacLength()], str));
                    } else {
                        mac.init(new SecretKeySpec(bArr2, str));
                    }
                    byte[] bArrDoFinal = mac.doFinal(bArrC);
                    byte[] bArr3 = new byte[i7];
                    mac.init(new SecretKeySpec(bArrDoFinal, str));
                    byte[] bArrDoFinal2 = new byte[0];
                    int i9 = 1;
                    int i10 = 0;
                    while (true) {
                        mac.update(bArrDoFinal2);
                        mac.update((byte[]) null);
                        mac.update((byte) i9);
                        bArrDoFinal2 = mac.doFinal();
                        int length5 = bArrDoFinal2.length;
                        int i11 = i10 + length5;
                        if (i11 >= i7) {
                            break;
                        }
                        System.arraycopy(bArrDoFinal2, 0, bArr3, i10, length5);
                        i9++;
                        i10 = i11;
                    }
                    System.arraycopy(bArrDoFinal2, 0, bArr3, i10, i7 - i10);
                    int i12 = bVar.f5111a;
                    if (i7 != i12) {
                        throw new GeneralSecurityException("Symmetric key has incorrect length");
                    }
                    String str2 = AbstractC0292l0.f5639b;
                    String str3 = (String) bVar.f5113c;
                    if (str3.equals(str2)) {
                        C0263g1 c0263g1N = C0269h1.n();
                        c0263g1N.a((C0269h1) bVar.f5114d);
                        Y4 y4Q = Z4.q(bArr3, 0, i12);
                        if (c0263g1N.f5646e) {
                            c0263g1N.d();
                            c0263g1N.f5646e = false;
                        }
                        ((C0269h1) c0263g1N.f5645d).zzf = y4Q;
                        u5 = new U((Q) AbstractC0280j0.c(str3, (C0269h1) c0263g1N.b(), Q.class));
                    } else if (str3.equals(AbstractC0292l0.f5638a)) {
                        int i13 = bVar.f5112b;
                        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr3, 0, i13);
                        byte[] bArrCopyOfRange3 = Arrays.copyOfRange(bArr3, i13, i12);
                        U0 u0N = V0.n();
                        R0 r0 = (R0) bVar.f5115e;
                        u0N.a(r0.p());
                        Y4 y4Q2 = Z4.q(bArrCopyOfRange2, 0, bArrCopyOfRange2.length);
                        if (u0N.f5646e) {
                            u0N.d();
                            u0N.f5646e = false;
                        }
                        ((V0) u0N.f5645d).zzg = y4Q2;
                        V0 v02 = (V0) u0N.b();
                        K1 k1N = L1.n();
                        k1N.a(r0.q());
                        Y4 y4Q3 = Z4.q(bArrCopyOfRange3, 0, bArrCopyOfRange3.length);
                        if (k1N.f5646e) {
                            k1N.d();
                            k1N.f5646e = false;
                        }
                        ((L1) k1N.f5645d).zzg = y4Q3;
                        L1 l12 = (L1) k1N.b();
                        Q0 q0N = R0.n();
                        int iM = r0.m();
                        if (q0N.f5646e) {
                            q0N.d();
                            q0N.f5646e = false;
                        }
                        ((R0) q0N.f5645d).zze = iM;
                        if (q0N.f5646e) {
                            q0N.d();
                            q0N.f5646e = false;
                        }
                        ((R0) q0N.f5645d).zzf = v02;
                        if (q0N.f5646e) {
                            q0N.d();
                            q0N.f5646e = false;
                        }
                        R0.t((R0) q0N.f5645d, l12);
                        u5 = new U((Q) AbstractC0280j0.c(str3, (R0) q0N.b(), Q.class));
                    } else {
                        if (!str3.equals(AbstractC0351v0.f5746a)) {
                            throw new GeneralSecurityException("unknown DEM key type");
                        }
                        C0311o1 c0311o1N = C0317p1.n();
                        c0311o1N.a((C0317p1) bVar.f);
                        Y4 y4Q4 = Z4.q(bArr3, 0, i12);
                        if (c0311o1N.f5646e) {
                            c0311o1N.d();
                            c0311o1N.f5646e = false;
                        }
                        ((C0317p1) c0311o1N.f5645d).zzf = y4Q4;
                        u5 = new U((S) AbstractC0280j0.c(str3, (C0317p1) c0311o1N.b(), S.class));
                    }
                    byte[] bArrCopyOfRange4 = Arrays.copyOfRange(bArr, i5, length);
                    byte[] bArr4 = f5747g;
                    Q q2 = (Q) u5.f5473e;
                    return q2 != null ? q2.a(bArrCopyOfRange4, bArr4) : ((S) u5.f5472d).a(bArrCopyOfRange4, bArr4);
                } catch (IllegalStateException e5) {
                    throw new GeneralSecurityException(e5.toString());
                }
            } catch (IllegalArgumentException | NullPointerException e6) {
                throw new GeneralSecurityException(e6.toString());
            }
        }
        iBitLength += iBitLength;
        i5 = iBitLength + 1;
        length = bArr.length;
        if (length >= i5) {
        }
    }
}
