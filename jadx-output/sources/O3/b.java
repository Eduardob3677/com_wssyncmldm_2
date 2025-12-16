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
public final class b extends AbstractC0095q {

    /* renamed from: i, reason: collision with root package name */
    public static final b f1956i;

    /* renamed from: j, reason: collision with root package name */
    public static final C0052a f1957j = new C0052a(24);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1958c;

    /* renamed from: d, reason: collision with root package name */
    public int f1959d;

    /* renamed from: e, reason: collision with root package name */
    public int f1960e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public byte f1961g;

    /* renamed from: h, reason: collision with root package name */
    public int f1962h;

    static {
        b bVar = new b();
        f1956i = bVar;
        bVar.f1960e = 0;
        bVar.f = 0;
    }

    public b() {
        this.f1961g = (byte) -1;
        this.f1962h = -1;
        this.f1958c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1961g;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        this.f1961g = (byte) 1;
        return true;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1962h;
        if (i5 != -1) {
            return i5;
        }
        int iB = (this.f1959d & 1) == 1 ? B1.j.b(1, this.f1960e) : 0;
        if ((this.f1959d & 2) == 2) {
            iB += B1.j.b(2, this.f);
        }
        int size = this.f1958c.size() + iB;
        this.f1962h = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return new a(0);
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        a aVar = new a(0);
        aVar.h(this);
        return aVar;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        if ((this.f1959d & 1) == 1) {
            jVar.n(1, this.f1960e);
        }
        if ((this.f1959d & 2) == 2) {
            jVar.n(2, this.f);
        }
        jVar.s(this.f1958c);
    }

    public b(C0084f c0084f) {
        this.f1961g = (byte) -1;
        this.f1962h = -1;
        boolean z4 = false;
        this.f1960e = 0;
        this.f = 0;
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        while (!z4) {
            try {
                try {
                    int iN = c0084f.n();
                    if (iN != 0) {
                        if (iN == 8) {
                            this.f1959d |= 1;
                            this.f1960e = c0084f.k();
                        } else if (iN != 16) {
                            if (!c0084f.q(iN, jVarJ)) {
                            }
                        } else {
                            this.f1959d |= 2;
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
                    this.f1958c = c0082d.l();
                    throw th2;
                }
                this.f1958c = c0082d.l();
                throw th;
            }
        }
        try {
            jVarJ.i();
        } catch (IOException unused2) {
        } catch (Throwable th3) {
            this.f1958c = c0082d.l();
            throw th3;
        }
        this.f1958c = c0082d.l();
    }

    public b(AbstractC0089k abstractC0089k) {
        this.f1961g = (byte) -1;
        this.f1962h = -1;
        this.f1958c = abstractC0089k.f2400c;
    }
}
