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

/* renamed from: L3.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0073w extends AbstractC0095q {
    public static final C0073w n;

    /* renamed from: o, reason: collision with root package name */
    public static final C0052a f1765o = new C0052a(8);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1766c;

    /* renamed from: d, reason: collision with root package name */
    public int f1767d;

    /* renamed from: e, reason: collision with root package name */
    public int f1768e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public EnumC0072v f1769g;

    /* renamed from: h, reason: collision with root package name */
    public Q f1770h;

    /* renamed from: i, reason: collision with root package name */
    public int f1771i;

    /* renamed from: j, reason: collision with root package name */
    public List f1772j;

    /* renamed from: k, reason: collision with root package name */
    public List f1773k;

    /* renamed from: l, reason: collision with root package name */
    public byte f1774l;

    /* renamed from: m, reason: collision with root package name */
    public int f1775m;

    static {
        C0073w c0073w = new C0073w();
        n = c0073w;
        c0073w.f1768e = 0;
        c0073w.f = 0;
        c0073w.f1769g = EnumC0072v.TRUE;
        c0073w.f1770h = Q.f1476v;
        c0073w.f1771i = 0;
        c0073w.f1772j = Collections.emptyList();
        c0073w.f1773k = Collections.emptyList();
    }

    public C0073w() {
        this.f1774l = (byte) -1;
        this.f1775m = -1;
        this.f1766c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1774l;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        if ((this.f1767d & 8) == 8 && !this.f1770h.b()) {
            this.f1774l = (byte) 0;
            return false;
        }
        for (int i5 = 0; i5 < this.f1772j.size(); i5++) {
            if (!((C0073w) this.f1772j.get(i5)).b()) {
                this.f1774l = (byte) 0;
                return false;
            }
        }
        for (int i6 = 0; i6 < this.f1773k.size(); i6++) {
            if (!((C0073w) this.f1773k.get(i6)).b()) {
                this.f1774l = (byte) 0;
                return false;
            }
        }
        this.f1774l = (byte) 1;
        return true;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1775m;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1767d & 1) == 1 ? B1.j.b(1, this.f1768e) : 0;
        if ((this.f1767d & 2) == 2) {
            iB += B1.j.b(2, this.f);
        }
        if ((this.f1767d & 4) == 4) {
            iB += B1.j.a(3, this.f1769g.f1764c);
        }
        if ((this.f1767d & 8) == 8) {
            iB += B1.j.d(4, this.f1770h);
        }
        if ((this.f1767d & 16) == 16) {
            iB += B1.j.b(5, this.f1771i);
        }
        for (int i6 = 0; i6 < this.f1772j.size(); i6++) {
            iB += B1.j.d(6, (AbstractC0080b) this.f1772j.get(i6));
        }
        for (int i7 = 0; i7 < this.f1773k.size(); i7++) {
            iB += B1.j.d(7, (AbstractC0080b) this.f1773k.get(i7));
        }
        int size = this.f1766c.size() + iB;
        this.f1775m = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return C0071u.g();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        C0071u c0071uG = C0071u.g();
        c0071uG.h(this);
        return c0071uG;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        if ((this.f1767d & 1) == 1) {
            jVar.n(1, this.f1768e);
        }
        if ((this.f1767d & 2) == 2) {
            jVar.n(2, this.f);
        }
        if ((this.f1767d & 4) == 4) {
            jVar.m(3, this.f1769g.f1764c);
        }
        if ((this.f1767d & 8) == 8) {
            jVar.p(4, this.f1770h);
        }
        if ((this.f1767d & 16) == 16) {
            jVar.n(5, this.f1771i);
        }
        for (int i5 = 0; i5 < this.f1772j.size(); i5++) {
            jVar.p(6, (AbstractC0080b) this.f1772j.get(i5));
        }
        for (int i6 = 0; i6 < this.f1773k.size(); i6++) {
            jVar.p(7, (AbstractC0080b) this.f1773k.get(i6));
        }
        jVar.s(this.f1766c);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v6 */
    public C0073w(C0084f c0084f, C0087i c0087i) {
        EnumC0072v enumC0072v;
        this.f1774l = (byte) -1;
        this.f1775m = -1;
        boolean z4 = false;
        this.f1768e = 0;
        this.f = 0;
        EnumC0072v enumC0072v2 = EnumC0072v.TRUE;
        this.f1769g = enumC0072v2;
        this.f1770h = Q.f1476v;
        this.f1771i = 0;
        this.f1772j = Collections.emptyList();
        this.f1773k = Collections.emptyList();
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        char c2 = 0;
        while (!z4) {
            try {
                try {
                    int iN = c0084f.n();
                    if (iN != 0) {
                        if (iN == 8) {
                            this.f1767d |= 1;
                            this.f1768e = c0084f.k();
                        } else if (iN != 16) {
                            P pS = null;
                            EnumC0072v enumC0072v3 = null;
                            if (iN == 24) {
                                int iK = c0084f.k();
                                if (iK != 0) {
                                    if (iK == 1) {
                                        enumC0072v3 = EnumC0072v.FALSE;
                                    } else if (iK == 2) {
                                        enumC0072v3 = EnumC0072v.NULL;
                                    }
                                    enumC0072v = enumC0072v3;
                                } else {
                                    enumC0072v = enumC0072v2;
                                }
                                if (enumC0072v == null) {
                                    jVarJ.w(iN);
                                    jVarJ.w(iK);
                                } else {
                                    this.f1767d |= 4;
                                    this.f1769g = enumC0072v;
                                }
                            } else if (iN == 34) {
                                if ((this.f1767d & 8) == 8) {
                                    Q q2 = this.f1770h;
                                    q2.getClass();
                                    pS = Q.s(q2);
                                }
                                P p4 = pS;
                                Q q5 = (Q) c0084f.g(Q.f1477w, c0087i);
                                this.f1770h = q5;
                                if (p4 != null) {
                                    p4.i(q5);
                                    this.f1770h = p4.g();
                                }
                                this.f1767d |= 8;
                            } else if (iN != 40) {
                                C0052a c0052a = f1765o;
                                if (iN == 50) {
                                    int i5 = (c2 == true ? 1 : 0) & 32;
                                    c2 = c2;
                                    if (i5 != 32) {
                                        this.f1772j = new ArrayList();
                                        c2 = (c2 == true ? 1 : 0) | ' ';
                                    }
                                    this.f1772j.add(c0084f.g(c0052a, c0087i));
                                } else if (iN != 58) {
                                    if (!c0084f.q(iN, jVarJ)) {
                                    }
                                } else {
                                    int i6 = (c2 == true ? 1 : 0) & 64;
                                    c2 = c2;
                                    if (i6 != 64) {
                                        this.f1773k = new ArrayList();
                                        c2 = (c2 == true ? 1 : 0) | '@';
                                    }
                                    this.f1773k.add(c0084f.g(c0052a, c0087i));
                                }
                            } else {
                                this.f1767d |= 16;
                                this.f1771i = c0084f.k();
                            }
                        } else {
                            this.f1767d |= 2;
                            this.f = c0084f.k();
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
                if (((c2 == true ? 1 : 0) & 32) == 32) {
                    this.f1772j = Collections.unmodifiableList(this.f1772j);
                }
                if (((c2 == true ? 1 : 0) & 64) == 64) {
                    this.f1773k = Collections.unmodifiableList(this.f1773k);
                }
                try {
                    jVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f1766c = c0082d.l();
                    throw th2;
                }
                this.f1766c = c0082d.l();
                throw th;
            }
        }
        if (((c2 == true ? 1 : 0) & 32) == 32) {
            this.f1772j = Collections.unmodifiableList(this.f1772j);
        }
        if (((c2 == true ? 1 : 0) & 64) == 64) {
            this.f1773k = Collections.unmodifiableList(this.f1773k);
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1766c = c0082d.l();
            throw th3;
        }
        this.f1766c = c0082d.l();
    }

    public C0073w(AbstractC0089k abstractC0089k) {
        this.f1774l = (byte) -1;
        this.f1775m = -1;
        this.f1766c = abstractC0089k.f2400c;
    }
}
