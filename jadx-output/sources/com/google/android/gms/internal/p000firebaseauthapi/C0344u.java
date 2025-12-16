package com.google.android.gms.internal.p000firebaseauthapi;

import B.f;
import J0.b;

/* renamed from: com.google.android.gms.internal.firebase-auth-api.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0344u implements A {

    /* renamed from: a, reason: collision with root package name */
    public final U4 f5736a;

    /* renamed from: b, reason: collision with root package name */
    public final E f5737b;

    /* renamed from: c, reason: collision with root package name */
    public final h5 f5738c;

    public C0344u(E e5, h5 h5Var, U4 u42) {
        this.f5737b = e5;
        h5Var.getClass();
        this.f5738c = h5Var;
        this.f5736a = u42;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final Object a() {
        return ((l5) ((m5) this.f5736a).h(5)).c();
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final void b(Object obj) {
        this.f5737b.getClass();
        ((m5) obj).zzc.f5354e = false;
        this.f5738c.getClass();
        f.F(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final void c(Object obj, b5 b5Var, g5 g5Var) {
        this.f5737b.getClass();
        m5 m5Var = (m5) obj;
        if (m5Var.zzc == D.f) {
            m5Var.zzc = D.b();
        }
        this.f5738c.getClass();
        f.F(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final void d(Object obj, byte[] bArr, int i5, int i6, b bVar) {
        m5 m5Var = (m5) obj;
        if (m5Var.zzc == D.f) {
            m5Var.zzc = D.b();
        }
        f.F(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final int e(Object obj) {
        this.f5737b.getClass();
        D d2 = ((m5) obj).zzc;
        int i5 = d2.f5353d;
        if (i5 != -1) {
            return i5;
        }
        int iA0 = 0;
        for (int i6 = 0; i6 < d2.f5350a; i6++) {
            int i7 = d2.f5351b[i6];
            Z4 z4 = (Z4) d2.f5352c[i6];
            int iA02 = f5.a0(8);
            int iN = z4.n();
            iA0 += f5.a0(iN) + iN + f5.a0(24) + f.r(i7 >>> 3, f5.a0(16), iA02 + iA02);
        }
        d2.f5353d = iA0;
        return iA0;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final void f(Object obj, Object obj2) {
        B.b(this.f5737b, obj, obj2);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final void g(Object obj, C0303n c0303n) {
        this.f5738c.getClass();
        f.F(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final boolean h(Object obj, Object obj2) {
        E e5 = this.f5737b;
        e5.getClass();
        D d2 = ((m5) obj).zzc;
        e5.getClass();
        return d2.equals(((m5) obj2).zzc);
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final boolean i(Object obj) {
        this.f5738c.getClass();
        f.F(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.p000firebaseauthapi.A
    public final int j(Object obj) {
        this.f5737b.getClass();
        return ((m5) obj).zzc.hashCode();
    }
}
