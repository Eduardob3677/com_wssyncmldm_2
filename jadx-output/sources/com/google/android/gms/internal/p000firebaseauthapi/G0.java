package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class G0 {
    static {
        C0316p0[] c0316p0Arr = {new C0316p0(13, InterfaceC0232b0.class)};
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
        int i6 = C0288k2.f5627a;
        try {
            a();
        } catch (GeneralSecurityException e5) {
            throw new ExceptionInInitializerError(e5);
        }
    }

    public static void a() {
        AbstractC0280j0.f(new I0());
        AbstractC0280j0.e(new C0375z0(6));
        AbstractC0280j0.e(new C0369y0(L0.class, new C0316p0[]{new C0316p0(12, InterfaceC0232b0.class)}));
    }
}
