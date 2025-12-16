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

/* renamed from: L3.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0058g extends AbstractC0095q {

    /* renamed from: i, reason: collision with root package name */
    public static final C0058g f1639i;

    /* renamed from: j, reason: collision with root package name */
    public static final C0052a f1640j = new C0052a(0);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1641c;

    /* renamed from: d, reason: collision with root package name */
    public int f1642d;

    /* renamed from: e, reason: collision with root package name */
    public int f1643e;
    public List f;

    /* renamed from: g, reason: collision with root package name */
    public byte f1644g;

    /* renamed from: h, reason: collision with root package name */
    public int f1645h;

    static {
        C0058g c0058g = new C0058g();
        f1639i = c0058g;
        c0058g.f1643e = 0;
        c0058g.f = Collections.emptyList();
    }

    public C0058g() {
        this.f1644g = (byte) -1;
        this.f1645h = -1;
        this.f1641c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1644g;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        if ((this.f1642d & 1) != 1) {
            this.f1644g = (byte) 0;
            return false;
        }
        for (int i5 = 0; i5 < this.f.size(); i5++) {
            if (!((C0056e) this.f.get(i5)).b()) {
                this.f1644g = (byte) 0;
                return false;
            }
        }
        this.f1644g = (byte) 1;
        return true;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1645h;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1642d & 1) == 1 ? B1.j.b(1, this.f1643e) : 0;
        for (int i6 = 0; i6 < this.f.size(); i6++) {
            iB += B1.j.d(2, (AbstractC0080b) this.f.get(i6));
        }
        int size = this.f1641c.size() + iB;
        this.f1645h = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        C0057f c0057f = new C0057f(0);
        c0057f.f = Collections.emptyList();
        return c0057f;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        C0057f c0057f = new C0057f(0);
        c0057f.f = Collections.emptyList();
        c0057f.k(this);
        return c0057f;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        if ((this.f1642d & 1) == 1) {
            jVar.n(1, this.f1643e);
        }
        for (int i5 = 0; i5 < this.f.size(); i5++) {
            jVar.p(2, (AbstractC0080b) this.f.get(i5));
        }
        jVar.s(this.f1641c);
    }

    public C0058g(C0084f c0084f, C0087i c0087i) {
        this.f1644g = (byte) -1;
        this.f1645h = -1;
        boolean z4 = false;
        this.f1643e = 0;
        this.f = Collections.emptyList();
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        char c2 = 0;
        while (!z4) {
            try {
                try {
                    try {
                        int iN = c0084f.n();
                        if (iN != 0) {
                            if (iN == 8) {
                                this.f1642d |= 1;
                                this.f1643e = c0084f.k();
                            } else if (iN != 18) {
                                if (!c0084f.q(iN, jVarJ)) {
                                }
                            } else {
                                if ((c2 & 2) != 2) {
                                    this.f = new ArrayList();
                                    c2 = 2;
                                }
                                this.f.add(c0084f.g(C0056e.f1623j, c0087i));
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
                if ((c2 & 2) == 2) {
                    this.f = Collections.unmodifiableList(this.f);
                }
                try {
                    jVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f1641c = c0082d.l();
                    throw th2;
                }
                this.f1641c = c0082d.l();
                throw th;
            }
        }
        if ((c2 & 2) == 2) {
            this.f = Collections.unmodifiableList(this.f);
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1641c = c0082d.l();
            throw th3;
        }
        this.f1641c = c0082d.l();
    }

    public C0058g(AbstractC0089k abstractC0089k) {
        this.f1644g = (byte) -1;
        this.f1645h = -1;
        this.f1641c = abstractC0089k.f2400c;
    }
}
