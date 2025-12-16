package L3;

import R3.AbstractC0080b;
import R3.AbstractC0083e;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0082d;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class X extends AbstractC0095q {

    /* renamed from: i, reason: collision with root package name */
    public static final X f1536i;

    /* renamed from: j, reason: collision with root package name */
    public static final C0052a f1537j = new C0052a(20);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1538c;

    /* renamed from: d, reason: collision with root package name */
    public int f1539d;

    /* renamed from: e, reason: collision with root package name */
    public List f1540e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public byte f1541g;

    /* renamed from: h, reason: collision with root package name */
    public int f1542h;

    static {
        X x4 = new X();
        f1536i = x4;
        x4.f1540e = Collections.emptyList();
        x4.f = -1;
    }

    public X() {
        this.f1541g = (byte) -1;
        this.f1542h = -1;
        this.f1538c = AbstractC0083e.f2383c;
    }

    public static C0057f i(X x4) {
        C0057f c0057fI = C0057f.i();
        c0057fI.l(x4);
        return c0057fI;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1541g;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        for (int i5 = 0; i5 < this.f1540e.size(); i5++) {
            if (!((Q) this.f1540e.get(i5)).b()) {
                this.f1541g = (byte) 0;
                return false;
            }
        }
        this.f1541g = (byte) 1;
        return true;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1542h;
        if (i5 != -1) {
            return i5;
        }
        int iB = 0;
        for (int i6 = 0; i6 < this.f1540e.size(); i6++) {
            iB += B1.j.d(1, (AbstractC0080b) this.f1540e.get(i6));
        }
        if ((this.f1539d & 1) == 1) {
            iB += B1.j.b(2, this.f);
        }
        int size = this.f1538c.size() + iB;
        this.f1542h = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return C0057f.i();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        return i(this);
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        for (int i5 = 0; i5 < this.f1540e.size(); i5++) {
            jVar.p(1, (AbstractC0080b) this.f1540e.get(i5));
        }
        if ((this.f1539d & 1) == 1) {
            jVar.n(2, this.f);
        }
        jVar.s(this.f1538c);
    }

    public X(C0084f c0084f, C0087i c0087i) {
        this.f1541g = (byte) -1;
        this.f1542h = -1;
        this.f1540e = Collections.emptyList();
        this.f = -1;
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        boolean z4 = false;
        boolean z5 = false;
        while (!z4) {
            try {
                try {
                    try {
                        int iN = c0084f.n();
                        if (iN != 0) {
                            if (iN == 10) {
                                if (!(z5 & true)) {
                                    this.f1540e = new ArrayList();
                                    z5 = true;
                                }
                                this.f1540e.add(c0084f.g(Q.f1477w, c0087i));
                            } else if (iN != 16) {
                                if (!c0084f.q(iN, jVarJ)) {
                                }
                            } else {
                                this.f1539d |= 1;
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
                if (z5 & true) {
                    this.f1540e = Collections.unmodifiableList(this.f1540e);
                }
                try {
                    jVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f1538c = c0082d.l();
                    throw th2;
                }
                this.f1538c = c0082d.l();
                throw th;
            }
        }
        if (z5 & true) {
            this.f1540e = Collections.unmodifiableList(this.f1540e);
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1538c = c0082d.l();
            throw th3;
        }
        this.f1538c = c0082d.l();
    }

    public X(AbstractC0089k abstractC0089k) {
        this.f1541g = (byte) -1;
        this.f1542h = -1;
        this.f1538c = abstractC0089k.f2400c;
    }
}
