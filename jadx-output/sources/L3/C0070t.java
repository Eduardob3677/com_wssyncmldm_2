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

/* renamed from: L3.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0070t extends AbstractC0092n {

    /* renamed from: i, reason: collision with root package name */
    public static final C0070t f1748i;

    /* renamed from: j, reason: collision with root package name */
    public static final C0052a f1749j = new C0052a(7);

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0083e f1750d;

    /* renamed from: e, reason: collision with root package name */
    public int f1751e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public byte f1752g;

    /* renamed from: h, reason: collision with root package name */
    public int f1753h;

    static {
        C0070t c0070t = new C0070t();
        f1748i = c0070t;
        c0070t.f = 0;
    }

    public C0070t(AbstractC0090l abstractC0090l) {
        super(abstractC0090l);
        this.f1752g = (byte) -1;
        this.f1753h = -1;
        this.f1750d = abstractC0090l.f2400c;
    }

    @Override // R3.A
    public final AbstractC0080b a() {
        return f1748i;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1752g;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        if (i()) {
            this.f1752g = (byte) 1;
            return true;
        }
        this.f1752g = (byte) 0;
        return false;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1753h;
        if (i5 != -1) {
            return i5;
        }
        int size = this.f1750d.size() + j() + ((this.f1751e & 1) == 1 ? B1.j.b(1, this.f) : 0);
        this.f1753h = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return new C0069s();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        C0069s c0069s = new C0069s();
        c0069s.g(this);
        return c0069s;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        C0091m c0091mN = n();
        if ((this.f1751e & 1) == 1) {
            jVar.n(1, this.f);
        }
        c0091mN.d(200, jVar);
        jVar.s(this.f1750d);
    }

    public C0070t() {
        this.f1752g = (byte) -1;
        this.f1753h = -1;
        this.f1750d = AbstractC0083e.f2383c;
    }

    public C0070t(C0084f c0084f, C0087i c0087i) {
        this.f1752g = (byte) -1;
        this.f1753h = -1;
        boolean z4 = false;
        this.f = 0;
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        while (!z4) {
            try {
                try {
                    try {
                        int iN = c0084f.n();
                        if (iN != 0) {
                            if (iN != 8) {
                                if (!o(c0084f, jVarJ, c0087i, iN)) {
                                }
                            } else {
                                this.f1751e |= 1;
                                this.f = c0084f.k();
                            }
                        }
                        z4 = true;
                    } catch (C0098u e5) {
                        e5.f2416c = this;
                        throw e5;
                    }
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
                    this.f1750d = c0082d.l();
                    throw th2;
                }
                this.f1750d = c0082d.l();
                m();
                throw th;
            }
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1750d = c0082d.l();
            throw th3;
        }
        this.f1750d = c0082d.l();
        m();
    }
}
