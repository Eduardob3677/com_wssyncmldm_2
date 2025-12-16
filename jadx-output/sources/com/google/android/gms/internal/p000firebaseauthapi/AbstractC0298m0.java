package com.google.android.gms.internal.p000firebaseauthapi;

import java.util.Collections;
import java.util.HashMap;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.m0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0298m0 {

    /* renamed from: a, reason: collision with root package name */
    public static final U1 f5648a = c(16);

    /* renamed from: b, reason: collision with root package name */
    public static final U1 f5649b;

    static {
        c(32);
        b(16);
        b(32);
        f5649b = a(16, 16);
        a(32, 32);
        T1 t1M = U1.m();
        C0316p0[] c0316p0Arr = {new C0316p0(5, Q.class)};
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
        t1M.f("type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key");
        t1M.e(2);
        T1 t1M2 = U1.m();
        C0316p0[] c0316p0Arr2 = {new C0316p0(8, Q.class)};
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
        t1M2.f("type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key");
        t1M2.e(2);
    }

    public static U1 a(int i5, int i6) {
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
        T0 t0 = (T0) s0M.b();
        T1 t1M = U1.m();
        t1M.g(t0.b());
        C0316p0[] c0316p0Arr = {new C0316p0(0, Q.class)};
        HashMap map = new HashMap();
        for (int i7 = 0; i7 <= 0; i7++) {
            C0316p0 c0316p0 = c0316p0Arr[i7];
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
        t1M.f("type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey");
        t1M.e(2);
        return (U1) t1M.b();
    }

    public static void b(int i5) {
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
        C0245d1 c0245d1 = (C0245d1) c0239c1N.b();
        T1 t1M = U1.m();
        t1M.g(c0245d1.b());
        C0316p0[] c0316p0Arr = {new C0316p0(2, Q.class)};
        HashMap map = new HashMap();
        for (int i6 = 0; i6 <= 0; i6++) {
            C0316p0 c0316p0 = c0316p0Arr[i6];
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
        t1M.f("type.googleapis.com/google.crypto.tink.AesEaxKey");
        t1M.e(2);
    }

    public static U1 c(int i5) {
        C0275i1 c0275i1N = C0281j1.n();
        if (c0275i1N.f5646e) {
            c0275i1N.d();
            c0275i1N.f5646e = false;
        }
        ((C0281j1) c0275i1N.f5645d).zze = i5;
        C0281j1 c0281j1 = (C0281j1) c0275i1N.b();
        T1 t1M = U1.m();
        t1M.g(c0281j1.b());
        C0316p0[] c0316p0Arr = {new C0316p0(3, Q.class)};
        HashMap map = new HashMap();
        for (int i6 = 0; i6 <= 0; i6++) {
            C0316p0 c0316p0 = c0316p0Arr[i6];
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
        t1M.f("type.googleapis.com/google.crypto.tink.AesGcmKey");
        t1M.e(2);
        return (U1) t1M.b();
    }
}
