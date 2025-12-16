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

/* renamed from: L3.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0053b extends AbstractC0089k implements R3.A {

    /* renamed from: d, reason: collision with root package name */
    public int f1566d;

    /* renamed from: e, reason: collision with root package name */
    public EnumC0054c f1567e;
    public long f;

    /* renamed from: g, reason: collision with root package name */
    public float f1568g;

    /* renamed from: h, reason: collision with root package name */
    public double f1569h;

    /* renamed from: i, reason: collision with root package name */
    public int f1570i;

    /* renamed from: j, reason: collision with root package name */
    public int f1571j;

    /* renamed from: k, reason: collision with root package name */
    public int f1572k;

    /* renamed from: l, reason: collision with root package name */
    public C0058g f1573l;

    /* renamed from: m, reason: collision with root package name */
    public List f1574m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f1575o;

    public static C0053b g() {
        C0053b c0053b = new C0053b();
        c0053b.f1567e = EnumC0054c.BYTE;
        c0053b.f1573l = C0058g.f1639i;
        c0053b.f1574m = Collections.emptyList();
        return c0053b;
    }

    @Override // R3.AbstractC0089k
    public final AbstractC0080b c() {
        C0055d c0055dF = f();
        if (c0055dF.b()) {
            return c0055dF;
        }
        throw new A0.c();
    }

    public final Object clone() {
        C0053b c0053bG = g();
        c0053bG.h(f());
        return c0053bG;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x001b  */
    @Override // R3.AbstractC0089k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0089k d(C0084f c0084f, C0087i c0087i) throws Throwable {
        C0055d c0055d = null;
        try {
            try {
                C0055d.f1598s.getClass();
                h(new C0055d(c0084f, c0087i));
                return this;
            } catch (C0098u e5) {
                C0055d c0055d2 = (C0055d) e5.f2416c;
                try {
                    throw e5;
                } catch (Throwable th) {
                    th = th;
                    c0055d = c0055d2;
                    if (c0055d != null) {
                        h(c0055d);
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
            if (c0055d != null) {
            }
            throw th;
        }
    }

    @Override // R3.AbstractC0089k
    public final /* bridge */ /* synthetic */ AbstractC0089k e(AbstractC0095q abstractC0095q) {
        h((C0055d) abstractC0095q);
        return this;
    }

    public final C0055d f() {
        C0055d c0055d = new C0055d(this);
        int i5 = this.f1566d;
        int i6 = (i5 & 1) != 1 ? 0 : 1;
        c0055d.f1601e = this.f1567e;
        if ((i5 & 2) == 2) {
            i6 |= 2;
        }
        c0055d.f = this.f;
        if ((i5 & 4) == 4) {
            i6 |= 4;
        }
        c0055d.f1602g = this.f1568g;
        if ((i5 & 8) == 8) {
            i6 |= 8;
        }
        c0055d.f1603h = this.f1569h;
        if ((i5 & 16) == 16) {
            i6 |= 16;
        }
        c0055d.f1604i = this.f1570i;
        if ((i5 & 32) == 32) {
            i6 |= 32;
        }
        c0055d.f1605j = this.f1571j;
        if ((i5 & 64) == 64) {
            i6 |= 64;
        }
        c0055d.f1606k = this.f1572k;
        if ((i5 & 128) == 128) {
            i6 |= 128;
        }
        c0055d.f1607l = this.f1573l;
        if ((i5 & 256) == 256) {
            this.f1574m = Collections.unmodifiableList(this.f1574m);
            this.f1566d &= -257;
        }
        c0055d.f1608m = this.f1574m;
        if ((i5 & 512) == 512) {
            i6 |= 256;
        }
        c0055d.n = this.n;
        if ((i5 & 1024) == 1024) {
            i6 |= 512;
        }
        c0055d.f1609o = this.f1575o;
        c0055d.f1600d = i6;
        return c0055d;
    }

    public final void h(C0055d c0055d) {
        C0058g c0058g;
        if (c0055d == C0055d.f1597r) {
            return;
        }
        if ((c0055d.f1600d & 1) == 1) {
            EnumC0054c enumC0054c = c0055d.f1601e;
            enumC0054c.getClass();
            this.f1566d = 1 | this.f1566d;
            this.f1567e = enumC0054c;
        }
        int i5 = c0055d.f1600d;
        if ((i5 & 2) == 2) {
            long j3 = c0055d.f;
            this.f1566d |= 2;
            this.f = j3;
        }
        if ((i5 & 4) == 4) {
            float f = c0055d.f1602g;
            this.f1566d = 4 | this.f1566d;
            this.f1568g = f;
        }
        if ((i5 & 8) == 8) {
            double d2 = c0055d.f1603h;
            this.f1566d |= 8;
            this.f1569h = d2;
        }
        if ((i5 & 16) == 16) {
            int i6 = c0055d.f1604i;
            this.f1566d = 16 | this.f1566d;
            this.f1570i = i6;
        }
        if ((i5 & 32) == 32) {
            int i7 = c0055d.f1605j;
            this.f1566d = 32 | this.f1566d;
            this.f1571j = i7;
        }
        if ((i5 & 64) == 64) {
            int i8 = c0055d.f1606k;
            this.f1566d = 64 | this.f1566d;
            this.f1572k = i8;
        }
        if ((i5 & 128) == 128) {
            C0058g c0058g2 = c0055d.f1607l;
            if ((this.f1566d & 128) != 128 || (c0058g = this.f1573l) == C0058g.f1639i) {
                this.f1573l = c0058g2;
            } else {
                C0057f c0057f = new C0057f(0);
                c0057f.f = Collections.emptyList();
                c0057f.k(c0058g);
                c0057f.k(c0058g2);
                this.f1573l = c0057f.g();
            }
            this.f1566d |= 128;
        }
        if (!c0055d.f1608m.isEmpty()) {
            if (this.f1574m.isEmpty()) {
                this.f1574m = c0055d.f1608m;
                this.f1566d &= -257;
            } else {
                if ((this.f1566d & 256) != 256) {
                    this.f1574m = new ArrayList(this.f1574m);
                    this.f1566d |= 256;
                }
                this.f1574m.addAll(c0055d.f1608m);
            }
        }
        int i9 = c0055d.f1600d;
        if ((i9 & 256) == 256) {
            int i10 = c0055d.n;
            this.f1566d |= 512;
            this.n = i10;
        }
        if ((i9 & 512) == 512) {
            int i11 = c0055d.f1609o;
            this.f1566d |= 1024;
            this.f1575o = i11;
        }
        this.f2400c = this.f2400c.m(c0055d.f1599c);
    }
}
