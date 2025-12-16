package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.a0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0226a0 {

    /* renamed from: a, reason: collision with root package name */
    public static final CopyOnWriteArrayList f5504a = new CopyOnWriteArrayList();

    public static F0 a(String str) throws GeneralSecurityException {
        boolean zStartsWith;
        Iterator it = f5504a.iterator();
        while (it.hasNext()) {
            F0 f02 = (F0) it.next();
            synchronized (f02) {
                zStartsWith = str.toLowerCase(Locale.US).startsWith("android-keystore://");
            }
            if (zStartsWith) {
                return f02;
            }
        }
        String strValueOf = String.valueOf(str);
        throw new GeneralSecurityException(strValueOf.length() != 0 ? "No KMS client does support: ".concat(strValueOf) : new String("No KMS client does support: "));
    }
}
