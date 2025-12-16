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

/* renamed from: L3.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0057f extends AbstractC0089k implements R3.A {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1634d;

    /* renamed from: e, reason: collision with root package name */
    public int f1635e;
    public Object f;

    /* renamed from: g, reason: collision with root package name */
    public int f1636g;

    public /* synthetic */ C0057f(int i5) {
        this.f1634d = i5;
    }

    public static C0057f i() {
        C0057f c0057f = new C0057f(1);
        c0057f.f = Collections.emptyList();
        c0057f.f1636g = -1;
        return c0057f;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        switch (this.f1634d) {
            case 0:
                C0058g c0058gG = g();
                if (c0058gG.b()) {
                    return c0058gG;
                }
                throw new A0.c();
            case 1:
                X xH = h();
                if (xH.b()) {
                    return xH;
                }
                throw new A0.c();
            default:
                C0056e c0056eF = f();
                if (c0056eF.b()) {
                    return c0056eF;
                }
                throw new A0.c();
        }
    }

    public final Object clone() {
        switch (this.f1634d) {
            case 0:
                C0057f c0057f = new C0057f(0);
                c0057f.f = Collections.emptyList();
                c0057f.k(g());
                return c0057f;
            case 1:
                C0057f c0057fI = i();
                c0057fI.l(h());
                return c0057fI;
            default:
                C0057f c0057f2 = new C0057f(2);
                c0057f2.f = C0055d.f1597r;
                c0057f2.j(f());
                return c0057f2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x005c  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        switch (this.f1634d) {
            case 0:
                C0058g c0058g = null;
                try {
                    try {
                        k((C0058g) C0058g.f1640j.a(c0084f, c0087i));
                        return this;
                    } catch (Throwable th) {
                        th = th;
                        if (c0058g != null) {
                            k(c0058g);
                        }
                        throw th;
                    }
                } catch (C0098u e5) {
                    C0058g c0058g2 = (C0058g) e5.f2416c;
                    try {
                        throw e5;
                    } catch (Throwable th2) {
                        th = th2;
                        c0058g = c0058g2;
                        if (c0058g != null) {
                        }
                        throw th;
                    }
                }
            case 1:
                X x4 = null;
                try {
                    try {
                        X.f1537j.getClass();
                        l(new X(c0084f, c0087i));
                        return this;
                    } catch (C0098u e6) {
                        X x5 = (X) e6.f2416c;
                        try {
                            throw e6;
                        } catch (Throwable th3) {
                            th = th3;
                            x4 = x5;
                            if (x4 != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    if (x4 != null) {
                        l(x4);
                    }
                    throw th;
                }
            default:
                C0056e c0056e = null;
                try {
                    try {
                        C0056e.f1623j.getClass();
                        j(new C0056e(c0084f, c0087i));
                        return this;
                    } catch (C0098u e7) {
                        C0056e c0056e2 = (C0056e) e7.f2416c;
                        try {
                            throw e7;
                        } catch (Throwable th5) {
                            th = th5;
                            c0056e = c0056e2;
                            if (c0056e != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th6) {
                    th = th6;
                    if (c0056e != null) {
                        j(c0056e);
                    }
                    throw th;
                }
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        switch (this.f1634d) {
            case 0:
                k((C0058g) abstractC0095q);
                break;
            case 1:
                l((X) abstractC0095q);
                break;
            default:
                j((C0056e) abstractC0095q);
                break;
        }
        return this;
    }

    public C0056e f() {
        C0056e c0056e = new C0056e(this);
        int i5 = this.f1635e;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        c0056e.f1626e = this.f1636g;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        c0056e.f = (C0055d) this.f;
        c0056e.f1625d = i6;
        return c0056e;
    }

    public C0058g g() {
        C0058g c0058g = new C0058g(this);
        int i5 = this.f1635e;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        c0058g.f1643e = this.f1636g;
        if ((i5 & 2) == 2) {
            this.f = Collections.unmodifiableList((List) this.f);
            this.f1635e &= -3;
        }
        c0058g.f = (List) this.f;
        c0058g.f1642d = i6;
        return c0058g;
    }

    public X h() {
        X x4 = new X(this);
        int i5 = this.f1635e;
        if ((i5 & 1) == 1) {
            this.f = Collections.unmodifiableList((List) this.f);
            this.f1635e &= -2;
        }
        x4.f1540e = (List) this.f;
        int i6 = (i5 & 2) != 2 ? 0 : 1;
        x4.f = this.f1636g;
        x4.f1539d = i6;
        return x4;
    }

    public void j(C0056e c0056e) {
        C0055d c0055d;
        if (c0056e == C0056e.f1622i) {
            return;
        }
        int i5 = c0056e.f1625d;
        if ((i5 & 1) == 1) {
            int i6 = c0056e.f1626e;
            this.f1635e = 1 | this.f1635e;
            this.f1636g = i6;
        }
        if ((i5 & 2) == 2) {
            C0055d c0055d2 = c0056e.f;
            if ((this.f1635e & 2) != 2 || (c0055d = (C0055d) this.f) == C0055d.f1597r) {
                this.f = c0055d2;
            } else {
                C0053b c0053bG = C0053b.g();
                c0053bG.h(c0055d);
                c0053bG.h(c0055d2);
                this.f = c0053bG.f();
            }
            this.f1635e |= 2;
        }
        this.f2400c = this.f2400c.m(c0056e.f1624c);
    }

    public void k(C0058g c0058g) {
        if (c0058g == C0058g.f1639i) {
            return;
        }
        if ((c0058g.f1642d & 1) == 1) {
            int i5 = c0058g.f1643e;
            this.f1635e = 1 | this.f1635e;
            this.f1636g = i5;
        }
        if (!c0058g.f.isEmpty()) {
            if (((List) this.f).isEmpty()) {
                this.f = c0058g.f;
                this.f1635e &= -3;
            } else {
                if ((this.f1635e & 2) != 2) {
                    this.f = new ArrayList((List) this.f);
                    this.f1635e |= 2;
                }
                ((List) this.f).addAll(c0058g.f);
            }
        }
        this.f2400c = this.f2400c.m(c0058g.f1641c);
    }

    public void l(X x4) {
        if (x4 == X.f1536i) {
            return;
        }
        if (!x4.f1540e.isEmpty()) {
            if (((List) this.f).isEmpty()) {
                this.f = x4.f1540e;
                this.f1635e &= -2;
            } else {
                if ((this.f1635e & 1) != 1) {
                    this.f = new ArrayList((List) this.f);
                    this.f1635e |= 1;
                }
                ((List) this.f).addAll(x4.f1540e);
            }
        }
        if ((x4.f1539d & 1) == 1) {
            int i5 = x4.f;
            this.f1635e |= 2;
            this.f1636g = i5;
        }
        this.f2400c = this.f2400c.m(x4.f1538c);
    }
}
