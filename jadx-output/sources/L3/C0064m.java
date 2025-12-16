package L3;

import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: L3.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0064m extends AbstractC0089k implements R3.A {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1719d;

    /* renamed from: e, reason: collision with root package name */
    public int f1720e;
    public List f;

    public /* synthetic */ C0064m(int i5) {
        this.f1719d = i5;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        switch (this.f1719d) {
            case 0:
                C0065n c0065nF = f();
                if (c0065nF.b()) {
                    return c0065nF;
                }
                throw new A0.c();
            case 1:
                K kG = g();
                if (kG.b()) {
                    return kG;
                }
                throw new A0.c();
            case 2:
                e0 e0VarI = i();
                if (e0VarI.b()) {
                    return e0VarI;
                }
                throw new A0.c();
            default:
                L lH = h();
                if (lH.b()) {
                    return lH;
                }
                throw new A0.c();
        }
    }

    public final Object clone() {
        switch (this.f1719d) {
            case 0:
                C0064m c0064m = new C0064m(0);
                c0064m.f = Collections.emptyList();
                c0064m.j(f());
                return c0064m;
            case 1:
                C0064m c0064m2 = new C0064m(1);
                c0064m2.f = Collections.emptyList();
                c0064m2.k(g());
                return c0064m2;
            case 2:
                C0064m c0064m3 = new C0064m(2);
                c0064m3.f = Collections.emptyList();
                c0064m3.m(i());
                return c0064m3;
            default:
                C0064m c0064m4 = new C0064m(3);
                c0064m4.f = R3.w.f2419d;
                c0064m4.l(h());
                return c0064m4;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x007d  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        switch (this.f1719d) {
            case 0:
                C0065n c0065n = null;
                try {
                    try {
                        C0065n.f1722h.getClass();
                        j(new C0065n(c0084f, c0087i));
                        return this;
                    } catch (Throwable th) {
                        th = th;
                        if (c0065n != null) {
                            j(c0065n);
                        }
                        throw th;
                    }
                } catch (C0098u e5) {
                    C0065n c0065n2 = (C0065n) e5.f2416c;
                    try {
                        throw e5;
                    } catch (Throwable th2) {
                        th = th2;
                        c0065n = c0065n2;
                        if (c0065n != null) {
                        }
                        throw th;
                    }
                }
            case 1:
                K k5 = null;
                try {
                    try {
                        K.f1438h.getClass();
                        k(new K(c0084f, c0087i));
                        return this;
                    } catch (Throwable th3) {
                        th = th3;
                        if (k5 != null) {
                            k(k5);
                        }
                        throw th;
                    }
                } catch (C0098u e6) {
                    K k6 = (K) e6.f2416c;
                    try {
                        throw e6;
                    } catch (Throwable th4) {
                        th = th4;
                        k5 = k6;
                        if (k5 != null) {
                        }
                        throw th;
                    }
                }
            case 2:
                e0 e0Var = null;
                try {
                    try {
                        e0.f1630h.getClass();
                        m(new e0(c0084f, c0087i));
                        return this;
                    } catch (C0098u e7) {
                        e0 e0Var2 = (e0) e7.f2416c;
                        try {
                            throw e7;
                        } catch (Throwable th5) {
                            th = th5;
                            e0Var = e0Var2;
                            if (e0Var != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th6) {
                    th = th6;
                    if (e0Var != null) {
                        m(e0Var);
                    }
                    throw th;
                }
            default:
                L l5 = null;
                try {
                    try {
                        L.f1443h.getClass();
                        l(new L(c0084f));
                        return this;
                    } catch (C0098u e8) {
                        L l6 = (L) e8.f2416c;
                        try {
                            throw e8;
                        } catch (Throwable th7) {
                            th = th7;
                            l5 = l6;
                            if (l5 != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th8) {
                    th = th8;
                    if (l5 != null) {
                        l(l5);
                    }
                    throw th;
                }
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        switch (this.f1719d) {
            case 0:
                j((C0065n) abstractC0095q);
                break;
            case 1:
                k((K) abstractC0095q);
                break;
            case 2:
                m((e0) abstractC0095q);
                break;
            default:
                l((L) abstractC0095q);
                break;
        }
        return this;
    }

    public C0065n f() {
        C0065n c0065n = new C0065n(this);
        if ((this.f1720e & 1) == 1) {
            this.f = Collections.unmodifiableList(this.f);
            this.f1720e &= -2;
        }
        c0065n.f1724d = this.f;
        return c0065n;
    }

    public K g() {
        K k5 = new K(this);
        if ((this.f1720e & 1) == 1) {
            this.f = Collections.unmodifiableList(this.f);
            this.f1720e &= -2;
        }
        k5.f1440d = this.f;
        return k5;
    }

    public L h() {
        L l5 = new L(this);
        if ((this.f1720e & 1) == 1) {
            this.f = ((R3.x) this.f).c();
            this.f1720e &= -2;
        }
        l5.f1445d = (R3.x) this.f;
        return l5;
    }

    public e0 i() {
        e0 e0Var = new e0(this);
        if ((this.f1720e & 1) == 1) {
            this.f = Collections.unmodifiableList(this.f);
            this.f1720e &= -2;
        }
        e0Var.f1632d = this.f;
        return e0Var;
    }

    public void j(C0065n c0065n) {
        if (c0065n == C0065n.f1721g) {
            return;
        }
        if (!c0065n.f1724d.isEmpty()) {
            if (this.f.isEmpty()) {
                this.f = c0065n.f1724d;
                this.f1720e &= -2;
            } else {
                if ((this.f1720e & 1) != 1) {
                    this.f = new ArrayList(this.f);
                    this.f1720e |= 1;
                }
                this.f.addAll(c0065n.f1724d);
            }
        }
        this.f2400c = this.f2400c.m(c0065n.f1723c);
    }

    public void k(K k5) {
        if (k5 == K.f1437g) {
            return;
        }
        if (!k5.f1440d.isEmpty()) {
            if (this.f.isEmpty()) {
                this.f = k5.f1440d;
                this.f1720e &= -2;
            } else {
                if ((this.f1720e & 1) != 1) {
                    this.f = new ArrayList(this.f);
                    this.f1720e |= 1;
                }
                this.f.addAll(k5.f1440d);
            }
        }
        this.f2400c = this.f2400c.m(k5.f1439c);
    }

    public void l(L l5) {
        if (l5 == L.f1442g) {
            return;
        }
        if (!l5.f1445d.isEmpty()) {
            if (((R3.x) this.f).isEmpty()) {
                this.f = l5.f1445d;
                this.f1720e &= -2;
            } else {
                if ((this.f1720e & 1) != 1) {
                    this.f = new R3.w((R3.x) this.f);
                    this.f1720e |= 1;
                }
                ((R3.x) this.f).addAll(l5.f1445d);
            }
        }
        this.f2400c = this.f2400c.m(l5.f1444c);
    }

    public void m(e0 e0Var) {
        if (e0Var == e0.f1629g) {
            return;
        }
        if (!e0Var.f1632d.isEmpty()) {
            if (this.f.isEmpty()) {
                this.f = e0Var.f1632d;
                this.f1720e &= -2;
            } else {
                if ((this.f1720e & 1) != 1) {
                    this.f = new ArrayList(this.f);
                    this.f1720e |= 1;
                }
                this.f.addAll(e0Var.f1632d);
            }
        }
        this.f2400c = this.f2400c.m(e0Var.f1631c);
    }
}
