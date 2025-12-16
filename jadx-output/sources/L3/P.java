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
public final class P extends AbstractC0090l {
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public List f1463g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f1464h;

    /* renamed from: i, reason: collision with root package name */
    public int f1465i;

    /* renamed from: j, reason: collision with root package name */
    public Q f1466j;

    /* renamed from: k, reason: collision with root package name */
    public int f1467k;

    /* renamed from: l, reason: collision with root package name */
    public int f1468l;

    /* renamed from: m, reason: collision with root package name */
    public int f1469m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f1470o;

    /* renamed from: p, reason: collision with root package name */
    public Q f1471p;

    /* renamed from: q, reason: collision with root package name */
    public int f1472q;

    /* renamed from: r, reason: collision with root package name */
    public Q f1473r;

    /* renamed from: s, reason: collision with root package name */
    public int f1474s;

    /* renamed from: t, reason: collision with root package name */
    public int f1475t;

    public static P h() {
        P p4 = new P();
        p4.f1463g = Collections.emptyList();
        Q q2 = Q.f1476v;
        p4.f1466j = q2;
        p4.f1471p = q2;
        p4.f1473r = q2;
        return p4;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        Q qG = g();
        if (qG.b()) {
            return qG;
        }
        throw new A0.c();
    }

    public final Object clone() {
        P pH = h();
        pH.i(g());
        return pH;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        Q q2 = null;
        try {
            try {
                Q.f1477w.getClass();
                i(new Q(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                Q q5 = (Q) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    q2 = q5;
                    if (q2 != null) {
                        i(q2);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (q2 != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        i((Q) abstractC0095q);
        return this;
    }

    public final Q g() {
        Q q2 = new Q(this);
        int i5 = this.f;
        if ((i5 & 1) == 1) {
            this.f1463g = Collections.unmodifiableList(this.f1463g);
            this.f &= -2;
        }
        q2.f = this.f1463g;
        int i6 = (i5 & 2) != 2 ? 0 : 1;
        q2.f1480g = this.f1464h;
        if ((i5 & 4) == 4) {
            i6 |= 2;
        }
        q2.f1481h = this.f1465i;
        if ((i5 & 8) == 8) {
            i6 |= 4;
        }
        q2.f1482i = this.f1466j;
        if ((i5 & 16) == 16) {
            i6 |= 8;
        }
        q2.f1483j = this.f1467k;
        if ((i5 & 32) == 32) {
            i6 |= 16;
        }
        q2.f1484k = this.f1468l;
        if ((i5 & 64) == 64) {
            i6 |= 32;
        }
        q2.f1485l = this.f1469m;
        if ((i5 & 128) == 128) {
            i6 |= 64;
        }
        q2.f1486m = this.n;
        if ((i5 & 256) == 256) {
            i6 |= 128;
        }
        q2.n = this.f1470o;
        if ((i5 & 512) == 512) {
            i6 |= 256;
        }
        q2.f1487o = this.f1471p;
        if ((i5 & 1024) == 1024) {
            i6 |= 512;
        }
        q2.f1488p = this.f1472q;
        if ((i5 & 2048) == 2048) {
            i6 |= 1024;
        }
        q2.f1489q = this.f1473r;
        if ((i5 & 4096) == 4096) {
            i6 |= 2048;
        }
        q2.f1490r = this.f1474s;
        if ((i5 & 8192) == 8192) {
            i6 |= 4096;
        }
        q2.f1491s = this.f1475t;
        q2.f1479e = i6;
        return q2;
    }

    public final P i(Q q2) {
        Q q5;
        Q q6;
        Q q7;
        Q q8 = Q.f1476v;
        if (q2 == q8) {
            return this;
        }
        if (!q2.f.isEmpty()) {
            if (this.f1463g.isEmpty()) {
                this.f1463g = q2.f;
                this.f &= -2;
            } else {
                if ((this.f & 1) != 1) {
                    this.f1463g = new ArrayList(this.f1463g);
                    this.f |= 1;
                }
                this.f1463g.addAll(q2.f);
            }
        }
        int i5 = q2.f1479e;
        if ((i5 & 1) == 1) {
            boolean z4 = q2.f1480g;
            this.f |= 2;
            this.f1464h = z4;
        }
        if ((i5 & 2) == 2) {
            int i6 = q2.f1481h;
            this.f |= 4;
            this.f1465i = i6;
        }
        if ((i5 & 4) == 4) {
            Q q9 = q2.f1482i;
            if ((this.f & 8) != 8 || (q7 = this.f1466j) == q8) {
                this.f1466j = q9;
            } else {
                P pS = Q.s(q7);
                pS.i(q9);
                this.f1466j = pS.g();
            }
            this.f |= 8;
        }
        if ((q2.f1479e & 8) == 8) {
            int i7 = q2.f1483j;
            this.f |= 16;
            this.f1467k = i7;
        }
        if (q2.q()) {
            int i8 = q2.f1484k;
            this.f |= 32;
            this.f1468l = i8;
        }
        int i9 = q2.f1479e;
        if ((i9 & 32) == 32) {
            int i10 = q2.f1485l;
            this.f |= 64;
            this.f1469m = i10;
        }
        if ((i9 & 64) == 64) {
            int i11 = q2.f1486m;
            this.f |= 128;
            this.n = i11;
        }
        if ((i9 & 128) == 128) {
            int i12 = q2.n;
            this.f |= 256;
            this.f1470o = i12;
        }
        if ((i9 & 256) == 256) {
            Q q10 = q2.f1487o;
            if ((this.f & 512) != 512 || (q6 = this.f1471p) == q8) {
                this.f1471p = q10;
            } else {
                P pS2 = Q.s(q6);
                pS2.i(q10);
                this.f1471p = pS2.g();
            }
            this.f |= 512;
        }
        int i13 = q2.f1479e;
        if ((i13 & 512) == 512) {
            int i14 = q2.f1488p;
            this.f |= 1024;
            this.f1472q = i14;
        }
        if ((i13 & 1024) == 1024) {
            Q q11 = q2.f1489q;
            if ((this.f & 2048) != 2048 || (q5 = this.f1473r) == q8) {
                this.f1473r = q11;
            } else {
                P pS3 = Q.s(q5);
                pS3.i(q11);
                this.f1473r = pS3.g();
            }
            this.f |= 2048;
        }
        int i15 = q2.f1479e;
        if ((i15 & 2048) == 2048) {
            int i16 = q2.f1490r;
            this.f |= 4096;
            this.f1474s = i16;
        }
        if ((i15 & 4096) == 4096) {
            int i17 = q2.f1491s;
            this.f |= 8192;
            this.f1475t = i17;
        }
        f(q2);
        this.f2400c = this.f2400c.m(q2.f1478d);
        return this;
    }
}
