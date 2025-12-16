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

/* loaded from: classes.dex */
public final class Z extends AbstractC0092n {
    public static final Z n;

    /* renamed from: o, reason: collision with root package name */
    public static final C0052a f1549o = new C0052a(21);

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0083e f1550d;

    /* renamed from: e, reason: collision with root package name */
    public int f1551e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1552g;

    /* renamed from: h, reason: collision with root package name */
    public Q f1553h;

    /* renamed from: i, reason: collision with root package name */
    public int f1554i;

    /* renamed from: j, reason: collision with root package name */
    public Q f1555j;

    /* renamed from: k, reason: collision with root package name */
    public int f1556k;

    /* renamed from: l, reason: collision with root package name */
    public byte f1557l;

    /* renamed from: m, reason: collision with root package name */
    public int f1558m;

    static {
        Z z4 = new Z();
        n = z4;
        z4.f = 0;
        z4.f1552g = 0;
        Q q2 = Q.f1476v;
        z4.f1553h = q2;
        z4.f1554i = 0;
        z4.f1555j = q2;
        z4.f1556k = 0;
    }

    public Z(AbstractC0090l abstractC0090l) {
        super(abstractC0090l);
        this.f1557l = (byte) -1;
        this.f1558m = -1;
        this.f1550d = abstractC0090l.f2400c;
    }

    @Override // R3.A
    public final AbstractC0080b a() {
        return n;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1557l;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        int i5 = this.f1551e;
        if ((i5 & 2) != 2) {
            this.f1557l = (byte) 0;
            return false;
        }
        if ((i5 & 4) == 4 && !this.f1553h.b()) {
            this.f1557l = (byte) 0;
            return false;
        }
        if ((this.f1551e & 16) == 16 && !this.f1555j.b()) {
            this.f1557l = (byte) 0;
            return false;
        }
        if (i()) {
            this.f1557l = (byte) 1;
            return true;
        }
        this.f1557l = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1558m;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1551e & 1) == 1 ? B1.j.b(1, this.f) : 0;
        if ((this.f1551e & 2) == 2) {
            iB += B1.j.b(2, this.f1552g);
        }
        if ((this.f1551e & 4) == 4) {
            iB += B1.j.d(3, this.f1553h);
        }
        if ((this.f1551e & 16) == 16) {
            iB += B1.j.d(4, this.f1555j);
        }
        if ((this.f1551e & 8) == 8) {
            iB += B1.j.b(5, this.f1554i);
        }
        if ((this.f1551e & 32) == 32) {
            iB += B1.j.b(6, this.f1556k);
        }
        int size = this.f1550d.size() + j() + iB;
        this.f1558m = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        Y y3 = new Y();
        Q q2 = Q.f1476v;
        y3.f1545i = q2;
        y3.f1547k = q2;
        return y3;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        Y y3 = new Y();
        Q q2 = Q.f1476v;
        y3.f1545i = q2;
        y3.f1547k = q2;
        y3.h(this);
        return y3;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        C0091m c0091mN = n();
        if ((this.f1551e & 1) == 1) {
            jVar.n(1, this.f);
        }
        if ((this.f1551e & 2) == 2) {
            jVar.n(2, this.f1552g);
        }
        if ((this.f1551e & 4) == 4) {
            jVar.p(3, this.f1553h);
        }
        if ((this.f1551e & 16) == 16) {
            jVar.p(4, this.f1555j);
        }
        if ((this.f1551e & 8) == 8) {
            jVar.n(5, this.f1554i);
        }
        if ((this.f1551e & 32) == 32) {
            jVar.n(6, this.f1556k);
        }
        c0091mN.d(200, jVar);
        jVar.s(this.f1550d);
    }

    public Z() {
        this.f1557l = (byte) -1;
        this.f1558m = -1;
        this.f1550d = AbstractC0083e.f2383c;
    }

    public Z(C0084f c0084f, C0087i c0087i) {
        this.f1557l = (byte) -1;
        this.f1558m = -1;
        boolean z4 = false;
        this.f = 0;
        this.f1552g = 0;
        Q q2 = Q.f1476v;
        this.f1553h = q2;
        this.f1554i = 0;
        this.f1555j = q2;
        this.f1556k = 0;
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        while (!z4) {
            try {
                try {
                    int iN = c0084f.n();
                    if (iN != 0) {
                        if (iN == 8) {
                            this.f1551e |= 1;
                            this.f = c0084f.k();
                        } else if (iN != 16) {
                            P pS = null;
                            if (iN == 26) {
                                if ((this.f1551e & 4) == 4) {
                                    Q q5 = this.f1553h;
                                    q5.getClass();
                                    pS = Q.s(q5);
                                }
                                Q q6 = (Q) c0084f.g(Q.f1477w, c0087i);
                                this.f1553h = q6;
                                if (pS != null) {
                                    pS.i(q6);
                                    this.f1553h = pS.g();
                                }
                                this.f1551e |= 4;
                            } else if (iN == 34) {
                                if ((this.f1551e & 16) == 16) {
                                    Q q7 = this.f1555j;
                                    q7.getClass();
                                    pS = Q.s(q7);
                                }
                                Q q8 = (Q) c0084f.g(Q.f1477w, c0087i);
                                this.f1555j = q8;
                                if (pS != null) {
                                    pS.i(q8);
                                    this.f1555j = pS.g();
                                }
                                this.f1551e |= 16;
                            } else if (iN == 40) {
                                this.f1551e |= 8;
                                this.f1554i = c0084f.k();
                            } else if (iN != 48) {
                                if (!o(c0084f, jVarJ, c0087i, iN)) {
                                }
                            } else {
                                this.f1551e |= 32;
                                this.f1556k = c0084f.k();
                            }
                        } else {
                            this.f1551e |= 2;
                            this.f1552g = c0084f.k();
                        }
                    }
                    z4 = true;
                } catch (C0098u e5) {
                    e5.f2416c = this;
                    throw e5;
                } catch (IOException e6) {
                    C0098u c0098u = new C0098u(e6.getMessage());
                    c0098u.f2416c = this;
                    throw c0098u;
                }
            } catch (Throwable th) {
                try {
                    jVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f1550d = c0082d.l();
                    throw th2;
                }
                this.f1550d = c0082d.l();
                m();
                throw th;
            }
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1550d = c0082d.l();
            throw th3;
        }
        this.f1550d = c0082d.l();
        m();
    }
}
