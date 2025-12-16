package L3;

import R3.AbstractC0080b;
import R3.AbstractC0083e;
import R3.AbstractC0089k;
import R3.AbstractC0090l;
import R3.AbstractC0092n;
import R3.C0082d;
import R3.C0084f;
import R3.C0087i;
import R3.C0091m;
import R3.C0098u;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class Q extends AbstractC0092n {

    /* renamed from: v, reason: collision with root package name */
    public static final Q f1476v;

    /* renamed from: w, reason: collision with root package name */
    public static final C0052a f1477w = new C0052a(16);

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0083e f1478d;

    /* renamed from: e, reason: collision with root package name */
    public int f1479e;
    public List f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1480g;

    /* renamed from: h, reason: collision with root package name */
    public int f1481h;

    /* renamed from: i, reason: collision with root package name */
    public Q f1482i;

    /* renamed from: j, reason: collision with root package name */
    public int f1483j;

    /* renamed from: k, reason: collision with root package name */
    public int f1484k;

    /* renamed from: l, reason: collision with root package name */
    public int f1485l;

    /* renamed from: m, reason: collision with root package name */
    public int f1486m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public Q f1487o;

    /* renamed from: p, reason: collision with root package name */
    public int f1488p;

    /* renamed from: q, reason: collision with root package name */
    public Q f1489q;

    /* renamed from: r, reason: collision with root package name */
    public int f1490r;

    /* renamed from: s, reason: collision with root package name */
    public int f1491s;

    /* renamed from: t, reason: collision with root package name */
    public byte f1492t;

    /* renamed from: u, reason: collision with root package name */
    public int f1493u;

    static {
        Q q2 = new Q();
        f1476v = q2;
        q2.r();
    }

    public Q(AbstractC0090l abstractC0090l) {
        super(abstractC0090l);
        this.f1492t = (byte) -1;
        this.f1493u = -1;
        this.f1478d = abstractC0090l.f2400c;
    }

    public static P s(Q q2) {
        P pH = P.h();
        pH.i(q2);
        return pH;
    }

    @Override // R3.A
    public final AbstractC0080b a() {
        return f1476v;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1492t;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        for (int i5 = 0; i5 < this.f.size(); i5++) {
            if (!((O) this.f.get(i5)).b()) {
                this.f1492t = (byte) 0;
                return false;
            }
        }
        if ((this.f1479e & 4) == 4 && !this.f1482i.b()) {
            this.f1492t = (byte) 0;
            return false;
        }
        if ((this.f1479e & 256) == 256 && !this.f1487o.b()) {
            this.f1492t = (byte) 0;
            return false;
        }
        if ((this.f1479e & 1024) == 1024 && !this.f1489q.b()) {
            this.f1492t = (byte) 0;
            return false;
        }
        if (i()) {
            this.f1492t = (byte) 1;
            return true;
        }
        this.f1492t = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1493u;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1479e & 4096) == 4096 ? B1.j.b(1, this.f1491s) : 0;
        for (int i6 = 0; i6 < this.f.size(); i6++) {
            iB += B1.j.d(2, (AbstractC0080b) this.f.get(i6));
        }
        if ((this.f1479e & 1) == 1) {
            iB += B1.j.h(3) + 1;
        }
        if ((this.f1479e & 2) == 2) {
            iB += B1.j.b(4, this.f1481h);
        }
        if ((this.f1479e & 4) == 4) {
            iB += B1.j.d(5, this.f1482i);
        }
        if ((this.f1479e & 16) == 16) {
            iB += B1.j.b(6, this.f1484k);
        }
        if ((this.f1479e & 32) == 32) {
            iB += B1.j.b(7, this.f1485l);
        }
        if ((this.f1479e & 8) == 8) {
            iB += B1.j.b(8, this.f1483j);
        }
        if ((this.f1479e & 64) == 64) {
            iB += B1.j.b(9, this.f1486m);
        }
        if ((this.f1479e & 256) == 256) {
            iB += B1.j.d(10, this.f1487o);
        }
        if ((this.f1479e & 512) == 512) {
            iB += B1.j.b(11, this.f1488p);
        }
        if ((this.f1479e & 128) == 128) {
            iB += B1.j.b(12, this.n);
        }
        if ((this.f1479e & 1024) == 1024) {
            iB += B1.j.d(13, this.f1489q);
        }
        if ((this.f1479e & 2048) == 2048) {
            iB += B1.j.b(14, this.f1490r);
        }
        int size = this.f1478d.size() + j() + iB;
        this.f1493u = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return P.h();
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        C0091m c0091m = new C0091m(this);
        if ((this.f1479e & 4096) == 4096) {
            jVar.n(1, this.f1491s);
        }
        for (int i5 = 0; i5 < this.f.size(); i5++) {
            jVar.p(2, (AbstractC0080b) this.f.get(i5));
        }
        if ((this.f1479e & 1) == 1) {
            boolean z4 = this.f1480g;
            jVar.y(3, 0);
            jVar.r(z4 ? 1 : 0);
        }
        if ((this.f1479e & 2) == 2) {
            jVar.n(4, this.f1481h);
        }
        if ((this.f1479e & 4) == 4) {
            jVar.p(5, this.f1482i);
        }
        if ((this.f1479e & 16) == 16) {
            jVar.n(6, this.f1484k);
        }
        if ((this.f1479e & 32) == 32) {
            jVar.n(7, this.f1485l);
        }
        if ((this.f1479e & 8) == 8) {
            jVar.n(8, this.f1483j);
        }
        if ((this.f1479e & 64) == 64) {
            jVar.n(9, this.f1486m);
        }
        if ((this.f1479e & 256) == 256) {
            jVar.p(10, this.f1487o);
        }
        if ((this.f1479e & 512) == 512) {
            jVar.n(11, this.f1488p);
        }
        if ((this.f1479e & 128) == 128) {
            jVar.n(12, this.n);
        }
        if ((this.f1479e & 1024) == 1024) {
            jVar.p(13, this.f1489q);
        }
        if ((this.f1479e & 2048) == 2048) {
            jVar.n(14, this.f1490r);
        }
        c0091m.d(200, jVar);
        jVar.s(this.f1478d);
    }

    public final boolean q() {
        return (this.f1479e & 16) == 16;
    }

    public final void r() {
        this.f = Collections.emptyList();
        this.f1480g = false;
        this.f1481h = 0;
        Q q2 = f1476v;
        this.f1482i = q2;
        this.f1483j = 0;
        this.f1484k = 0;
        this.f1485l = 0;
        this.f1486m = 0;
        this.n = 0;
        this.f1487o = q2;
        this.f1488p = 0;
        this.f1489q = q2;
        this.f1490r = 0;
        this.f1491s = 0;
    }

    @Override // R3.AbstractC0080b
    /* renamed from: t, reason: merged with bridge method [inline-methods] */
    public final P e() {
        return s(this);
    }

    public Q() {
        this.f1492t = (byte) -1;
        this.f1493u = -1;
        this.f1478d = AbstractC0083e.f2383c;
    }

    public Q(C0084f c0084f, C0087i c0087i) {
        this.f1492t = (byte) -1;
        this.f1493u = -1;
        r();
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        boolean z4 = false;
        boolean z5 = false;
        while (!z4) {
            try {
                try {
                    int iN = c0084f.n();
                    C0052a c0052a = f1477w;
                    P pS = null;
                    switch (iN) {
                        case 0:
                            break;
                        case 8:
                            this.f1479e |= 4096;
                            this.f1491s = c0084f.k();
                            continue;
                        case 18:
                            if (!(z5 & true)) {
                                this.f = new ArrayList();
                                z5 = true;
                            }
                            this.f.add(c0084f.g(O.f1456k, c0087i));
                            continue;
                        case 24:
                            this.f1479e |= 1;
                            this.f1480g = c0084f.l() != 0;
                            continue;
                        case 32:
                            this.f1479e |= 2;
                            this.f1481h = c0084f.k();
                            continue;
                        case 42:
                            if ((this.f1479e & 4) == 4) {
                                Q q2 = this.f1482i;
                                q2.getClass();
                                pS = s(q2);
                            }
                            Q q5 = (Q) c0084f.g(c0052a, c0087i);
                            this.f1482i = q5;
                            if (pS != null) {
                                pS.i(q5);
                                this.f1482i = pS.g();
                            }
                            this.f1479e |= 4;
                            continue;
                        case 48:
                            this.f1479e |= 16;
                            this.f1484k = c0084f.k();
                            continue;
                        case 56:
                            this.f1479e |= 32;
                            this.f1485l = c0084f.k();
                            continue;
                        case 64:
                            this.f1479e |= 8;
                            this.f1483j = c0084f.k();
                            continue;
                        case 72:
                            this.f1479e |= 64;
                            this.f1486m = c0084f.k();
                            continue;
                        case 82:
                            if ((this.f1479e & 256) == 256) {
                                Q q6 = this.f1487o;
                                q6.getClass();
                                pS = s(q6);
                            }
                            Q q7 = (Q) c0084f.g(c0052a, c0087i);
                            this.f1487o = q7;
                            if (pS != null) {
                                pS.i(q7);
                                this.f1487o = pS.g();
                            }
                            this.f1479e |= 256;
                            continue;
                        case 88:
                            this.f1479e |= 512;
                            this.f1488p = c0084f.k();
                            continue;
                        case 96:
                            this.f1479e |= 128;
                            this.n = c0084f.k();
                            continue;
                        case 106:
                            if ((this.f1479e & 1024) == 1024) {
                                Q q8 = this.f1489q;
                                q8.getClass();
                                pS = s(q8);
                            }
                            Q q9 = (Q) c0084f.g(c0052a, c0087i);
                            this.f1489q = q9;
                            if (pS != null) {
                                pS.i(q9);
                                this.f1489q = pS.g();
                            }
                            this.f1479e |= 1024;
                            continue;
                        case 112:
                            this.f1479e |= 2048;
                            this.f1490r = c0084f.k();
                            continue;
                        default:
                            if (!o(c0084f, jVarJ, c0087i, iN)) {
                                break;
                            }
                    }
                    z4 = true;
                } catch (Throwable th) {
                    if (z5 & true) {
                        this.f = Collections.unmodifiableList(this.f);
                    }
                    try {
                        jVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f1478d = c0082d.l();
                        throw th2;
                    }
                    this.f1478d = c0082d.l();
                    m();
                    throw th;
                }
            } catch (C0098u e5) {
                e5.f2416c = this;
                throw e5;
            } catch (IOException e6) {
                C0098u c0098u = new C0098u(e6.getMessage());
                c0098u.f2416c = this;
                throw c0098u;
            }
        }
        if (z5 & true) {
            this.f = Collections.unmodifiableList(this.f);
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1478d = c0082d.l();
            throw th3;
        }
        this.f1478d = c0082d.l();
        m();
    }
}
