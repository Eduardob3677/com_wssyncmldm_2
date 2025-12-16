package com.google.android.gms.internal.p000firebaseauthapi;

import java.security.GeneralSecurityException;
import java.util.Map;
import java.util.Set;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.g0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0262g0 implements InterfaceC0274i0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ X f5575a;

    public C0262g0(X x4) {
        this.f5575a = x4;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0274i0
    public final Set a() {
        return ((Map) this.f5575a.f5489d).keySet();
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0274i0
    public final U b() {
        X x4 = this.f5575a;
        return new U(x4, (Class) x4.f5488c);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0274i0
    public final Class c() {
        return null;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0274i0
    public final U d(Class cls) throws GeneralSecurityException {
        try {
            return new U(this.f5575a, cls);
        } catch (IllegalArgumentException e5) {
            throw new GeneralSecurityException("Primitive type not supported", e5);
        }
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.InterfaceC0274i0
    public final Class e() {
        return this.f5575a.getClass();
    }
}
