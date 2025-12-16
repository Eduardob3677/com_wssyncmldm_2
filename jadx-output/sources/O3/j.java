package O3;

import L3.C0052a;
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
public final class j extends AbstractC0095q {

    /* renamed from: i, reason: collision with root package name */
    public static final j f2009i;

    /* renamed from: j, reason: collision with root package name */
    public static final C0052a f2010j = new C0052a(27);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f2011c;

    /* renamed from: d, reason: collision with root package name */
    public List f2012d;

    /* renamed from: e, reason: collision with root package name */
    public List f2013e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public byte f2014g;

    /* renamed from: h, reason: collision with root package name */
    public int f2015h;

    static {
        j jVar = new j();
        f2009i = jVar;
        jVar.f2012d = Collections.emptyList();
        jVar.f2013e = Collections.emptyList();
    }

    public j() {
        this.f = -1;
        this.f2014g = (byte) -1;
        this.f2015h = -1;
        this.f2011c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f2014g;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        this.f2014g = (byte) 1;
        return true;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f2015h;
        if (i5 != -1) {
            return i5;
        }
        int iD = 0;
        for (int i6 = 0; i6 < this.f2012d.size(); i6++) {
            iD += B1.j.d(1, (AbstractC0080b) this.f2012d.get(i6));
        }
        int iC = 0;
        for (int i7 = 0; i7 < this.f2013e.size(); i7++) {
            iC += B1.j.c(((Integer) this.f2013e.get(i7)).intValue());
        }
        int iC2 = iD + iC;
        if (!this.f2013e.isEmpty()) {
            iC2 = iC2 + 1 + B1.j.c(iC);
        }
        this.f = iC;
        int size = this.f2011c.size() + iC2;
        this.f2015h = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return f.g();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        f fVarG = f.g();
        fVarG.h(this);
        return fVarG;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        for (int i5 = 0; i5 < this.f2012d.size(); i5++) {
            jVar.p(1, (AbstractC0080b) this.f2012d.get(i5));
        }
        if (this.f2013e.size() > 0) {
            jVar.w(42);
            jVar.w(this.f);
        }
        for (int i6 = 0; i6 < this.f2013e.size(); i6++) {
            jVar.o(((Integer) this.f2013e.get(i6)).intValue());
        }
        jVar.s(this.f2011c);
    }

    public j(C0084f c0084f, C0087i c0087i) {
        this.f = -1;
        this.f2014g = (byte) -1;
        this.f2015h = -1;
        this.f2012d = Collections.emptyList();
        this.f2013e = Collections.emptyList();
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        boolean z4 = false;
        int i5 = 0;
        while (!z4) {
            try {
                try {
                    int iN = c0084f.n();
                    if (iN != 0) {
                        if (iN == 10) {
                            if ((i5 & 1) != 1) {
                                this.f2012d = new ArrayList();
                                i5 |= 1;
                            }
                            this.f2012d.add(c0084f.g(i.f1998p, c0087i));
                        } else if (iN == 40) {
                            if ((i5 & 2) != 2) {
                                this.f2013e = new ArrayList();
                                i5 |= 2;
                            }
                            this.f2013e.add(Integer.valueOf(c0084f.k()));
                        } else if (iN != 42) {
                            if (!c0084f.q(iN, jVarJ)) {
                            }
                        } else {
                            int iD = c0084f.d(c0084f.k());
                            if ((i5 & 2) != 2 && c0084f.b() > 0) {
                                this.f2013e = new ArrayList();
                                i5 |= 2;
                            }
                            while (c0084f.b() > 0) {
                                this.f2013e.add(Integer.valueOf(c0084f.k()));
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
                if ((i5 & 1) == 1) {
                    this.f2012d = Collections.unmodifiableList(this.f2012d);
                }
                if ((i5 & 2) == 2) {
                    this.f2013e = Collections.unmodifiableList(this.f2013e);
                }
                try {
                    jVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f2011c = c0082d.l();
                    throw th2;
                }
                this.f2011c = c0082d.l();
                throw th;
            }
        }
        if ((i5 & 1) == 1) {
            this.f2012d = Collections.unmodifiableList(this.f2012d);
        }
        if ((i5 & 2) == 2) {
            this.f2013e = Collections.unmodifiableList(this.f2013e);
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f2011c = c0082d.l();
            throw th3;
        }
        this.f2011c = c0082d.l();
    }

    public j(AbstractC0089k abstractC0089k) {
        this.f = -1;
        this.f2014g = (byte) -1;
        this.f2015h = -1;
        this.f2011c = abstractC0089k.f2400c;
    }
}
