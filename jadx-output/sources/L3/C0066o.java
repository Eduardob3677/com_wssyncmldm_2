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

/* renamed from: L3.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0066o extends AbstractC0089k implements R3.A {

    /* renamed from: d, reason: collision with root package name */
    public int f1726d;

    /* renamed from: e, reason: collision with root package name */
    public EnumC0067p f1727e;
    public List f;

    /* renamed from: g, reason: collision with root package name */
    public C0073w f1728g;

    /* renamed from: h, reason: collision with root package name */
    public EnumC0068q f1729h;

    public static C0066o g() {
        C0066o c0066o = new C0066o();
        c0066o.f1727e = EnumC0067p.RETURNS_CONSTANT;
        c0066o.f = Collections.emptyList();
        c0066o.f1728g = C0073w.n;
        c0066o.f1729h = EnumC0068q.AT_MOST_ONCE;
        return c0066o;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        r rVarF = f();
        if (rVarF.b()) {
            return rVarF;
        }
        throw new A0.c();
    }

    public final Object clone() {
        C0066o c0066oG = g();
        c0066oG.h(f());
        return c0066oG;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        r rVar = null;
        try {
            try {
                r.f1739l.getClass();
                h(new r(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                r rVar2 = (r) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    rVar = rVar2;
                    if (rVar != null) {
                        h(rVar);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (rVar != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        h((r) abstractC0095q);
        return this;
    }

    public final r f() {
        r rVar = new r(this);
        int i5 = this.f1726d;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        rVar.f1742e = this.f1727e;
        if ((i5 & 2) == 2) {
            this.f = Collections.unmodifiableList(this.f);
            this.f1726d &= -3;
        }
        rVar.f = this.f;
        if ((i5 & 4) == 4) {
            i6 |= 2;
        }
        rVar.f1743g = this.f1728g;
        if ((i5 & 8) == 8) {
            i6 |= 4;
        }
        rVar.f1744h = this.f1729h;
        rVar.f1741d = i6;
        return rVar;
    }

    public final void h(r rVar) {
        C0073w c0073w;
        if (rVar == r.f1738k) {
            return;
        }
        if ((rVar.f1741d & 1) == 1) {
            EnumC0067p enumC0067p = rVar.f1742e;
            enumC0067p.getClass();
            this.f1726d |= 1;
            this.f1727e = enumC0067p;
        }
        if (!rVar.f.isEmpty()) {
            if (this.f.isEmpty()) {
                this.f = rVar.f;
                this.f1726d &= -3;
            } else {
                if ((this.f1726d & 2) != 2) {
                    this.f = new ArrayList(this.f);
                    this.f1726d |= 2;
                }
                this.f.addAll(rVar.f);
            }
        }
        if ((rVar.f1741d & 2) == 2) {
            C0073w c0073w2 = rVar.f1743g;
            if ((this.f1726d & 4) != 4 || (c0073w = this.f1728g) == C0073w.n) {
                this.f1728g = c0073w2;
            } else {
                C0071u c0071uG = C0071u.g();
                c0071uG.h(c0073w);
                c0071uG.h(c0073w2);
                this.f1728g = c0071uG.f();
            }
            this.f1726d |= 4;
        }
        if ((rVar.f1741d & 4) == 4) {
            EnumC0068q enumC0068q = rVar.f1744h;
            enumC0068q.getClass();
            this.f1726d |= 8;
            this.f1729h = enumC0068q;
        }
        this.f2400c = this.f2400c.m(rVar.f1740c);
    }
}
