package L3;

import R3.AbstractC0080b;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: L3.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0071u extends AbstractC0089k implements R3.A {

    /* renamed from: d, reason: collision with root package name */
    public int f1754d;

    /* renamed from: e, reason: collision with root package name */
    public int f1755e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public EnumC0072v f1756g;

    /* renamed from: h, reason: collision with root package name */
    public Q f1757h;

    /* renamed from: i, reason: collision with root package name */
    public int f1758i;

    /* renamed from: j, reason: collision with root package name */
    public List f1759j;

    /* renamed from: k, reason: collision with root package name */
    public List f1760k;

    public static C0071u g() {
        C0071u c0071u = new C0071u();
        c0071u.f1756g = EnumC0072v.TRUE;
        c0071u.f1757h = Q.f1476v;
        c0071u.f1759j = Collections.emptyList();
        c0071u.f1760k = Collections.emptyList();
        return c0071u;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        C0073w c0073wF = f();
        if (c0073wF.b()) {
            return c0073wF;
        }
        throw new A0.c();
    }

    public final Object clone() {
        C0071u c0071uG = g();
        c0071uG.h(f());
        return c0071uG;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        C0073w c0073w = null;
        try {
            try {
                C0073w.f1765o.getClass();
                h(new C0073w(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                C0073w c0073w2 = (C0073w) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    c0073w = c0073w2;
                    if (c0073w != null) {
                        h(c0073w);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (c0073w != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        h((C0073w) abstractC0095q);
        return this;
    }

    public final C0073w f() {
        C0073w c0073w = new C0073w(this);
        int i5 = this.f1754d;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        c0073w.f1768e = this.f1755e;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        c0073w.f = this.f;
        if ((i5 & 4) == 4) {
            i6 |= 4;
        }
        c0073w.f1769g = this.f1756g;
        if ((i5 & 8) == 8) {
            i6 |= 8;
        }
        c0073w.f1770h = this.f1757h;
        if ((i5 & 16) == 16) {
            i6 |= 16;
        }
        c0073w.f1771i = this.f1758i;
        if ((i5 & 32) == 32) {
            this.f1759j = Collections.unmodifiableList(this.f1759j);
            this.f1754d &= -33;
        }
        c0073w.f1772j = this.f1759j;
        if ((this.f1754d & 64) == 64) {
            this.f1760k = Collections.unmodifiableList(this.f1760k);
            this.f1754d &= -65;
        }
        c0073w.f1773k = this.f1760k;
        c0073w.f1767d = i6;
        return c0073w;
    }

    public final void h(C0073w c0073w) {
        Q q2;
        if (c0073w == C0073w.n) {
            return;
        }
        int i5 = c0073w.f1767d;
        if ((i5 & 1) == 1) {
            int i6 = c0073w.f1768e;
            this.f1754d = 1 | this.f1754d;
            this.f1755e = i6;
        }
        if ((i5 & 2) == 2) {
            int i7 = c0073w.f;
            this.f1754d = 2 | this.f1754d;
            this.f = i7;
        }
        if ((i5 & 4) == 4) {
            EnumC0072v enumC0072v = c0073w.f1769g;
            enumC0072v.getClass();
            this.f1754d = 4 | this.f1754d;
            this.f1756g = enumC0072v;
        }
        if ((c0073w.f1767d & 8) == 8) {
            Q q5 = c0073w.f1770h;
            if ((this.f1754d & 8) != 8 || (q2 = this.f1757h) == Q.f1476v) {
                this.f1757h = q5;
            } else {
                P pS = Q.s(q2);
                pS.i(q5);
                this.f1757h = pS.g();
            }
            this.f1754d |= 8;
        }
        if ((c0073w.f1767d & 16) == 16) {
            int i8 = c0073w.f1771i;
            this.f1754d = 16 | this.f1754d;
            this.f1758i = i8;
        }
        if (!c0073w.f1772j.isEmpty()) {
            if (this.f1759j.isEmpty()) {
                this.f1759j = c0073w.f1772j;
                this.f1754d &= -33;
            } else {
                if ((this.f1754d & 32) != 32) {
                    this.f1759j = new ArrayList(this.f1759j);
                    this.f1754d |= 32;
                }
                this.f1759j.addAll(c0073w.f1772j);
            }
        }
        if (!c0073w.f1773k.isEmpty()) {
            if (this.f1760k.isEmpty()) {
                this.f1760k = c0073w.f1773k;
                this.f1754d &= -65;
            } else {
                if ((this.f1754d & 64) != 64) {
                    this.f1760k = new ArrayList(this.f1760k);
                    this.f1754d |= 64;
                }
                this.f1760k.addAll(c0073w.f1773k);
            }
        }
        this.f2400c = this.f2400c.m(c0073w.f1766c);
    }
}
