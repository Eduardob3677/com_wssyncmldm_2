package L3;

import R3.AbstractC0083e;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0082d;
import R3.C0084f;
import R3.C0098u;
import java.io.IOException;

/* loaded from: classes.dex */
public final class J extends AbstractC0095q {

    /* renamed from: j, reason: collision with root package name */
    public static final J f1429j;

    /* renamed from: k, reason: collision with root package name */
    public static final C0052a f1430k = new C0052a(14);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1431c;

    /* renamed from: d, reason: collision with root package name */
    public int f1432d;

    /* renamed from: e, reason: collision with root package name */
    public int f1433e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public I f1434g;

    /* renamed from: h, reason: collision with root package name */
    public byte f1435h;

    /* renamed from: i, reason: collision with root package name */
    public int f1436i;

    static {
        J j3 = new J();
        f1429j = j3;
        j3.f1433e = -1;
        j3.f = 0;
        j3.f1434g = I.PACKAGE;
    }

    public J() {
        this.f1435h = (byte) -1;
        this.f1436i = -1;
        this.f1431c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1435h;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        if ((this.f1432d & 2) == 2) {
            this.f1435h = (byte) 1;
            return true;
        }
        this.f1435h = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1436i;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1432d & 1) == 1 ? B1.j.b(1, this.f1433e) : 0;
        if ((this.f1432d & 2) == 2) {
            iB += B1.j.b(2, this.f);
        }
        if ((this.f1432d & 4) == 4) {
            iB += B1.j.a(3, this.f1434g.f1428c);
        }
        int size = this.f1431c.size() + iB;
        this.f1436i = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return H.g();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        H hG = H.g();
        hG.h(this);
        return hG;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        if ((this.f1432d & 1) == 1) {
            jVar.n(1, this.f1433e);
        }
        if ((this.f1432d & 2) == 2) {
            jVar.n(2, this.f);
        }
        if ((this.f1432d & 4) == 4) {
            jVar.m(3, this.f1434g.f1428c);
        }
        jVar.s(this.f1431c);
    }

    public J(C0084f c0084f) {
        I i5;
        this.f1435h = (byte) -1;
        this.f1436i = -1;
        this.f1433e = -1;
        boolean z4 = false;
        this.f = 0;
        I i6 = I.PACKAGE;
        this.f1434g = i6;
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        while (!z4) {
            try {
                try {
                    try {
                        int iN = c0084f.n();
                        if (iN != 0) {
                            if (iN == 8) {
                                this.f1432d |= 1;
                                this.f1433e = c0084f.k();
                            } else if (iN == 16) {
                                this.f1432d |= 2;
                                this.f = c0084f.k();
                            } else if (iN != 24) {
                                if (!c0084f.q(iN, jVarJ)) {
                                }
                            } else {
                                int iK = c0084f.k();
                                if (iK == 0) {
                                    i5 = I.CLASS;
                                } else if (iK != 1) {
                                    i5 = iK != 2 ? null : I.LOCAL;
                                } else {
                                    i5 = i6;
                                }
                                if (i5 == null) {
                                    jVarJ.w(iN);
                                    jVarJ.w(iK);
                                } else {
                                    this.f1432d |= 4;
                                    this.f1434g = i5;
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
                try {
                    jVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f1431c = c0082d.l();
                    throw th2;
                }
                this.f1431c = c0082d.l();
                throw th;
            }
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1431c = c0082d.l();
            throw th3;
        }
        this.f1431c = c0082d.l();
    }

    public J(AbstractC0089k abstractC0089k) {
        this.f1435h = (byte) -1;
        this.f1436i = -1;
        this.f1431c = abstractC0089k.f2400c;
    }
}
