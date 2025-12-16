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
public final class r extends AbstractC0095q {

    /* renamed from: k, reason: collision with root package name */
    public static final r f1738k;

    /* renamed from: l, reason: collision with root package name */
    public static final C0052a f1739l = new C0052a(6);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1740c;

    /* renamed from: d, reason: collision with root package name */
    public int f1741d;

    /* renamed from: e, reason: collision with root package name */
    public EnumC0067p f1742e;
    public List f;

    /* renamed from: g, reason: collision with root package name */
    public C0073w f1743g;

    /* renamed from: h, reason: collision with root package name */
    public EnumC0068q f1744h;

    /* renamed from: i, reason: collision with root package name */
    public byte f1745i;

    /* renamed from: j, reason: collision with root package name */
    public int f1746j;

    static {
        r rVar = new r();
        f1738k = rVar;
        rVar.f1742e = EnumC0067p.RETURNS_CONSTANT;
        rVar.f = Collections.emptyList();
        rVar.f1743g = C0073w.n;
        rVar.f1744h = EnumC0068q.AT_MOST_ONCE;
    }

    public r() {
        this.f1745i = (byte) -1;
        this.f1746j = -1;
        this.f1740c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1745i;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        for (int i5 = 0; i5 < this.f.size(); i5++) {
            if (!((C0073w) this.f.get(i5)).b()) {
                this.f1745i = (byte) 0;
                return false;
            }
        }
        if ((this.f1741d & 2) != 2 || this.f1743g.b()) {
            this.f1745i = (byte) 1;
            return true;
        }
        this.f1745i = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1746j;
        if (i5 != -1) {
            return i5;
        }
        int iA = (this.f1741d & 1) == 1 ? B1.j.a(1, this.f1742e.f1733c) : 0;
        for (int i6 = 0; i6 < this.f.size(); i6++) {
            iA += B1.j.d(2, (AbstractC0080b) this.f.get(i6));
        }
        if ((this.f1741d & 2) == 2) {
            iA += B1.j.d(3, this.f1743g);
        }
        if ((this.f1741d & 4) == 4) {
            iA += B1.j.a(4, this.f1744h.f1737c);
        }
        int size = this.f1740c.size() + iA;
        this.f1746j = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return C0066o.g();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        C0066o c0066oG = C0066o.g();
        c0066oG.h(this);
        return c0066oG;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        if ((this.f1741d & 1) == 1) {
            jVar.m(1, this.f1742e.f1733c);
        }
        for (int i5 = 0; i5 < this.f.size(); i5++) {
            jVar.p(2, (AbstractC0080b) this.f.get(i5));
        }
        if ((this.f1741d & 2) == 2) {
            jVar.p(3, this.f1743g);
        }
        if ((this.f1741d & 4) == 4) {
            jVar.m(4, this.f1744h.f1737c);
        }
        jVar.s(this.f1740c);
    }

    public r(C0084f c0084f, C0087i c0087i) {
        this.f1745i = (byte) -1;
        this.f1746j = -1;
        EnumC0067p enumC0067p = EnumC0067p.RETURNS_CONSTANT;
        this.f1742e = enumC0067p;
        this.f = Collections.emptyList();
        this.f1743g = C0073w.n;
        EnumC0068q enumC0068q = EnumC0068q.AT_MOST_ONCE;
        this.f1744h = enumC0068q;
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        boolean z4 = false;
        char c2 = 0;
        while (!z4) {
            try {
                try {
                    try {
                        int iN = c0084f.n();
                        if (iN != 0) {
                            EnumC0068q enumC0068q2 = null;
                            EnumC0067p enumC0067p2 = null;
                            C0071u c0071uG = null;
                            if (iN == 8) {
                                int iK = c0084f.k();
                                if (iK == 0) {
                                    enumC0067p2 = enumC0067p;
                                } else if (iK == 1) {
                                    enumC0067p2 = EnumC0067p.CALLS;
                                } else if (iK == 2) {
                                    enumC0067p2 = EnumC0067p.RETURNS_NOT_NULL;
                                }
                                if (enumC0067p2 == null) {
                                    jVarJ.w(iN);
                                    jVarJ.w(iK);
                                } else {
                                    this.f1741d |= 1;
                                    this.f1742e = enumC0067p2;
                                }
                            } else if (iN == 18) {
                                int i5 = (c2 == true ? 1 : 0) & 2;
                                c2 = c2;
                                if (i5 != 2) {
                                    this.f = new ArrayList();
                                    c2 = 2;
                                }
                                this.f.add(c0084f.g(C0073w.f1765o, c0087i));
                            } else if (iN == 26) {
                                if ((this.f1741d & 2) == 2) {
                                    C0073w c0073w = this.f1743g;
                                    c0073w.getClass();
                                    c0071uG = C0071u.g();
                                    c0071uG.h(c0073w);
                                }
                                C0073w c0073w2 = (C0073w) c0084f.g(C0073w.f1765o, c0087i);
                                this.f1743g = c0073w2;
                                if (c0071uG != null) {
                                    c0071uG.h(c0073w2);
                                    this.f1743g = c0071uG.f();
                                }
                                this.f1741d |= 2;
                            } else if (iN != 32) {
                                if (!c0084f.q(iN, jVarJ)) {
                                }
                            } else {
                                int iK2 = c0084f.k();
                                if (iK2 == 0) {
                                    enumC0068q2 = enumC0068q;
                                } else if (iK2 == 1) {
                                    enumC0068q2 = EnumC0068q.EXACTLY_ONCE;
                                } else if (iK2 == 2) {
                                    enumC0068q2 = EnumC0068q.AT_LEAST_ONCE;
                                }
                                if (enumC0068q2 == null) {
                                    jVarJ.w(iN);
                                    jVarJ.w(iK2);
                                } else {
                                    this.f1741d |= 4;
                                    this.f1744h = enumC0068q2;
                                }
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
                if (((c2 == true ? 1 : 0) & 2) == 2) {
                    this.f = Collections.unmodifiableList(this.f);
                }
                try {
                    jVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f1740c = c0082d.l();
                    throw th2;
                }
                this.f1740c = c0082d.l();
                throw th;
            }
        }
        if (((c2 == true ? 1 : 0) & 2) == 2) {
            this.f = Collections.unmodifiableList(this.f);
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1740c = c0082d.l();
            throw th3;
        }
        this.f1740c = c0082d.l();
    }

    public r(AbstractC0089k abstractC0089k) {
        this.f1745i = (byte) -1;
        this.f1746j = -1;
        this.f1740c = abstractC0089k.f2400c;
    }
}
