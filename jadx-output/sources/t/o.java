package t;

import k.Q0;
import s.C0826c;
import s.C0827d;

/* loaded from: classes.dex */
public abstract class o implements InterfaceC0855d {

    /* renamed from: a, reason: collision with root package name */
    public int f9118a;

    /* renamed from: b, reason: collision with root package name */
    public C0827d f9119b;

    /* renamed from: c, reason: collision with root package name */
    public l f9120c;

    /* renamed from: d, reason: collision with root package name */
    public int f9121d;

    /* renamed from: e, reason: collision with root package name */
    public final g f9122e = new g(this);
    public int f = 0;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9123g = false;

    /* renamed from: h, reason: collision with root package name */
    public final f f9124h = new f(this);

    /* renamed from: i, reason: collision with root package name */
    public final f f9125i = new f(this);

    /* renamed from: j, reason: collision with root package name */
    public int f9126j = 1;

    public o(C0827d c0827d) {
        this.f9119b = c0827d;
    }

    public static void b(f fVar, f fVar2, int i5) {
        fVar.f9105l.add(fVar2);
        fVar.f = i5;
        fVar2.f9104k.add(fVar);
    }

    public static f h(C0826c c0826c) {
        C0826c c0826c2 = c0826c.f;
        if (c0826c2 == null) {
            return null;
        }
        int iF = Q0.f(c0826c2.f8889e);
        C0827d c0827d = c0826c2.f8888d;
        if (iF == 1) {
            return c0827d.f8924d.f9124h;
        }
        if (iF == 2) {
            return c0827d.f8926e.f9124h;
        }
        if (iF == 3) {
            return c0827d.f8924d.f9125i;
        }
        if (iF == 4) {
            return c0827d.f8926e.f9125i;
        }
        if (iF != 5) {
            return null;
        }
        return c0827d.f8926e.f9111k;
    }

    public static f i(C0826c c0826c, int i5) {
        C0826c c0826c2 = c0826c.f;
        if (c0826c2 == null) {
            return null;
        }
        C0827d c0827d = c0826c2.f8888d;
        o oVar = i5 == 0 ? c0827d.f8924d : c0827d.f8926e;
        int iF = Q0.f(c0826c2.f8889e);
        if (iF == 1 || iF == 2) {
            return oVar.f9124h;
        }
        if (iF == 3 || iF == 4) {
            return oVar.f9125i;
        }
        return null;
    }

    public final void c(f fVar, f fVar2, int i5, g gVar) {
        fVar.f9105l.add(fVar2);
        fVar.f9105l.add(this.f9122e);
        fVar.f9101h = i5;
        fVar.f9102i = gVar;
        fVar2.f9104k.add(fVar);
        gVar.f9104k.add(fVar);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i5, int i6) {
        int iMax;
        if (i6 == 0) {
            C0827d c0827d = this.f9119b;
            int i7 = c0827d.f8940p;
            iMax = Math.max(c0827d.f8939o, i5);
            if (i7 > 0) {
                iMax = Math.min(i7, i5);
            }
            if (iMax == i5) {
                return i5;
            }
        } else {
            C0827d c0827d2 = this.f9119b;
            int i8 = c0827d2.f8943s;
            iMax = Math.max(c0827d2.f8942r, i5);
            if (i8 > 0) {
                iMax = Math.min(i8, i5);
            }
            if (iMax == i5) {
                return i5;
            }
        }
        return iMax;
    }

    public long j() {
        if (this.f9122e.f9103j) {
            return r2.f9100g;
        }
        return 0L;
    }

    public abstract boolean k();

    /* JADX WARN: Removed duplicated region for block: B:28:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l(C0826c c0826c, C0826c c0826c2, int i5) {
        f fVarH = h(c0826c);
        f fVarH2 = h(c0826c2);
        if (fVarH.f9103j && fVarH2.f9103j) {
            int iE = c0826c.e() + fVarH.f9100g;
            int iE2 = fVarH2.f9100g - c0826c2.e();
            int i6 = iE2 - iE;
            g gVar = this.f9122e;
            if (!gVar.f9103j && this.f9121d == 3) {
                int i7 = this.f9118a;
                if (i7 == 0) {
                    gVar.d(g(i6, i5));
                } else if (i7 == 1) {
                    gVar.d(Math.min(g(gVar.f9106m, i5), i6));
                } else if (i7 == 2) {
                    C0827d c0827d = this.f9119b;
                    C0827d c0827d2 = c0827d.f8905N;
                    if (c0827d2 != null) {
                        if ((i5 == 0 ? c0827d2.f8924d : c0827d2.f8926e).f9122e.f9103j) {
                            gVar.d(g((int) ((r6.f9100g * (i5 == 0 ? c0827d.f8941q : c0827d.f8944t)) + 0.5f), i5));
                        }
                    }
                } else if (i7 == 3) {
                    C0827d c0827d3 = this.f9119b;
                    o oVar = c0827d3.f8924d;
                    if (oVar.f9121d == 3 && oVar.f9118a == 3) {
                        m mVar = c0827d3.f8926e;
                        if (mVar.f9121d != 3 || mVar.f9118a != 3) {
                        }
                    } else {
                        if (i5 == 0) {
                            oVar = c0827d3.f8926e;
                        }
                        if (oVar.f9122e.f9103j) {
                            float f = c0827d3.f8908Q;
                            gVar.d(i5 == 1 ? (int) ((r6.f9100g / f) + 0.5f) : (int) ((f * r6.f9100g) + 0.5f));
                        }
                    }
                }
            }
            if (gVar.f9103j) {
                int i8 = gVar.f9100g;
                f fVar = this.f9125i;
                f fVar2 = this.f9124h;
                if (i8 == i6) {
                    fVar2.d(iE);
                    fVar.d(iE2);
                    return;
                }
                C0827d c0827d4 = this.f9119b;
                float f5 = i5 == 0 ? c0827d4.f8915X : c0827d4.f8916Y;
                if (fVarH == fVarH2) {
                    iE = fVarH.f9100g;
                    iE2 = fVarH2.f9100g;
                    f5 = 0.5f;
                }
                fVar2.d((int) ((((iE2 - iE) - i8) * f5) + iE + 0.5f));
                fVar.d(fVar2.f9100g + gVar.f9100g);
            }
        }
    }
}
