package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.SecureRandom;

/* loaded from: classes.dex */
public abstract class C2 {

    /* renamed from: a, reason: collision with root package name */
    public static final C0339t0 f5347a = new C0339t0(5);

    public static byte[] a(int i5) {
        byte[] bArr = new byte[i5];
        ((SecureRandom) f5347a.get()).nextBytes(bArr);
        return bArr;
    }
}
