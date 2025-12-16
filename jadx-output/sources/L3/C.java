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
public final class C extends AbstractC0092n {

    /* renamed from: m, reason: collision with root package name */
    public static final C f1368m;
    public static final C0052a n = new C0052a(10);

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0083e f1369d;

    /* renamed from: e, reason: collision with root package name */
    public int f1370e;
    public List f;

    /* renamed from: g, reason: collision with root package name */
    public List f1371g;

    /* renamed from: h, reason: collision with root package name */
    public List f1372h;

    /* renamed from: i, reason: collision with root package name */
    public X f1373i;

    /* renamed from: j, reason: collision with root package name */
    public e0 f1374j;

    /* renamed from: k, reason: collision with root package name */
    public byte f1375k;

    /* renamed from: l, reason: collision with root package name */
    public int f1376l;

    static {
        C c2 = new C();
        f1368m = c2;
        c2.f = Collections.emptyList();
        c2.f1371g = Collections.emptyList();
        c2.f1372h = Collections.emptyList();
        c2.f1373i = X.f1536i;
        c2.f1374j = e0.f1629g;
    }

    public C(AbstractC0090l abstractC0090l) {
        super(abstractC0090l);
        this.f1375k = (byte) -1;
        this.f1376l = -1;
        this.f1369d = abstractC0090l.f2400c;
    }

    @Override // R3.A
    public final AbstractC0080b a() {
        return f1368m;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1375k;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        for (int i5 = 0; i5 < this.f.size(); i5++) {
            if (!((C0075y) this.f.get(i5)).b()) {
                this.f1375k = (byte) 0;
                return false;
            }
        }
        for (int i6 = 0; i6 < this.f1371g.size(); i6++) {
            if (!((G) this.f1371g.get(i6)).b()) {
                this.f1375k = (byte) 0;
                return false;
            }
        }
        for (int i7 = 0; i7 < this.f1372h.size(); i7++) {
            if (!((T) this.f1372h.get(i7)).b()) {
                this.f1375k = (byte) 0;
                return false;
            }
        }
        if ((this.f1370e & 1) == 1 && !this.f1373i.b()) {
            this.f1375k = (byte) 0;
            return false;
        }
        if (i()) {
            this.f1375k = (byte) 1;
            return true;
        }
        this.f1375k = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1376l;
        if (i5 != -1) {
            return i5;
        }
        int iD = 0;
        for (int i6 = 0; i6 < this.f.size(); i6++) {
            iD += B1.j.d(3, (AbstractC0080b) this.f.get(i6));
        }
        for (int i7 = 0; i7 < this.f1371g.size(); i7++) {
            iD += B1.j.d(4, (AbstractC0080b) this.f1371g.get(i7));
        }
        for (int i8 = 0; i8 < this.f1372h.size(); i8++) {
            iD += B1.j.d(5, (AbstractC0080b) this.f1372h.get(i8));
        }
        if ((this.f1370e & 1) == 1) {
            iD += B1.j.d(30, this.f1373i);
        }
        if ((this.f1370e & 2) == 2) {
            iD += B1.j.d(32, this.f1374j);
        }
        int size = this.f1369d.size() + j() + iD;
        this.f1376l = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return B.h();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        B bH = B.h();
        bH.i(this);
        return bH;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        C0091m c0091mN = n();
        for (int i5 = 0; i5 < this.f.size(); i5++) {
            jVar.p(3, (AbstractC0080b) this.f.get(i5));
        }
        for (int i6 = 0; i6 < this.f1371g.size(); i6++) {
            jVar.p(4, (AbstractC0080b) this.f1371g.get(i6));
        }
        for (int i7 = 0; i7 < this.f1372h.size(); i7++) {
            jVar.p(5, (AbstractC0080b) this.f1372h.get(i7));
        }
        if ((this.f1370e & 1) == 1) {
            jVar.p(30, this.f1373i);
        }
        if ((this.f1370e & 2) == 2) {
            jVar.p(32, this.f1374j);
        }
        c0091mN.d(200, jVar);
        jVar.s(this.f1369d);
    }

    public C() {
        this.f1375k = (byte) -1;
        this.f1376l = -1;
        this.f1369d = AbstractC0083e.f2383c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v8 */
    public C(C0084f c0084f, C0087i c0087i) {
        this.f1375k = (byte) -1;
        this.f1376l = -1;
        this.f = Collections.emptyList();
        this.f1371g = Collections.emptyList();
        this.f1372h = Collections.emptyList();
        this.f1373i = X.f1536i;
        this.f1374j = e0.f1629g;
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        boolean z4 = false;
        char c2 = 0;
        while (!z4) {
            try {
                try {
                    int iN = c0084f.n();
                    if (iN != 0) {
                        if (iN == 26) {
                            int i5 = (c2 == true ? 1 : 0) & 1;
                            c2 = c2;
                            if (i5 != 1) {
                                this.f = new ArrayList();
                                c2 = (c2 == true ? 1 : 0) | 1;
                            }
                            this.f.add(c0084f.g(C0075y.f1790x, c0087i));
                        } else if (iN == 34) {
                            int i6 = (c2 == true ? 1 : 0) & 2;
                            c2 = c2;
                            if (i6 != 2) {
                                this.f1371g = new ArrayList();
                                c2 = (c2 == true ? 1 : 0) | 2;
                            }
                            this.f1371g.add(c0084f.g(G.f1404x, c0087i));
                        } else if (iN != 42) {
                            C0064m c0064m = null;
                            C0057f c0057fI = null;
                            if (iN == 242) {
                                if ((this.f1370e & 1) == 1) {
                                    X x4 = this.f1373i;
                                    x4.getClass();
                                    c0057fI = X.i(x4);
                                }
                                X x5 = (X) c0084f.g(X.f1537j, c0087i);
                                this.f1373i = x5;
                                if (c0057fI != null) {
                                    c0057fI.l(x5);
                                    this.f1373i = c0057fI.h();
                                }
                                this.f1370e |= 1;
                            } else if (iN != 258) {
                                if (!o(c0084f, jVarJ, c0087i, iN)) {
                                }
                            } else {
                                if ((this.f1370e & 2) == 2) {
                                    e0 e0Var = this.f1374j;
                                    e0Var.getClass();
                                    c0064m = new C0064m(2);
                                    c0064m.f = Collections.emptyList();
                                    c0064m.m(e0Var);
                                }
                                e0 e0Var2 = (e0) c0084f.g(e0.f1630h, c0087i);
                                this.f1374j = e0Var2;
                                if (c0064m != null) {
                                    c0064m.m(e0Var2);
                                    this.f1374j = c0064m.i();
                                }
                                this.f1370e |= 2;
                            }
                        } else {
                            int i7 = (c2 == true ? 1 : 0) & 4;
                            c2 = c2;
                            if (i7 != 4) {
                                this.f1372h = new ArrayList();
                                c2 = (c2 == true ? 1 : 0) | 4;
                            }
                            this.f1372h.add(c0084f.g(T.f1503r, c0087i));
                        }
                    }
                    z4 = true;
                } catch (Throwable th) {
                    if (((c2 == true ? 1 : 0) & 1) == 1) {
                        this.f = Collections.unmodifiableList(this.f);
                    }
                    if (((c2 == true ? 1 : 0) & 2) == 2) {
                        this.f1371g = Collections.unmodifiableList(this.f1371g);
                    }
                    if (((c2 == true ? 1 : 0) & 4) == 4) {
                        this.f1372h = Collections.unmodifiableList(this.f1372h);
                    }
                    try {
                        jVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f1369d = c0082d.l();
                        throw th2;
                    }
                    this.f1369d = c0082d.l();
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
        if (((c2 == true ? 1 : 0) & 1) == 1) {
            this.f = Collections.unmodifiableList(this.f);
        }
        if (((c2 == true ? 1 : 0) & 2) == 2) {
            this.f1371g = Collections.unmodifiableList(this.f1371g);
        }
        if (((c2 == true ? 1 : 0) & 4) == 4) {
            this.f1372h = Collections.unmodifiableList(this.f1372h);
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1369d = c0082d.l();
            throw th3;
        }
        this.f1369d = c0082d.l();
        m();
    }
}
