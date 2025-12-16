package com.google.android.gms.internal.p000firebaseauthapi;

import A0.c;

/* loaded from: classes.dex */
public abstract class l5 implements Cloneable {

    /* renamed from: c, reason: collision with root package name */
    public final m5 f5644c;

    /* renamed from: d, reason: collision with root package name */
    public m5 f5645d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f5646e = false;

    public l5(m5 m5Var) {
        this.f5644c = m5Var;
        this.f5645d = (m5) m5Var.h(4);
    }

    public final void a(m5 m5Var) {
        if (this.f5646e) {
            d();
            this.f5646e = false;
        }
        m5 m5Var2 = this.f5645d;
        C0362x.f5770c.a(m5Var2.getClass()).f(m5Var2, m5Var);
    }

    public final m5 b() {
        m5 m5VarC = c();
        if (m5VarC.g()) {
            return m5VarC;
        }
        throw new c();
    }

    public final m5 c() {
        if (this.f5646e) {
            return this.f5645d;
        }
        m5 m5Var = this.f5645d;
        C0362x.f5770c.a(m5Var.getClass()).b(m5Var);
        this.f5646e = true;
        return this.f5645d;
    }

    public final Object clone() {
        l5 l5Var = (l5) this.f5644c.h(5);
        l5Var.a(c());
        return l5Var;
    }

    public final void d() {
        m5 m5Var = (m5) this.f5645d.h(4);
        C0362x.f5770c.a(m5Var.getClass()).f(m5Var, this.f5645d);
        this.f5645d = m5Var;
    }
}
