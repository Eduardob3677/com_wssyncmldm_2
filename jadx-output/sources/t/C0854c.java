package t;

import h0.AbstractC0432c;
import java.util.ArrayList;
import java.util.Iterator;
import s.C0826c;
import s.C0827d;

/* renamed from: t.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0854c extends o {

    /* renamed from: k, reason: collision with root package name */
    public final ArrayList f9086k;

    /* renamed from: l, reason: collision with root package name */
    public int f9087l;

    public C0854c(C0827d c0827d, int i5) {
        C0827d c0827d2;
        super(c0827d);
        this.f9086k = new ArrayList();
        this.f = i5;
        C0827d c0827d3 = this.f9119b;
        C0827d c0827dM = c0827d3.m(i5);
        while (true) {
            C0827d c0827d4 = c0827dM;
            c0827d2 = c0827d3;
            c0827d3 = c0827d4;
            if (c0827d3 == null) {
                break;
            } else {
                c0827dM = c0827d3.m(this.f);
            }
        }
        this.f9119b = c0827d2;
        int i6 = this.f;
        o oVar = i6 == 0 ? c0827d2.f8924d : i6 == 1 ? c0827d2.f8926e : null;
        ArrayList arrayList = this.f9086k;
        arrayList.add(oVar);
        C0827d c0827dL = c0827d2.l(this.f);
        while (c0827dL != null) {
            int i7 = this.f;
            arrayList.add(i7 == 0 ? c0827dL.f8924d : i7 == 1 ? c0827dL.f8926e : null);
            c0827dL = c0827dL.l(this.f);
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            o oVar2 = (o) it.next();
            int i8 = this.f;
            if (i8 == 0) {
                oVar2.f9119b.f8920b = this;
            } else if (i8 == 1) {
                oVar2.f9119b.f8922c = this;
            }
        }
        if (this.f == 0 && ((s.e) this.f9119b.f8905N).o0 && arrayList.size() > 1) {
            this.f9119b = ((o) arrayList.get(arrayList.size() - 1)).f9119b;
        }
        this.f9087l = this.f == 0 ? this.f9119b.f8923c0 : this.f9119b.f8925d0;
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x01c2 A[PHI: r2 r25
      0x01c2: PHI (r2v43 int) = (r2v39 int), (r2v48 int) binds: [B:120:0x01c0, B:111:0x01a0] A[DONT_GENERATE, DONT_INLINE]
      0x01c2: PHI (r25v1 float) = (r25v0 float), (r25v3 float) binds: [B:120:0x01c0, B:111:0x01a0] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0155  */
    @Override // t.InterfaceC0855d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(InterfaceC0855d interfaceC0855d) {
        int i5;
        int i6;
        ArrayList arrayList;
        int i7;
        int i8;
        int i9;
        int i10;
        float f;
        int i11;
        boolean z4;
        ArrayList arrayList2;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z5;
        int i16;
        float f5;
        int iMax;
        int i17;
        boolean z6;
        int i18;
        f fVar = this.f9124h;
        if (fVar.f9103j) {
            f fVar2 = this.f9125i;
            if (fVar2.f9103j) {
                C0827d c0827d = this.f9119b.f8905N;
                boolean z7 = (c0827d == null || !(c0827d instanceof s.e)) ? false : ((s.e) c0827d).o0;
                int i19 = fVar2.f9100g - fVar.f9100g;
                ArrayList arrayList3 = this.f9086k;
                int size = arrayList3.size();
                int i20 = 0;
                while (true) {
                    i5 = -1;
                    i6 = 8;
                    if (i20 >= size) {
                        i20 = -1;
                        break;
                    } else if (((o) arrayList3.get(i20)).f9119b.f8919a0 != 8) {
                        break;
                    } else {
                        i20++;
                    }
                }
                int i21 = size - 1;
                int i22 = i21;
                while (true) {
                    if (i22 < 0) {
                        break;
                    }
                    if (((o) arrayList3.get(i22)).f9119b.f8919a0 != 8) {
                        i5 = i22;
                        break;
                    }
                    i22--;
                }
                int i23 = 0;
                while (i23 < 2) {
                    int i24 = 0;
                    i10 = 0;
                    int i25 = 0;
                    int i26 = 0;
                    f = 0.0f;
                    while (i24 < size) {
                        o oVar = (o) arrayList3.get(i24);
                        C0827d c0827d2 = oVar.f9119b;
                        ArrayList arrayList4 = arrayList3;
                        if (c0827d2.f8919a0 == i6) {
                            i17 = i20;
                        } else {
                            i26++;
                            if (i24 > 0 && i24 >= i20) {
                                i10 += oVar.f9124h.f;
                            }
                            g gVar = oVar.f9122e;
                            int i27 = gVar.f9100g;
                            i17 = i20;
                            boolean z8 = oVar.f9121d != 3;
                            if (z8) {
                                int i28 = this.f;
                                if (i28 == 0 && !c0827d2.f8924d.f9122e.f9103j) {
                                    return;
                                }
                                if (i28 == 1 && !c0827d2.f8926e.f9122e.f9103j) {
                                    return;
                                } else {
                                    z6 = z8;
                                }
                            } else {
                                z6 = z8;
                                if (oVar.f9118a == 1 && i23 == 0) {
                                    i18 = gVar.f9106m;
                                    i25++;
                                } else if (gVar.f9103j) {
                                    i18 = i27;
                                }
                                z6 = true;
                                if (z6) {
                                    i25++;
                                    float f6 = c0827d2.f8927e0[this.f];
                                    if (f6 >= 0.0f) {
                                        f += f6;
                                    }
                                } else {
                                    i10 += i18;
                                }
                                if (i24 >= i21 && i24 < i5) {
                                    i10 += -oVar.f9125i.f;
                                }
                            }
                            i18 = i27;
                            if (z6) {
                            }
                            if (i24 >= i21) {
                            }
                        }
                        i24++;
                        arrayList3 = arrayList4;
                        i20 = i17;
                        i6 = 8;
                    }
                    arrayList = arrayList3;
                    i7 = i20;
                    if (i10 < i19 || i25 == 0) {
                        i8 = i25;
                        i9 = i26;
                        break;
                    } else {
                        i23++;
                        arrayList3 = arrayList;
                        i20 = i7;
                        i6 = 8;
                    }
                }
                arrayList = arrayList3;
                i7 = i20;
                i8 = 0;
                i9 = 0;
                i10 = 0;
                f = 0.0f;
                int i29 = fVar.f9100g;
                if (z7) {
                    i29 = fVar2.f9100g;
                }
                if (i10 > i19) {
                    i29 = z7 ? i29 + ((int) (((i10 - i19) / 2.0f) + 0.5f)) : i29 - ((int) (((i10 - i19) / 2.0f) + 0.5f));
                }
                if (i8 > 0) {
                    float f7 = i19 - i10;
                    int i30 = (int) ((f7 / i8) + 0.5f);
                    int i31 = 0;
                    int i32 = 0;
                    while (i31 < size) {
                        ArrayList arrayList5 = arrayList;
                        o oVar2 = (o) arrayList5.get(i31);
                        int i33 = i30;
                        C0827d c0827d3 = oVar2.f9119b;
                        int i34 = i10;
                        int i35 = i29;
                        if (c0827d3.f8919a0 != 8 && oVar2.f9121d == 3) {
                            g gVar2 = oVar2.f9122e;
                            if (gVar2.f9103j) {
                                z5 = z7;
                                f5 = f7;
                            } else {
                                if (f > 0.0f) {
                                    z5 = z7;
                                    i16 = (int) (((c0827d3.f8927e0[this.f] * f7) / f) + 0.5f);
                                } else {
                                    z5 = z7;
                                    i16 = i33;
                                }
                                if (this.f == 0) {
                                    int i36 = c0827d3.f8940p;
                                    f5 = f7;
                                    iMax = Math.max(c0827d3.f8939o, oVar2.f9118a == 1 ? Math.min(i16, gVar2.f9106m) : i16);
                                    if (i36 > 0) {
                                        iMax = Math.min(i36, iMax);
                                    }
                                    if (iMax != i16) {
                                        i32++;
                                        i16 = iMax;
                                    }
                                    gVar2.d(i16);
                                } else {
                                    f5 = f7;
                                    int i37 = c0827d3.f8943s;
                                    iMax = Math.max(c0827d3.f8942r, oVar2.f9118a == 1 ? Math.min(i16, gVar2.f9106m) : i16);
                                    if (i37 > 0) {
                                        iMax = Math.min(i37, iMax);
                                    }
                                    if (iMax != i16) {
                                    }
                                    gVar2.d(i16);
                                }
                            }
                        }
                        i31++;
                        i30 = i33;
                        i10 = i34;
                        i29 = i35;
                        z7 = z5;
                        f7 = f5;
                        arrayList = arrayList5;
                    }
                    i11 = i29;
                    z4 = z7;
                    arrayList2 = arrayList;
                    int i38 = i10;
                    if (i32 > 0) {
                        i8 -= i32;
                        int i39 = 0;
                        i10 = 0;
                        while (i39 < size) {
                            o oVar3 = (o) arrayList2.get(i39);
                            if (oVar3.f9119b.f8919a0 == 8) {
                                i15 = i7;
                            } else {
                                i15 = i7;
                                if (i39 > 0 && i39 >= i15) {
                                    i10 += oVar3.f9124h.f;
                                }
                                i10 += oVar3.f9122e.f9100g;
                                if (i39 < i21 && i39 < i5) {
                                    i10 += -oVar3.f9125i.f;
                                }
                            }
                            i39++;
                            i7 = i15;
                        }
                        i12 = i7;
                    } else {
                        i12 = i7;
                        i10 = i38;
                    }
                    i14 = 2;
                    if (this.f9087l == 2 && i32 == 0) {
                        i13 = 0;
                        this.f9087l = 0;
                    } else {
                        i13 = 0;
                    }
                } else {
                    i11 = i29;
                    z4 = z7;
                    arrayList2 = arrayList;
                    i12 = i7;
                    i13 = 0;
                    i14 = 2;
                }
                if (i10 > i19) {
                    this.f9087l = i14;
                }
                if (i9 > 0 && i8 == 0 && i12 == i5) {
                    this.f9087l = i14;
                }
                int i40 = this.f9087l;
                if (i40 == 1) {
                    int i41 = i9 > 1 ? (i19 - i10) / (i9 - 1) : i9 == 1 ? (i19 - i10) / 2 : i13;
                    if (i8 > 0) {
                        i41 = i13;
                    }
                    int i42 = i11;
                    for (int i43 = i13; i43 < size; i43++) {
                        o oVar4 = (o) arrayList2.get(z4 ? size - (i43 + 1) : i43);
                        int i44 = oVar4.f9119b.f8919a0;
                        f fVar3 = oVar4.f9125i;
                        f fVar4 = oVar4.f9124h;
                        if (i44 == 8) {
                            fVar4.d(i42);
                            fVar3.d(i42);
                        } else {
                            if (i43 > 0) {
                                i42 = z4 ? i42 - i41 : i42 + i41;
                            }
                            if (i43 > 0 && i43 >= i12) {
                                i42 = z4 ? i42 - fVar4.f : i42 + fVar4.f;
                            }
                            if (z4) {
                                fVar3.d(i42);
                            } else {
                                fVar4.d(i42);
                            }
                            g gVar3 = oVar4.f9122e;
                            int i45 = gVar3.f9100g;
                            if (oVar4.f9121d == 3 && oVar4.f9118a == 1) {
                                i45 = gVar3.f9106m;
                            }
                            i42 = z4 ? i42 - i45 : i42 + i45;
                            if (z4) {
                                fVar4.d(i42);
                            } else {
                                fVar3.d(i42);
                            }
                            oVar4.f9123g = true;
                            if (i43 < i21 && i43 < i5) {
                                i42 = z4 ? i42 - (-fVar3.f) : i42 + (-fVar3.f);
                            }
                        }
                    }
                    return;
                }
                if (i40 == 0) {
                    int i46 = (i19 - i10) / (i9 + 1);
                    if (i8 > 0) {
                        i46 = i13;
                    }
                    int i47 = i11;
                    for (int i48 = i13; i48 < size; i48++) {
                        o oVar5 = (o) arrayList2.get(z4 ? size - (i48 + 1) : i48);
                        int i49 = oVar5.f9119b.f8919a0;
                        f fVar5 = oVar5.f9125i;
                        f fVar6 = oVar5.f9124h;
                        if (i49 == 8) {
                            fVar6.d(i47);
                            fVar5.d(i47);
                        } else {
                            int i50 = z4 ? i47 - i46 : i47 + i46;
                            if (i48 > 0 && i48 >= i12) {
                                i50 = z4 ? i50 - fVar6.f : i50 + fVar6.f;
                            }
                            if (z4) {
                                fVar5.d(i50);
                            } else {
                                fVar6.d(i50);
                            }
                            g gVar4 = oVar5.f9122e;
                            int iMin = gVar4.f9100g;
                            if (oVar5.f9121d == 3 && oVar5.f9118a == 1) {
                                iMin = Math.min(iMin, gVar4.f9106m);
                            }
                            i47 = z4 ? i50 - iMin : i50 + iMin;
                            if (z4) {
                                fVar6.d(i47);
                            } else {
                                fVar5.d(i47);
                            }
                            if (i48 < i21 && i48 < i5) {
                                i47 = z4 ? i47 - (-fVar5.f) : i47 + (-fVar5.f);
                            }
                        }
                    }
                    return;
                }
                if (i40 == 2) {
                    int i51 = this.f;
                    C0827d c0827d4 = this.f9119b;
                    float f8 = i51 == 0 ? c0827d4.f8915X : c0827d4.f8916Y;
                    if (z4) {
                        f8 = 1.0f - f8;
                    }
                    int i52 = (int) (((i19 - i10) * f8) + 0.5f);
                    if (i52 < 0 || i8 > 0) {
                        i52 = i13;
                    }
                    int i53 = z4 ? i11 - i52 : i11 + i52;
                    for (int i54 = i13; i54 < size; i54++) {
                        o oVar6 = (o) arrayList2.get(z4 ? size - (i54 + 1) : i54);
                        int i55 = oVar6.f9119b.f8919a0;
                        f fVar7 = oVar6.f9125i;
                        f fVar8 = oVar6.f9124h;
                        if (i55 == 8) {
                            fVar8.d(i53);
                            fVar7.d(i53);
                        } else {
                            if (i54 > 0 && i54 >= i12) {
                                i53 = z4 ? i53 - fVar8.f : i53 + fVar8.f;
                            }
                            if (z4) {
                                fVar7.d(i53);
                            } else {
                                fVar8.d(i53);
                            }
                            g gVar5 = oVar6.f9122e;
                            int i56 = gVar5.f9100g;
                            if (oVar6.f9121d == 3 && oVar6.f9118a == 1) {
                                i56 = gVar5.f9106m;
                            }
                            i53 = z4 ? i53 - i56 : i53 + i56;
                            if (z4) {
                                fVar8.d(i53);
                            } else {
                                fVar7.d(i53);
                            }
                            if (i54 < i21 && i54 < i5) {
                                i53 = z4 ? i53 - (-fVar7.f) : i53 + (-fVar7.f);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override // t.o
    public final void d() {
        ArrayList arrayList = this.f9086k;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((o) it.next()).d();
        }
        int size = arrayList.size();
        if (size < 1) {
            return;
        }
        C0827d c0827d = ((o) arrayList.get(0)).f9119b;
        C0827d c0827d2 = ((o) arrayList.get(size - 1)).f9119b;
        int i5 = this.f;
        f fVar = this.f9125i;
        f fVar2 = this.f9124h;
        if (i5 == 0) {
            C0826c c0826c = c0827d.f8895C;
            C0826c c0826c2 = c0827d2.E;
            f fVarI = o.i(c0826c, 0);
            int iE = c0826c.e();
            C0827d c0827dM = m();
            if (c0827dM != null) {
                iE = c0827dM.f8895C.e();
            }
            if (fVarI != null) {
                o.b(fVar2, fVarI, iE);
            }
            f fVarI2 = o.i(c0826c2, 0);
            int iE2 = c0826c2.e();
            C0827d c0827dN = n();
            if (c0827dN != null) {
                iE2 = c0827dN.E.e();
            }
            if (fVarI2 != null) {
                o.b(fVar, fVarI2, -iE2);
            }
        } else {
            C0826c c0826c3 = c0827d.f8896D;
            C0826c c0826c4 = c0827d2.f8897F;
            f fVarI3 = o.i(c0826c3, 1);
            int iE3 = c0826c3.e();
            C0827d c0827dM2 = m();
            if (c0827dM2 != null) {
                iE3 = c0827dM2.f8896D.e();
            }
            if (fVarI3 != null) {
                o.b(fVar2, fVarI3, iE3);
            }
            f fVarI4 = o.i(c0826c4, 1);
            int iE4 = c0826c4.e();
            C0827d c0827dN2 = n();
            if (c0827dN2 != null) {
                iE4 = c0827dN2.f8897F.e();
            }
            if (fVarI4 != null) {
                o.b(fVar, fVarI4, -iE4);
            }
        }
        fVar2.f9095a = this;
        fVar.f9095a = this;
    }

    @Override // t.o
    public final void e() {
        int i5 = 0;
        while (true) {
            ArrayList arrayList = this.f9086k;
            if (i5 >= arrayList.size()) {
                return;
            }
            ((o) arrayList.get(i5)).e();
            i5++;
        }
    }

    @Override // t.o
    public final void f() {
        this.f9120c = null;
        Iterator it = this.f9086k.iterator();
        while (it.hasNext()) {
            ((o) it.next()).f();
        }
    }

    @Override // t.o
    public final long j() {
        ArrayList arrayList = this.f9086k;
        int size = arrayList.size();
        long j3 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            j3 = r4.f9125i.f + ((o) arrayList.get(i5)).j() + j3 + r4.f9124h.f;
        }
        return j3;
    }

    @Override // t.o
    public final boolean k() {
        ArrayList arrayList = this.f9086k;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            if (!((o) arrayList.get(i5)).k()) {
                return false;
            }
        }
        return true;
    }

    public final C0827d m() {
        int i5 = 0;
        while (true) {
            ArrayList arrayList = this.f9086k;
            if (i5 >= arrayList.size()) {
                return null;
            }
            C0827d c0827d = ((o) arrayList.get(i5)).f9119b;
            if (c0827d.f8919a0 != 8) {
                return c0827d;
            }
            i5++;
        }
    }

    public final C0827d n() {
        ArrayList arrayList = this.f9086k;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C0827d c0827d = ((o) arrayList.get(size)).f9119b;
            if (c0827d.f8919a0 != 8) {
                return c0827d;
            }
        }
        return null;
    }

    public final String toString() {
        String strConcat = "ChainRun ".concat(this.f == 0 ? "horizontal : " : "vertical : ");
        Iterator it = this.f9086k.iterator();
        while (it.hasNext()) {
            o oVar = (o) it.next();
            strConcat = AbstractC0432c.h(AbstractC0432c.h(strConcat, "<") + oVar, "> ");
        }
        return strConcat;
    }
}
