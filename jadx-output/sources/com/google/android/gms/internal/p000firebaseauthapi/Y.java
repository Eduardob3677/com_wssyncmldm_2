package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.Iterator;
import k.Q0;

/* loaded from: classes.dex */
public final class Y {

    /* renamed from: a, reason: collision with root package name */
    public final W1 f5493a;

    public Y(W1 w12) {
        this.f5493a = w12;
    }

    public static int d() {
        SecureRandom secureRandom = new SecureRandom();
        byte[] bArr = new byte[4];
        int i5 = 0;
        while (i5 == 0) {
            secureRandom.nextBytes(bArr);
            i5 = ((bArr[0] & 127) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        }
        return i5;
    }

    public final synchronized C0303n a() {
        Z1 z12;
        z12 = (Z1) this.f5493a.b();
        if (z12.m() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new C0303n(4, z12);
    }

    public final synchronized void b(V v4) {
        Y1 y1E;
        U1 u12 = v4.f5476a;
        synchronized (this) {
            synchronized (this) {
                y1E = e(AbstractC0280j0.a(u12), u12.o());
            }
        }
        W1 w12 = this.f5493a;
        if (w12.f5646e) {
            w12.d();
            w12.f5646e = false;
        }
        Z1.t((Z1) w12.f5645d, y1E);
    }

    public final synchronized void c(int i5) {
        for (int i6 = 0; i6 < ((Z1) this.f5493a.f5645d).m(); i6++) {
            Y1 y1P = ((Z1) this.f5493a.f5645d).p(i6);
            if (y1P.m() == i5) {
                if (!Q0.b(y1P.o(), 2)) {
                    StringBuilder sb = new StringBuilder(63);
                    sb.append("cannot set key as primary because it's not enabled: ");
                    sb.append(i5);
                    throw new GeneralSecurityException(sb.toString());
                }
                W1 w12 = this.f5493a;
                if (w12.f5646e) {
                    w12.d();
                    w12.f5646e = false;
                }
                ((Z1) w12.f5645d).zze = i5;
            }
        }
        StringBuilder sb2 = new StringBuilder(26);
        sb2.append("key not found: ");
        sb2.append(i5);
        throw new GeneralSecurityException(sb2.toString());
    }

    public final synchronized Y1 e(S1 s12, int i5) {
        int iD;
        synchronized (this) {
            iD = d();
            while (f(iD)) {
                iD = d();
            }
        }
        return (Y1) x1P.b();
        if (i5 == 1) {
            throw new GeneralSecurityException("unknown output prefix type");
        }
        X1 x1P = Y1.p();
        if (x1P.f5646e) {
            x1P.d();
            x1P.f5646e = false;
        }
        ((Y1) x1P.f5645d).zze = s12;
        if (x1P.f5646e) {
            x1P.d();
            x1P.f5646e = false;
        }
        ((Y1) x1P.f5645d).zzg = iD;
        if (x1P.f5646e) {
            x1P.d();
            x1P.f5646e = false;
        }
        Y1.t((Y1) x1P.f5645d);
        if (x1P.f5646e) {
            x1P.d();
            x1P.f5646e = false;
        }
        ((Y1) x1P.f5645d).zzh = f.b(i5);
        return (Y1) x1P.b();
    }

    public final synchronized boolean f(int i5) {
        Iterator it = Collections.unmodifiableList(((Z1) this.f5493a.f5645d).r()).iterator();
        while (it.hasNext()) {
            if (((Y1) it.next()).m() == i5) {
                return true;
            }
        }
        return false;
    }
}
