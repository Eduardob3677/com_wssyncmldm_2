package com.google.android.gms.internal.p000firebaseauthapi;

import Y0.j;
import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.security.Key;
import javax.crypto.Mac;

/* loaded from: classes.dex */
public final class A2 extends ThreadLocal {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ j f5325a;

    public A2(j jVar) {
        this.f5325a = jVar;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() throws InvalidKeyException {
        j jVar = this.f5325a;
        try {
            Mac mac = (Mac) C0365x2.f.a((String) jVar.f2907e);
            mac.init((Key) jVar.f);
            return mac;
        } catch (GeneralSecurityException e5) {
            throw new IllegalStateException(e5);
        }
    }
}
