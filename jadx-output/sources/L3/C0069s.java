package L3;

import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0090l;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;

/* renamed from: L3.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0069s extends AbstractC0090l {
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1747g;

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        C0070t c0070t = new C0070t(this);
        int i5 = (this.f & 1) != 1 ? 0 : 1;
        c0070t.f = this.f1747g;
        c0070t.f1751e = i5;
        if (c0070t.b()) {
            return c0070t;
        }
        throw new A0.c();
    }

    public final Object clone() {
        C0069s c0069s = new C0069s();
        C0070t c0070t = new C0070t(this);
        int i5 = (this.f & 1) != 1 ? 0 : 1;
        c0070t.f = this.f1747g;
        c0070t.f1751e = i5;
        c0069s.g(c0070t);
        return c0069s;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        C0070t c0070t = null;
        try {
            try {
                C0070t.f1749j.getClass();
                g(new C0070t(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                C0070t c0070t2 = (C0070t) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    c0070t = c0070t2;
                    if (c0070t != null) {
                        g(c0070t);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (c0070t != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        g((C0070t) abstractC0095q);
        return this;
    }

    public final void g(C0070t c0070t) {
        if (c0070t == C0070t.f1748i) {
            return;
        }
        if ((c0070t.f1751e & 1) == 1) {
            int i5 = c0070t.f;
            this.f = 1 | this.f;
            this.f1747g = i5;
        }
        f(c0070t);
        this.f2400c = this.f2400c.m(c0070t.f1750d);
    }
}
