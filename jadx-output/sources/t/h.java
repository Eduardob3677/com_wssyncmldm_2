package t;

import com.google.android.gms.internal.p000firebaseauthapi.a5;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import s.C0826c;
import s.C0827d;

/* loaded from: classes.dex */
public abstract class h {

    /* renamed from: a, reason: collision with root package name */
    public static final C0853b f9107a = new C0853b();

    public static boolean a(C0827d c0827d) {
        int[] iArr = c0827d.f8935j0;
        int i5 = iArr[0];
        int i6 = iArr[1];
        C0827d c0827d2 = c0827d.f8905N;
        s.e eVar = c0827d2 != null ? (s.e) c0827d2 : null;
        if (eVar != null) {
            int i7 = eVar.f8935j0[0];
        }
        if (eVar != null) {
            int i8 = eVar.f8935j0[1];
        }
        boolean z4 = i5 == 1 || i5 == 2 || (i5 == 3 && c0827d.f8937l == 0 && c0827d.f8908Q == 0.0f && c0827d.q(0)) || c0827d.w();
        boolean z5 = i6 == 1 || i6 == 2 || (i6 == 3 && c0827d.f8938m == 0 && c0827d.f8908Q == 0.0f && c0827d.q(1)) || c0827d.x();
        if (c0827d.f8908Q <= 0.0f || !(z4 || z5)) {
            return z4 && z5;
        }
        return true;
    }

    public static n b(C0827d c0827d, int i5, ArrayList arrayList, n nVar) {
        int i6;
        int i7 = i5 == 0 ? c0827d.f8931h0 : c0827d.f8933i0;
        if (i7 != -1 && (nVar == null || i7 != nVar.f9114b)) {
            int i8 = 0;
            while (true) {
                if (i8 >= arrayList.size()) {
                    break;
                }
                n nVar2 = (n) arrayList.get(i8);
                if (nVar2.f9114b == i7) {
                    if (nVar != null) {
                        nVar.c(i5, nVar2);
                        arrayList.remove(nVar);
                    }
                    nVar = nVar2;
                } else {
                    i8++;
                }
            }
        } else if (i7 != -1) {
            return nVar;
        }
        if (nVar == null) {
            if (c0827d instanceof s.i) {
                s.i iVar = (s.i) c0827d;
                int i9 = 0;
                while (true) {
                    if (i9 >= iVar.l0) {
                        i6 = -1;
                        break;
                    }
                    C0827d c0827d2 = iVar.k0[i9];
                    if ((i5 == 0 && (i6 = c0827d2.f8931h0) != -1) || (i5 == 1 && (i6 = c0827d2.f8933i0) != -1)) {
                        break;
                    }
                    i9++;
                }
                if (i6 != -1) {
                    int i10 = 0;
                    while (true) {
                        if (i10 >= arrayList.size()) {
                            break;
                        }
                        n nVar3 = (n) arrayList.get(i10);
                        if (nVar3.f9114b == i6) {
                            nVar = nVar3;
                            break;
                        }
                        i10++;
                    }
                }
            }
            if (nVar == null) {
                nVar = new n();
                nVar.f9113a = new ArrayList();
                nVar.f9116d = null;
                nVar.f9117e = -1;
                int i11 = n.f;
                n.f = i11 + 1;
                nVar.f9114b = i11;
                nVar.f9115c = i5;
            }
            arrayList.add(nVar);
        }
        ArrayList arrayList2 = nVar.f9113a;
        if (!arrayList2.contains(c0827d)) {
            arrayList2.add(c0827d);
            if (c0827d instanceof s.h) {
                s.h hVar = (s.h) c0827d;
                hVar.n0.c(hVar.o0 == 0 ? 1 : 0, arrayList, nVar);
            }
            int i12 = nVar.f9114b;
            if (i5 == 0) {
                c0827d.f8931h0 = i12;
                c0827d.f8895C.c(i5, arrayList, nVar);
                c0827d.E.c(i5, arrayList, nVar);
            } else {
                c0827d.f8933i0 = i12;
                c0827d.f8896D.c(i5, arrayList, nVar);
                c0827d.f8898G.c(i5, arrayList, nVar);
                c0827d.f8897F.c(i5, arrayList, nVar);
            }
            c0827d.f8901J.c(i5, arrayList, nVar);
        }
        return nVar;
    }

    public static void c(a5 a5Var, C0827d c0827d, boolean z4) {
        HashSet hashSet;
        C0826c c0826c;
        C0826c c0826c2;
        C0826c c0826c3;
        C0826c c0826c4;
        C0826c c0826c5;
        if (!(c0827d instanceof s.e) && c0827d.v() && a(c0827d)) {
            s.e.P(c0827d, a5Var, new C0853b());
        }
        C0826c c0826cI = c0827d.i(2);
        C0826c c0826cI2 = c0827d.i(4);
        int iD = c0826cI.d();
        int iD2 = c0826cI2.d();
        HashSet hashSet2 = c0826cI.f8885a;
        char c2 = 0;
        if (hashSet2 != null && c0826cI.f8887c) {
            Iterator it = hashSet2.iterator();
            while (it.hasNext()) {
                C0826c c0826c6 = (C0826c) it.next();
                C0827d c0827d2 = c0826c6.f8888d;
                boolean zA = a(c0827d2);
                if (c0827d2.v() && zA) {
                    s.e.P(c0827d2, a5Var, new C0853b());
                }
                int i5 = c0827d2.f8935j0[c2];
                C0826c c0826c7 = c0827d2.f8895C;
                C0826c c0826c8 = c0827d2.E;
                if (i5 != 3 || zA) {
                    if (!c0827d2.v()) {
                        if (c0826c6 == c0826c7 && c0826c8.f == null) {
                            int iE = c0826c7.e() + iD;
                            c0827d2.C(iE, c0827d2.n() + iE);
                            c(a5Var, c0827d2, z4);
                        } else if (c0826c6 == c0826c8 && c0826c7.f == null) {
                            int iE2 = iD - c0826c8.e();
                            c0827d2.C(iE2 - c0827d2.n(), iE2);
                            c(a5Var, c0827d2, z4);
                        } else if (c0826c6 == c0826c7 && (c0826c3 = c0826c8.f) != null && c0826c3.f8887c && !c0827d2.t()) {
                            d(a5Var, c0827d2, z4);
                        }
                    }
                } else if (i5 == 3 && c0827d2.f8940p >= 0 && c0827d2.f8939o >= 0 && ((c0827d2.f8919a0 == 8 || (c0827d2.f8937l == 0 && c0827d2.f8908Q == 0.0f)) && !c0827d2.t() && !c0827d2.f8950z && (((c0826c6 == c0826c7 && (c0826c5 = c0826c8.f) != null && c0826c5.f8887c) || (c0826c6 == c0826c8 && (c0826c4 = c0826c7.f) != null && c0826c4.f8887c)) && !c0827d2.t()))) {
                    e(c0827d, a5Var, c0827d2, z4);
                }
                c2 = 0;
            }
        }
        if ((c0827d instanceof s.h) || (hashSet = c0826cI2.f8885a) == null || !c0826cI2.f8887c) {
            return;
        }
        Iterator it2 = hashSet.iterator();
        while (it2.hasNext()) {
            C0826c c0826c9 = (C0826c) it2.next();
            C0827d c0827d3 = c0826c9.f8888d;
            boolean zA2 = a(c0827d3);
            if (c0827d3.v() && zA2) {
                s.e.P(c0827d3, a5Var, new C0853b());
            }
            C0826c c0826c10 = c0827d3.f8895C;
            C0826c c0826c11 = c0827d3.E;
            boolean z5 = (c0826c9 == c0826c10 && (c0826c2 = c0826c11.f) != null && c0826c2.f8887c) || (c0826c9 == c0826c11 && (c0826c = c0826c10.f) != null && c0826c.f8887c);
            int i6 = c0827d3.f8935j0[0];
            if (i6 != 3 || zA2) {
                if (!c0827d3.v()) {
                    if (c0826c9 == c0826c10 && c0826c11.f == null) {
                        int iE3 = c0826c10.e() + iD2;
                        c0827d3.C(iE3, c0827d3.n() + iE3);
                        c(a5Var, c0827d3, z4);
                    } else if (c0826c9 == c0826c11 && c0826c10.f == null) {
                        int iE4 = iD2 - c0826c11.e();
                        c0827d3.C(iE4 - c0827d3.n(), iE4);
                        c(a5Var, c0827d3, z4);
                    } else if (z5 && !c0827d3.t()) {
                        d(a5Var, c0827d3, z4);
                    }
                }
            } else if (i6 == 3 && c0827d3.f8940p >= 0 && c0827d3.f8939o >= 0 && (c0827d3.f8919a0 == 8 || (c0827d3.f8937l == 0 && c0827d3.f8908Q == 0.0f))) {
                if (!c0827d3.t() && !c0827d3.f8950z && z5 && !c0827d3.t()) {
                    e(c0827d, a5Var, c0827d3, z4);
                }
            }
        }
    }

    public static void d(a5 a5Var, C0827d c0827d, boolean z4) {
        float f = c0827d.f8915X;
        C0826c c0826c = c0827d.f8895C;
        int iD = c0826c.f.d();
        C0826c c0826c2 = c0827d.E;
        int iD2 = c0826c2.f.d();
        int iE = c0826c.e() + iD;
        int iE2 = iD2 - c0826c2.e();
        if (iD == iD2) {
            f = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iN = c0827d.n();
        int i5 = (iD2 - iD) - iN;
        if (iD > iD2) {
            i5 = (iD - iD2) - iN;
        }
        int i6 = ((int) ((f * i5) + 0.5f)) + iD;
        int i7 = i6 + iN;
        if (iD > iD2) {
            i7 = i6 - iN;
        }
        c0827d.C(i6, i7);
        c(a5Var, c0827d, z4);
    }

    public static void e(C0827d c0827d, a5 a5Var, C0827d c0827d2, boolean z4) {
        float f = c0827d2.f8915X;
        C0826c c0826c = c0827d2.f8895C;
        int iE = c0826c.e() + c0826c.f.d();
        C0826c c0826c2 = c0827d2.E;
        int iD = c0826c2.f.d() - c0826c2.e();
        if (iD >= iE) {
            int iN = c0827d2.n();
            if (c0827d2.f8919a0 != 8) {
                int i5 = c0827d2.f8937l;
                if (i5 == 2) {
                    iN = (int) (c0827d2.f8915X * 0.5f * (c0827d instanceof s.e ? c0827d.n() : c0827d.f8905N.n()));
                } else if (i5 == 0) {
                    iN = iD - iE;
                }
                iN = Math.max(c0827d2.f8939o, iN);
                int i6 = c0827d2.f8940p;
                if (i6 > 0) {
                    iN = Math.min(i6, iN);
                }
            }
            int i7 = iE + ((int) ((f * ((iD - iE) - iN)) + 0.5f));
            c0827d2.C(i7, iN + i7);
            c(a5Var, c0827d2, z4);
        }
    }

    public static void f(a5 a5Var, C0827d c0827d) {
        float f = c0827d.f8916Y;
        C0826c c0826c = c0827d.f8896D;
        int iD = c0826c.f.d();
        C0826c c0826c2 = c0827d.f8897F;
        int iD2 = c0826c2.f.d();
        int iE = c0826c.e() + iD;
        int iE2 = iD2 - c0826c2.e();
        if (iD == iD2) {
            f = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iK = c0827d.k();
        int i5 = (iD2 - iD) - iK;
        if (iD > iD2) {
            i5 = (iD - iD2) - iK;
        }
        int i6 = (int) ((f * i5) + 0.5f);
        int i7 = iD + i6;
        int i8 = i7 + iK;
        if (iD > iD2) {
            i7 = iD - i6;
            i8 = i7 - iK;
        }
        c0827d.D(i7, i8);
        i(a5Var, c0827d);
    }

    public static void g(C0827d c0827d, a5 a5Var, C0827d c0827d2) {
        float f = c0827d2.f8916Y;
        C0826c c0826c = c0827d2.f8896D;
        int iE = c0826c.e() + c0826c.f.d();
        C0826c c0826c2 = c0827d2.f8897F;
        int iD = c0826c2.f.d() - c0826c2.e();
        if (iD >= iE) {
            int iK = c0827d2.k();
            if (c0827d2.f8919a0 != 8) {
                int i5 = c0827d2.f8938m;
                if (i5 == 2) {
                    iK = (int) (f * 0.5f * (c0827d instanceof s.e ? c0827d.k() : c0827d.f8905N.k()));
                } else if (i5 == 0) {
                    iK = iD - iE;
                }
                iK = Math.max(c0827d2.f8942r, iK);
                int i6 = c0827d2.f8943s;
                if (i6 > 0) {
                    iK = Math.min(i6, iK);
                }
            }
            int i7 = iE + ((int) ((f * ((iD - iE) - iK)) + 0.5f));
            c0827d2.D(i7, iK + i7);
            i(a5Var, c0827d2);
        }
    }

    public static boolean h(int i5, int i6, int i7, int i8) {
        return (i7 == 1 || i7 == 2 || (i7 == 4 && i5 != 2)) || (i8 == 1 || i8 == 2 || (i8 == 4 && i6 != 2));
    }

    public static void i(a5 a5Var, C0827d c0827d) {
        C0826c c0826c;
        C0826c c0826c2;
        C0826c c0826c3;
        C0826c c0826c4;
        C0826c c0826c5;
        C0826c c0826c6;
        if (!(c0827d instanceof s.e) && c0827d.v() && a(c0827d)) {
            s.e.P(c0827d, a5Var, new C0853b());
        }
        C0826c c0826cI = c0827d.i(3);
        C0826c c0826cI2 = c0827d.i(5);
        int iD = c0826cI.d();
        int iD2 = c0826cI2.d();
        HashSet hashSet = c0826cI.f8885a;
        if (hashSet != null && c0826cI.f8887c) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                C0826c c0826c7 = (C0826c) it.next();
                C0827d c0827d2 = c0826c7.f8888d;
                boolean zA = a(c0827d2);
                if (c0827d2.v() && zA) {
                    s.e.P(c0827d2, a5Var, new C0853b());
                }
                int i5 = c0827d2.f8935j0[1];
                C0826c c0826c8 = c0827d2.f8896D;
                C0826c c0826c9 = c0827d2.f8897F;
                if (i5 != 3 || zA) {
                    if (!c0827d2.v()) {
                        if (c0826c7 == c0826c8 && c0826c9.f == null) {
                            int iE = c0826c8.e() + iD;
                            c0827d2.D(iE, c0827d2.k() + iE);
                            i(a5Var, c0827d2);
                        } else if (c0826c7 == c0826c9 && c0826c9.f == null) {
                            int iE2 = iD - c0826c9.e();
                            c0827d2.D(iE2 - c0827d2.k(), iE2);
                            i(a5Var, c0827d2);
                        } else if (c0826c7 == c0826c8 && (c0826c4 = c0826c9.f) != null && c0826c4.f8887c) {
                            f(a5Var, c0827d2);
                        }
                    }
                } else if (i5 == 3 && c0827d2.f8943s >= 0 && c0827d2.f8942r >= 0 && (c0827d2.f8919a0 == 8 || (c0827d2.f8938m == 0 && c0827d2.f8908Q == 0.0f))) {
                    if (!c0827d2.u() && !c0827d2.f8950z && ((c0826c7 == c0826c8 && (c0826c6 = c0826c9.f) != null && c0826c6.f8887c) || (c0826c7 == c0826c9 && (c0826c5 = c0826c8.f) != null && c0826c5.f8887c))) {
                        if (!c0827d2.u()) {
                            g(c0827d, a5Var, c0827d2);
                        }
                    }
                }
            }
        }
        if (c0827d instanceof s.h) {
            return;
        }
        HashSet hashSet2 = c0826cI2.f8885a;
        if (hashSet2 != null && c0826cI2.f8887c) {
            Iterator it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                C0826c c0826c10 = (C0826c) it2.next();
                C0827d c0827d3 = c0826c10.f8888d;
                boolean zA2 = a(c0827d3);
                if (c0827d3.v() && zA2) {
                    s.e.P(c0827d3, a5Var, new C0853b());
                }
                C0826c c0826c11 = c0827d3.f8896D;
                C0826c c0826c12 = c0827d3.f8897F;
                boolean z4 = (c0826c10 == c0826c11 && (c0826c3 = c0826c12.f) != null && c0826c3.f8887c) || (c0826c10 == c0826c12 && (c0826c2 = c0826c11.f) != null && c0826c2.f8887c);
                int i6 = c0827d3.f8935j0[1];
                if (i6 != 3 || zA2) {
                    if (!c0827d3.v()) {
                        if (c0826c10 == c0826c11 && c0826c12.f == null) {
                            int iE3 = c0826c11.e() + iD2;
                            c0827d3.D(iE3, c0827d3.k() + iE3);
                            i(a5Var, c0827d3);
                        } else if (c0826c10 == c0826c12 && c0826c11.f == null) {
                            int iE4 = iD2 - c0826c12.e();
                            c0827d3.D(iE4 - c0827d3.k(), iE4);
                            i(a5Var, c0827d3);
                        } else if (z4 && !c0827d3.u()) {
                            f(a5Var, c0827d3);
                        }
                    }
                } else if (i6 == 3 && c0827d3.f8943s >= 0 && c0827d3.f8942r >= 0 && (c0827d3.f8919a0 == 8 || (c0827d3.f8938m == 0 && c0827d3.f8908Q == 0.0f))) {
                    if (!c0827d3.u() && !c0827d3.f8950z && z4 && !c0827d3.u()) {
                        g(c0827d, a5Var, c0827d3);
                    }
                }
            }
        }
        C0826c c0826cI3 = c0827d.i(6);
        if (c0826cI3.f8885a == null || !c0826cI3.f8887c) {
            return;
        }
        int iD3 = c0826cI3.d();
        Iterator it3 = c0826cI3.f8885a.iterator();
        while (it3.hasNext()) {
            C0826c c0826c13 = (C0826c) it3.next();
            C0827d c0827d4 = c0826c13.f8888d;
            boolean zA3 = a(c0827d4);
            if (c0827d4.v() && zA3) {
                s.e.P(c0827d4, a5Var, new C0853b());
            }
            if (c0827d4.f8935j0[1] != 3 || zA3) {
                if (!c0827d4.v() && c0826c13 == (c0826c = c0827d4.f8898G)) {
                    if (c0827d4.f8949y) {
                        int i7 = iD3 - c0827d4.f8912U;
                        int i8 = c0827d4.f8907P + i7;
                        c0827d4.f8911T = i7;
                        c0827d4.f8896D.l(i7);
                        c0827d4.f8897F.l(i8);
                        c0826c.l(iD3);
                        c0827d4.f8932i = true;
                    }
                    i(a5Var, c0827d4);
                }
            }
        }
    }
}
