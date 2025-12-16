package L3;

import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0090l;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import com.samsung.android.knox.container.KnoxContainerManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: L3.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0074x extends AbstractC0090l {
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1776g;

    /* renamed from: h, reason: collision with root package name */
    public int f1777h;

    /* renamed from: i, reason: collision with root package name */
    public int f1778i;

    /* renamed from: j, reason: collision with root package name */
    public Q f1779j;

    /* renamed from: k, reason: collision with root package name */
    public int f1780k;

    /* renamed from: l, reason: collision with root package name */
    public List f1781l;

    /* renamed from: m, reason: collision with root package name */
    public Q f1782m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public List f1783o;

    /* renamed from: p, reason: collision with root package name */
    public List f1784p;

    /* renamed from: q, reason: collision with root package name */
    public List f1785q;

    /* renamed from: r, reason: collision with root package name */
    public X f1786r;

    /* renamed from: s, reason: collision with root package name */
    public List f1787s;

    /* renamed from: t, reason: collision with root package name */
    public C0065n f1788t;

    public static C0074x h() {
        C0074x c0074x = new C0074x();
        c0074x.f1776g = 6;
        c0074x.f1777h = 6;
        Q q2 = Q.f1476v;
        c0074x.f1779j = q2;
        c0074x.f1781l = Collections.emptyList();
        c0074x.f1782m = q2;
        c0074x.f1783o = Collections.emptyList();
        c0074x.f1784p = Collections.emptyList();
        c0074x.f1785q = Collections.emptyList();
        c0074x.f1786r = X.f1536i;
        c0074x.f1787s = Collections.emptyList();
        c0074x.f1788t = C0065n.f1721g;
        return c0074x;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        C0075y c0075yG = g();
        if (c0075yG.b()) {
            return c0075yG;
        }
        throw new A0.c();
    }

    public final Object clone() {
        C0074x c0074xH = h();
        c0074xH.i(g());
        return c0074xH;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        C0075y c0075y = null;
        try {
            try {
                C0075y.f1790x.getClass();
                i(new C0075y(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                C0075y c0075y2 = (C0075y) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    c0075y = c0075y2;
                    if (c0075y != null) {
                        i(c0075y);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (c0075y != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        i((C0075y) abstractC0095q);
        return this;
    }

    public final C0075y g() {
        C0075y c0075y = new C0075y(this);
        int i5 = this.f;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        c0075y.f = this.f1776g;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        c0075y.f1793g = this.f1777h;
        if ((i5 & 4) == 4) {
            i6 |= 4;
        }
        c0075y.f1794h = this.f1778i;
        if ((i5 & 8) == 8) {
            i6 |= 8;
        }
        c0075y.f1795i = this.f1779j;
        if ((i5 & 16) == 16) {
            i6 |= 16;
        }
        c0075y.f1796j = this.f1780k;
        if ((i5 & 32) == 32) {
            this.f1781l = Collections.unmodifiableList(this.f1781l);
            this.f &= -33;
        }
        c0075y.f1797k = this.f1781l;
        if ((i5 & 64) == 64) {
            i6 |= 32;
        }
        c0075y.f1798l = this.f1782m;
        if ((i5 & 128) == 128) {
            i6 |= 64;
        }
        c0075y.f1799m = this.n;
        if ((this.f & 256) == 256) {
            this.f1783o = Collections.unmodifiableList(this.f1783o);
            this.f &= -257;
        }
        c0075y.n = this.f1783o;
        if ((this.f & 512) == 512) {
            this.f1784p = Collections.unmodifiableList(this.f1784p);
            this.f &= -513;
        }
        c0075y.f1800o = this.f1784p;
        if ((this.f & 1024) == 1024) {
            this.f1785q = Collections.unmodifiableList(this.f1785q);
            this.f &= KnoxContainerManager.ERROR_INVALID_PASSWORD_RESET_TOKEN;
        }
        c0075y.f1802q = this.f1785q;
        if ((i5 & 2048) == 2048) {
            i6 |= 128;
        }
        c0075y.f1803r = this.f1786r;
        if ((this.f & 4096) == 4096) {
            this.f1787s = Collections.unmodifiableList(this.f1787s);
            this.f &= -4097;
        }
        c0075y.f1804s = this.f1787s;
        if ((i5 & 8192) == 8192) {
            i6 |= 256;
        }
        c0075y.f1805t = this.f1788t;
        c0075y.f1792e = i6;
        return c0075y;
    }

    public final void i(C0075y c0075y) {
        C0065n c0065n;
        X x4;
        Q q2;
        Q q5;
        if (c0075y == C0075y.f1789w) {
            return;
        }
        int i5 = c0075y.f1792e;
        if ((i5 & 1) == 1) {
            int i6 = c0075y.f;
            this.f = 1 | this.f;
            this.f1776g = i6;
        }
        if ((i5 & 2) == 2) {
            int i7 = c0075y.f1793g;
            this.f = 2 | this.f;
            this.f1777h = i7;
        }
        if ((i5 & 4) == 4) {
            int i8 = c0075y.f1794h;
            this.f = 4 | this.f;
            this.f1778i = i8;
        }
        if ((i5 & 8) == 8) {
            Q q6 = c0075y.f1795i;
            if ((this.f & 8) != 8 || (q5 = this.f1779j) == Q.f1476v) {
                this.f1779j = q6;
            } else {
                P pS = Q.s(q5);
                pS.i(q6);
                this.f1779j = pS.g();
            }
            this.f |= 8;
        }
        if ((c0075y.f1792e & 16) == 16) {
            int i9 = c0075y.f1796j;
            this.f = 16 | this.f;
            this.f1780k = i9;
        }
        if (!c0075y.f1797k.isEmpty()) {
            if (this.f1781l.isEmpty()) {
                this.f1781l = c0075y.f1797k;
                this.f &= -33;
            } else {
                if ((this.f & 32) != 32) {
                    this.f1781l = new ArrayList(this.f1781l);
                    this.f |= 32;
                }
                this.f1781l.addAll(c0075y.f1797k);
            }
        }
        if (c0075y.q()) {
            Q q7 = c0075y.f1798l;
            if ((this.f & 64) != 64 || (q2 = this.f1782m) == Q.f1476v) {
                this.f1782m = q7;
            } else {
                P pS2 = Q.s(q2);
                pS2.i(q7);
                this.f1782m = pS2.g();
            }
            this.f |= 64;
        }
        if ((c0075y.f1792e & 64) == 64) {
            int i10 = c0075y.f1799m;
            this.f |= 128;
            this.n = i10;
        }
        if (!c0075y.n.isEmpty()) {
            if (this.f1783o.isEmpty()) {
                this.f1783o = c0075y.n;
                this.f &= -257;
            } else {
                if ((this.f & 256) != 256) {
                    this.f1783o = new ArrayList(this.f1783o);
                    this.f |= 256;
                }
                this.f1783o.addAll(c0075y.n);
            }
        }
        if (!c0075y.f1800o.isEmpty()) {
            if (this.f1784p.isEmpty()) {
                this.f1784p = c0075y.f1800o;
                this.f &= -513;
            } else {
                if ((this.f & 512) != 512) {
                    this.f1784p = new ArrayList(this.f1784p);
                    this.f |= 512;
                }
                this.f1784p.addAll(c0075y.f1800o);
            }
        }
        if (!c0075y.f1802q.isEmpty()) {
            if (this.f1785q.isEmpty()) {
                this.f1785q = c0075y.f1802q;
                this.f &= KnoxContainerManager.ERROR_INVALID_PASSWORD_RESET_TOKEN;
            } else {
                if ((this.f & 1024) != 1024) {
                    this.f1785q = new ArrayList(this.f1785q);
                    this.f |= 1024;
                }
                this.f1785q.addAll(c0075y.f1802q);
            }
        }
        if ((c0075y.f1792e & 128) == 128) {
            X x5 = c0075y.f1803r;
            if ((this.f & 2048) != 2048 || (x4 = this.f1786r) == X.f1536i) {
                this.f1786r = x5;
            } else {
                C0057f c0057fI = X.i(x4);
                c0057fI.l(x5);
                this.f1786r = c0057fI.h();
            }
            this.f |= 2048;
        }
        if (!c0075y.f1804s.isEmpty()) {
            if (this.f1787s.isEmpty()) {
                this.f1787s = c0075y.f1804s;
                this.f &= -4097;
            } else {
                if ((this.f & 4096) != 4096) {
                    this.f1787s = new ArrayList(this.f1787s);
                    this.f |= 4096;
                }
                this.f1787s.addAll(c0075y.f1804s);
            }
        }
        if ((c0075y.f1792e & 256) == 256) {
            C0065n c0065n2 = c0075y.f1805t;
            if ((this.f & 8192) != 8192 || (c0065n = this.f1788t) == C0065n.f1721g) {
                this.f1788t = c0065n2;
            } else {
                C0064m c0064m = new C0064m(0);
                c0064m.f = Collections.emptyList();
                c0064m.j(c0065n);
                c0064m.j(c0065n2);
                this.f1788t = c0064m.f();
            }
            this.f |= 8192;
        }
        f(c0075y);
        this.f2400c = this.f2400c.m(c0075y.f1791d);
    }
}
