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
public final class E extends AbstractC0092n {

    /* renamed from: l, reason: collision with root package name */
    public static final E f1381l;

    /* renamed from: m, reason: collision with root package name */
    public static final C0052a f1382m = new C0052a(11);

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0083e f1383d;

    /* renamed from: e, reason: collision with root package name */
    public int f1384e;
    public L f;

    /* renamed from: g, reason: collision with root package name */
    public K f1385g;

    /* renamed from: h, reason: collision with root package name */
    public C f1386h;

    /* renamed from: i, reason: collision with root package name */
    public List f1387i;

    /* renamed from: j, reason: collision with root package name */
    public byte f1388j;

    /* renamed from: k, reason: collision with root package name */
    public int f1389k;

    static {
        E e5 = new E();
        f1381l = e5;
        e5.f = L.f1442g;
        e5.f1385g = K.f1437g;
        e5.f1386h = C.f1368m;
        e5.f1387i = Collections.emptyList();
    }

    public E(AbstractC0090l abstractC0090l) {
        super(abstractC0090l);
        this.f1388j = (byte) -1;
        this.f1389k = -1;
        this.f1383d = abstractC0090l.f2400c;
    }

    @Override // R3.A
    public final AbstractC0080b a() {
        return f1381l;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1388j;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        if ((this.f1384e & 2) == 2 && !this.f1385g.b()) {
            this.f1388j = (byte) 0;
            return false;
        }
        if ((this.f1384e & 4) == 4 && !this.f1386h.b()) {
            this.f1388j = (byte) 0;
            return false;
        }
        for (int i5 = 0; i5 < this.f1387i.size(); i5++) {
            if (!((C0061j) this.f1387i.get(i5)).b()) {
                this.f1388j = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.f1388j = (byte) 1;
            return true;
        }
        this.f1388j = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1389k;
        if (i5 != -1) {
            return i5;
        }
        int iD = (this.f1384e & 1) == 1 ? B1.j.d(1, this.f) : 0;
        if ((this.f1384e & 2) == 2) {
            iD += B1.j.d(2, this.f1385g);
        }
        if ((this.f1384e & 4) == 4) {
            iD += B1.j.d(3, this.f1386h);
        }
        for (int i6 = 0; i6 < this.f1387i.size(); i6++) {
            iD += B1.j.d(4, (AbstractC0080b) this.f1387i.get(i6));
        }
        int size = this.f1383d.size() + j() + iD;
        this.f1389k = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return D.h();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        D dH = D.h();
        dH.i(this);
        return dH;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        C0091m c0091mN = n();
        if ((this.f1384e & 1) == 1) {
            jVar.p(1, this.f);
        }
        if ((this.f1384e & 2) == 2) {
            jVar.p(2, this.f1385g);
        }
        if ((this.f1384e & 4) == 4) {
            jVar.p(3, this.f1386h);
        }
        for (int i5 = 0; i5 < this.f1387i.size(); i5++) {
            jVar.p(4, (AbstractC0080b) this.f1387i.get(i5));
        }
        c0091mN.d(200, jVar);
        jVar.s(this.f1383d);
    }

    public E() {
        this.f1388j = (byte) -1;
        this.f1389k = -1;
        this.f1383d = AbstractC0083e.f2383c;
    }

    public E(C0084f c0084f, C0087i c0087i) {
        this.f1388j = (byte) -1;
        this.f1389k = -1;
        this.f = L.f1442g;
        this.f1385g = K.f1437g;
        this.f1386h = C.f1368m;
        this.f1387i = Collections.emptyList();
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        boolean z4 = false;
        char c2 = 0;
        while (!z4) {
            try {
                try {
                    int iN = c0084f.n();
                    if (iN != 0) {
                        B bH = null;
                        C0064m c0064m = null;
                        C0064m c0064m2 = null;
                        if (iN == 10) {
                            if ((this.f1384e & 1) == 1) {
                                L l5 = this.f;
                                l5.getClass();
                                c0064m = new C0064m(3);
                                c0064m.f = R3.w.f2419d;
                                c0064m.l(l5);
                            }
                            L l6 = (L) c0084f.g(L.f1443h, c0087i);
                            this.f = l6;
                            if (c0064m != null) {
                                c0064m.l(l6);
                                this.f = c0064m.h();
                            }
                            this.f1384e |= 1;
                        } else if (iN == 18) {
                            if ((this.f1384e & 2) == 2) {
                                K k5 = this.f1385g;
                                k5.getClass();
                                c0064m2 = new C0064m(1);
                                c0064m2.f = Collections.emptyList();
                                c0064m2.k(k5);
                            }
                            K k6 = (K) c0084f.g(K.f1438h, c0087i);
                            this.f1385g = k6;
                            if (c0064m2 != null) {
                                c0064m2.k(k6);
                                this.f1385g = c0064m2.g();
                            }
                            this.f1384e |= 2;
                        } else if (iN == 26) {
                            if ((this.f1384e & 4) == 4) {
                                C c5 = this.f1386h;
                                c5.getClass();
                                bH = B.h();
                                bH.i(c5);
                            }
                            C c6 = (C) c0084f.g(C.n, c0087i);
                            this.f1386h = c6;
                            if (bH != null) {
                                bH.i(c6);
                                this.f1386h = bH.g();
                            }
                            this.f1384e |= 4;
                        } else if (iN != 34) {
                            if (!o(c0084f, jVarJ, c0087i, iN)) {
                            }
                        } else {
                            int i5 = (c2 == true ? 1 : 0) & '\b';
                            c2 = c2;
                            if (i5 != 8) {
                                this.f1387i = new ArrayList();
                                c2 = '\b';
                            }
                            this.f1387i.add(c0084f.g(C0061j.f1676M, c0087i));
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
                if (((c2 == true ? 1 : 0) & '\b') == 8) {
                    this.f1387i = Collections.unmodifiableList(this.f1387i);
                }
                try {
                    jVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f1383d = c0082d.l();
                    throw th2;
                }
                this.f1383d = c0082d.l();
                m();
                throw th;
            }
        }
        if (((c2 == true ? 1 : 0) & '\b') == 8) {
            this.f1387i = Collections.unmodifiableList(this.f1387i);
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1383d = c0082d.l();
            throw th3;
        }
        this.f1383d = c0082d.l();
        m();
    }
}
