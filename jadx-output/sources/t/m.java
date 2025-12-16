package t;

import k.Q0;
import s.C0826c;
import s.C0827d;

/* loaded from: classes.dex */
public final class m extends o {

    /* renamed from: k, reason: collision with root package name */
    public f f9111k;

    /* renamed from: l, reason: collision with root package name */
    public C0852a f9112l;

    @Override // t.InterfaceC0855d
    public final void a(InterfaceC0855d interfaceC0855d) {
        float f;
        float f5;
        float f6;
        int i5;
        if (Q0.f(this.f9126j) == 3) {
            C0827d c0827d = this.f9119b;
            l(c0827d.f8896D, c0827d.f8897F, 1);
            return;
        }
        g gVar = this.f9122e;
        if (gVar.f9097c && !gVar.f9103j && this.f9121d == 3) {
            C0827d c0827d2 = this.f9119b;
            int i6 = c0827d2.f8938m;
            if (i6 == 2) {
                C0827d c0827d3 = c0827d2.f8905N;
                if (c0827d3 != null) {
                    if (c0827d3.f8926e.f9122e.f9103j) {
                        gVar.d((int) ((r5.f9100g * c0827d2.f8944t) + 0.5f));
                    }
                }
            } else if (i6 == 3) {
                g gVar2 = c0827d2.f8924d.f9122e;
                if (gVar2.f9103j) {
                    int i7 = c0827d2.f8909R;
                    if (i7 == -1) {
                        f = gVar2.f9100g;
                        f5 = c0827d2.f8908Q;
                    } else if (i7 == 0) {
                        f6 = gVar2.f9100g * c0827d2.f8908Q;
                        i5 = (int) (f6 + 0.5f);
                        gVar.d(i5);
                    } else if (i7 != 1) {
                        i5 = 0;
                        gVar.d(i5);
                    } else {
                        f = gVar2.f9100g;
                        f5 = c0827d2.f8908Q;
                    }
                    f6 = f / f5;
                    i5 = (int) (f6 + 0.5f);
                    gVar.d(i5);
                }
            }
        }
        f fVar = this.f9124h;
        if (fVar.f9097c) {
            f fVar2 = this.f9125i;
            if (fVar2.f9097c) {
                if (fVar.f9103j && fVar2.f9103j && gVar.f9103j) {
                    return;
                }
                if (!gVar.f9103j && this.f9121d == 3) {
                    C0827d c0827d4 = this.f9119b;
                    if (c0827d4.f8937l == 0 && !c0827d4.u()) {
                        f fVar3 = (f) fVar.f9105l.get(0);
                        f fVar4 = (f) fVar2.f9105l.get(0);
                        int i8 = fVar3.f9100g + fVar.f;
                        int i9 = fVar4.f9100g + fVar2.f;
                        fVar.d(i8);
                        fVar2.d(i9);
                        gVar.d(i9 - i8);
                        return;
                    }
                }
                if (!gVar.f9103j && this.f9121d == 3 && this.f9118a == 1 && fVar.f9105l.size() > 0 && fVar2.f9105l.size() > 0) {
                    f fVar5 = (f) fVar.f9105l.get(0);
                    int i10 = (((f) fVar2.f9105l.get(0)).f9100g + fVar2.f) - (fVar5.f9100g + fVar.f);
                    int i11 = gVar.f9106m;
                    if (i10 < i11) {
                        gVar.d(i10);
                    } else {
                        gVar.d(i11);
                    }
                }
                if (gVar.f9103j && fVar.f9105l.size() > 0 && fVar2.f9105l.size() > 0) {
                    f fVar6 = (f) fVar.f9105l.get(0);
                    f fVar7 = (f) fVar2.f9105l.get(0);
                    int i12 = fVar6.f9100g;
                    int i13 = fVar.f + i12;
                    int i14 = fVar7.f9100g;
                    int i15 = fVar2.f + i14;
                    float f7 = this.f9119b.f8916Y;
                    if (fVar6 == fVar7) {
                        f7 = 0.5f;
                    } else {
                        i12 = i13;
                        i14 = i15;
                    }
                    fVar.d((int) ((((i14 - i12) - gVar.f9100g) * f7) + i12 + 0.5f));
                    fVar2.d(fVar.f9100g + gVar.f9100g);
                }
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
            gVar.d(c0827d5.k());
        }
        boolean z5 = gVar.f9103j;
        f fVar = this.f9125i;
        f fVar2 = this.f9124h;
        if (!z5) {
            C0827d c0827d6 = this.f9119b;
            this.f9121d = c0827d6.f8935j0[1];
            if (c0827d6.f8949y) {
                this.f9112l = new C0852a(this);
            }
            int i5 = this.f9121d;
            if (i5 != 3) {
                if (i5 == 4 && (c0827d4 = this.f9119b.f8905N) != null && c0827d4.f8935j0[1] == 1) {
                    int iK = (c0827d4.k() - this.f9119b.f8896D.e()) - this.f9119b.f8897F.e();
                    o.b(fVar2, c0827d4.f8926e.f9124h, this.f9119b.f8896D.e());
                    o.b(fVar, c0827d4.f8926e.f9125i, -this.f9119b.f8897F.e());
                    gVar.d(iK);
                    return;
                }
                if (i5 == 1) {
                    gVar.d(this.f9119b.k());
                }
            }
        } else if (this.f9121d == 4 && (c0827d2 = (c0827d = this.f9119b).f8905N) != null && c0827d2.f8935j0[1] == 1) {
            o.b(fVar2, c0827d2.f8926e.f9124h, c0827d.f8896D.e());
            o.b(fVar, c0827d2.f8926e.f9125i, -this.f9119b.f8897F.e());
            return;
        }
        boolean z6 = gVar.f9103j;
        f fVar3 = this.f9111k;
        if (z6) {
            C0827d c0827d7 = this.f9119b;
            if (c0827d7.f8918a) {
                C0826c[] c0826cArr = c0827d7.f8902K;
                C0826c c0826c = c0826cArr[2];
                C0826c c0826c2 = c0826c.f;
                if (c0826c2 != null && c0826cArr[3].f != null) {
                    if (c0827d7.u()) {
                        fVar2.f = this.f9119b.f8902K[2].e();
                        fVar.f = -this.f9119b.f8902K[3].e();
                    } else {
                        f fVarH = o.h(this.f9119b.f8902K[2]);
                        if (fVarH != null) {
                            o.b(fVar2, fVarH, this.f9119b.f8902K[2].e());
                        }
                        f fVarH2 = o.h(this.f9119b.f8902K[3]);
                        if (fVarH2 != null) {
                            o.b(fVar, fVarH2, -this.f9119b.f8902K[3].e());
                        }
                        fVar2.f9096b = true;
                        fVar.f9096b = true;
                    }
                    C0827d c0827d8 = this.f9119b;
                    if (c0827d8.f8949y) {
                        o.b(fVar3, fVar2, c0827d8.f8912U);
                        return;
                    }
                    return;
                }
                if (c0826c2 != null) {
                    f fVarH3 = o.h(c0826c);
                    if (fVarH3 != null) {
                        o.b(fVar2, fVarH3, this.f9119b.f8902K[2].e());
                        o.b(fVar, fVar2, gVar.f9100g);
                        C0827d c0827d9 = this.f9119b;
                        if (c0827d9.f8949y) {
                            o.b(fVar3, fVar2, c0827d9.f8912U);
                            return;
                        }
                        return;
                    }
                    return;
                }
                C0826c c0826c3 = c0826cArr[3];
                if (c0826c3.f != null) {
                    f fVarH4 = o.h(c0826c3);
                    if (fVarH4 != null) {
                        o.b(fVar, fVarH4, -this.f9119b.f8902K[3].e());
                        o.b(fVar2, fVar, -gVar.f9100g);
                    }
                    C0827d c0827d10 = this.f9119b;
                    if (c0827d10.f8949y) {
                        o.b(fVar3, fVar2, c0827d10.f8912U);
                        return;
                    }
                    return;
                }
                C0826c c0826c4 = c0826cArr[4];
                if (c0826c4.f != null) {
                    f fVarH5 = o.h(c0826c4);
                    if (fVarH5 != null) {
                        o.b(fVar3, fVarH5, 0);
                        o.b(fVar2, fVar3, -this.f9119b.f8912U);
                        o.b(fVar, fVar2, gVar.f9100g);
                        return;
                    }
                    return;
                }
                if ((c0827d7 instanceof s.i) || c0827d7.f8905N == null || c0827d7.i(7).f != null) {
                    return;
                }
                C0827d c0827d11 = this.f9119b;
                o.b(fVar2, c0827d11.f8905N.f8926e.f9124h, c0827d11.p());
                o.b(fVar, fVar2, gVar.f9100g);
                C0827d c0827d12 = this.f9119b;
                if (c0827d12.f8949y) {
                    o.b(fVar3, fVar2, c0827d12.f8912U);
                    return;
                }
                return;
            }
        }
        if (z6 || this.f9121d != 3) {
            gVar.b(this);
        } else {
            C0827d c0827d13 = this.f9119b;
            int i6 = c0827d13.f8938m;
            if (i6 == 2) {
                C0827d c0827d14 = c0827d13.f8905N;
                if (c0827d14 != null) {
                    g gVar2 = c0827d14.f8926e.f9122e;
                    gVar.f9105l.add(gVar2);
                    gVar2.f9104k.add(gVar);
                    gVar.f9096b = true;
                    gVar.f9104k.add(fVar2);
                    gVar.f9104k.add(fVar);
                }
            } else if (i6 == 3 && !c0827d13.u()) {
                C0827d c0827d15 = this.f9119b;
                if (c0827d15.f8937l != 3) {
                    g gVar3 = c0827d15.f8924d.f9122e;
                    gVar.f9105l.add(gVar3);
                    gVar3.f9104k.add(gVar);
                    gVar.f9096b = true;
                    gVar.f9104k.add(fVar2);
                    gVar.f9104k.add(fVar);
                }
            }
        }
        C0827d c0827d16 = this.f9119b;
        C0826c[] c0826cArr2 = c0827d16.f8902K;
        C0826c c0826c5 = c0826cArr2[2];
        C0826c c0826c6 = c0826c5.f;
        if (c0826c6 != null && c0826cArr2[3].f != null) {
            if (c0827d16.u()) {
                fVar2.f = this.f9119b.f8902K[2].e();
                fVar.f = -this.f9119b.f8902K[3].e();
            } else {
                f fVarH6 = o.h(this.f9119b.f8902K[2]);
                f fVarH7 = o.h(this.f9119b.f8902K[3]);
                fVarH6.b(this);
                fVarH7.b(this);
                this.f9126j = 4;
            }
            if (this.f9119b.f8949y) {
                c(fVar3, fVar2, 1, this.f9112l);
            }
        } else if (c0826c6 != null) {
            f fVarH8 = o.h(c0826c5);
            if (fVarH8 != null) {
                o.b(fVar2, fVarH8, this.f9119b.f8902K[2].e());
                c(fVar, fVar2, 1, gVar);
                if (this.f9119b.f8949y) {
                    c(fVar3, fVar2, 1, this.f9112l);
                }
                if (this.f9121d == 3) {
                    C0827d c0827d17 = this.f9119b;
                    if (c0827d17.f8908Q > 0.0f) {
                        k kVar = c0827d17.f8924d;
                        if (kVar.f9121d == 3) {
                            kVar.f9122e.f9104k.add(gVar);
                            gVar.f9105l.add(this.f9119b.f8924d.f9122e);
                            gVar.f9095a = this;
                        }
                    }
                }
            }
        } else {
            C0826c c0826c7 = c0826cArr2[3];
            if (c0826c7.f != null) {
                f fVarH9 = o.h(c0826c7);
                if (fVarH9 != null) {
                    o.b(fVar, fVarH9, -this.f9119b.f8902K[3].e());
                    c(fVar2, fVar, -1, gVar);
                    if (this.f9119b.f8949y) {
                        c(fVar3, fVar2, 1, this.f9112l);
                    }
                }
            } else {
                C0826c c0826c8 = c0826cArr2[4];
                if (c0826c8.f != null) {
                    f fVarH10 = o.h(c0826c8);
                    if (fVarH10 != null) {
                        o.b(fVar3, fVarH10, 0);
                        c(fVar2, fVar3, -1, this.f9112l);
                        c(fVar, fVar2, 1, gVar);
                    }
                } else if (!(c0827d16 instanceof s.i) && (c0827d3 = c0827d16.f8905N) != null) {
                    o.b(fVar2, c0827d3.f8926e.f9124h, c0827d16.p());
                    c(fVar, fVar2, 1, gVar);
                    if (this.f9119b.f8949y) {
                        c(fVar3, fVar2, 1, this.f9112l);
                    }
                    if (this.f9121d == 3) {
                        C0827d c0827d18 = this.f9119b;
                        if (c0827d18.f8908Q > 0.0f) {
                            k kVar2 = c0827d18.f8924d;
                            if (kVar2.f9121d == 3) {
                                kVar2.f9122e.f9104k.add(gVar);
                                gVar.f9105l.add(this.f9119b.f8924d.f9122e);
                                gVar.f9095a = this;
                            }
                        }
                    }
                }
            }
        }
        if (gVar.f9105l.size() == 0) {
            gVar.f9097c = true;
        }
    }

    @Override // t.o
    public final void e() {
        f fVar = this.f9124h;
        if (fVar.f9103j) {
            this.f9119b.f8911T = fVar.f9100g;
        }
    }

    @Override // t.o
    public final void f() {
        this.f9120c = null;
        this.f9124h.c();
        this.f9125i.c();
        this.f9111k.c();
        this.f9122e.c();
        this.f9123g = false;
    }

    @Override // t.o
    public final boolean k() {
        return this.f9121d != 3 || this.f9119b.f8938m == 0;
    }

    public final void m() {
        this.f9123g = false;
        f fVar = this.f9124h;
        fVar.c();
        fVar.f9103j = false;
        f fVar2 = this.f9125i;
        fVar2.c();
        fVar2.f9103j = false;
        f fVar3 = this.f9111k;
        fVar3.c();
        fVar3.f9103j = false;
        this.f9122e.f9103j = false;
    }

    public final String toString() {
        return "VerticalRun " + this.f9119b.f8921b0;
    }
}
