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
public final class S extends AbstractC0090l {
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1494g;

    /* renamed from: h, reason: collision with root package name */
    public int f1495h;

    /* renamed from: i, reason: collision with root package name */
    public List f1496i;

    /* renamed from: j, reason: collision with root package name */
    public Q f1497j;

    /* renamed from: k, reason: collision with root package name */
    public int f1498k;

    /* renamed from: l, reason: collision with root package name */
    public Q f1499l;

    /* renamed from: m, reason: collision with root package name */
    public int f1500m;
    public List n;

    /* renamed from: o, reason: collision with root package name */
    public List f1501o;

    public static S h() {
        S s5 = new S();
        s5.f1494g = 6;
        s5.f1496i = Collections.emptyList();
        Q q2 = Q.f1476v;
        s5.f1497j = q2;
        s5.f1499l = q2;
        s5.n = Collections.emptyList();
        s5.f1501o = Collections.emptyList();
        return s5;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        T tG = g();
        if (tG.b()) {
            return tG;
        }
        throw new A0.c();
    }

    public final Object clone() {
        S sH = h();
        sH.i(g());
        return sH;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        T t2 = null;
        try {
            try {
                T.f1503r.getClass();
                i(new T(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                T t5 = (T) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    t2 = t5;
                    if (t2 != null) {
                        i(t2);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (t2 != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        i((T) abstractC0095q);
        return this;
    }

    public final T g() {
        T t2 = new T(this);
        int i5 = this.f;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        t2.f = this.f1494g;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        t2.f1506g = this.f1495h;
        if ((i5 & 4) == 4) {
            this.f1496i = Collections.unmodifiableList(this.f1496i);
            this.f &= -5;
        }
        t2.f1507h = this.f1496i;
        if ((i5 & 8) == 8) {
            i6 |= 4;
        }
        t2.f1508i = this.f1497j;
        if ((i5 & 16) == 16) {
            i6 |= 8;
        }
        t2.f1509j = this.f1498k;
        if ((i5 & 32) == 32) {
            i6 |= 16;
        }
        t2.f1510k = this.f1499l;
        if ((i5 & 64) == 64) {
            i6 |= 32;
        }
        t2.f1511l = this.f1500m;
        if ((this.f & 128) == 128) {
            this.n = Collections.unmodifiableList(this.n);
            this.f &= -129;
        }
        t2.f1512m = this.n;
        if ((this.f & 256) == 256) {
            this.f1501o = Collections.unmodifiableList(this.f1501o);
            this.f &= -257;
        }
        t2.n = this.f1501o;
        t2.f1505e = i6;
        return t2;
    }

    public final void i(T t2) {
        Q q2;
        Q q5;
        if (t2 == T.f1502q) {
            return;
        }
        int i5 = t2.f1505e;
        if ((i5 & 1) == 1) {
            int i6 = t2.f;
            this.f = 1 | this.f;
            this.f1494g = i6;
        }
        if ((i5 & 2) == 2) {
            int i7 = t2.f1506g;
            this.f = 2 | this.f;
            this.f1495h = i7;
        }
        if (!t2.f1507h.isEmpty()) {
            if (this.f1496i.isEmpty()) {
                this.f1496i = t2.f1507h;
                this.f &= -5;
            } else {
                if ((this.f & 4) != 4) {
                    this.f1496i = new ArrayList(this.f1496i);
                    this.f |= 4;
                }
                this.f1496i.addAll(t2.f1507h);
            }
        }
        if ((t2.f1505e & 4) == 4) {
            Q q6 = t2.f1508i;
            if ((this.f & 8) != 8 || (q5 = this.f1497j) == Q.f1476v) {
                this.f1497j = q6;
            } else {
                P pS = Q.s(q5);
                pS.i(q6);
                this.f1497j = pS.g();
            }
            this.f |= 8;
        }
        int i8 = t2.f1505e;
        if ((i8 & 8) == 8) {
            int i9 = t2.f1509j;
            this.f |= 16;
            this.f1498k = i9;
        }
        if ((i8 & 16) == 16) {
            Q q7 = t2.f1510k;
            if ((this.f & 32) != 32 || (q2 = this.f1499l) == Q.f1476v) {
                this.f1499l = q7;
            } else {
                P pS2 = Q.s(q2);
                pS2.i(q7);
                this.f1499l = pS2.g();
            }
            this.f |= 32;
        }
        if ((t2.f1505e & 32) == 32) {
            int i10 = t2.f1511l;
            this.f |= 64;
            this.f1500m = i10;
        }
        if (!t2.f1512m.isEmpty()) {
            if (this.n.isEmpty()) {
                this.n = t2.f1512m;
                this.f &= -129;
            } else {
                if ((this.f & 128) != 128) {
                    this.n = new ArrayList(this.n);
                    this.f |= 128;
                }
                this.n.addAll(t2.f1512m);
            }
        }
        if (!t2.n.isEmpty()) {
            if (this.f1501o.isEmpty()) {
                this.f1501o = t2.n;
                this.f &= -257;
            } else {
                if ((this.f & 256) != 256) {
                    this.f1501o = new ArrayList(this.f1501o);
                    this.f |= 256;
                }
                this.f1501o.addAll(t2.n);
            }
        }
        f(t2);
        this.f2400c = this.f2400c.m(t2.f1504d);
    }
}
