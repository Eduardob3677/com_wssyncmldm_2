package L3;

import R3.AbstractC0083e;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0082d;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import java.io.IOException;

/* renamed from: L3.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0056e extends AbstractC0095q {

    /* renamed from: i, reason: collision with root package name */
    public static final C0056e f1622i;

    /* renamed from: j, reason: collision with root package name */
    public static final C0052a f1623j = new C0052a(1);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1624c;

    /* renamed from: d, reason: collision with root package name */
    public int f1625d;

    /* renamed from: e, reason: collision with root package name */
    public int f1626e;
    public C0055d f;

    /* renamed from: g, reason: collision with root package name */
    public byte f1627g;

    /* renamed from: h, reason: collision with root package name */
    public int f1628h;

    static {
        C0056e c0056e = new C0056e();
        f1622i = c0056e;
        c0056e.f1626e = 0;
        c0056e.f = C0055d.f1597r;
    }

    public C0056e() {
        this.f1627g = (byte) -1;
        this.f1628h = -1;
        this.f1624c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1627g;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        int i5 = this.f1625d;
        if ((i5 & 1) != 1) {
            this.f1627g = (byte) 0;
            return false;
        }
        if ((i5 & 2) != 2) {
            this.f1627g = (byte) 0;
            return false;
        }
        if (this.f.b()) {
            this.f1627g = (byte) 1;
            return true;
        }
        this.f1627g = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1628h;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1625d & 1) == 1 ? B1.j.b(1, this.f1626e) : 0;
        if ((this.f1625d & 2) == 2) {
            iB += B1.j.d(2, this.f);
        }
        int size = this.f1624c.size() + iB;
        this.f1628h = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        C0057f c0057f = new C0057f(2);
        c0057f.f = C0055d.f1597r;
        return c0057f;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        C0057f c0057f = new C0057f(2);
        c0057f.f = C0055d.f1597r;
        c0057f.j(this);
        return c0057f;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        if ((this.f1625d & 1) == 1) {
            jVar.n(1, this.f1626e);
        }
        if ((this.f1625d & 2) == 2) {
            jVar.p(2, this.f);
        }
        jVar.s(this.f1624c);
    }

    public C0056e(C0084f c0084f, C0087i c0087i) {
        C0053b c0053bG;
        this.f1627g = (byte) -1;
        this.f1628h = -1;
        boolean z4 = false;
        this.f1626e = 0;
        this.f = C0055d.f1597r;
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        while (!z4) {
            try {
                try {
                    try {
                        int iN = c0084f.n();
                        if (iN != 0) {
                            if (iN == 8) {
                                this.f1625d |= 1;
                                this.f1626e = c0084f.k();
                            } else if (iN != 18) {
                                if (!c0084f.q(iN, jVarJ)) {
                                }
                            } else {
                                if ((this.f1625d & 2) == 2) {
                                    C0055d c0055d = this.f;
                                    c0055d.getClass();
                                    c0053bG = C0053b.g();
                                    c0053bG.h(c0055d);
                                } else {
                                    c0053bG = null;
                                }
                                C0055d c0055d2 = (C0055d) c0084f.g(C0055d.f1598s, c0087i);
                                this.f = c0055d2;
                                if (c0053bG != null) {
                                    c0053bG.h(c0055d2);
                                    this.f = c0053bG.f();
                                }
                                this.f1625d |= 2;
                            }
                        }
                        z4 = true;
                    } catch (IOException e5) {
                        C0098u c0098u = new C0098u(e5.getMessage());
                        c0098u.f2416c = this;
                        throw c0098u;
                    }
                } catch (C0098u e6) {
                    e6.f2416c = this;
                    throw e6;
                }
            } catch (Throwable th) {
                try {
                    jVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f1624c = c0082d.l();
                    throw th2;
                }
                this.f1624c = c0082d.l();
                throw th;
            }
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1624c = c0082d.l();
            throw th3;
        }
        this.f1624c = c0082d.l();
    }

    public C0056e(AbstractC0089k abstractC0089k) {
        this.f1627g = (byte) -1;
        this.f1628h = -1;
        this.f1624c = abstractC0089k.f2400c;
    }
}
