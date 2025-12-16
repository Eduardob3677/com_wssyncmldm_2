package L3;

import R3.AbstractC0083e;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0082d;
import R3.C0084f;
import R3.C0098u;
import java.io.IOException;

/* loaded from: classes.dex */
public final class L extends AbstractC0095q {

    /* renamed from: g, reason: collision with root package name */
    public static final L f1442g;

    /* renamed from: h, reason: collision with root package name */
    public static final C0052a f1443h = new C0052a(15);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1444c;

    /* renamed from: d, reason: collision with root package name */
    public R3.x f1445d;

    /* renamed from: e, reason: collision with root package name */
    public byte f1446e;
    public int f;

    static {
        L l5 = new L();
        f1442g = l5;
        l5.f1445d = R3.w.f2419d;
    }

    public L() {
        this.f1446e = (byte) -1;
        this.f = -1;
        this.f1444c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1446e;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        this.f1446e = (byte) 1;
        return true;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f;
        if (i5 != -1) {
            return i5;
        }
        int size = 0;
        for (int i6 = 0; i6 < this.f1445d.size(); i6++) {
            AbstractC0083e abstractC0083eJ = this.f1445d.j(i6);
            size += abstractC0083eJ.size() + B1.j.f(abstractC0083eJ.size());
        }
        int size2 = this.f1444c.size() + this.f1445d.size() + size;
        this.f = size2;
        return size2;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        C0064m c0064m = new C0064m(3);
        c0064m.f = R3.w.f2419d;
        return c0064m;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        C0064m c0064m = new C0064m(3);
        c0064m.f = R3.w.f2419d;
        c0064m.l(this);
        return c0064m;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        for (int i5 = 0; i5 < this.f1445d.size(); i5++) {
            AbstractC0083e abstractC0083eJ = this.f1445d.j(i5);
            jVar.y(1, 2);
            jVar.w(abstractC0083eJ.size());
            jVar.s(abstractC0083eJ);
        }
        jVar.s(this.f1444c);
    }

    public L(C0084f c0084f) {
        this.f1446e = (byte) -1;
        this.f = -1;
        this.f1445d = R3.w.f2419d;
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
                            R3.z zVarE = c0084f.e();
                            if (!(z5 & true)) {
                                this.f1445d = new R3.w();
                                z5 = true;
                            }
                            this.f1445d.i(zVarE);
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
                if (z5 & true) {
                    this.f1445d = this.f1445d.c();
                }
                try {
                    jVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f1444c = c0082d.l();
                    throw th2;
                }
                this.f1444c = c0082d.l();
                throw th;
            }
        }
        if (z5 & true) {
            this.f1445d = this.f1445d.c();
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1444c = c0082d.l();
            throw th3;
        }
        this.f1444c = c0082d.l();
    }

    public L(AbstractC0089k abstractC0089k) {
        this.f1446e = (byte) -1;
        this.f = -1;
        this.f1444c = abstractC0089k.f2400c;
    }
}
