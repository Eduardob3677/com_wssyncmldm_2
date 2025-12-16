package com.google.android.gms.internal.p000firebaseauthapi;

import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class E0 {

    /* renamed from: a, reason: collision with root package name */
    public static final U1 f5359a;

    static {
        byte[] bArr = new byte[0];
        U1 u12 = AbstractC0298m0.f5648a;
        f5359a = a(2, u12, 2, bArr);
        a(3, u12, 4, bArr);
        a(2, AbstractC0298m0.f5649b, 2, bArr);
    }

    public static U1 a(int i5, U1 u12, int i6, byte[] bArr) {
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
        C0358w1 c0358w1M = C0364x1.m();
        if (c0358w1M.f5646e) {
            c0358w1M.d();
            c0358w1M.f5646e = false;
        }
        C0364x1.p((C0364x1) c0358w1M.f5645d, u12);
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
        C0376z1 c0376z1 = (C0376z1) c0370y1M.b();
        T1 t1M = U1.m();
        C0316p0[] c0316p0Arr = {new C0316p0(10, T.class)};
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
        t1M.f("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey");
        t1M.e(i6);
        t1M.g(c0376z1.b());
        return (U1) t1M.b();
    }
}
