package L3;

import R3.AbstractC0080b;
import R3.AbstractC0083e;
import R3.AbstractC0089k;
import R3.AbstractC0095q;
import R3.C0082d;
import R3.C0084f;
import R3.C0087i;
import R3.C0098u;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* renamed from: L3.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0055d extends AbstractC0095q {

    /* renamed from: r, reason: collision with root package name */
    public static final C0055d f1597r;

    /* renamed from: s, reason: collision with root package name */
    public static final C0052a f1598s = new C0052a(2);

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0083e f1599c;

    /* renamed from: d, reason: collision with root package name */
    public int f1600d;

    /* renamed from: e, reason: collision with root package name */
    public EnumC0054c f1601e;
    public long f;

    /* renamed from: g, reason: collision with root package name */
    public float f1602g;

    /* renamed from: h, reason: collision with root package name */
    public double f1603h;

    /* renamed from: i, reason: collision with root package name */
    public int f1604i;

    /* renamed from: j, reason: collision with root package name */
    public int f1605j;

    /* renamed from: k, reason: collision with root package name */
    public int f1606k;

    /* renamed from: l, reason: collision with root package name */
    public C0058g f1607l;

    /* renamed from: m, reason: collision with root package name */
    public List f1608m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f1609o;

    /* renamed from: p, reason: collision with root package name */
    public byte f1610p;

    /* renamed from: q, reason: collision with root package name */
    public int f1611q;

    static {
        C0055d c0055d = new C0055d();
        f1597r = c0055d;
        c0055d.i();
    }

    public C0055d() {
        this.f1610p = (byte) -1;
        this.f1611q = -1;
        this.f1599c = AbstractC0083e.f2383c;
    }

    @Override // R3.A
    public final boolean b() {
        byte b3 = this.f1610p;
        if (b3 == 1) {
            return true;
        }
        if (b3 == 0) {
            return false;
        }
        if ((this.f1600d & 128) == 128 && !this.f1607l.b()) {
            this.f1610p = (byte) 0;
            return false;
        }
        for (int i5 = 0; i5 < this.f1608m.size(); i5++) {
            if (!((C0055d) this.f1608m.get(i5)).b()) {
                this.f1610p = (byte) 0;
                return false;
            }
        }
        this.f1610p = (byte) 1;
        return true;
    }

    @Override // R3.AbstractC0080b
    public final int c() {
        int i5 = this.f1611q;
        if (i5 != -1) {
            return i5;
        }
        int iA = (this.f1600d & 1) == 1 ? B1.j.a(1, this.f1601e.f1592c) : 0;
        if ((this.f1600d & 2) == 2) {
            long j3 = this.f;
            iA += B1.j.g((j3 >> 63) ^ (j3 << 1)) + B1.j.h(2);
        }
        if ((this.f1600d & 4) == 4) {
            iA += B1.j.h(3) + 4;
        }
        if ((this.f1600d & 8) == 8) {
            iA += B1.j.h(4) + 8;
        }
        if ((this.f1600d & 16) == 16) {
            iA += B1.j.b(5, this.f1604i);
        }
        if ((this.f1600d & 32) == 32) {
            iA += B1.j.b(6, this.f1605j);
        }
        if ((this.f1600d & 64) == 64) {
            iA += B1.j.b(7, this.f1606k);
        }
        if ((this.f1600d & 128) == 128) {
            iA += B1.j.d(8, this.f1607l);
        }
        for (int i6 = 0; i6 < this.f1608m.size(); i6++) {
            iA += B1.j.d(9, (AbstractC0080b) this.f1608m.get(i6));
        }
        if ((this.f1600d & 512) == 512) {
            iA += B1.j.b(10, this.f1609o);
        }
        if ((this.f1600d & 256) == 256) {
            iA += B1.j.b(11, this.n);
        }
        int size = this.f1599c.size() + iA;
        this.f1611q = size;
        return size;
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k d() {
        return C0053b.g();
    }

    @Override // R3.AbstractC0080b
    public final AbstractC0089k e() {
        C0053b c0053bG = C0053b.g();
        c0053bG.h(this);
        return c0053bG;
    }

    @Override // R3.AbstractC0080b
    public final void f(B1.j jVar) throws IOException {
        c();
        if ((this.f1600d & 1) == 1) {
            jVar.m(1, this.f1601e.f1592c);
        }
        if ((this.f1600d & 2) == 2) {
            long j3 = this.f;
            jVar.y(2, 0);
            jVar.x((j3 >> 63) ^ (j3 << 1));
        }
        if ((this.f1600d & 4) == 4) {
            float f = this.f1602g;
            jVar.y(3, 5);
            jVar.u(Float.floatToRawIntBits(f));
        }
        if ((this.f1600d & 8) == 8) {
            double d2 = this.f1603h;
            jVar.y(4, 1);
            jVar.v(Double.doubleToRawLongBits(d2));
        }
        if ((this.f1600d & 16) == 16) {
            jVar.n(5, this.f1604i);
        }
        if ((this.f1600d & 32) == 32) {
            jVar.n(6, this.f1605j);
        }
        if ((this.f1600d & 64) == 64) {
            jVar.n(7, this.f1606k);
        }
        if ((this.f1600d & 128) == 128) {
            jVar.p(8, this.f1607l);
        }
        for (int i5 = 0; i5 < this.f1608m.size(); i5++) {
            jVar.p(9, (AbstractC0080b) this.f1608m.get(i5));
        }
        if ((this.f1600d & 512) == 512) {
            jVar.n(10, this.f1609o);
        }
        if ((this.f1600d & 256) == 256) {
            jVar.n(11, this.n);
        }
        jVar.s(this.f1599c);
    }

    public final void i() {
        this.f1601e = EnumC0054c.BYTE;
        this.f = 0L;
        this.f1602g = 0.0f;
        this.f1603h = 0.0d;
        this.f1604i = 0;
        this.f1605j = 0;
        this.f1606k = 0;
        this.f1607l = C0058g.f1639i;
        this.f1608m = Collections.emptyList();
        this.n = 0;
        this.f1609o = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [boolean] */
    public C0055d(C0084f c0084f, C0087i c0087i) {
        C0057f c0057f;
        this.f1610p = (byte) -1;
        this.f1611q = -1;
        i();
        C0082d c0082d = new C0082d();
        B1.j jVarJ = B1.j.j(c0082d, 1);
        boolean z4 = false;
        char c2 = 0;
        while (true) {
            ?? Q4 = 256;
            if (!z4) {
                try {
                    try {
                        int iN = c0084f.n();
                        switch (iN) {
                            case 0:
                                z4 = true;
                            case 8:
                                int iK = c0084f.k();
                                EnumC0054c enumC0054cB = EnumC0054c.b(iK);
                                if (enumC0054cB == null) {
                                    jVarJ.w(iN);
                                    jVarJ.w(iK);
                                } else {
                                    this.f1600d |= 1;
                                    this.f1601e = enumC0054cB;
                                }
                            case 16:
                                this.f1600d |= 2;
                                long jL = c0084f.l();
                                this.f = (-(jL & 1)) ^ (jL >>> 1);
                            case 29:
                                this.f1600d |= 4;
                                this.f1602g = Float.intBitsToFloat(c0084f.i());
                            case 33:
                                this.f1600d |= 8;
                                this.f1603h = Double.longBitsToDouble(c0084f.j());
                            case 40:
                                this.f1600d |= 16;
                                this.f1604i = c0084f.k();
                            case 48:
                                this.f1600d |= 32;
                                this.f1605j = c0084f.k();
                            case 56:
                                this.f1600d |= 64;
                                this.f1606k = c0084f.k();
                            case 66:
                                if ((this.f1600d & 128) == 128) {
                                    C0058g c0058g = this.f1607l;
                                    c0058g.getClass();
                                    c0057f = new C0057f(0);
                                    c0057f.f = Collections.emptyList();
                                    c0057f.k(c0058g);
                                } else {
                                    c0057f = null;
                                }
                                C0058g c0058g2 = (C0058g) c0084f.g(C0058g.f1640j, c0087i);
                                this.f1607l = c0058g2;
                                if (c0057f != null) {
                                    c0057f.k(c0058g2);
                                    this.f1607l = c0057f.g();
                                }
                                this.f1600d |= 128;
                            case 74:
                                if ((c2 & 256) != 256) {
                                    this.f1608m = new ArrayList();
                                    c2 = 256;
                                }
                                this.f1608m.add(c0084f.g(f1598s, c0087i));
                            case 80:
                                this.f1600d |= 512;
                                this.f1609o = c0084f.k();
                            case 88:
                                this.f1600d |= 256;
                                this.n = c0084f.k();
                            default:
                                Q4 = c0084f.q(iN, jVarJ);
                                if (Q4 == 0) {
                                    z4 = true;
                                }
                        }
                    } catch (Throwable th) {
                        if ((c2 & 256) == Q4) {
                            this.f1608m = Collections.unmodifiableList(this.f1608m);
                        }
                        try {
                            jVarJ.i();
                        } catch (IOException unused) {
                        } catch (Throwable th2) {
                            this.f1599c = c0082d.l();
                            throw th2;
                        }
                        this.f1599c = c0082d.l();
                        throw th;
                    }
                } catch (C0098u e5) {
                    e5.f2416c = this;
                    throw e5;
                } catch (IOException e6) {
                    C0098u c0098u = new C0098u(e6.getMessage());
                    c0098u.f2416c = this;
                    throw c0098u;
                }
            } else {
                if ((c2 & 256) == 256) {
                    this.f1608m = Collections.unmodifiableList(this.f1608m);
                }
                try {
                    jVarJ.i();
                } catch (IOException unused2) {
                } catch (Throwable th3) {
                    this.f1599c = c0082d.l();
                    throw th3;
                }
                this.f1599c = c0082d.l();
                return;
            }
        }
    }

    public C0055d(AbstractC0089k abstractC0089k) {
        this.f1610p = (byte) -1;
        this.f1611q = -1;
        this.f1599c = abstractC0089k.f2400c;
    }
}
