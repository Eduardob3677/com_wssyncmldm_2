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
public final class U extends AbstractC0090l {
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f1515g;

    /* renamed from: h, reason: collision with root package name */
    public int f1516h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f1517i;

    /* renamed from: j, reason: collision with root package name */
    public V f1518j;

    /* renamed from: k, reason: collision with root package name */
    public List f1519k;

    /* renamed from: l, reason: collision with root package name */
    public List f1520l;

    public static U h() {
        U u5 = new U();
        u5.f1518j = V.INV;
        u5.f1519k = Collections.emptyList();
        u5.f1520l = Collections.emptyList();
        return u5;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        W wG = g();
        if (wG.b()) {
            return wG;
        }
        throw new A0.c();
    }

    public final Object clone() {
        U uH = h();
        uH.i(g());
        return uH;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        W w2 = null;
        try {
            try {
                W.f1526p.getClass();
                i(new W(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                W w4 = (W) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    w2 = w4;
                    if (w2 != null) {
                        i(w2);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (w2 != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        i((W) abstractC0095q);
        return this;
    }

    public final W g() {
        W w2 = new W(this);
        int i5 = this.f;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        w2.f = this.f1515g;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        w2.f1529g = this.f1516h;
        if ((i5 & 4) == 4) {
            i6 |= 4;
        }
        w2.f1530h = this.f1517i;
        if ((i5 & 8) == 8) {
            i6 |= 8;
        }
        w2.f1531i = this.f1518j;
        if ((i5 & 16) == 16) {
            this.f1519k = Collections.unmodifiableList(this.f1519k);
            this.f &= -17;
        }
        w2.f1532j = this.f1519k;
        if ((this.f & 32) == 32) {
            this.f1520l = Collections.unmodifiableList(this.f1520l);
            this.f &= -33;
        }
        w2.f1533k = this.f1520l;
        w2.f1528e = i6;
        return w2;
    }

    public final void i(W w2) {
        if (w2 == W.f1525o) {
            return;
        }
        int i5 = w2.f1528e;
        if ((i5 & 1) == 1) {
            int i6 = w2.f;
            this.f = 1 | this.f;
            this.f1515g = i6;
        }
        if ((i5 & 2) == 2) {
            int i7 = w2.f1529g;
            this.f = 2 | this.f;
            this.f1516h = i7;
        }
        if ((i5 & 4) == 4) {
            boolean z4 = w2.f1530h;
            this.f = 4 | this.f;
            this.f1517i = z4;
        }
        if ((i5 & 8) == 8) {
            V v4 = w2.f1531i;
            v4.getClass();
            this.f = 8 | this.f;
            this.f1518j = v4;
        }
        if (!w2.f1532j.isEmpty()) {
            if (this.f1519k.isEmpty()) {
                this.f1519k = w2.f1532j;
                this.f &= -17;
            } else {
                if ((this.f & 16) != 16) {
                    this.f1519k = new ArrayList(this.f1519k);
                    this.f |= 16;
                }
                this.f1519k.addAll(w2.f1532j);
            }
        }
        if (!w2.f1533k.isEmpty()) {
            if (this.f1520l.isEmpty()) {
                this.f1520l = w2.f1533k;
                this.f &= -33;
            } else {
                if ((this.f & 32) != 32) {
                    this.f1520l = new ArrayList(this.f1520l);
                    this.f |= 32;
                }
                this.f1520l.addAll(w2.f1533k);
            }
        }
        f(w2);
        this.f2400c = this.f2400c.m(w2.f1527d);
    }
}
