package O3;

import R3.A;
import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class f extends AbstractC0089k implements A {

    /* renamed from: d, reason: collision with root package name */
    public int f1985d;

    /* renamed from: e, reason: collision with root package name */
    public List f1986e;
    public List f;

    public static f g() {
        f fVar = new f();
        fVar.f1986e = Collections.emptyList();
        fVar.f = Collections.emptyList();
        return fVar;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        j jVarF = f();
        if (jVarF.b()) {
            return jVarF;
        }
        throw new A0.c();
    }

    public final Object clone() {
        f fVarG = g();
        fVarG.h(f());
        return fVarG;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        j jVar = null;
        try {
            try {
                j.f2010j.getClass();
                h(new j(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                j jVar2 = (j) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    jVar = jVar2;
                    if (jVar != null) {
                        h(jVar);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (jVar != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        h((j) abstractC0095q);
        return this;
    }

    public final j f() {
        j jVar = new j(this);
        if ((this.f1985d & 1) == 1) {
            this.f1986e = Collections.unmodifiableList(this.f1986e);
            this.f1985d &= -2;
        }
        jVar.f2012d = this.f1986e;
        if ((this.f1985d & 2) == 2) {
            this.f = Collections.unmodifiableList(this.f);
            this.f1985d &= -3;
        }
        jVar.f2013e = this.f;
        return jVar;
    }

    public final void h(j jVar) {
        if (jVar == j.f2009i) {
            return;
        }
        if (!jVar.f2012d.isEmpty()) {
            if (this.f1986e.isEmpty()) {
                this.f1986e = jVar.f2012d;
                this.f1985d &= -2;
            } else {
                if ((this.f1985d & 1) != 1) {
                    this.f1986e = new ArrayList(this.f1986e);
                    this.f1985d |= 1;
                }
                this.f1986e.addAll(jVar.f2012d);
            }
        }
        if (!jVar.f2013e.isEmpty()) {
            if (this.f.isEmpty()) {
                this.f = jVar.f2013e;
                this.f1985d &= -3;
            } else {
                if ((this.f1985d & 2) != 2) {
                    this.f = new ArrayList(this.f);
                    this.f1985d |= 2;
                }
                this.f.addAll(jVar.f2013e);
            }
        }
        this.f2400c = this.f2400c.m(jVar.f2011c);
    }
}
