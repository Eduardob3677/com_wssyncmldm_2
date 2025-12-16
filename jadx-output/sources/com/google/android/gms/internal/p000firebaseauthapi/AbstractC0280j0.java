package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import java.security.GeneralSecurityException;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.j0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0280j0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f5608a = Logger.getLogger(AbstractC0280j0.class.getName());

    /* renamed from: b, reason: collision with root package name */
    public static final ConcurrentHashMap f5609b = new ConcurrentHashMap();

    /* renamed from: c, reason: collision with root package name */
    public static final ConcurrentHashMap f5610c = new ConcurrentHashMap();

    /* renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap f5611d = new ConcurrentHashMap();

    /* renamed from: e, reason: collision with root package name */
    public static final ConcurrentHashMap f5612e;
    public static final ConcurrentHashMap f;

    static {
        new ConcurrentHashMap();
        f5612e = new ConcurrentHashMap();
        f = new ConcurrentHashMap();
    }

    public static synchronized S1 a(U1 u12) {
        U uB;
        uB = h(u12.q()).b();
        if (!((Boolean) f5611d.get(u12.q())).booleanValue()) {
            String strValueOf = String.valueOf(u12.q());
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(strValueOf) : new String("newKey-operation not permitted for key type "));
        }
        return uB.a(u12.p());
    }

    public static synchronized U4 b(U1 u12) {
        U uB;
        uB = h(u12.q()).b();
        if (!((Boolean) f5611d.get(u12.q())).booleanValue()) {
            String strValueOf = String.valueOf(u12.q());
            throw new GeneralSecurityException(strValueOf.length() != 0 ? "newKey-operation not permitted for key type ".concat(strValueOf) : new String("newKey-operation not permitted for key type "));
        }
        return uB.d(u12.p());
    }

    public static Object c(String str, m5 m5Var, Class cls) throws GeneralSecurityException {
        U uG = g(cls, str);
        X x4 = (X) uG.f5473e;
        String name = ((Class) x4.f5487b).getName();
        String strConcat = name.length() != 0 ? "Expected proto of type ".concat(name) : new String("Expected proto of type ");
        if (!((Class) x4.f5487b).isInstance(m5Var)) {
            throw new GeneralSecurityException(strConcat);
        }
        Class cls2 = (Class) uG.f5472d;
        if (Void.class.equals(cls2)) {
            throw new GeneralSecurityException("Cannot create a primitive for Void");
        }
        x4.s(m5Var);
        return x4.q(m5Var, cls2);
    }

    public static Object d(String str, byte[] bArr) {
        Y4 y4 = Z4.f5499d;
        return g(Q.class, str).e(Z4.q(bArr, 0, bArr.length));
    }

    public static synchronized void e(X x4) {
        try {
            String strR = x4.r();
            i(strR, x4.getClass(), x4.n().c(), true);
            ConcurrentHashMap concurrentHashMap = f5609b;
            if (!concurrentHashMap.containsKey(strR)) {
                concurrentHashMap.put(strR, new C0262g0(x4));
                f5610c.put(strR, new M(1));
                j(strR, x4.n().c());
            }
            f5611d.put(strR, Boolean.TRUE);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static synchronized void f(InterfaceC0250e0 interfaceC0250e0) {
        try {
            Class clsB = interfaceC0250e0.b();
            ConcurrentHashMap concurrentHashMap = f5612e;
            if (concurrentHashMap.containsKey(clsB)) {
                InterfaceC0250e0 interfaceC0250e02 = (InterfaceC0250e0) concurrentHashMap.get(clsB);
                if (!interfaceC0250e0.getClass().getName().equals(interfaceC0250e02.getClass().getName())) {
                    Logger logger = f5608a;
                    Level level = Level.WARNING;
                    String strValueOf = String.valueOf(clsB);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 62);
                    sb.append("Attempted overwrite of a registered PrimitiveWrapper for type ");
                    sb.append(strValueOf);
                    logger.logp(level, "com.google.crypto.tink.Registry", "registerPrimitiveWrapper", sb.toString());
                    throw new GeneralSecurityException("PrimitiveWrapper for primitive (" + clsB.getName() + ") is already registered to be " + interfaceC0250e02.getClass().getName() + ", cannot be re-registered with " + interfaceC0250e0.getClass().getName());
                }
            }
            concurrentHashMap.put(clsB, interfaceC0250e0);
        } catch (Throwable th) {
            throw th;
        }
    }

    public static U g(Class cls, String str) {
        InterfaceC0274i0 interfaceC0274i0H = h(str);
        if (cls == null) {
            return interfaceC0274i0H.b();
        }
        if (interfaceC0274i0H.a().contains(cls)) {
            return interfaceC0274i0H.d(cls);
        }
        String name = cls.getName();
        String strValueOf = String.valueOf(interfaceC0274i0H.e());
        Set<Class> setA = interfaceC0274i0H.a();
        StringBuilder sb = new StringBuilder();
        boolean z4 = true;
        for (Class cls2 : setA) {
            if (!z4) {
                sb.append(", ");
            }
            sb.append(cls2.getCanonicalName());
            z4 = false;
        }
        String string = sb.toString();
        int length = name.length();
        StringBuilder sb2 = new StringBuilder(length + 77 + strValueOf.length() + String.valueOf(string).length());
        sb2.append("Primitive type ");
        sb2.append(name);
        sb2.append(" not supported by key manager of type ");
        sb2.append(strValueOf);
        throw new GeneralSecurityException(f.w(sb2, ", supported primitives: ", string));
    }

    public static synchronized InterfaceC0274i0 h(String str) {
        ConcurrentHashMap concurrentHashMap;
        try {
            concurrentHashMap = f5609b;
            if (!concurrentHashMap.containsKey(str)) {
                String strValueOf = String.valueOf(str);
                throw new GeneralSecurityException(strValueOf.length() != 0 ? "No key manager found for key type ".concat(strValueOf) : new String("No key manager found for key type "));
            }
        } catch (Throwable th) {
            throw th;
        }
        return (InterfaceC0274i0) concurrentHashMap.get(str);
    }

    public static synchronized void i(String str, Class cls, Map map, boolean z4) {
        try {
            ConcurrentHashMap concurrentHashMap = f5609b;
            InterfaceC0274i0 interfaceC0274i0 = (InterfaceC0274i0) concurrentHashMap.get(str);
            if (interfaceC0274i0 != null && !interfaceC0274i0.e().equals(cls)) {
                f5608a.logp(Level.WARNING, "com.google.crypto.tink.Registry", "ensureKeyManagerInsertable", str.length() != 0 ? "Attempted overwrite of a registered key manager for key type ".concat(str) : new String("Attempted overwrite of a registered key manager for key type "));
                throw new GeneralSecurityException("typeUrl (" + str + ") is already registered with " + interfaceC0274i0.e().getName() + ", cannot be re-registered with " + cls.getName());
            }
            if (z4) {
                ConcurrentHashMap concurrentHashMap2 = f5611d;
                if (concurrentHashMap2.containsKey(str) && !((Boolean) concurrentHashMap2.get(str)).booleanValue()) {
                    throw new GeneralSecurityException(str.length() != 0 ? "New keys are already disallowed for key type ".concat(str) : new String("New keys are already disallowed for key type "));
                }
                if (concurrentHashMap.containsKey(str)) {
                    for (Map.Entry entry : map.entrySet()) {
                        if (!f.containsKey(entry.getKey())) {
                            String str2 = (String) entry.getKey();
                            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 79 + str.length());
                            sb.append("Attempted to register a new key template ");
                            sb.append(str2);
                            sb.append(" from an existing key manager of type ");
                            sb.append(str);
                            throw new GeneralSecurityException(sb.toString());
                        }
                    }
                } else {
                    for (Map.Entry entry2 : map.entrySet()) {
                        if (f.containsKey(entry2.getKey())) {
                            String strValueOf = String.valueOf((String) entry2.getKey());
                            throw new GeneralSecurityException(strValueOf.length() != 0 ? "Attempted overwrite of a registered key template ".concat(strValueOf) : new String("Attempted overwrite of a registered key template "));
                        }
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static void j(String str, Map map) {
        for (Map.Entry entry : map.entrySet()) {
            f.put((String) entry.getKey(), V.a(((U4) ((W) entry.getValue()).f5479a).c(), ((W) entry.getValue()).f5480b, str));
        }
    }
}
