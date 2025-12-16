package L3;

import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0090l;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class F extends AbstractC0090l {
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1390g;

    /* renamed from: h, reason: collision with root package name */
    public int f1391h;

    /* renamed from: i, reason: collision with root package name */
    public int f1392i;

    /* renamed from: j, reason: collision with root package name */
    public Q f1393j;

    /* renamed from: k, reason: collision with root package name */
    public int f1394k;

    /* renamed from: l, reason: collision with root package name */
    public List f1395l;

    /* renamed from: m, reason: collision with root package name */
    public Q f1396m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public List f1397o;

    /* renamed from: p, reason: collision with root package name */
    public List f1398p;

    /* renamed from: q, reason: collision with root package name */
    public Z f1399q;

    /* renamed from: r, reason: collision with root package name */
    public int f1400r;

    /* renamed from: s, reason: collision with root package name */
    public int f1401s;

    /* renamed from: t, reason: collision with root package name */
    public List f1402t;

    public static F h() {
        F f = new F();
        f.f1390g = 518;
        f.f1391h = 2054;
        Q q2 = Q.f1476v;
        f.f1393j = q2;
        f.f1395l = Collections.emptyList();
        f.f1396m = q2;
        f.f1397o = Collections.emptyList();
        f.f1398p = Collections.emptyList();
        f.f1399q = Z.n;
        f.f1402t = Collections.emptyList();
        return f;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        G g5 = g();
        if (g5.b()) {
            return g5;
        }
        throw new A0.c();
    }

    public final Object clone() {
        F fH = h();
        fH.i(g());
        return fH;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        G g5 = null;
        try {
            try {
                G.f1404x.getClass();
                i(new G(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                G g6 = (G) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    g5 = g6;
                    if (g5 != null) {
                        i(g5);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (g5 != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        i((G) abstractC0095q);
        return this;
    }

    public final G g() {
        G g5 = new G(this);
        int i5 = this.f;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        g5.f = this.f1390g;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        g5.f1407g = this.f1391h;
        if ((i5 & 4) == 4) {
            i6 |= 4;
        }
        g5.f1408h = this.f1392i;
        if ((i5 & 8) == 8) {
            i6 |= 8;
        }
        g5.f1409i = this.f1393j;
        if ((i5 & 16) == 16) {
            i6 |= 16;
        }
        g5.f1410j = this.f1394k;
        if ((i5 & 32) == 32) {
            this.f1395l = Collections.unmodifiableList(this.f1395l);
            this.f &= -33;
        }
        g5.f1411k = this.f1395l;
        if ((i5 & 64) == 64) {
            i6 |= 32;
        }
        g5.f1412l = this.f1396m;
        if ((i5 & 128) == 128) {
            i6 |= 64;
        }
        g5.f1413m = this.n;
        if ((this.f & 256) == 256) {
            this.f1397o = Collections.unmodifiableList(this.f1397o);
            this.f &= -257;
        }
        g5.n = this.f1397o;
        if ((this.f & 512) == 512) {
            this.f1398p = Collections.unmodifiableList(this.f1398p);
            this.f &= -513;
        }
        g5.f1414o = this.f1398p;
        if ((i5 & 1024) == 1024) {
            i6 |= 128;
        }
        g5.f1416q = this.f1399q;
        if ((i5 & 2048) == 2048) {
            i6 |= 256;
        }
        g5.f1417r = this.f1400r;
        if ((i5 & 4096) == 4096) {
            i6 |= 512;
        }
        g5.f1418s = this.f1401s;
        if ((this.f & 8192) == 8192) {
            this.f1402t = Collections.unmodifiableList(this.f1402t);
            this.f &= -8193;
        }
        g5.f1419t = this.f1402t;
        g5.f1406e = i6;
        return g5;
    }

    public final void i(G g5) {
        Z z4;
        Q q2;
        Q q5;
        if (g5 == G.f1403w) {
            return;
        }
        int i5 = g5.f1406e;
        if ((i5 & 1) == 1) {
            int i6 = g5.f;
            this.f = 1 | this.f;
            this.f1390g = i6;
        }
        if ((i5 & 2) == 2) {
            int i7 = g5.f1407g;
            this.f = 2 | this.f;
            this.f1391h = i7;
        }
        if ((i5 & 4) == 4) {
            int i8 = g5.f1408h;
            this.f = 4 | this.f;
            this.f1392i = i8;
        }
        if ((i5 & 8) == 8) {
            Q q6 = g5.f1409i;
            if ((this.f & 8) != 8 || (q5 = this.f1393j) == Q.f1476v) {
                this.f1393j = q6;
            } else {
                P pS = Q.s(q5);
                pS.i(q6);
                this.f1393j = pS.g();
            }
            this.f |= 8;
        }
        if ((g5.f1406e & 16) == 16) {
            int i9 = g5.f1410j;
            this.f = 16 | this.f;
            this.f1394k = i9;
        }
        if (!g5.f1411k.isEmpty()) {
            if (this.f1395l.isEmpty()) {
                this.f1395l = g5.f1411k;
                this.f &= -33;
            } else {
                if ((this.f & 32) != 32) {
                    this.f1395l = new ArrayList(this.f1395l);
                    this.f |= 32;
                }
                this.f1395l.addAll(g5.f1411k);
            }
        }
        if (g5.q()) {
            Q q7 = g5.f1412l;
            if ((this.f & 64) != 64 || (q2 = this.f1396m) == Q.f1476v) {
                this.f1396m = q7;
            } else {
                P pS2 = Q.s(q2);
                pS2.i(q7);
                this.f1396m = pS2.g();
            }
            this.f |= 64;
        }
        if ((g5.f1406e & 64) == 64) {
            int i10 = g5.f1413m;
            this.f |= 128;
            this.n = i10;
        }
        if (!g5.n.isEmpty()) {
            if (this.f1397o.isEmpty()) {
                this.f1397o = g5.n;
                this.f &= -257;
            } else {
                if ((this.f & 256) != 256) {
                    this.f1397o = new ArrayList(this.f1397o);
                    this.f |= 256;
                }
                this.f1397o.addAll(g5.n);
            }
        }
        if (!g5.f1414o.isEmpty()) {
            if (this.f1398p.isEmpty()) {
                this.f1398p = g5.f1414o;
                this.f &= -513;
            } else {
                if ((this.f & 512) != 512) {
                    this.f1398p = new ArrayList(this.f1398p);
                    this.f |= 512;
                }
                this.f1398p.addAll(g5.f1414o);
            }
        }
        if ((g5.f1406e & 128) == 128) {
            Z z5 = g5.f1416q;
            if ((this.f & 1024) != 1024 || (z4 = this.f1399q) == Z.n) {
                this.f1399q = z5;
            } else {
                Y y3 = new Y();
                Q q8 = Q.f1476v;
                y3.f1545i = q8;
                y3.f1547k = q8;
                y3.h(z4);
                y3.h(z5);
                this.f1399q = y3.g();
            }
            this.f |= 1024;
        }
        int i11 = g5.f1406e;
        if ((i11 & 256) == 256) {
            int i12 = g5.f1417r;
            this.f |= 2048;
            this.f1400r = i12;
        }
        if ((i11 & 512) == 512) {
            int i13 = g5.f1418s;
            this.f |= 4096;
            this.f1401s = i13;
        }
        if (!g5.f1419t.isEmpty()) {
            if (this.f1402t.isEmpty()) {
                this.f1402t = g5.f1419t;
                this.f &= -8193;
            } else {
                if ((this.f & 8192) != 8192) {
                    this.f1402t = new ArrayList(this.f1402t);
                    this.f |= 8192;
                }
                this.f1402t.addAll(g5.f1419t);
            }
        }
        f(g5);
        this.f2400c = this.f2400c.m(g5.f1405d);
    }
}
