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

/* loaded from: classes.dex */
public final class W extends AbstractC0092n {

    /* renamed from: o, reason: collision with root package name */
    public static final W f1525o;

    /* renamed from: p, reason: collision with root package name */
    public static final C0052a f1526p = new C0052a(19);

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0083e f1527d;

    /* renamed from: e, reason: collision with root package name */
    public int f1528e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1529g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1530h;

    /* renamed from: i, reason: collision with root package name */
    public V f1531i;

    /* renamed from: j, reason: collision with root package name */
    public List f1532j;

    /* renamed from: k, reason: collision with root package name */
    public List f1533k;

    /* renamed from: l, reason: collision with root package name */
    public int f1534l;

    /* renamed from: m, reason: collision with root package name */
    public byte f1535m;
    public int n;

    static {
        W w2 = new W();
        f1525o = w2;
        w2.f = 0;
        w2.f1529g = 0;
        w2.f1530h = false;
        w2.f1531i = V.INV;
        w2.f1532j = Collections.emptyList();
        w2.f1533k = Collections.emptyList();
    }

    public W(AbstractC0090l abstractC0090l) {
        super(abstractC0090l);
        this.f1534l = -1;
        this.f1535m = (byte) -1;
        this.n = -1;
        this.f1527d = abstractC0090l.f2400c;
    }

    @Override // R3.A
    public final AbstractC0080b a() {
        return f1525o;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1535m;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        int i5 = this.f1528e;
        if ((i5 & 1) != 1) {
            this.f1535m = (byte) 0;
            return false;
        }
        if ((i5 & 2) != 2) {
            this.f1535m = (byte) 0;
            return false;
        }
        for (int i6 = 0; i6 < this.f1532j.size(); i6++) {
            if (!((Q) this.f1532j.get(i6)).b()) {
                this.f1535m = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.f1535m = (byte) 1;
            return true;
        }
        this.f1535m = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.n;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1528e & 1) == 1 ? B1.j.b(1, this.f) : 0;
        if ((this.f1528e & 2) == 2) {
            iB += B1.j.b(2, this.f1529g);
        }
        if ((this.f1528e & 4) == 4) {
            iB += B1.j.h(3) + 1;
        }
        if ((this.f1528e & 8) == 8) {
            iB += B1.j.a(4, this.f1531i.f1524c);
        }
        for (int i6 = 0; i6 < this.f1532j.size(); i6++) {
            iB += B1.j.d(5, (AbstractC0080b) this.f1532j.get(i6));
        }
        int iC = 0;
        for (int i7 = 0; i7 < this.f1533k.size(); i7++) {
            iC += B1.j.c(((Integer) this.f1533k.get(i7)).intValue());
        }
        int iC2 = iB + iC;
        if (!this.f1533k.isEmpty()) {
            iC2 = iC2 + 1 + B1.j.c(iC);
        }
        this.f1534l = iC;
        int size = this.f1527d.size() + j() + iC2;
        this.n = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return U.h();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        U uH = U.h();
        uH.i(this);
        return uH;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        C0091m c0091m = new C0091m(this);
        if ((this.f1528e & 1) == 1) {
            jVar.n(1, this.f);
        }
        if ((this.f1528e & 2) == 2) {
            jVar.n(2, this.f1529g);
        }
        if ((this.f1528e & 4) == 4) {
            boolean z4 = this.f1530h;
            jVar.y(3, 0);
            jVar.r(z4 ? 1 : 0);
        }
        if ((this.f1528e & 8) == 8) {
            jVar.m(4, this.f1531i.f1524c);
        }
        for (int i5 = 0; i5 < this.f1532j.size(); i5++) {
            jVar.p(5, (AbstractC0080b) this.f1532j.get(i5));
        }
        if (this.f1533k.size() > 0) {
            jVar.w(50);
            jVar.w(this.f1534l);
        }
        for (int i6 = 0; i6 < this.f1533k.size(); i6++) {
            jVar.o(((Integer) this.f1533k.get(i6)).intValue());
        }
        c0091m.d(1000, jVar);
        jVar.s(this.f1527d);
    }

    public W() {
        this.f1534l = -1;
        this.f1535m = (byte) -1;
        this.n = -1;
        this.f1527d = AbstractC0083e.f2383c;
    }

    public W(C0084f c0084f, C0087i c0087i) {
        V v4;
        this.f1534l = -1;
        this.f1535m = (byte) -1;
        this.n = -1;
        this.f = 0;
        this.f1529g = 0;
        this.f1530h = false;
        V v5 = V.INV;
        this.f1531i = v5;
        this.f1532j = Collections.emptyList();
        this.f1533k = Collections.emptyList();
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
                            this.f1528e |= 1;
                            this.f = c0084f.k();
                        } else if (iN == 16) {
                            this.f1528e |= 2;
                            this.f1529g = c0084f.k();
                        } else if (iN == 24) {
                            this.f1528e |= 4;
                            this.f1530h = c0084f.l() != 0;
                        } else if (iN == 32) {
                            int iK = c0084f.k();
                            if (iK == 0) {
                                v4 = V.IN;
                            } else if (iK != 1) {
                                v4 = iK != 2 ? null : v5;
                            } else {
                                v4 = V.OUT;
                            }
                            if (v4 == null) {
                                jVarJ.w(iN);
                                jVarJ.w(iK);
                            } else {
                                this.f1528e |= 8;
                                this.f1531i = v4;
                            }
                        } else if (iN == 42) {
                            if ((i5 & 16) != 16) {
                                this.f1532j = new ArrayList();
                                i5 |= 16;
                            }
                            this.f1532j.add(c0084f.g(Q.f1477w, c0087i));
                        } else if (iN == 48) {
                            if ((i5 & 32) != 32) {
                                this.f1533k = new ArrayList();
                                i5 |= 32;
                            }
                            this.f1533k.add(Integer.valueOf(c0084f.k()));
                        } else if (iN != 50) {
                            if (!o(c0084f, jVarJ, c0087i, iN)) {
                            }
                        } else {
                            int iD = c0084f.d(c0084f.k());
                            if ((i5 & 32) != 32 && c0084f.b() > 0) {
                                this.f1533k = new ArrayList();
                                i5 |= 32;
                            }
                            while (c0084f.b() > 0) {
                                this.f1533k.add(Integer.valueOf(c0084f.k()));
                            }
                            c0084f.c(iD);
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
                if ((i5 & 16) == 16) {
                    this.f1532j = Collections.unmodifiableList(this.f1532j);
                }
                if ((i5 & 32) == 32) {
                    this.f1533k = Collections.unmodifiableList(this.f1533k);
                }
                try {
                    jVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f1527d = c0082d.l();
                    throw th2;
                }
                this.f1527d = c0082d.l();
                m();
                throw th;
            }
        }
        if ((i5 & 16) == 16) {
            this.f1532j = Collections.unmodifiableList(this.f1532j);
        }
        if ((i5 & 32) == 32) {
            this.f1533k = Collections.unmodifiableList(this.f1533k);
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1527d = c0082d.l();
            throw th3;
        }
        this.f1527d = c0082d.l();
        m();
    }
}
