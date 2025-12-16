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
public final class K extends AbstractC0095q {

    /* renamed from: g, reason: collision with root package name */
    public static final K f1437g;

    /* renamed from: h, reason: collision with root package name */
    public static final C0052a f1438h = new C0052a(13);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1439c;

    /* renamed from: d, reason: collision with root package name */
    public List f1440d;

    /* renamed from: e, reason: collision with root package name */
    public byte f1441e;
    public int f;

    static {
        K k5 = new K();
        f1437g = k5;
        k5.f1440d = Collections.emptyList();
    }

    public K() {
        this.f1441e = (byte) -1;
        this.f = -1;
        this.f1439c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1441e;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        for (int i5 = 0; i5 < this.f1440d.size(); i5++) {
            if (!((J) this.f1440d.get(i5)).b()) {
                this.f1441e = (byte) 0;
                return false;
            }
        }
        this.f1441e = (byte) 1;
        return true;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f;
        if (i5 != -1) {
            return i5;
        }
        int iD = 0;
        for (int i6 = 0; i6 < this.f1440d.size(); i6++) {
            iD += B1.j.d(1, (AbstractC0080b) this.f1440d.get(i6));
        }
        int size = this.f1439c.size() + iD;
        this.f = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        C0064m c0064m = new C0064m(1);
        c0064m.f = Collections.emptyList();
        return c0064m;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        C0064m c0064m = new C0064m(1);
        c0064m.f = Collections.emptyList();
        c0064m.k(this);
        return c0064m;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        for (int i5 = 0; i5 < this.f1440d.size(); i5++) {
            jVar.p(1, (AbstractC0080b) this.f1440d.get(i5));
        }
        jVar.s(this.f1439c);
    }

    public K(C0084f c0084f, C0087i c0087i) {
        this.f1441e = (byte) -1;
        this.f = -1;
        this.f1440d = Collections.emptyList();
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
                                this.f1440d = new ArrayList();
                                z5 = true;
                            }
                            this.f1440d.add(c0084f.g(J.f1430k, c0087i));
                        }
                    }
                    z4 = true;
                } catch (Throwable th) {
                    if (z5 & true) {
                        this.f1440d = Collections.unmodifiableList(this.f1440d);
                    }
                    try {
                        jVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f1439c = c0082d.l();
                        throw th2;
                    }
                    this.f1439c = c0082d.l();
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
            this.f1440d = Collections.unmodifiableList(this.f1440d);
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1439c = c0082d.l();
            throw th3;
        }
        this.f1439c = c0082d.l();
    }

    public K(AbstractC0089k abstractC0089k) {
        this.f1441e = (byte) -1;
        this.f = -1;
        this.f1439c = abstractC0089k.f2400c;
    }
}
