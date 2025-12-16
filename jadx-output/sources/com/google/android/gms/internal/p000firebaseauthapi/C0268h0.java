package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Map;
import java.util.Set;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.h0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0268h0 implements InterfaceC0274i0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0369y0 f5589a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ X f5590b;

    public C0268h0(C0369y0 c0369y0, C0375z0 c0375z0) {
        this.f5589a = c0369y0;
        this.f5590b = c0375z0;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0274i0
    public final Set a() {
        return ((Map) this.f5589a.f5489d).keySet();
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0274i0
    public final U b() {
        C0369y0 c0369y0 = this.f5589a;
        return new C0256f0(c0369y0, this.f5590b, (Class) c0369y0.f5488c);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0274i0
    public final Class c() {
        return this.f5590b.getClass();
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0274i0
    public final U d(Class cls) throws GeneralSecurityException {
        try {
            return new C0256f0(this.f5589a, this.f5590b, cls);
        } catch (IllegalArgumentException e5) {
            throw new GeneralSecurityException("Primitive type not supported", e5);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0274i0
    public final Class e() {
        return this.f5589a.getClass();
    }
}
