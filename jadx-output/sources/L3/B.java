package L3;

import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0090l;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class B extends AbstractC0090l {
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public List f1363g;

    /* renamed from: h, reason: collision with root package name */
    public List f1364h;

    /* renamed from: i, reason: collision with root package name */
    public List f1365i;

    /* renamed from: j, reason: collision with root package name */
    public X f1366j;

    /* renamed from: k, reason: collision with root package name */
    public e0 f1367k;

    public static B h() {
        B b3 = new B();
        b3.f1363g = Collections.emptyList();
        b3.f1364h = Collections.emptyList();
        b3.f1365i = Collections.emptyList();
        b3.f1366j = X.f1536i;
        b3.f1367k = e0.f1629g;
        return b3;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        C cG = g();
        if (cG.b()) {
            return cG;
        }
        throw new A0.c();
    }

    public final Object clone() {
        B bH = h();
        bH.i(g());
        return bH;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        C c2 = null;
        try {
            try {
                C.n.getClass();
                i(new C(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                C c5 = (C) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    c2 = c5;
                    if (c2 != null) {
                        i(c2);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (c2 != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        i((C) abstractC0095q);
        return this;
    }

    public final C g() {
        C c2 = new C(this);
        int i5 = this.f;
        if ((i5 & 1) == 1) {
            this.f1363g = Collections.unmodifiableList(this.f1363g);
            this.f &= -2;
        }
        c2.f = this.f1363g;
        if ((this.f & 2) == 2) {
            this.f1364h = Collections.unmodifiableList(this.f1364h);
            this.f &= -3;
        }
        c2.f1371g = this.f1364h;
        if ((this.f & 4) == 4) {
            this.f1365i = Collections.unmodifiableList(this.f1365i);
            this.f &= -5;
        }
        c2.f1372h = this.f1365i;
        int i6 = (i5 & 8) != 8 ? 0 : 1;
        c2.f1373i = this.f1366j;
        if ((i5 & 16) == 16) {
            i6 |= 2;
        }
        c2.f1374j = this.f1367k;
        c2.f1370e = i6;
        return c2;
    }

    public final void i(C c2) {
        e0 e0Var;
        X x4;
        if (c2 == C.f1368m) {
            return;
        }
        if (!c2.f.isEmpty()) {
            if (this.f1363g.isEmpty()) {
                this.f1363g = c2.f;
                this.f &= -2;
            } else {
                if ((this.f & 1) != 1) {
                    this.f1363g = new ArrayList(this.f1363g);
                    this.f |= 1;
                }
                this.f1363g.addAll(c2.f);
            }
        }
        if (!c2.f1371g.isEmpty()) {
            if (this.f1364h.isEmpty()) {
                this.f1364h = c2.f1371g;
                this.f &= -3;
            } else {
                if ((this.f & 2) != 2) {
                    this.f1364h = new ArrayList(this.f1364h);
                    this.f |= 2;
                }
                this.f1364h.addAll(c2.f1371g);
            }
        }
        if (!c2.f1372h.isEmpty()) {
            if (this.f1365i.isEmpty()) {
                this.f1365i = c2.f1372h;
                this.f &= -5;
            } else {
                if ((this.f & 4) != 4) {
                    this.f1365i = new ArrayList(this.f1365i);
                    this.f |= 4;
                }
                this.f1365i.addAll(c2.f1372h);
            }
        }
        if ((c2.f1370e & 1) == 1) {
            X x5 = c2.f1373i;
            if ((this.f & 8) != 8 || (x4 = this.f1366j) == X.f1536i) {
                this.f1366j = x5;
            } else {
                C0057f c0057fI = X.i(x4);
                c0057fI.l(x5);
                this.f1366j = c0057fI.h();
            }
            this.f |= 8;
        }
        if ((c2.f1370e & 2) == 2) {
            e0 e0Var2 = c2.f1374j;
            if ((this.f & 16) != 16 || (e0Var = this.f1367k) == e0.f1629g) {
                this.f1367k = e0Var2;
            } else {
                C0064m c0064m = new C0064m(2);
                c0064m.f = Collections.emptyList();
                c0064m.m(e0Var);
                c0064m.m(e0Var2);
                this.f1367k = c0064m.i();
            }
            this.f |= 16;
        }
        f(c2);
        this.f2400c = this.f2400c.m(c2.f1369d);
    }
}
