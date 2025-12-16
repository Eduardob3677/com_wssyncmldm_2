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

/* renamed from: L3.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0063l extends AbstractC0092n {

    /* renamed from: k, reason: collision with root package name */
    public static final C0063l f1711k;

    /* renamed from: l, reason: collision with root package name */
    public static final C0052a f1712l = new C0052a(4);

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0083e f1713d;

    /* renamed from: e, reason: collision with root package name */
    public int f1714e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public List f1715g;

    /* renamed from: h, reason: collision with root package name */
    public List f1716h;

    /* renamed from: i, reason: collision with root package name */
    public byte f1717i;

    /* renamed from: j, reason: collision with root package name */
    public int f1718j;

    static {
        C0063l c0063l = new C0063l();
        f1711k = c0063l;
        c0063l.f = 6;
        c0063l.f1715g = Collections.emptyList();
        c0063l.f1716h = Collections.emptyList();
    }

    public C0063l(AbstractC0090l abstractC0090l) {
        super(abstractC0090l);
        this.f1717i = (byte) -1;
        this.f1718j = -1;
        this.f1713d = abstractC0090l.f2400c;
    }

    @Override // R3.A
    public final AbstractC0080b a() {
        return f1711k;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1717i;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        for (int i5 = 0; i5 < this.f1715g.size(); i5++) {
            if (!((Z) this.f1715g.get(i5)).b()) {
                this.f1717i = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.f1717i = (byte) 1;
            return true;
        }
        this.f1717i = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1718j;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1714e & 1) == 1 ? B1.j.b(1, this.f) : 0;
        for (int i6 = 0; i6 < this.f1715g.size(); i6++) {
            iB += B1.j.d(2, (AbstractC0080b) this.f1715g.get(i6));
        }
        int iC = 0;
        for (int i7 = 0; i7 < this.f1716h.size(); i7++) {
            iC += B1.j.c(((Integer) this.f1716h.get(i7)).intValue());
        }
        int size = this.f1713d.size() + j() + (this.f1716h.size() * 2) + iB + iC;
        this.f1718j = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return C0062k.h();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        C0062k c0062kH = C0062k.h();
        c0062kH.i(this);
        return c0062kH;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        C0091m c0091mN = n();
        if ((this.f1714e & 1) == 1) {
            jVar.n(1, this.f);
        }
        for (int i5 = 0; i5 < this.f1715g.size(); i5++) {
            jVar.p(2, (AbstractC0080b) this.f1715g.get(i5));
        }
        for (int i6 = 0; i6 < this.f1716h.size(); i6++) {
            jVar.n(31, ((Integer) this.f1716h.get(i6)).intValue());
        }
        c0091mN.d(19000, jVar);
        jVar.s(this.f1713d);
    }

    public C0063l() {
        this.f1717i = (byte) -1;
        this.f1718j = -1;
        this.f1713d = AbstractC0083e.f2383c;
    }

    public C0063l(C0084f c0084f, C0087i c0087i) {
        this.f1717i = (byte) -1;
        this.f1718j = -1;
        this.f = 6;
        this.f1715g = Collections.emptyList();
        this.f1716h = Collections.emptyList();
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        boolean z4 = false;
        int i5 = 0;
        while (!z4) {
            try {
                try {
                    int iN = c0084f.n();
                    if (iN != 0) {
                        if (iN == 8) {
                            this.f1714e |= 1;
                            this.f = c0084f.k();
                        } else if (iN == 18) {
                            if ((i5 & 2) != 2) {
                                this.f1715g = new ArrayList();
                                i5 |= 2;
                            }
                            this.f1715g.add(c0084f.g(Z.f1549o, c0087i));
                        } else if (iN == 248) {
                            if ((i5 & 4) != 4) {
                                this.f1716h = new ArrayList();
                                i5 |= 4;
                            }
                            this.f1716h.add(Integer.valueOf(c0084f.k()));
                        } else if (iN != 250) {
                            if (!o(c0084f, jVarJ, c0087i, iN)) {
                            }
                        } else {
                            int iD = c0084f.d(c0084f.k());
                            if ((i5 & 4) != 4 && c0084f.b() > 0) {
                                this.f1716h = new ArrayList();
                                i5 |= 4;
                            }
                            while (c0084f.b() > 0) {
                                this.f1716h.add(Integer.valueOf(c0084f.k()));
                            }
                            c0084f.c(iD);
                        }
                    }
                    z4 = true;
                } catch (Throwable th) {
                    if ((i5 & 2) == 2) {
                        this.f1715g = Collections.unmodifiableList(this.f1715g);
                    }
                    if ((i5 & 4) == 4) {
                        this.f1716h = Collections.unmodifiableList(this.f1716h);
                    }
                    try {
                        jVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f1713d = c0082d.l();
                        throw th2;
                    }
                    this.f1713d = c0082d.l();
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
        if ((i5 & 2) == 2) {
            this.f1715g = Collections.unmodifiableList(this.f1715g);
        }
        if ((i5 & 4) == 4) {
            this.f1716h = Collections.unmodifiableList(this.f1716h);
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1713d = c0082d.l();
            throw th3;
        }
        this.f1713d = c0082d.l();
        m();
    }
}
