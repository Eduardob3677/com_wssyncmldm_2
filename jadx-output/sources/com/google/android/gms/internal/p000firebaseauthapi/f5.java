package com.google.android.gms.internal.p000firebaseauthapi;

import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class f5 extends AbstractC0332s {

    /* renamed from: e, reason: collision with root package name */
    public static final Logger f5563e = Logger.getLogger(f5.class.getName());
    public static final boolean f = L.f5416e;

    /* renamed from: d, reason: collision with root package name */
    public C0303n f5564d;

    public static int Y(String str) {
        int length;
        try {
            length = O.c(str);
        } catch (N unused) {
            length = str.getBytes(AbstractC0243d.f5546a).length;
        }
        return a0(length) + length;
    }

    public static int Z(int i5) {
        return a0(i5 << 3);
    }

    public static int a0(int i5) {
        if ((i5 & (-128)) == 0) {
            return 1;
        }
        if ((i5 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i5) == 0) {
            return 3;
        }
        return (i5 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int b0(long j3) {
        int i5;
        if (((-128) & j3) == 0) {
            return 1;
        }
        if (j3 < 0) {
            return 10;
        }
        if (((-34359738368L) & j3) != 0) {
            j3 >>>= 28;
            i5 = 6;
        } else {
            i5 = 2;
        }
        if (((-2097152) & j3) != 0) {
            i5 += 2;
            j3 >>>= 14;
        }
        return (j3 & (-16384)) != 0 ? i5 + 1 : i5;
    }

    public static int t0(int i5, U4 u42, A a3) {
        int iA0 = a0(i5 << 3);
        int i6 = iA0 + iA0;
        m5 m5Var = (m5) u42;
        int iE = m5Var.zzd;
        if (iE == -1) {
            iE = a3.e(u42);
            m5Var.zzd = iE;
        }
        return i6 + iE;
    }

    public static int u0(int i5) {
        if (i5 >= 0) {
            return a0(i5);
        }
        return 10;
    }

    public final void c0(String str, N n) throws d5 {
        f5563e.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) n);
        byte[] bytes = str.getBytes(AbstractC0243d.f5546a);
        try {
            int length = bytes.length;
            q0(length);
            k(length, bytes);
        } catch (d5 e5) {
            throw e5;
        } catch (IndexOutOfBoundsException e6) {
            throw new d5(e6);
        }
    }

    public abstract void d0(byte b3);

    public abstract void e0(int i5, boolean z4);

    public abstract void f0(int i5, Z4 z4);

    public abstract void g0(int i5, int i6);

    public abstract void h0(int i5);

    public abstract void i0(int i5, long j3);

    public abstract void j0(long j3);

    public abstract void k0(int i5, int i6);

    public abstract void l0(int i5);

    public abstract void m0(int i5, U4 u42, A a3);

    public abstract void n0(int i5, String str);

    public abstract void o0(int i5, int i6);

    public abstract void p0(int i5, int i6);

    public abstract void q0(int i5);

    public abstract void r0(int i5, long j3);

    public abstract void s0(long j3);
}
