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
public final class D extends AbstractC0090l {
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public L f1377g;

    /* renamed from: h, reason: collision with root package name */
    public K f1378h;

    /* renamed from: i, reason: collision with root package name */
    public C f1379i;

    /* renamed from: j, reason: collision with root package name */
    public List f1380j;

    public static D h() {
        D d2 = new D();
        d2.f1377g = L.f1442g;
        d2.f1378h = K.f1437g;
        d2.f1379i = C.f1368m;
        d2.f1380j = Collections.emptyList();
        return d2;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        E eG = g();
        if (eG.b()) {
            return eG;
        }
        throw new A0.c();
    }

    public final Object clone() {
        D dH = h();
        dH.i(g());
        return dH;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        E e5 = null;
        try {
            try {
                E.f1382m.getClass();
                i(new E(c0084f, c0087i));
                return this;
            } catch (C0098u e6) {
                E e7 = (E) e6.f2416c;
                try {
                    throw e6;
                } catch (Throwable th) {
                    th = th;
                    e5 = e7;
                    if (e5 != null) {
                        i(e5);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (e5 != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        i((E) abstractC0095q);
        return this;
    }

    public final E g() {
        E e5 = new E(this);
        int i5 = this.f;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        e5.f = this.f1377g;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        e5.f1385g = this.f1378h;
        if ((i5 & 4) == 4) {
            i6 |= 4;
        }
        e5.f1386h = this.f1379i;
        if ((i5 & 8) == 8) {
            this.f1380j = Collections.unmodifiableList(this.f1380j);
            this.f &= -9;
        }
        e5.f1387i = this.f1380j;
        e5.f1384e = i6;
        return e5;
    }

    public final void i(E e5) {
        C c2;
        K k5;
        L l5;
        if (e5 == E.f1381l) {
            return;
        }
        if ((e5.f1384e & 1) == 1) {
            L l6 = e5.f;
            if ((this.f & 1) != 1 || (l5 = this.f1377g) == L.f1442g) {
                this.f1377g = l6;
            } else {
                C0064m c0064m = new C0064m(3);
                c0064m.f = R3.w.f2419d;
                c0064m.l(l5);
                c0064m.l(l6);
                this.f1377g = c0064m.h();
            }
            this.f |= 1;
        }
        if ((e5.f1384e & 2) == 2) {
            K k6 = e5.f1385g;
            if ((this.f & 2) != 2 || (k5 = this.f1378h) == K.f1437g) {
                this.f1378h = k6;
            } else {
                C0064m c0064m2 = new C0064m(1);
                c0064m2.f = Collections.emptyList();
                c0064m2.k(k5);
                c0064m2.k(k6);
                this.f1378h = c0064m2.g();
            }
            this.f |= 2;
        }
        if ((e5.f1384e & 4) == 4) {
            C c5 = e5.f1386h;
            if ((this.f & 4) != 4 || (c2 = this.f1379i) == C.f1368m) {
                this.f1379i = c5;
            } else {
                B bH = B.h();
                bH.i(c2);
                bH.i(c5);
                this.f1379i = bH.g();
            }
            this.f |= 4;
        }
        if (!e5.f1387i.isEmpty()) {
            if (this.f1380j.isEmpty()) {
                this.f1380j = e5.f1387i;
                this.f &= -9;
            } else {
                if ((this.f & 8) != 8) {
                    this.f1380j = new ArrayList(this.f1380j);
                    this.f |= 8;
                }
                this.f1380j.addAll(e5.f1387i);
            }
        }
        f(e5);
        this.f2400c = this.f2400c.m(e5.f1383d);
    }
}
