package t;

import com.google.android.gms.internal.p000firebaseauthapi.a5;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import s.C0826c;
import s.C0827d;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public s.e f9088a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f9089b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f9090c;

    /* renamed from: d, reason: collision with root package name */
    public s.e f9091d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f9092e;
    public a5 f;

    /* renamed from: g, reason: collision with root package name */
    public C0853b f9093g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f9094h;

    public final void a(f fVar, int i5, ArrayList arrayList, l lVar) {
        o oVar = fVar.f9098d;
        if (oVar.f9120c == null) {
            s.e eVar = this.f9088a;
            if (oVar == eVar.f8924d || oVar == eVar.f8926e) {
                return;
            }
            if (lVar == null) {
                lVar = new l();
                lVar.f9109a = null;
                lVar.f9110b = new ArrayList();
                lVar.f9109a = oVar;
                arrayList.add(lVar);
            }
            oVar.f9120c = lVar;
            lVar.f9110b.add(oVar);
            f fVar2 = oVar.f9124h;
            Iterator it = fVar2.f9104k.iterator();
            while (it.hasNext()) {
                InterfaceC0855d interfaceC0855d = (InterfaceC0855d) it.next();
                if (interfaceC0855d instanceof f) {
                    a((f) interfaceC0855d, i5, arrayList, lVar);
                }
            }
            f fVar3 = oVar.f9125i;
            Iterator it2 = fVar3.f9104k.iterator();
            while (it2.hasNext()) {
                InterfaceC0855d interfaceC0855d2 = (InterfaceC0855d) it2.next();
                if (interfaceC0855d2 instanceof f) {
                    a((f) interfaceC0855d2, i5, arrayList, lVar);
                }
            }
            if (i5 == 1 && (oVar instanceof m)) {
                Iterator it3 = ((m) oVar).f9111k.f9104k.iterator();
                while (it3.hasNext()) {
                    InterfaceC0855d interfaceC0855d3 = (InterfaceC0855d) it3.next();
                    if (interfaceC0855d3 instanceof f) {
                        a((f) interfaceC0855d3, i5, arrayList, lVar);
                    }
                }
            }
            Iterator it4 = fVar2.f9105l.iterator();
            while (it4.hasNext()) {
                a((f) it4.next(), i5, arrayList, lVar);
            }
            Iterator it5 = fVar3.f9105l.iterator();
            while (it5.hasNext()) {
                a((f) it5.next(), i5, arrayList, lVar);
            }
            if (i5 == 1 && (oVar instanceof m)) {
                Iterator it6 = ((m) oVar).f9111k.f9105l.iterator();
                while (it6.hasNext()) {
                    a((f) it6.next(), i5, arrayList, lVar);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:164:0x0260 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:175:0x01f9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0008 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0185  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(s.e eVar) {
        int iN;
        int iK;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        Iterator it = eVar.k0.iterator();
        while (it.hasNext()) {
            C0827d c0827d = (C0827d) it.next();
            int[] iArr = c0827d.f8935j0;
            int i10 = iArr[0];
            int i11 = iArr[1];
            if (c0827d.f8919a0 == 8) {
                c0827d.f8918a = true;
            } else {
                float f = c0827d.f8941q;
                if (f < 1.0f && i10 == 3) {
                    c0827d.f8937l = 2;
                }
                float f5 = c0827d.f8944t;
                if (f5 < 1.0f && i11 == 3) {
                    c0827d.f8938m = 2;
                }
                if (c0827d.f8908Q > 0.0f) {
                    if (i10 == 3 && (i11 == 2 || i11 == 1)) {
                        c0827d.f8937l = 3;
                    } else if (i11 == 3 && (i10 == 2 || i10 == 1)) {
                        c0827d.f8938m = 3;
                    } else if (i10 == 3 && i11 == 3) {
                        if (c0827d.f8937l == 0) {
                            c0827d.f8937l = 3;
                        }
                        if (c0827d.f8938m == 0) {
                            c0827d.f8938m = 3;
                        }
                    }
                }
                C0826c c0826c = c0827d.E;
                C0826c c0826c2 = c0827d.f8895C;
                if (i10 == 3 && c0827d.f8937l == 1 && (c0826c2.f == null || c0826c.f == null)) {
                    i10 = 2;
                }
                C0826c c0826c3 = c0827d.f8897F;
                C0826c c0826c4 = c0827d.f8896D;
                int i12 = (i11 == 3 && c0827d.f8938m == 1 && (c0826c4.f == null || c0826c3.f == null)) ? 2 : i11;
                k kVar = c0827d.f8924d;
                kVar.f9121d = i10;
                int i13 = c0827d.f8937l;
                kVar.f9118a = i13;
                m mVar = c0827d.f8926e;
                mVar.f9121d = i12;
                int i14 = c0827d.f8938m;
                mVar.f9118a = i14;
                if ((i10 == 4 || i10 == 1 || i10 == 2) && (i12 == 4 || i12 == 1 || i12 == 2)) {
                    int iN2 = c0827d.n();
                    if (i10 == 4) {
                        iN = (eVar.n() - c0826c2.f8890g) - c0826c.f8890g;
                        i10 = 1;
                    } else {
                        iN = iN2;
                    }
                    int iK2 = c0827d.k();
                    if (i12 == 4) {
                        iK = (eVar.k() - c0826c4.f8890g) - c0826c3.f8890g;
                        i5 = 1;
                    } else {
                        iK = iK2;
                        i5 = i12;
                    }
                    f(i10, iN, i5, iK, c0827d);
                    c0827d.f8924d.f9122e.d(c0827d.n());
                    c0827d.f8926e.f9122e.d(c0827d.k());
                    c0827d.f8918a = true;
                } else {
                    int[] iArr2 = eVar.f8935j0;
                    C0826c[] c0826cArr = c0827d.f8902K;
                    if (i10 != 3 || (i12 != 2 && i12 != 1)) {
                        i6 = 3;
                        if (i12 == i6) {
                            if (i10 != 2 && i10 != 1) {
                                i8 = i6;
                                i7 = 1;
                                if (i10 != i8) {
                                }
                            } else if (i14 == i6) {
                                if (i10 == 2) {
                                    f(2, 0, 2, 0, c0827d);
                                }
                                int iN3 = c0827d.n();
                                float f6 = c0827d.f8908Q;
                                if (c0827d.f8909R == -1) {
                                    f6 = 1.0f / f6;
                                }
                                f(1, iN3, 1, (int) ((iN3 * f6) + 0.5f), c0827d);
                                c0827d.f8924d.f9122e.d(c0827d.n());
                                c0827d.f8926e.f9122e.d(c0827d.k());
                                c0827d.f8918a = true;
                            } else if (i14 == 1) {
                                f(i10, 0, 2, 0, c0827d);
                                c0827d.f8926e.f9122e.f9106m = c0827d.k();
                            } else {
                                if (i14 == 2) {
                                    int i15 = iArr2[1];
                                    if (i15 == 1 || i15 == 4) {
                                        f(i10, c0827d.n(), 1, (int) ((f5 * eVar.k()) + 0.5f), c0827d);
                                        c0827d.f8924d.f9122e.d(c0827d.n());
                                        c0827d.f8926e.f9122e.d(c0827d.k());
                                        c0827d.f8918a = true;
                                    }
                                } else if (c0826cArr[2].f == null || c0826cArr[3].f == null) {
                                    f(2, 0, i12, 0, c0827d);
                                    c0827d.f8924d.f9122e.d(c0827d.n());
                                    c0827d.f8926e.f9122e.d(c0827d.k());
                                    c0827d.f8918a = true;
                                }
                                if (i10 != i8 && i12 == i8) {
                                    if (i13 == i7 || i14 == i7) {
                                        f(2, 0, 2, 0, c0827d);
                                        c0827d.f8924d.f9122e.f9106m = c0827d.n();
                                        c0827d.f8926e.f9122e.f9106m = c0827d.k();
                                    } else if (i14 == 2 && i13 == 2 && ((i9 = iArr2[0]) == 1 || i9 == 1)) {
                                        int i16 = iArr2[i7];
                                        if (i16 == 1 || i16 == 1) {
                                            f(1, (int) ((f * eVar.n()) + 0.5f), 1, (int) ((f5 * eVar.k()) + 0.5f), c0827d);
                                            c0827d.f8924d.f9122e.d(c0827d.n());
                                            c0827d.f8926e.f9122e.d(c0827d.k());
                                            c0827d.f8918a = true;
                                        }
                                    }
                                }
                            }
                        }
                        i7 = 1;
                        i8 = 3;
                        if (i10 != i8) {
                        }
                    } else if (i13 == 3) {
                        if (i12 == 2) {
                            f(2, 0, 2, 0, c0827d);
                        }
                        int iK3 = c0827d.k();
                        f(1, (int) ((iK3 * c0827d.f8908Q) + 0.5f), 1, iK3, c0827d);
                        c0827d.f8924d.f9122e.d(c0827d.n());
                        c0827d.f8926e.f9122e.d(c0827d.k());
                        c0827d.f8918a = true;
                    } else if (i13 == 1) {
                        f(2, 0, i12, 0, c0827d);
                        c0827d.f8924d.f9122e.f9106m = c0827d.n();
                    } else {
                        if (i13 == 2) {
                            int i17 = iArr2[0];
                            if (i17 == 1 || i17 == 4) {
                                f(1, (int) ((f * eVar.n()) + 0.5f), i12, c0827d.k(), c0827d);
                                c0827d.f8924d.f9122e.d(c0827d.n());
                                c0827d.f8926e.f9122e.d(c0827d.k());
                                c0827d.f8918a = true;
                            } else {
                                i6 = 3;
                            }
                        } else if (c0826cArr[0].f == null || c0826cArr[1].f == null) {
                            f(2, 0, i12, 0, c0827d);
                            c0827d.f8924d.f9122e.d(c0827d.n());
                            c0827d.f8926e.f9122e.d(c0827d.k());
                            c0827d.f8918a = true;
                        } else {
                            i6 = 3;
                        }
                        if (i12 == i6) {
                        }
                        i7 = 1;
                        i8 = 3;
                        if (i10 != i8) {
                        }
                    }
                }
            }
        }
    }

    public final void c() {
        ArrayList arrayList = this.f9092e;
        arrayList.clear();
        s.e eVar = this.f9091d;
        eVar.f8924d.f();
        eVar.f8926e.f();
        arrayList.add(eVar.f8924d);
        arrayList.add(eVar.f8926e);
        Iterator it = eVar.k0.iterator();
        HashSet hashSet = null;
        while (it.hasNext()) {
            C0827d c0827d = (C0827d) it.next();
            if (c0827d instanceof s.h) {
                i iVar = new i(c0827d);
                c0827d.f8924d.f();
                c0827d.f8926e.f();
                iVar.f = ((s.h) c0827d).o0;
                arrayList.add(iVar);
            } else {
                if (c0827d.t()) {
                    if (c0827d.f8920b == null) {
                        c0827d.f8920b = new C0854c(c0827d, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(c0827d.f8920b);
                } else {
                    arrayList.add(c0827d.f8924d);
                }
                if (c0827d.u()) {
                    if (c0827d.f8922c == null) {
                        c0827d.f8922c = new C0854c(c0827d, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(c0827d.f8922c);
                } else {
                    arrayList.add(c0827d.f8926e);
                }
                if (c0827d instanceof s.i) {
                    arrayList.add(new j(c0827d));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((o) it2.next()).f();
        }
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            o oVar = (o) it3.next();
            if (oVar.f9119b != eVar) {
                oVar.d();
            }
        }
        ArrayList arrayList2 = this.f9094h;
        arrayList2.clear();
        s.e eVar2 = this.f9088a;
        e(eVar2.f8924d, 0, arrayList2);
        e(eVar2.f8926e, 1, arrayList2);
        this.f9089b = false;
    }

    public final int d(s.e eVar, int i5) {
        ArrayList arrayList;
        int i6;
        long jMax;
        float f;
        s.e eVar2 = eVar;
        ArrayList arrayList2 = this.f9094h;
        int size = arrayList2.size();
        long j3 = 0;
        int i7 = 0;
        long jMax2 = 0;
        while (i7 < size) {
            o oVar = ((l) arrayList2.get(i7)).f9109a;
            if (!(oVar instanceof C0854c) ? !(i5 != 0 ? (oVar instanceof m) : (oVar instanceof k)) : ((C0854c) oVar).f != i5) {
                f fVar = (i5 == 0 ? eVar2.f8924d : eVar2.f8926e).f9124h;
                f fVar2 = (i5 == 0 ? eVar2.f8924d : eVar2.f8926e).f9125i;
                boolean zContains = oVar.f9124h.f9105l.contains(fVar);
                f fVar3 = oVar.f9125i;
                boolean zContains2 = fVar3.f9105l.contains(fVar2);
                long j5 = oVar.j();
                f fVar4 = oVar.f9124h;
                if (zContains && zContains2) {
                    long jB = l.b(fVar4, j3);
                    arrayList = arrayList2;
                    long jA = l.a(fVar3, j3);
                    long j6 = jB - j5;
                    int i8 = fVar3.f;
                    i6 = i7;
                    if (j6 >= (-i8)) {
                        j6 += i8;
                    }
                    long j7 = fVar4.f;
                    long j8 = ((-jA) - j5) - j7;
                    if (j8 >= j7) {
                        j8 -= j7;
                    }
                    C0827d c0827d = oVar.f9119b;
                    if (i5 == 0) {
                        f = c0827d.f8915X;
                    } else if (i5 == 1) {
                        f = c0827d.f8916Y;
                    } else {
                        c0827d.getClass();
                        f = -1.0f;
                    }
                    float f5 = f > 0.0f ? (long) ((j6 / (1.0f - f)) + (j8 / f)) : 0L;
                    jMax = (fVar4.f + ((((long) ((f5 * f) + 0.5f)) + j5) + ((long) (((1.0f - f) * f5) + 0.5f)))) - fVar3.f;
                } else {
                    arrayList = arrayList2;
                    i6 = i7;
                    jMax = zContains ? Math.max(l.b(fVar4, fVar4.f), fVar4.f + j5) : zContains2 ? Math.max(-l.a(fVar3, fVar3.f), (-fVar3.f) + j5) : (oVar.j() + fVar4.f) - fVar3.f;
                }
            } else {
                arrayList = arrayList2;
                jMax = j3;
                i6 = i7;
            }
            jMax2 = Math.max(jMax2, jMax);
            i7 = i6 + 1;
            arrayList2 = arrayList;
            eVar2 = eVar;
            j3 = 0;
        }
        return (int) jMax2;
    }

    public final void e(o oVar, int i5, ArrayList arrayList) {
        f fVar;
        Iterator it = oVar.f9124h.f9104k.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            fVar = oVar.f9125i;
            if (!zHasNext) {
                break;
            }
            InterfaceC0855d interfaceC0855d = (InterfaceC0855d) it.next();
            if (interfaceC0855d instanceof f) {
                a((f) interfaceC0855d, i5, arrayList, null);
            } else if (interfaceC0855d instanceof o) {
                a(((o) interfaceC0855d).f9124h, i5, arrayList, null);
            }
        }
        Iterator it2 = fVar.f9104k.iterator();
        while (it2.hasNext()) {
            InterfaceC0855d interfaceC0855d2 = (InterfaceC0855d) it2.next();
            if (interfaceC0855d2 instanceof f) {
                a((f) interfaceC0855d2, i5, arrayList, null);
            } else if (interfaceC0855d2 instanceof o) {
                a(((o) interfaceC0855d2).f9125i, i5, arrayList, null);
            }
        }
        if (i5 == 1) {
            Iterator it3 = ((m) oVar).f9111k.f9104k.iterator();
            while (it3.hasNext()) {
                InterfaceC0855d interfaceC0855d3 = (InterfaceC0855d) it3.next();
                if (interfaceC0855d3 instanceof f) {
                    a((f) interfaceC0855d3, i5, arrayList, null);
                }
            }
        }
    }

    public final void f(int i5, int i6, int i7, int i8, C0827d c0827d) {
        C0853b c0853b = this.f9093g;
        c0853b.f9077a = i5;
        c0853b.f9078b = i7;
        c0853b.f9079c = i6;
        c0853b.f9080d = i8;
        this.f.b(c0827d, c0853b);
        c0827d.H(c0853b.f9081e);
        c0827d.E(c0853b.f);
        c0827d.f8949y = c0853b.f9083h;
        c0827d.B(c0853b.f9082g);
    }

    public final void g() {
        C0852a c0852a;
        Iterator it = this.f9088a.k0.iterator();
        while (it.hasNext()) {
            C0827d c0827d = (C0827d) it.next();
            if (!c0827d.f8918a) {
                int[] iArr = c0827d.f8935j0;
                boolean z4 = false;
                int i5 = iArr[0];
                int i6 = iArr[1];
                int i7 = c0827d.f8937l;
                int i8 = c0827d.f8938m;
                boolean z5 = i5 == 2 || (i5 == 3 && i7 == 1);
                if (i6 == 2 || (i6 == 3 && i8 == 1)) {
                    z4 = true;
                }
                g gVar = c0827d.f8924d.f9122e;
                boolean z6 = gVar.f9103j;
                g gVar2 = c0827d.f8926e.f9122e;
                boolean z7 = gVar2.f9103j;
                if (z6 && z7) {
                    f(1, gVar.f9100g, 1, gVar2.f9100g, c0827d);
                    c0827d.f8918a = true;
                } else if (z6 && z4) {
                    f(1, gVar.f9100g, 2, gVar2.f9100g, c0827d);
                    if (i6 == 3) {
                        c0827d.f8926e.f9122e.f9106m = c0827d.k();
                    } else {
                        c0827d.f8926e.f9122e.d(c0827d.k());
                        c0827d.f8918a = true;
                    }
                } else if (z7 && z5) {
                    f(2, gVar.f9100g, 1, gVar2.f9100g, c0827d);
                    if (i5 == 3) {
                        c0827d.f8924d.f9122e.f9106m = c0827d.n();
                    } else {
                        c0827d.f8924d.f9122e.d(c0827d.n());
                        c0827d.f8918a = true;
                    }
                }
                if (c0827d.f8918a && (c0852a = c0827d.f8926e.f9112l) != null) {
                    c0852a.d(c0827d.f8912U);
                }
            }
        }
    }
}
