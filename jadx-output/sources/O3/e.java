package O3;

import L3.C0052a;
import R3.AbstractC0083e;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0082d;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import java.io.IOException;

/* loaded from: classes.dex */
public final class e extends AbstractC0095q {

    /* renamed from: l, reason: collision with root package name */
    public static final e f1975l;

    /* renamed from: m, reason: collision with root package name */
    public static final C0052a f1976m = new C0052a(26);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1977c;

    /* renamed from: d, reason: collision with root package name */
    public int f1978d;

    /* renamed from: e, reason: collision with root package name */
    public b f1979e;
    public c f;

    /* renamed from: g, reason: collision with root package name */
    public c f1980g;

    /* renamed from: h, reason: collision with root package name */
    public c f1981h;

    /* renamed from: i, reason: collision with root package name */
    public c f1982i;

    /* renamed from: j, reason: collision with root package name */
    public byte f1983j;

    /* renamed from: k, reason: collision with root package name */
    public int f1984k;

    static {
        e eVar = new e();
        f1975l = eVar;
        eVar.f1979e = b.f1956i;
        c cVar = c.f1963i;
        eVar.f = cVar;
        eVar.f1980g = cVar;
        eVar.f1981h = cVar;
        eVar.f1982i = cVar;
    }

    public e() {
        this.f1983j = (byte) -1;
        this.f1984k = -1;
        this.f1977c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1983j;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        this.f1983j = (byte) 1;
        return true;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1984k;
        if (i5 != -1) {
            return i5;
        }
        int iD = (this.f1978d & 1) == 1 ? B1.j.d(1, this.f1979e) : 0;
        if ((this.f1978d & 2) == 2) {
            iD += B1.j.d(2, this.f);
        }
        if ((this.f1978d & 4) == 4) {
            iD += B1.j.d(3, this.f1980g);
        }
        if ((this.f1978d & 8) == 8) {
            iD += B1.j.d(4, this.f1981h);
        }
        if ((this.f1978d & 16) == 16) {
            iD += B1.j.d(5, this.f1982i);
        }
        int size = this.f1977c.size() + iD;
        this.f1984k = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return d.g();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        d dVarG = d.g();
        dVarG.h(this);
        return dVarG;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        if ((this.f1978d & 1) == 1) {
            jVar.p(1, this.f1979e);
        }
        if ((this.f1978d & 2) == 2) {
            jVar.p(2, this.f);
        }
        if ((this.f1978d & 4) == 4) {
            jVar.p(3, this.f1980g);
        }
        if ((this.f1978d & 8) == 8) {
            jVar.p(4, this.f1981h);
        }
        if ((this.f1978d & 16) == 16) {
            jVar.p(5, this.f1982i);
        }
        jVar.s(this.f1977c);
    }

    public e(C0084f c0084f, C0087i c0087i) {
        this.f1983j = (byte) -1;
        this.f1984k = -1;
        this.f1979e = b.f1956i;
        c cVar = c.f1963i;
        this.f = cVar;
        this.f1980g = cVar;
        this.f1981h = cVar;
        this.f1982i = cVar;
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        boolean z4 = false;
        while (!z4) {
            try {
                try {
                    int iN = c0084f.n();
                    if (iN != 0) {
                        a aVarI = null;
                        if (iN == 10) {
                            if ((this.f1978d & 1) == 1) {
                                b bVar = this.f1979e;
                                bVar.getClass();
                                aVarI = new a(0);
                                aVarI.h(bVar);
                            }
                            b bVar2 = (b) c0084f.g(b.f1957j, c0087i);
                            this.f1979e = bVar2;
                            if (aVarI != null) {
                                aVarI.h(bVar2);
                                this.f1979e = aVarI.f();
                            }
                            this.f1978d |= 1;
                        } else if (iN == 18) {
                            if ((this.f1978d & 2) == 2) {
                                c cVar2 = this.f;
                                cVar2.getClass();
                                aVarI = c.i(cVar2);
                            }
                            c cVar3 = (c) c0084f.g(c.f1964j, c0087i);
                            this.f = cVar3;
                            if (aVarI != null) {
                                aVarI.i(cVar3);
                                this.f = aVarI.g();
                            }
                            this.f1978d |= 2;
                        } else if (iN == 26) {
                            if ((this.f1978d & 4) == 4) {
                                c cVar4 = this.f1980g;
                                cVar4.getClass();
                                aVarI = c.i(cVar4);
                            }
                            c cVar5 = (c) c0084f.g(c.f1964j, c0087i);
                            this.f1980g = cVar5;
                            if (aVarI != null) {
                                aVarI.i(cVar5);
                                this.f1980g = aVarI.g();
                            }
                            this.f1978d |= 4;
                        } else if (iN == 34) {
                            if ((this.f1978d & 8) == 8) {
                                c cVar6 = this.f1981h;
                                cVar6.getClass();
                                aVarI = c.i(cVar6);
                            }
                            c cVar7 = (c) c0084f.g(c.f1964j, c0087i);
                            this.f1981h = cVar7;
                            if (aVarI != null) {
                                aVarI.i(cVar7);
                                this.f1981h = aVarI.g();
                            }
                            this.f1978d |= 8;
                        } else if (iN != 42) {
                            if (!c0084f.q(iN, jVarJ)) {
                            }
                        } else {
                            if ((this.f1978d & 16) == 16) {
                                c cVar8 = this.f1982i;
                                cVar8.getClass();
                                aVarI = c.i(cVar8);
                            }
                            c cVar9 = (c) c0084f.g(c.f1964j, c0087i);
                            this.f1982i = cVar9;
                            if (aVarI != null) {
                                aVarI.i(cVar9);
                                this.f1982i = aVarI.g();
                            }
                            this.f1978d |= 16;
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
                try {
                    jVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f1977c = c0082d.l();
                    throw th2;
                }
                this.f1977c = c0082d.l();
                throw th;
            }
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1977c = c0082d.l();
            throw th3;
        }
        this.f1977c = c0082d.l();
    }

    public e(AbstractC0089k abstractC0089k) {
        this.f1983j = (byte) -1;
        this.f1984k = -1;
        this.f1977c = abstractC0089k.f2400c;
    }
}
