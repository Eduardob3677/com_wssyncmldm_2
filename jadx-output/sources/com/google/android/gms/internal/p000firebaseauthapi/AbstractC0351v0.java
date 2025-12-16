package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Collections;
import java.util.HashMap;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.v0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0351v0 {

    /* renamed from: a, reason: collision with root package name */
    public static final String f5746a;

    static {
        C0316p0[] c0316p0Arr = {new C0316p0(9, S.class)};
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
        f5746a = "type.googleapis.com/google.crypto.tink.AesSivKey";
        int i6 = C0288k2.f5627a;
        try {
            AbstractC0280j0.f(new C0363x0());
            AbstractC0280j0.e(new C0375z0(5));
        } catch (GeneralSecurityException e5) {
            throw new ExceptionInInitializerError(e5);
        }
    }
}
