package com.google.android.gms.internal.p000firebaseauthapi;

/* loaded from: classes.dex */
public final class V {

    /* renamed from: a, reason: collision with root package name */
    public final U1 f5476a;

    public V(U1 u12) {
        this.f5476a = u12;
    }

    public static V a(byte[] bArr, int i5, String str) {
        T1 t1M = U1.m();
        t1M.f(str);
        t1M.g(Z4.q(bArr, 0, bArr.length));
        int i6 = i5 - 1;
        t1M.e(i6 != 0 ? i6 != 1 ? i6 != 2 ? 5 : 4 : 3 : 2);
        return new V((U1) t1M.b());
    }
}
