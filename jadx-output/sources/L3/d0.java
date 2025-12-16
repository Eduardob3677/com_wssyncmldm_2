package L3;

import R3.AbstractC0083e;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0082d;
import R3.C0084f;
import R3.C0098u;
import java.io.IOException;

/* loaded from: classes.dex */
public final class d0 extends AbstractC0095q {

    /* renamed from: m, reason: collision with root package name */
    public static final d0 f1612m;
    public static final C0052a n = new C0052a(22);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1613c;

    /* renamed from: d, reason: collision with root package name */
    public int f1614d;

    /* renamed from: e, reason: collision with root package name */
    public int f1615e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public b0 f1616g;

    /* renamed from: h, reason: collision with root package name */
    public int f1617h;

    /* renamed from: i, reason: collision with root package name */
    public int f1618i;

    /* renamed from: j, reason: collision with root package name */
    public c0 f1619j;

    /* renamed from: k, reason: collision with root package name */
    public byte f1620k;

    /* renamed from: l, reason: collision with root package name */
    public int f1621l;

    static {
        d0 d0Var = new d0();
        f1612m = d0Var;
        d0Var.f1615e = 0;
        d0Var.f = 0;
        d0Var.f1616g = b0.ERROR;
        d0Var.f1617h = 0;
        d0Var.f1618i = 0;
        d0Var.f1619j = c0.LANGUAGE_VERSION;
    }

    public d0() {
        this.f1620k = (byte) -1;
        this.f1621l = -1;
        this.f1613c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1620k;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        this.f1620k = (byte) 1;
        return true;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1621l;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1614d & 1) == 1 ? B1.j.b(1, this.f1615e) : 0;
        if ((this.f1614d & 2) == 2) {
            iB += B1.j.b(2, this.f);
        }
        if ((this.f1614d & 4) == 4) {
            iB += B1.j.a(3, this.f1616g.f1579c);
        }
        if ((this.f1614d & 8) == 8) {
            iB += B1.j.b(4, this.f1617h);
        }
        if ((this.f1614d & 16) == 16) {
            iB += B1.j.b(5, this.f1618i);
        }
        if ((this.f1614d & 32) == 32) {
            iB += B1.j.a(6, this.f1619j.f1596c);
        }
        int size = this.f1613c.size() + iB;
        this.f1621l = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return a0.g();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        a0 a0VarG = a0.g();
        a0VarG.h(this);
        return a0VarG;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        if ((this.f1614d & 1) == 1) {
            jVar.n(1, this.f1615e);
        }
        if ((this.f1614d & 2) == 2) {
            jVar.n(2, this.f);
        }
        if ((this.f1614d & 4) == 4) {
            jVar.m(3, this.f1616g.f1579c);
        }
        if ((this.f1614d & 8) == 8) {
            jVar.n(4, this.f1617h);
        }
        if ((this.f1614d & 16) == 16) {
            jVar.n(5, this.f1618i);
        }
        if ((this.f1614d & 32) == 32) {
            jVar.m(6, this.f1619j.f1596c);
        }
        jVar.s(this.f1613c);
    }

    public d0(C0084f c0084f) {
        this.f1620k = (byte) -1;
        this.f1621l = -1;
        boolean z4 = false;
        this.f1615e = 0;
        this.f = 0;
        b0 b0Var = b0.ERROR;
        this.f1616g = b0Var;
        this.f1617h = 0;
        this.f1618i = 0;
        c0 c0Var = c0.LANGUAGE_VERSION;
        this.f1619j = c0Var;
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        while (!z4) {
            try {
                try {
                    try {
                        int iN = c0084f.n();
                        if (iN != 0) {
                            if (iN == 8) {
                                this.f1614d |= 1;
                                this.f1615e = c0084f.k();
                            } else if (iN != 16) {
                                c0 c0Var2 = null;
                                b0 b0Var2 = null;
                                if (iN == 24) {
                                    int iK = c0084f.k();
                                    if (iK == 0) {
                                        b0Var2 = b0.WARNING;
                                    } else if (iK == 1) {
                                        b0Var2 = b0Var;
                                    } else if (iK == 2) {
                                        b0Var2 = b0.HIDDEN;
                                    }
                                    if (b0Var2 == null) {
                                        jVarJ.w(iN);
                                        jVarJ.w(iK);
                                    } else {
                                        this.f1614d |= 4;
                                        this.f1616g = b0Var2;
                                    }
                                } else if (iN == 32) {
                                    this.f1614d |= 8;
                                    this.f1617h = c0084f.k();
                                } else if (iN == 40) {
                                    this.f1614d |= 16;
                                    this.f1618i = c0084f.k();
                                } else if (iN != 48) {
                                    if (!c0084f.q(iN, jVarJ)) {
                                    }
                                } else {
                                    int iK2 = c0084f.k();
                                    if (iK2 == 0) {
                                        c0Var2 = c0Var;
                                    } else if (iK2 == 1) {
                                        c0Var2 = c0.COMPILER_VERSION;
                                    } else if (iK2 == 2) {
                                        c0Var2 = c0.API_VERSION;
                                    }
                                    if (c0Var2 == null) {
                                        jVarJ.w(iN);
                                        jVarJ.w(iK2);
                                    } else {
                                        this.f1614d |= 32;
                                        this.f1619j = c0Var2;
                                    }
                                }
                            } else {
                                this.f1614d |= 2;
                                this.f = c0084f.k();
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
                    this.f1613c = c0082d.l();
                    throw th2;
                }
                this.f1613c = c0082d.l();
                throw th;
            }
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1613c = c0082d.l();
            throw th3;
        }
        this.f1613c = c0082d.l();
    }

    public d0(AbstractC0089k abstractC0089k) {
        this.f1620k = (byte) -1;
        this.f1621l = -1;
        this.f1613c = abstractC0089k.f2400c;
    }
}
