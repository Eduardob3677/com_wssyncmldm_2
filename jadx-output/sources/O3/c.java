package O3;

import L3.C0052a;
import R3.AbstractC0083e;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0082d;
import R3.C0084f;
import R3.C0098u;
import java.io.IOException;

/* loaded from: classes.dex */
public final class c extends AbstractC0095q {

    /* renamed from: i, reason: collision with root package name */
    public static final c f1963i;

    /* renamed from: j, reason: collision with root package name */
    public static final C0052a f1964j = new C0052a(25);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1965c;

    /* renamed from: d, reason: collision with root package name */
    public int f1966d;

    /* renamed from: e, reason: collision with root package name */
    public int f1967e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public byte f1968g;

    /* renamed from: h, reason: collision with root package name */
    public int f1969h;

    static {
        c cVar = new c();
        f1963i = cVar;
        cVar.f1967e = 0;
        cVar.f = 0;
    }

    public c() {
        this.f1968g = (byte) -1;
        this.f1969h = -1;
        this.f1965c = AbstractC0083e.f2383c;
    }

    public static a i(c cVar) {
        a aVar = new a(1);
        aVar.i(cVar);
        return aVar;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1968g;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        this.f1968g = (byte) 1;
        return true;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1969h;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1966d & 1) == 1 ? B1.j.b(1, this.f1967e) : 0;
        if ((this.f1966d & 2) == 2) {
            iB += B1.j.b(2, this.f);
        }
        int size = this.f1965c.size() + iB;
        this.f1969h = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return new a(1);
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        return i(this);
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        if ((this.f1966d & 1) == 1) {
            jVar.n(1, this.f1967e);
        }
        if ((this.f1966d & 2) == 2) {
            jVar.n(2, this.f);
        }
        jVar.s(this.f1965c);
    }

    public c(C0084f c0084f) {
        this.f1968g = (byte) -1;
        this.f1969h = -1;
        boolean z4 = false;
        this.f1967e = 0;
        this.f = 0;
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        while (!z4) {
            try {
                try {
                    int iN = c0084f.n();
                    if (iN != 0) {
                        if (iN == 8) {
                            this.f1966d |= 1;
                            this.f1967e = c0084f.k();
                        } else if (iN != 16) {
                            if (!c0084f.q(iN, jVarJ)) {
                            }
                        } else {
                            this.f1966d |= 2;
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
                try {
                    jVarJ.i();
                } catch (IOException unused) {
                } catch (Throwable th2) {
                    this.f1965c = c0082d.l();
                    throw th2;
                }
                this.f1965c = c0082d.l();
                throw th;
            }
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1965c = c0082d.l();
            throw th3;
        }
        this.f1965c = c0082d.l();
    }

    public c(AbstractC0089k abstractC0089k) {
        this.f1968g = (byte) -1;
        this.f1969h = -1;
        this.f1965c = abstractC0089k.f2400c;
    }
}
