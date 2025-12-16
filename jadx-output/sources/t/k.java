package t;

import java.util.ArrayList;
import k.Q0;
import s.C0826c;
import s.C0827d;

/* loaded from: classes.dex */
public final class k extends o {

    /* renamed from: k, reason: collision with root package name */
    public static final int[] f9108k = new int[2];

    public static void m(int[] iArr, int i5, int i6, int i7, int i8, float f, int i9) {
        int i10 = i6 - i5;
        int i11 = i8 - i7;
        if (i9 != -1) {
            if (i9 == 0) {
                iArr[0] = (int) ((i11 * f) + 0.5f);
                iArr[1] = i11;
                return;
            } else {
                if (i9 != 1) {
                    return;
                }
                iArr[0] = i10;
                iArr[1] = (int) ((i10 * f) + 0.5f);
                return;
            }
        }
        int i12 = (int) ((i11 * f) + 0.5f);
        int i13 = (int) ((i10 / f) + 0.5f);
        if (i12 <= i10) {
            iArr[0] = i12;
            iArr[1] = i11;
        } else if (i13 <= i11) {
            iArr[0] = i10;
            iArr[1] = i13;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0267  */
    @Override // t.InterfaceC0855d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(InterfaceC0855d interfaceC0855d) {
        float f;
        float f5;
        float f6;
        int i5;
        if (Q0.f(this.f9126j) == 3) {
            C0827d c0827d = this.f9119b;
            l(c0827d.f8895C, c0827d.E, 0);
            return;
        }
        g gVar = this.f9122e;
        boolean z4 = gVar.f9103j;
        f fVar = this.f9124h;
        f fVar2 = this.f9125i;
        if (!z4 && this.f9121d == 3) {
            C0827d c0827d2 = this.f9119b;
            int i6 = c0827d2.f8937l;
            if (i6 == 2) {
                C0827d c0827d3 = c0827d2.f8905N;
                if (c0827d3 != null) {
                    if (c0827d3.f8924d.f9122e.f9103j) {
                        gVar.d((int) ((r3.f9100g * c0827d2.f8941q) + 0.5f));
                    }
                }
            } else if (i6 == 3) {
                int i7 = c0827d2.f8938m;
                if (i7 == 0 || i7 == 3) {
                    m mVar = c0827d2.f8926e;
                    f fVar3 = mVar.f9124h;
                    f fVar4 = mVar.f9125i;
                    boolean z5 = c0827d2.f8895C.f != null;
                    boolean z6 = c0827d2.f8896D.f != null;
                    boolean z7 = c0827d2.E.f != null;
                    boolean z8 = c0827d2.f8897F.f != null;
                    int i8 = c0827d2.f8909R;
                    if (z5 && z6 && z7 && z8) {
                        float f7 = c0827d2.f8908Q;
                        boolean z9 = fVar3.f9103j;
                        int[] iArr = f9108k;
                        if (z9 && fVar4.f9103j) {
                            if (fVar.f9097c && fVar2.f9097c) {
                                m(iArr, ((f) fVar.f9105l.get(0)).f9100g + fVar.f, ((f) fVar2.f9105l.get(0)).f9100g - fVar2.f, fVar3.f9100g + fVar3.f, fVar4.f9100g - fVar4.f, f7, i8);
                                gVar.d(iArr[0]);
                                this.f9119b.f8926e.f9122e.d(iArr[1]);
                                return;
                            }
                            return;
                        }
                        boolean z10 = fVar.f9103j;
                        ArrayList arrayList = fVar3.f9105l;
                        if (z10 && fVar2.f9103j) {
                            if (!fVar3.f9097c || !fVar4.f9097c) {
                                return;
                            }
                            m(iArr, fVar.f9100g + fVar.f, fVar2.f9100g - fVar2.f, ((f) arrayList.get(0)).f9100g + fVar3.f, ((f) fVar4.f9105l.get(0)).f9100g - fVar4.f, f7, i8);
                            gVar.d(iArr[0]);
                            this.f9119b.f8926e.f9122e.d(iArr[1]);
                        }
                        if (!fVar.f9097c || !fVar2.f9097c || !fVar3.f9097c || !fVar4.f9097c) {
                            return;
                        }
                        m(iArr, ((f) fVar.f9105l.get(0)).f9100g + fVar.f, ((f) fVar2.f9105l.get(0)).f9100g - fVar2.f, ((f) arrayList.get(0)).f9100g + fVar3.f, ((f) fVar4.f9105l.get(0)).f9100g - fVar4.f, f7, i8);
                        gVar.d(iArr[0]);
                        this.f9119b.f8926e.f9122e.d(iArr[1]);
                    } else if (z5 && z7) {
                        if (!fVar.f9097c || !fVar2.f9097c) {
                            return;
                        }
                        float f8 = c0827d2.f8908Q;
                        int i9 = ((f) fVar.f9105l.get(0)).f9100g + fVar.f;
                        int i10 = ((f) fVar2.f9105l.get(0)).f9100g - fVar2.f;
                        if (i8 == -1 || i8 == 0) {
                            int iG = g(i10 - i9, 0);
                            int i11 = (int) ((iG * f8) + 0.5f);
                            int iG2 = g(i11, 1);
                            if (i11 != iG2) {
                                iG = (int) ((iG2 / f8) + 0.5f);
                            }
                            gVar.d(iG);
                            this.f9119b.f8926e.f9122e.d(iG2);
                        } else if (i8 == 1) {
                            int iG3 = g(i10 - i9, 0);
                            int i12 = (int) ((iG3 / f8) + 0.5f);
                            int iG4 = g(i12, 1);
                            if (i12 != iG4) {
                                iG3 = (int) ((iG4 * f8) + 0.5f);
                            }
                            gVar.d(iG3);
                            this.f9119b.f8926e.f9122e.d(iG4);
                        }
                    } else if (z6 && z8) {
                        if (!fVar3.f9097c || !fVar4.f9097c) {
                            return;
                        }
                        float f9 = c0827d2.f8908Q;
                        int i13 = ((f) fVar3.f9105l.get(0)).f9100g + fVar3.f;
                        int i14 = ((f) fVar4.f9105l.get(0)).f9100g - fVar4.f;
                        if (i8 == -1) {
                            int iG5 = g(i14 - i13, 1);
                            int i15 = (int) ((iG5 / f9) + 0.5f);
                            int iG6 = g(i15, 0);
                            if (i15 != iG6) {
                                iG5 = (int) ((iG6 * f9) + 0.5f);
                            }
                            gVar.d(iG6);
                            this.f9119b.f8926e.f9122e.d(iG5);
                        } else if (i8 == 0) {
                            int iG7 = g(i14 - i13, 1);
                            int i16 = (int) ((iG7 * f9) + 0.5f);
                            int iG8 = g(i16, 0);
                            if (i16 != iG8) {
                                iG7 = (int) ((iG8 / f9) + 0.5f);
                            }
                            gVar.d(iG8);
                            this.f9119b.f8926e.f9122e.d(iG7);
                        } else if (i8 == 1) {
                        }
                    }
                } else {
                    int i17 = c0827d2.f8909R;
                    if (i17 == -1) {
                        f = c0827d2.f8926e.f9122e.f9100g;
                        f5 = c0827d2.f8908Q;
                    } else if (i17 == 0) {
                        f6 = c0827d2.f8926e.f9122e.f9100g / c0827d2.f8908Q;
                        i5 = (int) (f6 + 0.5f);
                        gVar.d(i5);
                    } else if (i17 != 1) {
                        i5 = 0;
                        gVar.d(i5);
                    } else {
                        f = c0827d2.f8926e.f9122e.f9100g;
                        f5 = c0827d2.f8908Q;
                    }
                    f6 = f * f5;
                    i5 = (int) (f6 + 0.5f);
                    gVar.d(i5);
                }
            }
        }
        if (fVar.f9097c && fVar2.f9097c) {
            if (fVar.f9103j && fVar2.f9103j && gVar.f9103j) {
                return;
            }
            if (!gVar.f9103j && this.f9121d == 3) {
                C0827d c0827d4 = this.f9119b;
                if (c0827d4.f8937l == 0 && !c0827d4.t()) {
                    f fVar5 = (f) fVar.f9105l.get(0);
                    f fVar6 = (f) fVar2.f9105l.get(0);
                    int i18 = fVar5.f9100g + fVar.f;
                    int i19 = fVar6.f9100g + fVar2.f;
                    fVar.d(i18);
                    fVar2.d(i19);
                    gVar.d(i19 - i18);
                    return;
                }
            }
            if (!gVar.f9103j && this.f9121d == 3 && this.f9118a == 1 && fVar.f9105l.size() > 0 && fVar2.f9105l.size() > 0) {
                int iMin = Math.min((((f) fVar2.f9105l.get(0)).f9100g + fVar2.f) - (((f) fVar.f9105l.get(0)).f9100g + fVar.f), gVar.f9106m);
                C0827d c0827d5 = this.f9119b;
                int i20 = c0827d5.f8940p;
                int iMax = Math.max(c0827d5.f8939o, iMin);
                if (i20 > 0) {
                    iMax = Math.min(i20, iMax);
                }
                gVar.d(iMax);
            }
            if (gVar.f9103j) {
                f fVar7 = (f) fVar.f9105l.get(0);
                f fVar8 = (f) fVar2.f9105l.get(0);
                int i21 = fVar7.f9100g;
                int i22 = fVar.f + i21;
                int i23 = fVar8.f9100g;
                int i24 = fVar2.f + i23;
                float f10 = this.f9119b.f8915X;
                if (fVar7 == fVar8) {
                    f10 = 0.5f;
                } else {
                    i21 = i22;
                    i23 = i24;
                }
                fVar.d((int) ((((i23 - i21) - gVar.f9100g) * f10) + i21 + 0.5f));
                fVar2.d(fVar.f9100g + gVar.f9100g);
            }
        }
    }

    @Override // t.o
    public final void d() {
        C0827d c0827d;
        C0827d c0827d2;
        C0827d c0827d3;
        C0827d c0827d4;
        C0827d c0827d5 = this.f9119b;
        boolean z4 = c0827d5.f8918a;
        g gVar = this.f9122e;
        if (z4) {
            gVar.d(c0827d5.n());
        }
        boolean z5 = gVar.f9103j;
        f fVar = this.f9125i;
        f fVar2 = this.f9124h;
        if (!z5) {
            C0827d c0827d6 = this.f9119b;
            int i5 = c0827d6.f8935j0[0];
            this.f9121d = i5;
            if (i5 != 3) {
                if (i5 == 4 && (((c0827d4 = c0827d6.f8905N) != null && c0827d4.f8935j0[0] == 1) || c0827d4.f8935j0[0] == 4)) {
                    int iN = (c0827d4.n() - this.f9119b.f8895C.e()) - this.f9119b.E.e();
                    o.b(fVar2, c0827d4.f8924d.f9124h, this.f9119b.f8895C.e());
                    o.b(fVar, c0827d4.f8924d.f9125i, -this.f9119b.E.e());
                    gVar.d(iN);
                    return;
                }
                if (i5 == 1) {
                    gVar.d(c0827d6.n());
                }
            }
        } else if (this.f9121d == 4 && (((c0827d2 = (c0827d = this.f9119b).f8905N) != null && c0827d2.f8935j0[0] == 1) || c0827d2.f8935j0[0] == 4)) {
            o.b(fVar2, c0827d2.f8924d.f9124h, c0827d.f8895C.e());
            o.b(fVar, c0827d2.f8924d.f9125i, -this.f9119b.E.e());
            return;
        }
        if (gVar.f9103j) {
            C0827d c0827d7 = this.f9119b;
            if (c0827d7.f8918a) {
                C0826c[] c0826cArr = c0827d7.f8902K;
                C0826c c0826c = c0826cArr[0];
                C0826c c0826c2 = c0826c.f;
                if (c0826c2 != null && c0826cArr[1].f != null) {
                    if (c0827d7.t()) {
                        fVar2.f = this.f9119b.f8902K[0].e();
                        fVar.f = -this.f9119b.f8902K[1].e();
                        return;
                    }
                    f fVarH = o.h(this.f9119b.f8902K[0]);
                    if (fVarH != null) {
                        o.b(fVar2, fVarH, this.f9119b.f8902K[0].e());
                    }
                    f fVarH2 = o.h(this.f9119b.f8902K[1]);
                    if (fVarH2 != null) {
                        o.b(fVar, fVarH2, -this.f9119b.f8902K[1].e());
                    }
                    fVar2.f9096b = true;
                    fVar.f9096b = true;
                    return;
                }
                if (c0826c2 != null) {
                    f fVarH3 = o.h(c0826c);
                    if (fVarH3 != null) {
                        o.b(fVar2, fVarH3, this.f9119b.f8902K[0].e());
                        o.b(fVar, fVar2, gVar.f9100g);
                        return;
                    }
                    return;
                }
                C0826c c0826c3 = c0826cArr[1];
                if (c0826c3.f != null) {
                    f fVarH4 = o.h(c0826c3);
                    if (fVarH4 != null) {
                        o.b(fVar, fVarH4, -this.f9119b.f8902K[1].e());
                        o.b(fVar2, fVar, -gVar.f9100g);
                        return;
                    }
                    return;
                }
                if ((c0827d7 instanceof s.i) || c0827d7.f8905N == null || c0827d7.i(7).f != null) {
                    return;
                }
                C0827d c0827d8 = this.f9119b;
                o.b(fVar2, c0827d8.f8905N.f8924d.f9124h, c0827d8.o());
                o.b(fVar, fVar2, gVar.f9100g);
                return;
            }
        }
        if (this.f9121d == 3) {
            C0827d c0827d9 = this.f9119b;
            int i6 = c0827d9.f8937l;
            if (i6 == 2) {
                C0827d c0827d10 = c0827d9.f8905N;
                if (c0827d10 != null) {
                    g gVar2 = c0827d10.f8926e.f9122e;
                    gVar.f9105l.add(gVar2);
                    gVar2.f9104k.add(gVar);
                    gVar.f9096b = true;
                    gVar.f9104k.add(fVar2);
                    gVar.f9104k.add(fVar);
                }
            } else if (i6 == 3) {
                if (c0827d9.f8938m == 3) {
                    fVar2.f9095a = this;
                    fVar.f9095a = this;
                    m mVar = c0827d9.f8926e;
                    mVar.f9124h.f9095a = this;
                    mVar.f9125i.f9095a = this;
                    gVar.f9095a = this;
                    if (c0827d9.u()) {
                        gVar.f9105l.add(this.f9119b.f8926e.f9122e);
                        this.f9119b.f8926e.f9122e.f9104k.add(gVar);
                        m mVar2 = this.f9119b.f8926e;
                        mVar2.f9122e.f9095a = this;
                        gVar.f9105l.add(mVar2.f9124h);
                        gVar.f9105l.add(this.f9119b.f8926e.f9125i);
                        this.f9119b.f8926e.f9124h.f9104k.add(gVar);
                        this.f9119b.f8926e.f9125i.f9104k.add(gVar);
                    } else if (this.f9119b.t()) {
                        this.f9119b.f8926e.f9122e.f9105l.add(gVar);
                        gVar.f9104k.add(this.f9119b.f8926e.f9122e);
                    } else {
                        this.f9119b.f8926e.f9122e.f9105l.add(gVar);
                    }
                } else {
                    g gVar3 = c0827d9.f8926e.f9122e;
                    gVar.f9105l.add(gVar3);
                    gVar3.f9104k.add(gVar);
                    this.f9119b.f8926e.f9124h.f9104k.add(gVar);
                    this.f9119b.f8926e.f9125i.f9104k.add(gVar);
                    gVar.f9096b = true;
                    gVar.f9104k.add(fVar2);
                    gVar.f9104k.add(fVar);
                    fVar2.f9105l.add(gVar);
                    fVar.f9105l.add(gVar);
                }
            }
        }
        C0827d c0827d11 = this.f9119b;
        C0826c[] c0826cArr2 = c0827d11.f8902K;
        C0826c c0826c4 = c0826cArr2[0];
        C0826c c0826c5 = c0826c4.f;
        if (c0826c5 != null && c0826cArr2[1].f != null) {
            if (c0827d11.t()) {
                fVar2.f = this.f9119b.f8902K[0].e();
                fVar.f = -this.f9119b.f8902K[1].e();
                return;
            }
            f fVarH5 = o.h(this.f9119b.f8902K[0]);
            f fVarH6 = o.h(this.f9119b.f8902K[1]);
            fVarH5.b(this);
            fVarH6.b(this);
            this.f9126j = 4;
            return;
        }
        if (c0826c5 != null) {
            f fVarH7 = o.h(c0826c4);
            if (fVarH7 != null) {
                o.b(fVar2, fVarH7, this.f9119b.f8902K[0].e());
                c(fVar, fVar2, 1, gVar);
                return;
            }
            return;
        }
        C0826c c0826c6 = c0826cArr2[1];
        if (c0826c6.f != null) {
            f fVarH8 = o.h(c0826c6);
            if (fVarH8 != null) {
                o.b(fVar, fVarH8, -this.f9119b.f8902K[1].e());
                c(fVar2, fVar, -1, gVar);
                return;
            }
            return;
        }
        if ((c0827d11 instanceof s.i) || (c0827d3 = c0827d11.f8905N) == null) {
            return;
        }
        o.b(fVar2, c0827d3.f8924d.f9124h, c0827d11.o());
        c(fVar, fVar2, 1, gVar);
    }

    @Override // t.o
    public final void e() {
        f fVar = this.f9124h;
        if (fVar.f9103j) {
            this.f9119b.f8910S = fVar.f9100g;
        }
    }

    @Override // t.o
    public final void f() {
        this.f9120c = null;
        this.f9124h.c();
        this.f9125i.c();
        this.f9122e.c();
        this.f9123g = false;
    }

    @Override // t.o
    public final boolean k() {
        return this.f9121d != 3 || this.f9119b.f8937l == 0;
    }

    public final void n() {
        this.f9123g = false;
        f fVar = this.f9124h;
        fVar.c();
        fVar.f9103j = false;
        f fVar2 = this.f9125i;
        fVar2.c();
        fVar2.f9103j = false;
        this.f9122e.f9103j = false;
    }

    public final String toString() {
        return "HorizontalRun " + this.f9119b.f8921b0;
    }
}
