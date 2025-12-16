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
public final class G extends AbstractC0092n {

    /* renamed from: w, reason: collision with root package name */
    public static final G f1403w;

    /* renamed from: x, reason: collision with root package name */
    public static final C0052a f1404x = new C0052a(12);

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0083e f1405d;

    /* renamed from: e, reason: collision with root package name */
    public int f1406e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1407g;

    /* renamed from: h, reason: collision with root package name */
    public int f1408h;

    /* renamed from: i, reason: collision with root package name */
    public Q f1409i;

    /* renamed from: j, reason: collision with root package name */
    public int f1410j;

    /* renamed from: k, reason: collision with root package name */
    public List f1411k;

    /* renamed from: l, reason: collision with root package name */
    public Q f1412l;

    /* renamed from: m, reason: collision with root package name */
    public int f1413m;
    public List n;

    /* renamed from: o, reason: collision with root package name */
    public List f1414o;

    /* renamed from: p, reason: collision with root package name */
    public int f1415p;

    /* renamed from: q, reason: collision with root package name */
    public Z f1416q;

    /* renamed from: r, reason: collision with root package name */
    public int f1417r;

    /* renamed from: s, reason: collision with root package name */
    public int f1418s;

    /* renamed from: t, reason: collision with root package name */
    public List f1419t;

    /* renamed from: u, reason: collision with root package name */
    public byte f1420u;

    /* renamed from: v, reason: collision with root package name */
    public int f1421v;

    static {
        G g5 = new G();
        f1403w = g5;
        g5.r();
    }

    public G(AbstractC0090l abstractC0090l) {
        super(abstractC0090l);
        this.f1415p = -1;
        this.f1420u = (byte) -1;
        this.f1421v = -1;
        this.f1405d = abstractC0090l.f2400c;
    }

    @Override // R3.A
    public final AbstractC0080b a() {
        return f1403w;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1420u;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        int i5 = this.f1406e;
        if ((i5 & 4) != 4) {
            this.f1420u = (byte) 0;
            return false;
        }
        if ((i5 & 8) == 8 && !this.f1409i.b()) {
            this.f1420u = (byte) 0;
            return false;
        }
        for (int i6 = 0; i6 < this.f1411k.size(); i6++) {
            if (!((W) this.f1411k.get(i6)).b()) {
                this.f1420u = (byte) 0;
                return false;
            }
        }
        if (q() && !this.f1412l.b()) {
            this.f1420u = (byte) 0;
            return false;
        }
        for (int i7 = 0; i7 < this.n.size(); i7++) {
            if (!((Q) this.n.get(i7)).b()) {
                this.f1420u = (byte) 0;
                return false;
            }
        }
        if ((this.f1406e & 128) == 128 && !this.f1416q.b()) {
            this.f1420u = (byte) 0;
            return false;
        }
        if (i()) {
            this.f1420u = (byte) 1;
            return true;
        }
        this.f1420u = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1421v;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1406e & 2) == 2 ? B1.j.b(1, this.f1407g) : 0;
        if ((this.f1406e & 4) == 4) {
            iB += B1.j.b(2, this.f1408h);
        }
        if ((this.f1406e & 8) == 8) {
            iB += B1.j.d(3, this.f1409i);
        }
        for (int i6 = 0; i6 < this.f1411k.size(); i6++) {
            iB += B1.j.d(4, (AbstractC0080b) this.f1411k.get(i6));
        }
        if ((this.f1406e & 32) == 32) {
            iB += B1.j.d(5, this.f1412l);
        }
        if ((this.f1406e & 128) == 128) {
            iB += B1.j.d(6, this.f1416q);
        }
        if ((this.f1406e & 256) == 256) {
            iB += B1.j.b(7, this.f1417r);
        }
        if ((this.f1406e & 512) == 512) {
            iB += B1.j.b(8, this.f1418s);
        }
        if ((this.f1406e & 16) == 16) {
            iB += B1.j.b(9, this.f1410j);
        }
        if ((this.f1406e & 64) == 64) {
            iB += B1.j.b(10, this.f1413m);
        }
        if ((this.f1406e & 1) == 1) {
            iB += B1.j.b(11, this.f);
        }
        for (int i7 = 0; i7 < this.n.size(); i7++) {
            iB += B1.j.d(12, (AbstractC0080b) this.n.get(i7));
        }
        int iC = 0;
        for (int i8 = 0; i8 < this.f1414o.size(); i8++) {
            iC += B1.j.c(((Integer) this.f1414o.get(i8)).intValue());
        }
        int iC2 = iB + iC;
        if (!this.f1414o.isEmpty()) {
            iC2 = iC2 + 1 + B1.j.c(iC);
        }
        this.f1415p = iC;
        int iC3 = 0;
        for (int i9 = 0; i9 < this.f1419t.size(); i9++) {
            iC3 += B1.j.c(((Integer) this.f1419t.get(i9)).intValue());
        }
        int size = this.f1405d.size() + j() + (this.f1419t.size() * 2) + iC2 + iC3;
        this.f1421v = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return F.h();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        F fH = F.h();
        fH.i(this);
        return fH;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        C0091m c0091mN = n();
        if ((this.f1406e & 2) == 2) {
            jVar.n(1, this.f1407g);
        }
        if ((this.f1406e & 4) == 4) {
            jVar.n(2, this.f1408h);
        }
        if ((this.f1406e & 8) == 8) {
            jVar.p(3, this.f1409i);
        }
        for (int i5 = 0; i5 < this.f1411k.size(); i5++) {
            jVar.p(4, (AbstractC0080b) this.f1411k.get(i5));
        }
        if ((this.f1406e & 32) == 32) {
            jVar.p(5, this.f1412l);
        }
        if ((this.f1406e & 128) == 128) {
            jVar.p(6, this.f1416q);
        }
        if ((this.f1406e & 256) == 256) {
            jVar.n(7, this.f1417r);
        }
        if ((this.f1406e & 512) == 512) {
            jVar.n(8, this.f1418s);
        }
        if ((this.f1406e & 16) == 16) {
            jVar.n(9, this.f1410j);
        }
        if ((this.f1406e & 64) == 64) {
            jVar.n(10, this.f1413m);
        }
        if ((this.f1406e & 1) == 1) {
            jVar.n(11, this.f);
        }
        for (int i6 = 0; i6 < this.n.size(); i6++) {
            jVar.p(12, (AbstractC0080b) this.n.get(i6));
        }
        if (this.f1414o.size() > 0) {
            jVar.w(106);
            jVar.w(this.f1415p);
        }
        for (int i7 = 0; i7 < this.f1414o.size(); i7++) {
            jVar.o(((Integer) this.f1414o.get(i7)).intValue());
        }
        for (int i8 = 0; i8 < this.f1419t.size(); i8++) {
            jVar.n(31, ((Integer) this.f1419t.get(i8)).intValue());
        }
        c0091mN.d(19000, jVar);
        jVar.s(this.f1405d);
    }

    public final boolean q() {
        return (this.f1406e & 32) == 32;
    }

    public final void r() {
        this.f = 518;
        this.f1407g = 2054;
        this.f1408h = 0;
        Q q2 = Q.f1476v;
        this.f1409i = q2;
        this.f1410j = 0;
        this.f1411k = Collections.emptyList();
        this.f1412l = q2;
        this.f1413m = 0;
        this.n = Collections.emptyList();
        this.f1414o = Collections.emptyList();
        this.f1416q = Z.n;
        this.f1417r = 0;
        this.f1418s = 0;
        this.f1419t = Collections.emptyList();
    }

    public G() {
        this.f1415p = -1;
        this.f1420u = (byte) -1;
        this.f1421v = -1;
        this.f1405d = AbstractC0083e.f2383c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public G(C0084f c0084f, C0087i c0087i) {
        this.f1415p = -1;
        this.f1420u = (byte) -1;
        this.f1421v = -1;
        r();
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        boolean z4 = false;
        char c2 = 0;
        while (true) {
            ?? O4 = 256;
            if (!z4) {
                try {
                    try {
                        try {
                            int iN = c0084f.n();
                            P pS = null;
                            Y y3 = null;
                            P pS2 = null;
                            switch (iN) {
                                case 0:
                                    z4 = true;
                                case 8:
                                    this.f1406e |= 2;
                                    this.f1407g = c0084f.k();
                                case 16:
                                    this.f1406e |= 4;
                                    this.f1408h = c0084f.k();
                                case 26:
                                    if ((this.f1406e & 8) == 8) {
                                        Q q2 = this.f1409i;
                                        q2.getClass();
                                        pS = Q.s(q2);
                                    }
                                    Q q5 = (Q) c0084f.g(Q.f1477w, c0087i);
                                    this.f1409i = q5;
                                    if (pS != null) {
                                        pS.i(q5);
                                        this.f1409i = pS.g();
                                    }
                                    this.f1406e |= 8;
                                case 34:
                                    int i5 = (c2 == true ? 1 : 0) & 32;
                                    c2 = c2;
                                    if (i5 != 32) {
                                        this.f1411k = new ArrayList();
                                        c2 = (c2 == true ? 1 : 0) | ' ';
                                    }
                                    this.f1411k.add(c0084f.g(W.f1526p, c0087i));
                                case 42:
                                    if ((this.f1406e & 32) == 32) {
                                        Q q6 = this.f1412l;
                                        q6.getClass();
                                        pS2 = Q.s(q6);
                                    }
                                    Q q7 = (Q) c0084f.g(Q.f1477w, c0087i);
                                    this.f1412l = q7;
                                    if (pS2 != null) {
                                        pS2.i(q7);
                                        this.f1412l = pS2.g();
                                    }
                                    this.f1406e |= 32;
                                case 50:
                                    if ((this.f1406e & 128) == 128) {
                                        Z z5 = this.f1416q;
                                        z5.getClass();
                                        y3 = new Y();
                                        Q q8 = Q.f1476v;
                                        y3.f1545i = q8;
                                        y3.f1547k = q8;
                                        y3.h(z5);
                                    }
                                    Z z6 = (Z) c0084f.g(Z.f1549o, c0087i);
                                    this.f1416q = z6;
                                    if (y3 != null) {
                                        y3.h(z6);
                                        this.f1416q = y3.g();
                                    }
                                    this.f1406e |= 128;
                                case 56:
                                    this.f1406e |= 256;
                                    this.f1417r = c0084f.k();
                                case 64:
                                    this.f1406e |= 512;
                                    this.f1418s = c0084f.k();
                                case 72:
                                    this.f1406e |= 16;
                                    this.f1410j = c0084f.k();
                                case 80:
                                    this.f1406e |= 64;
                                    this.f1413m = c0084f.k();
                                case 88:
                                    this.f1406e |= 1;
                                    this.f = c0084f.k();
                                case 98:
                                    int i6 = (c2 == true ? 1 : 0) & 256;
                                    c2 = c2;
                                    if (i6 != 256) {
                                        this.n = new ArrayList();
                                        c2 = (c2 == true ? 1 : 0) | 256;
                                    }
                                    this.n.add(c0084f.g(Q.f1477w, c0087i));
                                case 104:
                                    int i7 = (c2 == true ? 1 : 0) & 512;
                                    c2 = c2;
                                    if (i7 != 512) {
                                        this.f1414o = new ArrayList();
                                        c2 = (c2 == true ? 1 : 0) | 512;
                                    }
                                    this.f1414o.add(Integer.valueOf(c0084f.k()));
                                case 106:
                                    int iD = c0084f.d(c0084f.k());
                                    int i8 = (c2 == true ? 1 : 0) & 512;
                                    c2 = c2;
                                    if (i8 != 512) {
                                        c2 = c2;
                                        if (c0084f.b() > 0) {
                                            this.f1414o = new ArrayList();
                                            c2 = (c2 == true ? 1 : 0) | 512;
                                        }
                                    }
                                    while (c0084f.b() > 0) {
                                        this.f1414o.add(Integer.valueOf(c0084f.k()));
                                    }
                                    c0084f.c(iD);
                                case 248:
                                    int i9 = (c2 == true ? 1 : 0) & 8192;
                                    c2 = c2;
                                    if (i9 != 8192) {
                                        this.f1419t = new ArrayList();
                                        c2 = (c2 == true ? 1 : 0) | 8192;
                                    }
                                    this.f1419t.add(Integer.valueOf(c0084f.k()));
                                case 250:
                                    int iD2 = c0084f.d(c0084f.k());
                                    int i10 = (c2 == true ? 1 : 0) & 8192;
                                    c2 = c2;
                                    if (i10 != 8192) {
                                        c2 = c2;
                                        if (c0084f.b() > 0) {
                                            this.f1419t = new ArrayList();
                                            c2 = (c2 == true ? 1 : 0) | 8192;
                                        }
                                    }
                                    while (c0084f.b() > 0) {
                                        this.f1419t.add(Integer.valueOf(c0084f.k()));
                                    }
                                    c0084f.c(iD2);
                                default:
                                    O4 = o(c0084f, jVarJ, c0087i, iN);
                                    if (O4 == 0) {
                                        z4 = true;
                                    }
                            }
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
                    if (((c2 == true ? 1 : 0) & 32) == 32) {
                        this.f1411k = Collections.unmodifiableList(this.f1411k);
                    }
                    if (((c2 == true ? 1 : 0) & 256) == O4) {
                        this.n = Collections.unmodifiableList(this.n);
                    }
                    if (((c2 == true ? 1 : 0) & 512) == 512) {
                        this.f1414o = Collections.unmodifiableList(this.f1414o);
                    }
                    if (((c2 == true ? 1 : 0) & 8192) == 8192) {
                        this.f1419t = Collections.unmodifiableList(this.f1419t);
                    }
                    try {
                        jVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f1405d = c0082d.l();
                        throw th2;
                    }
                    this.f1405d = c0082d.l();
                    m();
                    throw th;
                }
            } else {
                if (((c2 == true ? 1 : 0) & 32) == 32) {
                    this.f1411k = Collections.unmodifiableList(this.f1411k);
                }
                if (((c2 == true ? 1 : 0) & 256) == 256) {
                    this.n = Collections.unmodifiableList(this.n);
                }
                if (((c2 == true ? 1 : 0) & 512) == 512) {
                    this.f1414o = Collections.unmodifiableList(this.f1414o);
                }
                if (((c2 == true ? 1 : 0) & 8192) == 8192) {
                    this.f1419t = Collections.unmodifiableList(this.f1419t);
                }
                try {
                    jVarJ.i();
                } catch (IOException unused2) {
                } catch (Throwable th3) {
                    this.f1405d = c0082d.l();
                    throw th3;
                }
                this.f1405d = c0082d.l();
                m();
                return;
            }
        }
    }
}
