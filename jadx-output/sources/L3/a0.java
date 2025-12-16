package L3;

import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;

/* loaded from: classes.dex */
public final class a0 extends AbstractC0089k implements R3.A {

    /* renamed from: d, reason: collision with root package name */
    public int f1560d;

    /* renamed from: e, reason: collision with root package name */
    public int f1561e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public b0 f1562g;

    /* renamed from: h, reason: collision with root package name */
    public int f1563h;

    /* renamed from: i, reason: collision with root package name */
    public int f1564i;

    /* renamed from: j, reason: collision with root package name */
    public c0 f1565j;

    public static a0 g() {
        a0 a0Var = new a0();
        a0Var.f1562g = b0.ERROR;
        a0Var.f1565j = c0.LANGUAGE_VERSION;
        return a0Var;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        d0 d0VarF = f();
        if (d0VarF.b()) {
            return d0VarF;
        }
        throw new A0.c();
    }

    public final Object clone() {
        a0 a0VarG = g();
        a0VarG.h(f());
        return a0VarG;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        d0 d0Var = null;
        try {
            try {
                d0.n.getClass();
                h(new d0(c0084f));
                return this;
            } catch (C0098u e5) {
                d0 d0Var2 = (d0) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    d0Var = d0Var2;
                    if (d0Var != null) {
                        h(d0Var);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (d0Var != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        h((d0) abstractC0095q);
        return this;
    }

    public final d0 f() {
        d0 d0Var = new d0(this);
        int i5 = this.f1560d;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        d0Var.f1615e = this.f1561e;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        d0Var.f = this.f;
        if ((i5 & 4) == 4) {
            i6 |= 4;
        }
        d0Var.f1616g = this.f1562g;
        if ((i5 & 8) == 8) {
            i6 |= 8;
        }
        d0Var.f1617h = this.f1563h;
        if ((i5 & 16) == 16) {
            i6 |= 16;
        }
        d0Var.f1618i = this.f1564i;
        if ((i5 & 32) == 32) {
            i6 |= 32;
        }
        d0Var.f1619j = this.f1565j;
        d0Var.f1614d = i6;
        return d0Var;
    }

    public final void h(d0 d0Var) {
        if (d0Var == d0.f1612m) {
            return;
        }
        int i5 = d0Var.f1614d;
        if ((i5 & 1) == 1) {
            int i6 = d0Var.f1615e;
            this.f1560d = 1 | this.f1560d;
            this.f1561e = i6;
        }
        if ((i5 & 2) == 2) {
            int i7 = d0Var.f;
            this.f1560d = 2 | this.f1560d;
            this.f = i7;
        }
        if ((i5 & 4) == 4) {
            b0 b0Var = d0Var.f1616g;
            b0Var.getClass();
            this.f1560d = 4 | this.f1560d;
            this.f1562g = b0Var;
        }
        int i8 = d0Var.f1614d;
        if ((i8 & 8) == 8) {
            int i9 = d0Var.f1617h;
            this.f1560d = 8 | this.f1560d;
            this.f1563h = i9;
        }
        if ((i8 & 16) == 16) {
            int i10 = d0Var.f1618i;
            this.f1560d = 16 | this.f1560d;
            this.f1564i = i10;
        }
        if ((i8 & 32) == 32) {
            c0 c0Var = d0Var.f1619j;
            c0Var.getClass();
            this.f1560d = 32 | this.f1560d;
            this.f1565j = c0Var;
        }
        this.f2400c = this.f2400c.m(d0Var.f1613c);
    }
}
