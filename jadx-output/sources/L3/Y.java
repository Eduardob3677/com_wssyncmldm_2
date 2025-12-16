package L3;

import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0090l;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;

/* loaded from: classes.dex */
public final class Y extends AbstractC0090l {
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1543g;

    /* renamed from: h, reason: collision with root package name */
    public int f1544h;

    /* renamed from: i, reason: collision with root package name */
    public Q f1545i;

    /* renamed from: j, reason: collision with root package name */
    public int f1546j;

    /* renamed from: k, reason: collision with root package name */
    public Q f1547k;

    /* renamed from: l, reason: collision with root package name */
    public int f1548l;

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        Z zG = g();
        if (zG.b()) {
            return zG;
        }
        throw new A0.c();
    }

    public final Object clone() {
        Y y3 = new Y();
        Q q2 = Q.f1476v;
        y3.f1545i = q2;
        y3.f1547k = q2;
        y3.h(g());
        return y3;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        Z z4 = null;
        try {
            try {
                Z.f1549o.getClass();
                h(new Z(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                Z z5 = (Z) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    z4 = z5;
                    if (z4 != null) {
                        h(z4);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (z4 != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        h((Z) abstractC0095q);
        return this;
    }

    public final Z g() {
        Z z4 = new Z(this);
        int i5 = this.f;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        z4.f = this.f1543g;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        z4.f1552g = this.f1544h;
        if ((i5 & 4) == 4) {
            i6 |= 4;
        }
        z4.f1553h = this.f1545i;
        if ((i5 & 8) == 8) {
            i6 |= 8;
        }
        z4.f1554i = this.f1546j;
        if ((i5 & 16) == 16) {
            i6 |= 16;
        }
        z4.f1555j = this.f1547k;
        if ((i5 & 32) == 32) {
            i6 |= 32;
        }
        z4.f1556k = this.f1548l;
        z4.f1551e = i6;
        return z4;
    }

    public final void h(Z z4) {
        Q q2;
        Q q5;
        if (z4 == Z.n) {
            return;
        }
        int i5 = z4.f1551e;
        if ((i5 & 1) == 1) {
            int i6 = z4.f;
            this.f = 1 | this.f;
            this.f1543g = i6;
        }
        if ((i5 & 2) == 2) {
            int i7 = z4.f1552g;
            this.f = 2 | this.f;
            this.f1544h = i7;
        }
        if ((i5 & 4) == 4) {
            Q q6 = z4.f1553h;
            if ((this.f & 4) != 4 || (q5 = this.f1545i) == Q.f1476v) {
                this.f1545i = q6;
            } else {
                P pS = Q.s(q5);
                pS.i(q6);
                this.f1545i = pS.g();
            }
            this.f |= 4;
        }
        int i8 = z4.f1551e;
        if ((i8 & 8) == 8) {
            int i9 = z4.f1554i;
            this.f = 8 | this.f;
            this.f1546j = i9;
        }
        if ((i8 & 16) == 16) {
            Q q7 = z4.f1555j;
            if ((this.f & 16) != 16 || (q2 = this.f1547k) == Q.f1476v) {
                this.f1547k = q7;
            } else {
                P pS2 = Q.s(q2);
                pS2.i(q7);
                this.f1547k = pS2.g();
            }
            this.f |= 16;
        }
        if ((z4.f1551e & 32) == 32) {
            int i10 = z4.f1556k;
            this.f = 32 | this.f;
            this.f1548l = i10;
        }
        f(z4);
        this.f2400c = this.f2400c.m(z4.f1550d);
    }
}
