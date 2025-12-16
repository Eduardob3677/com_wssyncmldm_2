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

/* renamed from: L3.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0065n extends AbstractC0095q {

    /* renamed from: g, reason: collision with root package name */
    public static final C0065n f1721g;

    /* renamed from: h, reason: collision with root package name */
    public static final C0052a f1722h = new C0052a(5);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1723c;

    /* renamed from: d, reason: collision with root package name */
    public List f1724d;

    /* renamed from: e, reason: collision with root package name */
    public byte f1725e;
    public int f;

    static {
        C0065n c0065n = new C0065n();
        f1721g = c0065n;
        c0065n.f1724d = Collections.emptyList();
    }

    public C0065n() {
        this.f1725e = (byte) -1;
        this.f = -1;
        this.f1723c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1725e;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        for (int i5 = 0; i5 < this.f1724d.size(); i5++) {
            if (!((r) this.f1724d.get(i5)).b()) {
                this.f1725e = (byte) 0;
                return false;
            }
        }
        this.f1725e = (byte) 1;
        return true;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f;
        if (i5 != -1) {
            return i5;
        }
        int iD = 0;
        for (int i6 = 0; i6 < this.f1724d.size(); i6++) {
            iD += B1.j.d(1, (AbstractC0080b) this.f1724d.get(i6));
        }
        int size = this.f1723c.size() + iD;
        this.f = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        C0064m c0064m = new C0064m(0);
        c0064m.f = Collections.emptyList();
        return c0064m;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        C0064m c0064m = new C0064m(0);
        c0064m.f = Collections.emptyList();
        c0064m.j(this);
        return c0064m;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        for (int i5 = 0; i5 < this.f1724d.size(); i5++) {
            jVar.p(1, (AbstractC0080b) this.f1724d.get(i5));
        }
        jVar.s(this.f1723c);
    }

    public C0065n(C0084f c0084f, C0087i c0087i) {
        this.f1725e = (byte) -1;
        this.f = -1;
        this.f1724d = Collections.emptyList();
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        boolean z4 = false;
        boolean z5 = false;
        while (!z4) {
            try {
                try {
                    int iN = c0084f.n();
                    if (iN != 0) {
                        if (iN != 10) {
                            if (!c0084f.q(iN, jVarJ)) {
                            }
                        } else {
                            if (!(z5 & true)) {
                                this.f1724d = new ArrayList();
                                z5 = true;
                            }
                            this.f1724d.add(c0084f.g(r.f1739l, c0087i));
                        }
                    }
                    z4 = true;
                } catch (Throwable th) {
                    if (z5 & true) {
                        this.f1724d = Collections.unmodifiableList(this.f1724d);
                    }
                    try {
                        jVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f1723c = c0082d.l();
                        throw th2;
                    }
                    this.f1723c = c0082d.l();
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
            this.f1724d = Collections.unmodifiableList(this.f1724d);
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1723c = c0082d.l();
            throw th3;
        }
        this.f1723c = c0082d.l();
    }

    public C0065n(AbstractC0089k abstractC0089k) {
        this.f1725e = (byte) -1;
        this.f = -1;
        this.f1723c = abstractC0089k.f2400c;
    }
}
