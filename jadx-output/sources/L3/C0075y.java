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
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: L3.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0075y extends AbstractC0092n {

    /* renamed from: w, reason: collision with root package name */
    public static final C0075y f1789w;

    /* renamed from: x, reason: collision with root package name */
    public static final C0052a f1790x = new C0052a(9);

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0083e f1791d;

    /* renamed from: e, reason: collision with root package name */
    public int f1792e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1793g;

    /* renamed from: h, reason: collision with root package name */
    public int f1794h;

    /* renamed from: i, reason: collision with root package name */
    public Q f1795i;

    /* renamed from: j, reason: collision with root package name */
    public int f1796j;

    /* renamed from: k, reason: collision with root package name */
    public List f1797k;

    /* renamed from: l, reason: collision with root package name */
    public Q f1798l;

    /* renamed from: m, reason: collision with root package name */
    public int f1799m;
    public List n;

    /* renamed from: o, reason: collision with root package name */
    public List f1800o;

    /* renamed from: p, reason: collision with root package name */
    public int f1801p;

    /* renamed from: q, reason: collision with root package name */
    public List f1802q;

    /* renamed from: r, reason: collision with root package name */
    public X f1803r;

    /* renamed from: s, reason: collision with root package name */
    public List f1804s;

    /* renamed from: t, reason: collision with root package name */
    public C0065n f1805t;

    /* renamed from: u, reason: collision with root package name */
    public byte f1806u;

    /* renamed from: v, reason: collision with root package name */
    public int f1807v;

    static {
        C0075y c0075y = new C0075y();
        f1789w = c0075y;
        c0075y.r();
    }

    public C0075y(AbstractC0090l abstractC0090l) {
        super(abstractC0090l);
        this.f1801p = -1;
        this.f1806u = (byte) -1;
        this.f1807v = -1;
        this.f1791d = abstractC0090l.f2400c;
    }

    @Override // R3.A
    public final AbstractC0080b a() {
        return f1789w;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1806u;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        int i5 = this.f1792e;
        if ((i5 & 4) != 4) {
            this.f1806u = (byte) 0;
            return false;
        }
        if ((i5 & 8) == 8 && !this.f1795i.b()) {
            this.f1806u = (byte) 0;
            return false;
        }
        for (int i6 = 0; i6 < this.f1797k.size(); i6++) {
            if (!((W) this.f1797k.get(i6)).b()) {
                this.f1806u = (byte) 0;
                return false;
            }
        }
        if (q() && !this.f1798l.b()) {
            this.f1806u = (byte) 0;
            return false;
        }
        for (int i7 = 0; i7 < this.n.size(); i7++) {
            if (!((Q) this.n.get(i7)).b()) {
                this.f1806u = (byte) 0;
                return false;
            }
        }
        for (int i8 = 0; i8 < this.f1802q.size(); i8++) {
            if (!((Z) this.f1802q.get(i8)).b()) {
                this.f1806u = (byte) 0;
                return false;
            }
        }
        if ((this.f1792e & 128) == 128 && !this.f1803r.b()) {
            this.f1806u = (byte) 0;
            return false;
        }
        if ((this.f1792e & 256) == 256 && !this.f1805t.b()) {
            this.f1806u = (byte) 0;
            return false;
        }
        if (i()) {
            this.f1806u = (byte) 1;
            return true;
        }
        this.f1806u = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1807v;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1792e & 2) == 2 ? B1.j.b(1, this.f1793g) : 0;
        if ((this.f1792e & 4) == 4) {
            iB += B1.j.b(2, this.f1794h);
        }
        if ((this.f1792e & 8) == 8) {
            iB += B1.j.d(3, this.f1795i);
        }
        for (int i6 = 0; i6 < this.f1797k.size(); i6++) {
            iB += B1.j.d(4, (AbstractC0080b) this.f1797k.get(i6));
        }
        if ((this.f1792e & 32) == 32) {
            iB += B1.j.d(5, this.f1798l);
        }
        for (int i7 = 0; i7 < this.f1802q.size(); i7++) {
            iB += B1.j.d(6, (AbstractC0080b) this.f1802q.get(i7));
        }
        if ((this.f1792e & 16) == 16) {
            iB += B1.j.b(7, this.f1796j);
        }
        if ((this.f1792e & 64) == 64) {
            iB += B1.j.b(8, this.f1799m);
        }
        if ((this.f1792e & 1) == 1) {
            iB += B1.j.b(9, this.f);
        }
        for (int i8 = 0; i8 < this.n.size(); i8++) {
            iB += B1.j.d(10, (AbstractC0080b) this.n.get(i8));
        }
        int iC = 0;
        for (int i9 = 0; i9 < this.f1800o.size(); i9++) {
            iC += B1.j.c(((Integer) this.f1800o.get(i9)).intValue());
        }
        int iD = iB + iC;
        if (!this.f1800o.isEmpty()) {
            iD = iD + 1 + B1.j.c(iC);
        }
        this.f1801p = iC;
        if ((this.f1792e & 128) == 128) {
            iD += B1.j.d(30, this.f1803r);
        }
        int iC2 = 0;
        for (int i10 = 0; i10 < this.f1804s.size(); i10++) {
            iC2 += B1.j.c(((Integer) this.f1804s.get(i10)).intValue());
        }
        int size = (this.f1804s.size() * 2) + iD + iC2;
        if ((this.f1792e & 256) == 256) {
            size += B1.j.d(32, this.f1805t);
        }
        int size2 = this.f1791d.size() + j() + size;
        this.f1807v = size2;
        return size2;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return C0074x.h();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        C0074x c0074xH = C0074x.h();
        c0074xH.i(this);
        return c0074xH;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        C0091m c0091mN = n();
        if ((this.f1792e & 2) == 2) {
            jVar.n(1, this.f1793g);
        }
        if ((this.f1792e & 4) == 4) {
            jVar.n(2, this.f1794h);
        }
        if ((this.f1792e & 8) == 8) {
            jVar.p(3, this.f1795i);
        }
        for (int i5 = 0; i5 < this.f1797k.size(); i5++) {
            jVar.p(4, (AbstractC0080b) this.f1797k.get(i5));
        }
        if ((this.f1792e & 32) == 32) {
            jVar.p(5, this.f1798l);
        }
        for (int i6 = 0; i6 < this.f1802q.size(); i6++) {
            jVar.p(6, (AbstractC0080b) this.f1802q.get(i6));
        }
        if ((this.f1792e & 16) == 16) {
            jVar.n(7, this.f1796j);
        }
        if ((this.f1792e & 64) == 64) {
            jVar.n(8, this.f1799m);
        }
        if ((this.f1792e & 1) == 1) {
            jVar.n(9, this.f);
        }
        for (int i7 = 0; i7 < this.n.size(); i7++) {
            jVar.p(10, (AbstractC0080b) this.n.get(i7));
        }
        if (this.f1800o.size() > 0) {
            jVar.w(90);
            jVar.w(this.f1801p);
        }
        for (int i8 = 0; i8 < this.f1800o.size(); i8++) {
            jVar.o(((Integer) this.f1800o.get(i8)).intValue());
        }
        if ((this.f1792e & 128) == 128) {
            jVar.p(30, this.f1803r);
        }
        for (int i9 = 0; i9 < this.f1804s.size(); i9++) {
            jVar.n(31, ((Integer) this.f1804s.get(i9)).intValue());
        }
        if ((this.f1792e & 256) == 256) {
            jVar.p(32, this.f1805t);
        }
        c0091mN.d(19000, jVar);
        jVar.s(this.f1791d);
    }

    public final boolean q() {
        return (this.f1792e & 32) == 32;
    }

    public final void r() {
        this.f = 6;
        this.f1793g = 6;
        this.f1794h = 0;
        Q q2 = Q.f1476v;
        this.f1795i = q2;
        this.f1796j = 0;
        this.f1797k = Collections.emptyList();
        this.f1798l = q2;
        this.f1799m = 0;
        this.n = Collections.emptyList();
        this.f1800o = Collections.emptyList();
        this.f1802q = Collections.emptyList();
        this.f1803r = X.f1536i;
        this.f1804s = Collections.emptyList();
        this.f1805t = C0065n.f1721g;
    }

    public C0075y() {
        this.f1801p = -1;
        this.f1806u = (byte) -1;
        this.f1807v = -1;
        this.f1791d = AbstractC0083e.f2383c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public C0075y(C0084f c0084f, C0087i c0087i) {
        this.f1801p = -1;
        this.f1806u = (byte) -1;
        this.f1807v = -1;
        r();
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        boolean z4 = false;
        char c2 = 0;
        while (true) {
            ?? O4 = 1024;
            if (!z4) {
                try {
                    try {
                        int iN = c0084f.n();
                        P pS = null;
                        C0064m c0064m = null;
                        C0057f c0057fI = null;
                        P pS2 = null;
                        switch (iN) {
                            case 0:
                                z4 = true;
                            case 8:
                                this.f1792e |= 2;
                                this.f1793g = c0084f.k();
                            case 16:
                                this.f1792e |= 4;
                                this.f1794h = c0084f.k();
                            case 26:
                                if ((this.f1792e & 8) == 8) {
                                    Q q2 = this.f1795i;
                                    q2.getClass();
                                    pS = Q.s(q2);
                                }
                                Q q5 = (Q) c0084f.g(Q.f1477w, c0087i);
                                this.f1795i = q5;
                                if (pS != null) {
                                    pS.i(q5);
                                    this.f1795i = pS.g();
                                }
                                this.f1792e |= 8;
                            case 34:
                                int i5 = (c2 == true ? 1 : 0) & 32;
                                c2 = c2;
                                if (i5 != 32) {
                                    this.f1797k = new ArrayList();
                                    c2 = (c2 == true ? 1 : 0) | ' ';
                                }
                                this.f1797k.add(c0084f.g(W.f1526p, c0087i));
                            case 42:
                                if ((this.f1792e & 32) == 32) {
                                    Q q6 = this.f1798l;
                                    q6.getClass();
                                    pS2 = Q.s(q6);
                                }
                                Q q7 = (Q) c0084f.g(Q.f1477w, c0087i);
                                this.f1798l = q7;
                                if (pS2 != null) {
                                    pS2.i(q7);
                                    this.f1798l = pS2.g();
                                }
                                this.f1792e |= 32;
                            case 50:
                                int i6 = (c2 == true ? 1 : 0) & 1024;
                                c2 = c2;
                                if (i6 != 1024) {
                                    this.f1802q = new ArrayList();
                                    c2 = (c2 == true ? 1 : 0) | 1024;
                                }
                                this.f1802q.add(c0084f.g(Z.f1549o, c0087i));
                            case 56:
                                this.f1792e |= 16;
                                this.f1796j = c0084f.k();
                            case 64:
                                this.f1792e |= 64;
                                this.f1799m = c0084f.k();
                            case 72:
                                this.f1792e |= 1;
                                this.f = c0084f.k();
                            case 82:
                                int i7 = (c2 == true ? 1 : 0) & 256;
                                c2 = c2;
                                if (i7 != 256) {
                                    this.n = new ArrayList();
                                    c2 = (c2 == true ? 1 : 0) | 256;
                                }
                                this.n.add(c0084f.g(Q.f1477w, c0087i));
                            case 88:
                                int i8 = (c2 == true ? 1 : 0) & 512;
                                c2 = c2;
                                if (i8 != 512) {
                                    this.f1800o = new ArrayList();
                                    c2 = (c2 == true ? 1 : 0) | 512;
                                }
                                this.f1800o.add(Integer.valueOf(c0084f.k()));
                            case 90:
                                int iD = c0084f.d(c0084f.k());
                                int i9 = (c2 == true ? 1 : 0) & 512;
                                c2 = c2;
                                if (i9 != 512) {
                                    c2 = c2;
                                    if (c0084f.b() > 0) {
                                        this.f1800o = new ArrayList();
                                        c2 = (c2 == true ? 1 : 0) | 512;
                                    }
                                }
                                while (c0084f.b() > 0) {
                                    this.f1800o.add(Integer.valueOf(c0084f.k()));
                                }
                                c0084f.c(iD);
                            case IDMCallbackStatusInterface.IDM_DL_STATE_DOWNLOAD_PAUSE /* 242 */:
                                if ((this.f1792e & 128) == 128) {
                                    X x4 = this.f1803r;
                                    x4.getClass();
                                    c0057fI = X.i(x4);
                                }
                                X x5 = (X) c0084f.g(X.f1537j, c0087i);
                                this.f1803r = x5;
                                if (c0057fI != null) {
                                    c0057fI.l(x5);
                                    this.f1803r = c0057fI.h();
                                }
                                this.f1792e |= 128;
                            case 248:
                                int i10 = (c2 == true ? 1 : 0) & 4096;
                                c2 = c2;
                                if (i10 != 4096) {
                                    this.f1804s = new ArrayList();
                                    c2 = (c2 == true ? 1 : 0) | 4096;
                                }
                                this.f1804s.add(Integer.valueOf(c0084f.k()));
                            case 250:
                                int iD2 = c0084f.d(c0084f.k());
                                int i11 = (c2 == true ? 1 : 0) & 4096;
                                c2 = c2;
                                if (i11 != 4096) {
                                    c2 = c2;
                                    if (c0084f.b() > 0) {
                                        this.f1804s = new ArrayList();
                                        c2 = (c2 == true ? 1 : 0) | 4096;
                                    }
                                }
                                while (c0084f.b() > 0) {
                                    this.f1804s.add(Integer.valueOf(c0084f.k()));
                                }
                                c0084f.c(iD2);
                            case 258:
                                if ((this.f1792e & 256) == 256) {
                                    C0065n c0065n = this.f1805t;
                                    c0065n.getClass();
                                    c0064m = new C0064m(0);
                                    c0064m.f = Collections.emptyList();
                                    c0064m.j(c0065n);
                                }
                                C0065n c0065n2 = (C0065n) c0084f.g(C0065n.f1722h, c0087i);
                                this.f1805t = c0065n2;
                                if (c0064m != null) {
                                    c0064m.j(c0065n2);
                                    this.f1805t = c0064m.f();
                                }
                                this.f1792e |= 256;
                            default:
                                O4 = o(c0084f, jVarJ, c0087i, iN);
                                if (O4 == 0) {
                                    z4 = true;
                                }
                        }
                    } catch (Throwable th) {
                        if (((c2 == true ? 1 : 0) & 32) == 32) {
                            this.f1797k = Collections.unmodifiableList(this.f1797k);
                        }
                        if (((c2 == true ? 1 : 0) & 1024) == O4) {
                            this.f1802q = Collections.unmodifiableList(this.f1802q);
                        }
                        if (((c2 == true ? 1 : 0) & 256) == 256) {
                            this.n = Collections.unmodifiableList(this.n);
                        }
                        if (((c2 == true ? 1 : 0) & 512) == 512) {
                            this.f1800o = Collections.unmodifiableList(this.f1800o);
                        }
                        if (((c2 == true ? 1 : 0) & 4096) == 4096) {
                            this.f1804s = Collections.unmodifiableList(this.f1804s);
                        }
                        try {
                            jVarJ.i();
                        } catch (IOException unused) {
                        } catch (Throwable th2) {
                            this.f1791d = c0082d.l();
                            throw th2;
                        }
                        this.f1791d = c0082d.l();
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
            } else {
                if (((c2 == true ? 1 : 0) & 32) == 32) {
                    this.f1797k = Collections.unmodifiableList(this.f1797k);
                }
                if (((c2 == true ? 1 : 0) & 1024) == 1024) {
                    this.f1802q = Collections.unmodifiableList(this.f1802q);
                }
                if (((c2 == true ? 1 : 0) & 256) == 256) {
                    this.n = Collections.unmodifiableList(this.n);
                }
                if (((c2 == true ? 1 : 0) & 512) == 512) {
                    this.f1800o = Collections.unmodifiableList(this.f1800o);
                }
                if (((c2 == true ? 1 : 0) & 4096) == 4096) {
                    this.f1804s = Collections.unmodifiableList(this.f1804s);
                }
                try {
                    jVarJ.i();
                } catch (IOException unused2) {
                } catch (Throwable th3) {
                    this.f1791d = c0082d.l();
                    throw th3;
                }
                this.f1791d = c0082d.l();
                m();
                return;
            }
        }
    }
}
