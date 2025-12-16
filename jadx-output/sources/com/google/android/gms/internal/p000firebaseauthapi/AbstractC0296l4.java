package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import o.C0713b;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.l4, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0296l4 {

    /* renamed from: a, reason: collision with root package name */
    public static final C0713b f5642a = new C0713b();

    /* renamed from: b, reason: collision with root package name */
    public static final C0713b f5643b = new C0713b();

    public static String a(String str) {
        C0713b c0713b = f5642a;
        synchronized (c0713b) {
            f.F(c0713b.getOrDefault(str, null));
        }
        return "https://".concat("www.googleapis.com/identitytoolkit/v3/relyingparty");
    }
}
