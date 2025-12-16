package O3;

import R3.A;
import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;

/* loaded from: classes.dex */
public final class a extends AbstractC0089k implements A {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f1953d;

    /* renamed from: e, reason: collision with root package name */
    public int f1954e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1955g;

    public /* synthetic */ a(int i5) {
        this.f1953d = i5;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        switch (this.f1953d) {
            case 0:
                b bVarF = f();
                if (bVarF.b()) {
                    return bVarF;
                }
                throw new A0.c();
            default:
                c cVarG = g();
                if (cVarG.b()) {
                    return cVarG;
                }
                throw new A0.c();
        }
    }

    public final Object clone() {
        switch (this.f1953d) {
            case 0:
                a aVar = new a(0);
                aVar.h(f());
                return aVar;
            default:
                a aVar2 = new a(1);
                aVar2.i(g());
                return aVar2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0020  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x003f  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        switch (this.f1953d) {
            case 0:
                b bVar = null;
                try {
                    try {
                        b.f1957j.getClass();
                        h(new b(c0084f));
                        return this;
                    } catch (C0098u e5) {
                        b bVar2 = (b) e5.f2416c;
                        try {
                            throw e5;
                        } catch (Throwable th) {
                            th = th;
                            bVar = bVar2;
                            if (bVar != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (bVar != null) {
                        h(bVar);
                    }
                    throw th;
                }
            default:
                c cVar = null;
                try {
                    try {
                        c.f1964j.getClass();
                        i(new c(c0084f));
                        return this;
                    } catch (C0098u e6) {
                        c cVar2 = (c) e6.f2416c;
                        try {
                            throw e6;
                        } catch (Throwable th3) {
                            th = th3;
                            cVar = cVar2;
                            if (cVar != null) {
                            }
                            throw th;
                        }
                    }
                } catch (Throwable th4) {
                    th = th4;
                    if (cVar != null) {
                        i(cVar);
                    }
                    throw th;
                }
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        switch (this.f1953d) {
            case 0:
                h((b) abstractC0095q);
                break;
            default:
                i((c) abstractC0095q);
                break;
        }
        return this;
    }

    public b f() {
        b bVar = new b(this);
        int i5 = this.f1954e;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        bVar.f1960e = this.f;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        bVar.f = this.f1955g;
        bVar.f1959d = i6;
        return bVar;
    }

    public c g() {
        c cVar = new c(this);
        int i5 = this.f1954e;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        cVar.f1967e = this.f;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        cVar.f = this.f1955g;
        cVar.f1966d = i6;
        return cVar;
    }

    public void h(b bVar) {
        if (bVar == b.f1956i) {
            return;
        }
        int i5 = bVar.f1959d;
        if ((i5 & 1) == 1) {
            int i6 = bVar.f1960e;
            this.f1954e = 1 | this.f1954e;
            this.f = i6;
        }
        if ((i5 & 2) == 2) {
            int i7 = bVar.f;
            this.f1954e = 2 | this.f1954e;
            this.f1955g = i7;
        }
        this.f2400c = this.f2400c.m(bVar.f1958c);
    }

    public void i(c cVar) {
        if (cVar == c.f1963i) {
            return;
        }
        int i5 = cVar.f1966d;
        if ((i5 & 1) == 1) {
            int i6 = cVar.f1967e;
            this.f1954e = 1 | this.f1954e;
            this.f = i6;
        }
        if ((i5 & 2) == 2) {
            int i7 = cVar.f;
            this.f1954e = 2 | this.f1954e;
            this.f1955g = i7;
        }
        this.f2400c = this.f2400c.m(cVar.f1965c);
    }
}
