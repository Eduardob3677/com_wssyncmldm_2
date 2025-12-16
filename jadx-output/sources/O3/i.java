package O3;

import L3.C0052a;
import R3.AbstractC0083e;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0082d;
import R3.C0084f;
import R3.C0098u;
import R3.z;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class i extends AbstractC0095q {

    /* renamed from: o, reason: collision with root package name */
    public static final i f1997o;

    /* renamed from: p, reason: collision with root package name */
    public static final C0052a f1998p = new C0052a(28);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1999c;

    /* renamed from: d, reason: collision with root package name */
    public int f2000d;

    /* renamed from: e, reason: collision with root package name */
    public int f2001e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public Object f2002g;

    /* renamed from: h, reason: collision with root package name */
    public h f2003h;

    /* renamed from: i, reason: collision with root package name */
    public List f2004i;

    /* renamed from: j, reason: collision with root package name */
    public int f2005j;

    /* renamed from: k, reason: collision with root package name */
    public List f2006k;

    /* renamed from: l, reason: collision with root package name */
    public int f2007l;

    /* renamed from: m, reason: collision with root package name */
    public byte f2008m;
    public int n;

    static {
        i iVar = new i();
        f1997o = iVar;
        iVar.f2001e = 1;
        iVar.f = 0;
        iVar.f2002g = "";
        iVar.f2003h = h.NONE;
        iVar.f2004i = Collections.emptyList();
        iVar.f2006k = Collections.emptyList();
    }

    public i() {
        this.f2005j = -1;
        this.f2007l = -1;
        this.f2008m = (byte) -1;
        this.n = -1;
        this.f1999c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f2008m;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        this.f2008m = (byte) 1;
        return true;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        AbstractC0083e zVar;
        int i5 = this.n;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f2000d & 1) == 1 ? B1.j.b(1, this.f2001e) : 0;
        if ((this.f2000d & 2) == 2) {
            iB += B1.j.b(2, this.f);
        }
        if ((this.f2000d & 8) == 8) {
            iB += B1.j.a(3, this.f2003h.f1996c);
        }
        int iC = 0;
        for (int i6 = 0; i6 < this.f2004i.size(); i6++) {
            iC += B1.j.c(((Integer) this.f2004i.get(i6)).intValue());
        }
        int iC2 = iB + iC;
        if (!this.f2004i.isEmpty()) {
            iC2 = iC2 + 1 + B1.j.c(iC);
        }
        this.f2005j = iC;
        int iC3 = 0;
        for (int i7 = 0; i7 < this.f2006k.size(); i7++) {
            iC3 += B1.j.c(((Integer) this.f2006k.get(i7)).intValue());
        }
        int size = iC2 + iC3;
        if (!this.f2006k.isEmpty()) {
            size = size + 1 + B1.j.c(iC3);
        }
        this.f2007l = iC3;
        if ((this.f2000d & 4) == 4) {
            Object obj = this.f2002g;
            if (obj instanceof String) {
                try {
                    zVar = new z(((String) obj).getBytes("UTF-8"));
                    this.f2002g = zVar;
                } catch (UnsupportedEncodingException e5) {
                    throw new RuntimeException("UTF-8 not supported?", e5);
                }
            } else {
                zVar = (AbstractC0083e) obj;
            }
            size += zVar.size() + B1.j.f(zVar.size()) + B1.j.h(6);
        }
        int size2 = this.f1999c.size() + size;
        this.n = size2;
        return size2;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return g.g();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        g gVarG = g.g();
        gVarG.h(this);
        return gVarG;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        AbstractC0083e zVar;
        c();
        if ((this.f2000d & 1) == 1) {
            jVar.n(1, this.f2001e);
        }
        if ((this.f2000d & 2) == 2) {
            jVar.n(2, this.f);
        }
        if ((this.f2000d & 8) == 8) {
            jVar.m(3, this.f2003h.f1996c);
        }
        if (this.f2004i.size() > 0) {
            jVar.w(34);
            jVar.w(this.f2005j);
        }
        for (int i5 = 0; i5 < this.f2004i.size(); i5++) {
            jVar.o(((Integer) this.f2004i.get(i5)).intValue());
        }
        if (this.f2006k.size() > 0) {
            jVar.w(42);
            jVar.w(this.f2007l);
        }
        for (int i6 = 0; i6 < this.f2006k.size(); i6++) {
            jVar.o(((Integer) this.f2006k.get(i6)).intValue());
        }
        if ((this.f2000d & 4) == 4) {
            Object obj = this.f2002g;
            if (obj instanceof String) {
                try {
                    zVar = new z(((String) obj).getBytes("UTF-8"));
                    this.f2002g = zVar;
                } catch (UnsupportedEncodingException e5) {
                    throw new RuntimeException("UTF-8 not supported?", e5);
                }
            } else {
                zVar = (AbstractC0083e) obj;
            }
            jVar.y(6, 2);
            jVar.w(zVar.size());
            jVar.s(zVar);
        }
        jVar.s(this.f1999c);
    }

    public i(C0084f c0084f) {
        h hVar;
        this.f2005j = -1;
        this.f2007l = -1;
        this.f2008m = (byte) -1;
        this.n = -1;
        this.f2001e = 1;
        boolean z4 = false;
        this.f = 0;
        this.f2002g = "";
        h hVar2 = h.NONE;
        this.f2003h = hVar2;
        this.f2004i = Collections.emptyList();
        this.f2006k = Collections.emptyList();
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        int i5 = 0;
        while (!z4) {
            try {
                try {
                    int iN = c0084f.n();
                    if (iN != 0) {
                        if (iN == 8) {
                            this.f2000d |= 1;
                            this.f2001e = c0084f.k();
                        } else if (iN == 16) {
                            this.f2000d |= 2;
                            this.f = c0084f.k();
                        } else if (iN == 24) {
                            int iK = c0084f.k();
                            if (iK == 0) {
                                hVar = hVar2;
                            } else if (iK != 1) {
                                hVar = iK != 2 ? null : h.DESC_TO_CLASS_ID;
                            } else {
                                hVar = h.INTERNAL_TO_CLASS_ID;
                            }
                            if (hVar == null) {
                                jVarJ.w(iN);
                                jVarJ.w(iK);
                            } else {
                                this.f2000d |= 8;
                                this.f2003h = hVar;
                            }
                        } else if (iN == 32) {
                            if ((i5 & 16) != 16) {
                                this.f2004i = new ArrayList();
                                i5 |= 16;
                            }
                            this.f2004i.add(Integer.valueOf(c0084f.k()));
                        } else if (iN == 34) {
                            int iD = c0084f.d(c0084f.k());
                            if ((i5 & 16) != 16 && c0084f.b() > 0) {
                                this.f2004i = new ArrayList();
                                i5 |= 16;
                            }
                            while (c0084f.b() > 0) {
                                this.f2004i.add(Integer.valueOf(c0084f.k()));
                            }
                            c0084f.c(iD);
                        } else if (iN == 40) {
                            if ((i5 & 32) != 32) {
                                this.f2006k = new ArrayList();
                                i5 |= 32;
                            }
                            this.f2006k.add(Integer.valueOf(c0084f.k()));
                        } else if (iN == 42) {
                            int iD2 = c0084f.d(c0084f.k());
                            if ((i5 & 32) != 32 && c0084f.b() > 0) {
                                this.f2006k = new ArrayList();
                                i5 |= 32;
                            }
                            while (c0084f.b() > 0) {
                                this.f2006k.add(Integer.valueOf(c0084f.k()));
                            }
                            c0084f.c(iD2);
                        } else if (iN != 50) {
                            if (!c0084f.q(iN, jVarJ)) {
                            }
                        } else {
                            z zVarE = c0084f.e();
                            this.f2000d |= 4;
                            this.f2002g = zVarE;
                        }
                    }
                    z4 = true;
                } catch (Throwable th) {
                    if ((i5 & 16) == 16) {
                        this.f2004i = Collections.unmodifiableList(this.f2004i);
                    }
                    if ((i5 & 32) == 32) {
                        this.f2006k = Collections.unmodifiableList(this.f2006k);
                    }
                    try {
                        jVarJ.i();
                    } catch (IOException unused) {
                    } catch (Throwable th2) {
                        this.f1999c = c0082d.l();
                        throw th2;
                    }
                    this.f1999c = c0082d.l();
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
        if ((i5 & 16) == 16) {
            this.f2004i = Collections.unmodifiableList(this.f2004i);
        }
        if ((i5 & 32) == 32) {
            this.f2006k = Collections.unmodifiableList(this.f2006k);
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1999c = c0082d.l();
            throw th3;
        }
        this.f1999c = c0082d.l();
    }

    public i(AbstractC0089k abstractC0089k) {
        this.f2005j = -1;
        this.f2007l = -1;
        this.f2008m = (byte) -1;
        this.n = -1;
        this.f1999c = abstractC0089k.f2400c;
    }
}
