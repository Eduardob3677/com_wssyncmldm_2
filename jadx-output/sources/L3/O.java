package L3;

import R3.AbstractC0083e;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0082d;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import java.io.IOException;

/* loaded from: classes.dex */
public final class O extends AbstractC0095q {

    /* renamed from: j, reason: collision with root package name */
    public static final O f1455j;

    /* renamed from: k, reason: collision with root package name */
    public static final C0052a f1456k = new C0052a(17);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1457c;

    /* renamed from: d, reason: collision with root package name */
    public int f1458d;

    /* renamed from: e, reason: collision with root package name */
    public N f1459e;
    public Q f;

    /* renamed from: g, reason: collision with root package name */
    public int f1460g;

    /* renamed from: h, reason: collision with root package name */
    public byte f1461h;

    /* renamed from: i, reason: collision with root package name */
    public int f1462i;

    static {
        O o2 = new O();
        f1455j = o2;
        o2.f1459e = N.INV;
        o2.f = Q.f1476v;
        o2.f1460g = 0;
    }

    public O() {
        this.f1461h = (byte) -1;
        this.f1462i = -1;
        this.f1457c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1461h;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        if ((this.f1458d & 2) != 2 || this.f.b()) {
            this.f1461h = (byte) 1;
            return true;
        }
        this.f1461h = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1462i;
        if (i5 != -1) {
            return i5;
        }
        int iA = (this.f1458d & 1) == 1 ? B1.j.a(1, this.f1459e.f1454c) : 0;
        if ((this.f1458d & 2) == 2) {
            iA += B1.j.d(2, this.f);
        }
        if ((this.f1458d & 4) == 4) {
            iA += B1.j.b(3, this.f1460g);
        }
        int size = this.f1457c.size() + iA;
        this.f1462i = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return M.g();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        M mG = M.g();
        mG.h(this);
        return mG;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        if ((this.f1458d & 1) == 1) {
            jVar.m(1, this.f1459e.f1454c);
        }
        if ((this.f1458d & 2) == 2) {
            jVar.p(2, this.f);
        }
        if ((this.f1458d & 4) == 4) {
            jVar.n(3, this.f1460g);
        }
        jVar.s(this.f1457c);
    }

    public O(C0084f c0084f, C0087i c0087i) {
        this.f1461h = (byte) -1;
        this.f1462i = -1;
        N n = N.INV;
        this.f1459e = n;
        this.f = Q.f1476v;
        boolean z4 = false;
        this.f1460g = 0;
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        while (!z4) {
            try {
                try {
                    try {
                        int iN = c0084f.n();
                        if (iN != 0) {
                            P pS = null;
                            N n5 = null;
                            if (iN == 8) {
                                int iK = c0084f.k();
                                if (iK == 0) {
                                    n5 = N.IN;
                                } else if (iK == 1) {
                                    n5 = N.OUT;
                                } else if (iK == 2) {
                                    n5 = n;
                                } else if (iK == 3) {
                                    n5 = N.STAR;
                                }
                                if (n5 == null) {
                                    jVarJ.w(iN);
                                    jVarJ.w(iK);
                                } else {
                                    this.f1458d |= 1;
                                    this.f1459e = n5;
                                }
                            } else if (iN == 18) {
                                if ((this.f1458d & 2) == 2) {
                                    Q q2 = this.f;
                                    q2.getClass();
                                    pS = Q.s(q2);
                                }
                                Q q5 = (Q) c0084f.g(Q.f1477w, c0087i);
                                this.f = q5;
                                if (pS != null) {
                                    pS.i(q5);
                                    this.f = pS.g();
                                }
                                this.f1458d |= 2;
                            } else if (iN != 24) {
                                if (!c0084f.q(iN, jVarJ)) {
                                }
                            } else {
                                this.f1458d |= 4;
                                this.f1460g = c0084f.k();
                            }
                        }
                        z4 = true;
                    } catch (C0098u e5) {
                        e5.f2416c = this;
                        throw e5;
                    }
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
                    this.f1457c = c0082d.l();
                    throw th2;
                }
                this.f1457c = c0082d.l();
                throw th;
            }
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1457c = c0082d.l();
            throw th3;
        }
        this.f1457c = c0082d.l();
    }

    public O(AbstractC0089k abstractC0089k) {
        this.f1461h = (byte) -1;
        this.f1462i = -1;
        this.f1457c = abstractC0089k.f2400c;
    }
}
