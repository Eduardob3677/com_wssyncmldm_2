package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;

/* loaded from: classes.dex */
public abstract class A0 {
    static {
        C0316p0[] c0316p0Arr = {new C0316p0(11, M.class)};
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
        C0316p0[] c0316p0Arr2 = {new C0316p0(10, T.class)};
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
        int i7 = C0288k2.f5627a;
        try {
            a();
        } catch (GeneralSecurityException e5) {
            throw new ExceptionInInitializerError(e5);
        }
    }

    public static void a() {
        Class clsC;
        AbstractC0280j0.f(new C0());
        AbstractC0280j0.f(new D0());
        AbstractC0292l0.a();
        C0369y0 c0369y0 = new C0369y0(0);
        C0375z0 c0375z0 = new C0375z0(0);
        synchronized (AbstractC0280j0.class) {
            try {
                AbstractC0280j0.i("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", C0369y0.class, c0369y0.n().c(), true);
                AbstractC0280j0.i("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", C0375z0.class, Collections.emptyMap(), false);
                ConcurrentHashMap concurrentHashMap = AbstractC0280j0.f5609b;
                if (concurrentHashMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") && (clsC = ((InterfaceC0274i0) concurrentHashMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey")).c()) != null && !clsC.getName().equals(C0375z0.class.getName())) {
                    AbstractC0280j0.f5608a.logp(Level.WARNING, "com.google.crypto.tink.Registry", "registerAsymmetricKeyManagers", "Attempted overwrite of a registered key manager for key type type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey with inconsistent public key type type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey");
                    throw new GeneralSecurityException("public key manager corresponding to " + C0369y0.class.getName() + " is already registered with " + clsC.getName() + ", cannot be re-registered with " + C0375z0.class.getName());
                }
                if (!concurrentHashMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey") || ((InterfaceC0274i0) concurrentHashMap.get("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey")).c() == null) {
                    concurrentHashMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new C0268h0(c0369y0, c0375z0));
                    AbstractC0280j0.f5610c.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", new M(1));
                    AbstractC0280j0.j("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", c0369y0.n().c());
                }
                ConcurrentHashMap concurrentHashMap2 = AbstractC0280j0.f5611d;
                concurrentHashMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey", Boolean.TRUE);
                if (!concurrentHashMap.containsKey("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey")) {
                    concurrentHashMap.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", new C0262g0(c0375z0));
                }
                concurrentHashMap2.put("type.googleapis.com/google.crypto.tink.EciesAeadHkdfPublicKey", Boolean.FALSE);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
