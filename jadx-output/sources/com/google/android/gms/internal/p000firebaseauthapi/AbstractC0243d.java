package com.google.android.gms.internal.p000firebaseauthapi;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0243d {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f5546a = Charset.forName("UTF-8");

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f5547b;

    static {
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f5547b = bArr;
        ByteBuffer.wrap(bArr);
        int i5 = 0 + 0;
        try {
            if (i5 < 0) {
                throw C0255f.d();
            }
            if (i5 > Integer.MAX_VALUE) {
                throw C0255f.e();
            }
        } catch (C0255f e5) {
            throw new IllegalArgumentException(e5);
        }
    }

    public static int a(long j3) {
        return (int) (j3 ^ (j3 >>> 32));
    }

    public static m5 b(Object obj, Object obj2) {
        m5 m5Var = (m5) ((U4) obj);
        l5 l5Var = (l5) m5Var.h(5);
        l5Var.a(m5Var);
        U4 u42 = (U4) obj2;
        if (!l5Var.f5644c.getClass().isInstance(u42)) {
            throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
        }
        l5Var.a((m5) u42);
        return l5Var.c();
    }
}
