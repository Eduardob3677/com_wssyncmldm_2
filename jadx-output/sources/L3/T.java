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
public final class T extends AbstractC0092n {

    /* renamed from: q, reason: collision with root package name */
    public static final T f1502q;

    /* renamed from: r, reason: collision with root package name */
    public static final C0052a f1503r = new C0052a(18);

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0083e f1504d;

    /* renamed from: e, reason: collision with root package name */
    public int f1505e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1506g;

    /* renamed from: h, reason: collision with root package name */
    public List f1507h;

    /* renamed from: i, reason: collision with root package name */
    public Q f1508i;

    /* renamed from: j, reason: collision with root package name */
    public int f1509j;

    /* renamed from: k, reason: collision with root package name */
    public Q f1510k;

    /* renamed from: l, reason: collision with root package name */
    public int f1511l;

    /* renamed from: m, reason: collision with root package name */
    public List f1512m;
    public List n;

    /* renamed from: o, reason: collision with root package name */
    public byte f1513o;

    /* renamed from: p, reason: collision with root package name */
    public int f1514p;

    static {
        T t2 = new T();
        f1502q = t2;
        t2.q();
    }

    public T(AbstractC0090l abstractC0090l) {
        super(abstractC0090l);
        this.f1513o = (byte) -1;
        this.f1514p = -1;
        this.f1504d = abstractC0090l.f2400c;
    }

    @Override // R3.A
    public final AbstractC0080b a() {
        return f1502q;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1513o;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        if ((this.f1505e & 2) != 2) {
            this.f1513o = (byte) 0;
            return false;
        }
        for (int i5 = 0; i5 < this.f1507h.size(); i5++) {
            if (!((W) this.f1507h.get(i5)).b()) {
                this.f1513o = (byte) 0;
                return false;
            }
        }
        if ((this.f1505e & 4) == 4 && !this.f1508i.b()) {
            this.f1513o = (byte) 0;
            return false;
        }
        if ((this.f1505e & 16) == 16 && !this.f1510k.b()) {
            this.f1513o = (byte) 0;
            return false;
        }
        for (int i6 = 0; i6 < this.f1512m.size(); i6++) {
            if (!((C0058g) this.f1512m.get(i6)).b()) {
                this.f1513o = (byte) 0;
                return false;
            }
        }
        if (i()) {
            this.f1513o = (byte) 1;
            return true;
        }
        this.f1513o = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1514p;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1505e & 1) == 1 ? B1.j.b(1, this.f) : 0;
        if ((this.f1505e & 2) == 2) {
            iB += B1.j.b(2, this.f1506g);
        }
        for (int i6 = 0; i6 < this.f1507h.size(); i6++) {
            iB += B1.j.d(3, (AbstractC0080b) this.f1507h.get(i6));
        }
        if ((this.f1505e & 4) == 4) {
            iB += B1.j.d(4, this.f1508i);
        }
        if ((this.f1505e & 8) == 8) {
            iB += B1.j.b(5, this.f1509j);
        }
        if ((this.f1505e & 16) == 16) {
            iB += B1.j.d(6, this.f1510k);
        }
        if ((this.f1505e & 32) == 32) {
            iB += B1.j.b(7, this.f1511l);
        }
        for (int i7 = 0; i7 < this.f1512m.size(); i7++) {
            iB += B1.j.d(8, (AbstractC0080b) this.f1512m.get(i7));
        }
        int iC = 0;
        for (int i8 = 0; i8 < this.n.size(); i8++) {
            iC += B1.j.c(((Integer) this.n.get(i8)).intValue());
        }
        int size = this.f1504d.size() + j() + (this.n.size() * 2) + iB + iC;
        this.f1514p = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return S.h();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        S sH = S.h();
        sH.i(this);
        return sH;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        C0091m c0091mN = n();
        if ((this.f1505e & 1) == 1) {
            jVar.n(1, this.f);
        }
        if ((this.f1505e & 2) == 2) {
            jVar.n(2, this.f1506g);
        }
        for (int i5 = 0; i5 < this.f1507h.size(); i5++) {
            jVar.p(3, (AbstractC0080b) this.f1507h.get(i5));
        }
        if ((this.f1505e & 4) == 4) {
            jVar.p(4, this.f1508i);
        }
        if ((this.f1505e & 8) == 8) {
            jVar.n(5, this.f1509j);
        }
        if ((this.f1505e & 16) == 16) {
            jVar.p(6, this.f1510k);
        }
        if ((this.f1505e & 32) == 32) {
            jVar.n(7, this.f1511l);
        }
        for (int i6 = 0; i6 < this.f1512m.size(); i6++) {
            jVar.p(8, (AbstractC0080b) this.f1512m.get(i6));
        }
        for (int i7 = 0; i7 < this.n.size(); i7++) {
            jVar.n(31, ((Integer) this.n.get(i7)).intValue());
        }
        c0091mN.d(200, jVar);
        jVar.s(this.f1504d);
    }

    public final void q() {
        this.f = 6;
        this.f1506g = 0;
        this.f1507h = Collections.emptyList();
        Q q2 = Q.f1476v;
        this.f1508i = q2;
        this.f1509j = 0;
        this.f1510k = q2;
        this.f1511l = 0;
        this.f1512m = Collections.emptyList();
        this.n = Collections.emptyList();
    }

    public T() {
        this.f1513o = (byte) -1;
        this.f1514p = -1;
        this.f1504d = AbstractC0083e.f2383c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public T(C0084f c0084f, C0087i c0087i) {
        this.f1513o = (byte) -1;
        this.f1514p = -1;
        q();
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        boolean z4 = false;
        int i5 = 0;
        while (true) {
            ?? O4 = 128;
            if (!z4) {
                try {
                    try {
                        int iN = c0084f.n();
                        P pS = null;
                        switch (iN) {
                            case 0:
                                z4 = true;
                            case 8:
                                this.f1505e |= 1;
                                this.f = c0084f.k();
                            case 16:
                                this.f1505e |= 2;
                                this.f1506g = c0084f.k();
                            case 26:
                                if ((i5 & 4) != 4) {
                                    this.f1507h = new ArrayList();
                                    i5 |= 4;
                                }
                                this.f1507h.add(c0084f.g(W.f1526p, c0087i));
                            case 34:
                                if ((this.f1505e & 4) == 4) {
                                    Q q2 = this.f1508i;
                                    q2.getClass();
                                    pS = Q.s(q2);
                                }
                                Q q5 = (Q) c0084f.g(Q.f1477w, c0087i);
                                this.f1508i = q5;
                                if (pS != null) {
                                    pS.i(q5);
                                    this.f1508i = pS.g();
                                }
                                this.f1505e |= 4;
                            case 40:
                                this.f1505e |= 8;
                                this.f1509j = c0084f.k();
                            case 50:
                                if ((this.f1505e & 16) == 16) {
                                    Q q6 = this.f1510k;
                                    q6.getClass();
                                    pS = Q.s(q6);
                                }
                                Q q7 = (Q) c0084f.g(Q.f1477w, c0087i);
                                this.f1510k = q7;
                                if (pS != null) {
                                    pS.i(q7);
                                    this.f1510k = pS.g();
                                }
                                this.f1505e |= 16;
                            case 56:
                                this.f1505e |= 32;
                                this.f1511l = c0084f.k();
                            case 66:
                                if ((i5 & 128) != 128) {
                                    this.f1512m = new ArrayList();
                                    i5 |= 128;
                                }
                                this.f1512m.add(c0084f.g(C0058g.f1640j, c0087i));
                            case 248:
                                if ((i5 & 256) != 256) {
                                    this.n = new ArrayList();
                                    i5 |= 256;
                                }
                                this.n.add(Integer.valueOf(c0084f.k()));
                            case 250:
                                int iD = c0084f.d(c0084f.k());
                                if ((i5 & 256) != 256 && c0084f.b() > 0) {
                                    this.n = new ArrayList();
                                    i5 |= 256;
                                }
                                while (c0084f.b() > 0) {
                                    this.n.add(Integer.valueOf(c0084f.k()));
                                }
                                c0084f.c(iD);
                                break;
                            default:
                                O4 = o(c0084f, jVarJ, c0087i, iN);
                                if (O4 == 0) {
                                    z4 = true;
                                }
                        }
                    } catch (Throwable th) {
                        if ((i5 & 4) == 4) {
                            this.f1507h = Collections.unmodifiableList(this.f1507h);
                        }
                        if ((i5 & 128) == O4) {
                            this.f1512m = Collections.unmodifiableList(this.f1512m);
                        }
                        if ((i5 & 256) == 256) {
                            this.n = Collections.unmodifiableList(this.n);
                        }
                        try {
                            jVarJ.i();
                        } catch (IOException unused) {
                        } catch (Throwable th2) {
                            this.f1504d = c0082d.l();
                            throw th2;
                        }
                        this.f1504d = c0082d.l();
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
            } else {
                if ((i5 & 4) == 4) {
                    this.f1507h = Collections.unmodifiableList(this.f1507h);
                }
                if ((i5 & 128) == 128) {
                    this.f1512m = Collections.unmodifiableList(this.f1512m);
                }
                if ((i5 & 256) == 256) {
                    this.n = Collections.unmodifiableList(this.n);
                }
                try {
                    jVarJ.i();
                } catch (IOException unused2) {
                } catch (Throwable th3) {
                    this.f1504d = c0082d.l();
                    throw th3;
                }
                this.f1504d = c0082d.l();
                m();
                return;
            }
        }
    }
}
