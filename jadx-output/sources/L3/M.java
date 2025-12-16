package L3;

import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;

/* loaded from: classes.dex */
public final class M extends AbstractC0089k implements R3.A {

    /* renamed from: d, reason: collision with root package name */
    public int f1447d;

    /* renamed from: e, reason: collision with root package name */
    public N f1448e;
    public Q f;

    /* renamed from: g, reason: collision with root package name */
    public int f1449g;

    public static M g() {
        M m5 = new M();
        m5.f1448e = N.INV;
        m5.f = Q.f1476v;
        return m5;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        O oF = f();
        if (oF.b()) {
            return oF;
        }
        throw new A0.c();
    }

    public final Object clone() {
        M mG = g();
        mG.h(f());
        return mG;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        O o2 = null;
        try {
            try {
                O.f1456k.getClass();
                h(new O(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                O o5 = (O) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    o2 = o5;
                    if (o2 != null) {
                        h(o2);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (o2 != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        h((O) abstractC0095q);
        return this;
    }

    public final O f() {
        O o2 = new O(this);
        int i5 = this.f1447d;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        o2.f1459e = this.f1448e;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        o2.f = this.f;
        if ((i5 & 4) == 4) {
            i6 |= 4;
        }
        o2.f1460g = this.f1449g;
        o2.f1458d = i6;
        return o2;
    }

    public final void h(O o2) {
        Q q2;
        if (o2 == O.f1455j) {
            return;
        }
        if ((o2.f1458d & 1) == 1) {
            N n = o2.f1459e;
            n.getClass();
            this.f1447d = 1 | this.f1447d;
            this.f1448e = n;
        }
        if ((o2.f1458d & 2) == 2) {
            Q q5 = o2.f;
            if ((this.f1447d & 2) != 2 || (q2 = this.f) == Q.f1476v) {
                this.f = q5;
            } else {
                P pS = Q.s(q2);
                pS.i(q5);
                this.f = pS.g();
            }
            this.f1447d |= 2;
        }
        if ((o2.f1458d & 4) == 4) {
            int i5 = o2.f1460g;
            this.f1447d = 4 | this.f1447d;
            this.f1449g = i5;
        }
        this.f2400c = this.f2400c.m(o2.f1457c);
    }
}
