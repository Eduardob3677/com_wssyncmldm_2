package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import k.Q0;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.z0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0375z0 extends X {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f5795e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0375z0(int i5) {
        super(F1.class, new C0316p0[]{new C0316p0(11, M.class)});
        this.f5795e = i5;
        switch (i5) {
            case 1:
                super(V0.class, new C0316p0[]{new C0316p0(1, InterfaceC0371y2.class)});
                break;
            case 2:
                super(C0269h1.class, new C0316p0[]{new C0316p0(3, Q.class)});
                break;
            case 3:
                super(C0340t1.class, new C0316p0[]{new C0316p0(5, Q.class)});
                break;
            case 4:
                super(C0276i2.class, new C0316p0[]{new C0316p0(7, Q.class)});
                break;
            case 5:
                super(C0317p1.class, new C0316p0[]{new C0316p0(9, S.class)});
                break;
            case 6:
                super(L1.class, new C0316p0[]{new C0316p0(13, InterfaceC0232b0.class)});
                break;
            default:
                break;
        }
    }

    public static W t(int i5, int i6) {
        C0275i1 c0275i1N = C0281j1.n();
        if (c0275i1N.f5646e) {
            c0275i1N.d();
            c0275i1N.f5646e = false;
        }
        ((C0281j1) c0275i1N.f5645d).zze = i5;
        return new W((C0281j1) c0275i1N.b(), i6);
    }

    public static /* synthetic */ W u(int i5, int i6, int i7, int i8) {
        M1 m1N = N1.n();
        O1 o1O = P1.o();
        o1O.e(i7);
        o1O.f(i6);
        m1N.f((P1) o1O.b());
        m1N.e(i5);
        return new W((N1) m1N.b(), i8);
    }

    public static final void v(L1 l12) throws GeneralSecurityException {
        D2.c(l12.m());
        if (l12.r().n() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        w(l12.q());
    }

    public static void w(P1 p12) throws GeneralSecurityException {
        if (p12.m() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        int iF = Q0.f(p12.n());
        if (iF == 1) {
            if (p12.m() > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
            return;
        }
        if (iF == 2) {
            if (p12.m() > 48) {
                throw new GeneralSecurityException("tag size too big");
            }
            return;
        }
        if (iF == 3) {
            if (p12.m() > 32) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (iF == 4) {
            if (p12.m() > 64) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            if (iF != 5) {
                throw new GeneralSecurityException("unknown hash type");
            }
            if (p12.m() > 28) {
                throw new GeneralSecurityException("tag size too big");
            }
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public C0322q0 n() {
        switch (this.f5795e) {
            case 1:
                return new C0322q0(this);
            case 2:
                return new C0322q0(3, C0281j1.class);
            case 3:
                return new C0322q0(5, C0352v1.class);
            case 4:
                return new C0322q0(7, C0282j2.class);
            case 5:
                return new C0322q0(9, C0328r1.class);
            case 6:
                return new C0322q0(12, N1.class);
            default:
                return super.n();
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final int o() {
        switch (this.f5795e) {
        }
        return 2;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final /* bridge */ /* synthetic */ U4 p(Z4 z4) {
        switch (this.f5795e) {
            case 0:
                return F1.q(z4, g5.a());
            case 1:
                return V0.p(z4, g5.a());
            case 2:
                return C0269h1.o(z4, g5.a());
            case 3:
                return C0340t1.o(z4, g5.a());
            case 4:
                return C0276i2.o(z4, g5.a());
            case 5:
                return C0317p1.o(z4, g5.a());
            default:
                return L1.p(z4, g5.a());
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final String r() {
        switch (this.f5795e) {
            case 0:
                return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey";
            case 1:
                return "type.googleapis.com/google.crypto.tink.AesCtrKey";
            case 2:
                return "type.googleapis.com/google.crypto.tink.AesGcmKey";
            case 3:
                return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
            case 4:
                return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
            case 5:
                return "type.googleapis.com/google.crypto.tink.AesSivKey";
            default:
                return "type.googleapis.com/google.crypto.tink.HmacKey";
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.X
    public final void s(U4 u42) throws GeneralSecurityException {
        switch (this.f5795e) {
            case 0:
                F1 f12 = (F1) u42;
                D2.c(f12.m());
                AbstractC0332s.s(f12.n());
                return;
            case 1:
                V0 v02 = (V0) u42;
                D2.c(v02.m());
                D2.b(v02.r().n());
                Z0 z0Q = v02.q();
                if (z0Q.m() < 12 || z0Q.m() > 16) {
                    throw new GeneralSecurityException("invalid IV size");
                }
                return;
            case 2:
                C0269h1 c0269h1 = (C0269h1) u42;
                D2.c(c0269h1.m());
                D2.b(c0269h1.p().n());
                return;
            case 3:
                C0340t1 c0340t1 = (C0340t1) u42;
                D2.c(c0340t1.m());
                if (c0340t1.p().n() != 32) {
                    throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
                }
                return;
            case 4:
                D2.c(((C0276i2) u42).m());
                return;
            case 5:
                C0317p1 c0317p1 = (C0317p1) u42;
                D2.c(c0317p1.m());
                if (c0317p1.p().n() == 64) {
                    return;
                }
                int iN = c0317p1.p().n();
                StringBuilder sb = new StringBuilder(61);
                sb.append("invalid key size: ");
                sb.append(iN);
                sb.append(". Valid keys must have 64 bytes.");
                throw new InvalidKeyException(sb.toString());
            default:
                v((L1) u42);
                return;
        }
    }
}
