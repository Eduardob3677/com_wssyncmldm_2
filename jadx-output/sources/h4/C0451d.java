package h4;

import c3.InterfaceC0222b;
import com.samsung.android.knox.net.nap.NetworkAnalyticsConstants;
import f1.AbstractC0420a;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import k.Q0;
import p.AbstractC0735a;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import s3.InterfaceC0839b;
import s3.InterfaceC0845h;
import u3.AbstractC0865A;
import u3.C0873e;

/* renamed from: h4.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0451d {

    /* renamed from: a, reason: collision with root package name */
    public static final C0451d f7050a = new C0451d();

    public static final boolean b(i4.b bVar, k4.d dVar) {
        if (!bVar.P(dVar)) {
            if (dVar instanceof k4.b) {
                N nQ = bVar.Q(bVar.h((k4.b) dVar));
                if (bVar.c(nQ) || !bVar.P(bVar.g(bVar.q(nQ)))) {
                }
            }
            return false;
        }
        return true;
    }

    public static final boolean c(i4.b bVar, I i5, k4.d dVar, k4.d dVar2, boolean z4) {
        Set<k4.c> setA = bVar.A(dVar);
        if ((setA instanceof Collection) && setA.isEmpty()) {
            return false;
        }
        for (k4.c cVar : setA) {
            if (d3.i.a(bVar.u0(cVar), bVar.A0(dVar2)) || (z4 && n(f7050a, i5, dVar2, cVar))) {
                return true;
            }
        }
        return false;
    }

    public static List d(I i5, k4.d dVar, k4.f fVar) {
        AbstractC0450c abstractC0450cT;
        i4.b bVar = i5.f7027c;
        bVar.d(dVar, fVar);
        boolean zC0 = bVar.c0(fVar);
        R2.u uVar = R2.u.f2325c;
        if (!zC0 && bVar.O(dVar)) {
            return uVar;
        }
        if (bVar.r0(fVar)) {
            if (!bVar.z0(bVar.A0(dVar), fVar)) {
                return uVar;
            }
            AbstractC0472z abstractC0472zK = bVar.k(dVar);
            if (abstractC0472zK != null) {
                dVar = abstractC0472zK;
            }
            return AbstractC0420a.V(dVar);
        }
        q4.f fVar2 = new q4.f();
        i5.c();
        ArrayDeque arrayDeque = i5.f7030g;
        d3.i.b(arrayDeque);
        q4.h hVar = i5.f7031h;
        d3.i.b(hVar);
        arrayDeque.push(dVar);
        while (!arrayDeque.isEmpty()) {
            if (hVar.f8706d > 1000) {
                throw new IllegalStateException(("Too many supertypes for type: " + dVar + ". Supertypes = " + R2.m.S0(hVar, null, null, null, null, 63)).toString());
            }
            k4.d dVar2 = (k4.d) arrayDeque.pop();
            d3.i.d("current", dVar2);
            if (hVar.add(dVar2)) {
                AbstractC0472z abstractC0472zK2 = bVar.k(dVar2);
                if (abstractC0472zK2 == null) {
                    abstractC0472zK2 = dVar2;
                }
                boolean zZ0 = bVar.z0(bVar.A0(abstractC0472zK2), fVar);
                H h5 = H.f7022c;
                i4.b bVar2 = i5.f7027c;
                if (zZ0) {
                    fVar2.add(abstractC0472zK2);
                    abstractC0450cT = h5;
                } else {
                    abstractC0450cT = bVar.K(abstractC0472zK2) == 0 ? H.f7021b : bVar2.t(abstractC0472zK2);
                }
                if (!(!d3.i.a(abstractC0450cT, h5))) {
                    abstractC0450cT = null;
                }
                if (abstractC0450cT != null) {
                    Iterator it = bVar2.o0(bVar2.A0(dVar2)).iterator();
                    while (it.hasNext()) {
                        arrayDeque.add(abstractC0450cT.x(i5, (k4.c) it.next()));
                    }
                }
            }
        }
        i5.a();
        return fVar2;
    }

    public static List e(I i5, k4.d dVar, k4.f fVar) {
        int i6;
        List listD = d(i5, dVar, fVar);
        if (listD.size() < 2) {
            return listD;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : listD) {
            i4.b bVar = i5.f7027c;
            k4.e eVarP = bVar.p((k4.d) obj);
            int iF = bVar.f(eVarP);
            while (true) {
                if (i6 >= iF) {
                    arrayList.add(obj);
                    break;
                }
                i6 = bVar.e0(bVar.q(bVar.i(eVarP, i6))) == null ? i6 + 1 : 0;
            }
        }
        return arrayList.isEmpty() ^ true ? arrayList : listD;
    }

    public static boolean g(I i5, k4.c cVar, k4.c cVar2) {
        d3.i.e("state", i5);
        d3.i.e("a", cVar);
        d3.i.e("b", cVar2);
        if (cVar == cVar2) {
            return true;
        }
        C0451d c0451d = f7050a;
        i4.b bVar = i5.f7027c;
        if (l(bVar, cVar) && l(bVar, cVar2)) {
            Z zD = i5.d(i5.e(cVar));
            Z zD2 = i5.d(i5.e(cVar2));
            AbstractC0472z abstractC0472zO = bVar.o(zD);
            if (!bVar.z0(bVar.u0(zD), bVar.u0(zD2))) {
                return false;
            }
            if (bVar.K(abstractC0472zO) == 0) {
                return bVar.j(zD) || bVar.j(zD2) || bVar.m0(abstractC0472zO) == bVar.m0(bVar.o(zD2));
            }
        }
        return n(c0451d, i5, cVar, cVar2) && n(c0451d, i5, cVar2, cVar);
    }

    public static final Z j(AbstractC0472z abstractC0472z, AbstractC0472z abstractC0472z2) {
        d3.i.e("lowerBound", abstractC0472z);
        d3.i.e("upperBound", abstractC0472z2);
        return d3.i.a(abstractC0472z, abstractC0472z2) ? abstractC0472z : new r(abstractC0472z, abstractC0472z2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0063, code lost:
    
        return r7.W(r7.u0(r8), r2);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static InterfaceC0789Q k(i4.b bVar, k4.c cVar, k4.d dVar) {
        Z zQ;
        int iK = bVar.K(cVar);
        int i5 = 0;
        while (true) {
            if (i5 >= iK) {
                return null;
            }
            N nX = bVar.X(cVar, i5);
            N n = bVar.c(nX) ^ true ? nX : null;
            if (n != null && (zQ = bVar.q(n)) != null) {
                boolean z4 = bVar.D(bVar.I(bVar.o(zQ))) && bVar.D(bVar.I(bVar.o(dVar)));
                if (d3.i.a(zQ, dVar) || (z4 && d3.i.a(bVar.u0(zQ), bVar.u0(dVar)))) {
                    break;
                }
                InterfaceC0789Q interfaceC0789QK = k(bVar, zQ, dVar);
                if (interfaceC0789QK != null) {
                    return interfaceC0789QK;
                }
            }
            i5++;
        }
    }

    public static boolean l(i4.b bVar, k4.c cVar) {
        if (bVar.B(bVar.u0(cVar))) {
            bVar.b(cVar);
            if (!bVar.q0(cVar) && !bVar.e(cVar) && d3.i.a(bVar.A0(bVar.o(cVar)), bVar.A0(bVar.g(cVar)))) {
                return true;
            }
        }
        return false;
    }

    public static boolean m(I i5, k4.e eVar, k4.d dVar) {
        boolean zN;
        d3.i.e("<this>", i5);
        d3.i.e("capturedSubArguments", eVar);
        d3.i.e("superType", dVar);
        i4.b bVar = i5.f7027c;
        J jA0 = bVar.A0(dVar);
        int iF = bVar.f(eVar);
        int iL = bVar.L(jA0);
        if (iF != iL || iF != bVar.K(dVar)) {
            return false;
        }
        for (int i6 = 0; i6 < iL; i6++) {
            N nX = bVar.X(dVar, i6);
            if (!bVar.c(nX)) {
                Z zQ = bVar.q(nX);
                N nI = bVar.i(eVar, i6);
                bVar.i0(nI);
                Z zQ2 = bVar.q(nI);
                int iD0 = bVar.d0(bVar.W(jA0, i6));
                int iI0 = bVar.i0(nX);
                B.f.x(iD0, "declared");
                B.f.x(iI0, "useSite");
                if (iD0 == 3) {
                    iD0 = iI0;
                } else if (iI0 != 3 && iD0 != iI0) {
                    iD0 = 0;
                }
                if (iD0 == 0) {
                    return i5.f7025a;
                }
                C0451d c0451d = f7050a;
                if (iD0 == 3) {
                    o(bVar, zQ2, zQ);
                    o(bVar, zQ, zQ2);
                }
                int i7 = i5.f;
                if (i7 > 100) {
                    throw new IllegalStateException(("Arguments depth is too high. Some related argument: " + zQ2).toString());
                }
                i5.f = i7 + 1;
                int iF2 = Q0.f(iD0);
                if (iF2 == 0) {
                    zN = n(c0451d, i5, zQ, zQ2);
                } else if (iF2 == 1) {
                    zN = n(c0451d, i5, zQ2, zQ);
                } else {
                    if (iF2 != 2) {
                        throw new A0.c();
                    }
                    zN = g(i5, zQ2, zQ);
                }
                i5.f--;
                if (!zN) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:134:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x02c6 A[EDGE_INSN: B:338:0x02c6->B:163:0x02c6 BREAK  A[LOOP:11: B:153:0x02a3->B:340:0x02a3]] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean n(C0451d c0451d, I i5, k4.c cVar, k4.c cVar2) {
        Boolean boolValueOf;
        Boolean bool;
        List<k4.d> listD;
        H h5;
        boolean zG0;
        Z zQ;
        AbstractC0472z abstractC0472zA;
        boolean z4;
        c0451d.getClass();
        d3.i.e("state", i5);
        d3.i.e("subType", cVar);
        d3.i.e("superType", cVar2);
        if (cVar == cVar2) {
            return true;
        }
        if (i5.b(cVar, cVar2)) {
            k4.c cVarD = i5.d(i5.e(cVar));
            k4.c cVarD2 = i5.d(i5.e(cVar2));
            i4.b bVar = i5.f7027c;
            AbstractC0472z abstractC0472zO = bVar.o(cVarD);
            AbstractC0472z abstractC0472zG = bVar.g(cVarD2);
            boolean zW = bVar.w(abstractC0472zO);
            C0451d c0451d2 = f7050a;
            if (!zW && !bVar.w(abstractC0472zG)) {
                bVar.C(abstractC0472zO);
                bVar.w0(abstractC0472zO);
                bVar.w0(abstractC0472zG);
                C0460m c0460mP0 = bVar.p0(abstractC0472zG);
                if (c0460mP0 == null || (abstractC0472zA = bVar.a(c0460mP0)) == null) {
                    abstractC0472zA = abstractC0472zG;
                }
                k4.b bVarV0 = bVar.v0(abstractC0472zA);
                k4.c cVarF = bVarV0 != null ? bVar.F(bVarV0) : null;
                if (bVarV0 == null || cVarF == null) {
                    J jA0 = bVar.A0(abstractC0472zG);
                    if (bVar.x(jA0)) {
                        bVar.m0(abstractC0472zG);
                        Collection collectionO0 = bVar.o0(jA0);
                        if (collectionO0.isEmpty()) {
                            z4 = true;
                            boolValueOf = Boolean.valueOf(z4);
                        } else {
                            Iterator it = collectionO0.iterator();
                            while (it.hasNext()) {
                                if (!n(c0451d2, i5, abstractC0472zO, (k4.c) it.next())) {
                                    z4 = false;
                                    break;
                                }
                            }
                            z4 = true;
                            boolValueOf = Boolean.valueOf(z4);
                        }
                    } else {
                        J jA02 = bVar.A0(abstractC0472zO);
                        if (abstractC0472zO instanceof k4.b) {
                            InterfaceC0789Q interfaceC0789QK = k(bVar, abstractC0472zG, abstractC0472zO);
                            boolValueOf = (interfaceC0789QK == null && bVar.S(interfaceC0789QK, bVar.A0(abstractC0472zG))) ? Boolean.TRUE : null;
                        } else if (bVar.x(jA02)) {
                            Collection collectionO02 = bVar.o0(jA02);
                            if (!collectionO02.isEmpty()) {
                                Iterator it2 = collectionO02.iterator();
                                while (it2.hasNext()) {
                                    if (!(((k4.c) it2.next()) instanceof k4.b)) {
                                        break;
                                    }
                                }
                                InterfaceC0789Q interfaceC0789QK2 = k(bVar, abstractC0472zG, abstractC0472zO);
                                if (interfaceC0789QK2 == null) {
                                }
                            }
                        }
                    }
                } else {
                    if (bVar.m0(abstractC0472zG)) {
                        cVarF = bVar.t0(cVarF);
                    } else if (bVar.q0(abstractC0472zG)) {
                        cVarF = bVar.n(cVarF);
                    }
                    if (n(c0451d2, i5, abstractC0472zO, cVarF)) {
                        boolValueOf = Boolean.TRUE;
                    }
                }
            } else if (i5.f7025a) {
                boolValueOf = Boolean.TRUE;
            } else if (!bVar.m0(abstractC0472zO) || bVar.m0(abstractC0472zG)) {
                AbstractC0472z abstractC0472zF0 = bVar.f0(abstractC0472zO, false);
                AbstractC0472z abstractC0472zF02 = bVar.f0(abstractC0472zG, false);
                d3.i.e("a", abstractC0472zF0);
                d3.i.e("b", abstractC0472zF02);
                boolValueOf = Boolean.valueOf(AbstractC0450c.t(bVar, abstractC0472zF0, abstractC0472zF02));
            } else {
                boolValueOf = Boolean.FALSE;
            }
            if (boolValueOf != null) {
                zG0 = boolValueOf.booleanValue();
            } else {
                k4.d dVarO = bVar.o(cVarD);
                AbstractC0472z abstractC0472zG2 = bVar.g(cVarD2);
                boolean zM0 = bVar.m0(abstractC0472zG2);
                H h6 = H.f7022c;
                H h7 = H.f7021b;
                int i6 = 1000;
                if (!zM0 && !bVar.q0(dVarO) && !bVar.e(dVarO) && ((!(dVarO instanceof k4.b) || !bVar.l0((k4.b) dVarO)) && !AbstractC0450c.f(i5, dVarO, h7))) {
                    if (!bVar.q0(abstractC0472zG2) && !AbstractC0450c.f(i5, abstractC0472zG2, H.f7023d) && !bVar.O(dVarO)) {
                        J jA03 = bVar.A0(abstractC0472zG2);
                        d3.i.e(NetworkAnalyticsConstants.DataPoints.CLOSE_TIME, jA03);
                        if (!AbstractC0450c.h(i5, dVarO, jA03)) {
                            i5.c();
                            ArrayDeque arrayDeque = i5.f7030g;
                            d3.i.b(arrayDeque);
                            q4.h hVar = i5.f7031h;
                            d3.i.b(hVar);
                            arrayDeque.push(dVarO);
                            while (!arrayDeque.isEmpty()) {
                                if (hVar.f8706d > i6) {
                                    throw new IllegalStateException(("Too many supertypes for type: " + dVarO + ". Supertypes = " + R2.m.S0(hVar, null, null, null, null, 63)).toString());
                                }
                                k4.d dVar = (k4.d) arrayDeque.pop();
                                d3.i.d("current", dVar);
                                if (hVar.add(dVar)) {
                                    H h8 = bVar.m0(dVar) ? h6 : h7;
                                    if (!(!d3.i.a(h8, h6))) {
                                        h8 = null;
                                    }
                                    if (h8 != null) {
                                        Iterator it3 = bVar.o0(bVar.A0(dVar)).iterator();
                                        while (it3.hasNext()) {
                                            k4.d dVarX = h8.x(i5, (k4.c) it3.next());
                                            if (AbstractC0450c.h(i5, dVarX, jA03)) {
                                                i5.a();
                                            } else {
                                                arrayDeque.add(dVarX);
                                            }
                                        }
                                    }
                                    i6 = 1000;
                                }
                            }
                            i5.a();
                        }
                    }
                }
                AbstractC0472z abstractC0472zO2 = bVar.o(dVarO);
                AbstractC0472z abstractC0472zG3 = bVar.g(abstractC0472zG2);
                if (bVar.P(abstractC0472zO2) || bVar.P(abstractC0472zG3)) {
                    if (b(bVar, abstractC0472zO2) && b(bVar, abstractC0472zG3)) {
                        bool = Boolean.TRUE;
                    } else if (bVar.P(abstractC0472zO2)) {
                        bool = c(bVar, i5, abstractC0472zO2, abstractC0472zG3, false) ? Boolean.TRUE : null;
                    } else if (bVar.P(abstractC0472zG3)) {
                        J jA04 = bVar.A0(abstractC0472zO2);
                        if (jA04 instanceof C0467u) {
                            Collection collectionO03 = bVar.o0(jA04);
                            if (!collectionO03.isEmpty()) {
                                Iterator it4 = collectionO03.iterator();
                                while (it4.hasNext()) {
                                    AbstractC0472z abstractC0472zZ = bVar.Z((k4.c) it4.next());
                                    if (abstractC0472zZ != null && bVar.P(abstractC0472zZ)) {
                                        break;
                                    }
                                }
                                if (!c(bVar, i5, abstractC0472zG3, abstractC0472zO2, true)) {
                                }
                            } else if (!c(bVar, i5, abstractC0472zG3, abstractC0472zO2, true)) {
                                bool = Boolean.TRUE;
                            }
                        }
                    }
                    if (bool != null) {
                        return bool.booleanValue();
                    }
                    J jA05 = bVar.A0(abstractC0472zG2);
                    if ((!bVar.z0(bVar.A0(dVarO), jA05) || bVar.L(jA05) != 0) && !bVar.l(bVar.A0(abstractC0472zG2))) {
                        d3.i.e("superConstructor", jA05);
                        if (bVar.O(dVarO)) {
                            listD = e(i5, dVarO, jA05);
                        } else if (bVar.c0(jA05) || bVar.R(jA05)) {
                            q4.f fVar = new q4.f();
                            i5.c();
                            ArrayDeque arrayDeque2 = i5.f7030g;
                            d3.i.b(arrayDeque2);
                            q4.h hVar2 = i5.f7031h;
                            d3.i.b(hVar2);
                            arrayDeque2.push(dVarO);
                            while (!arrayDeque2.isEmpty()) {
                                if (hVar2.f8706d > 1000) {
                                    throw new IllegalStateException(("Too many supertypes for type: " + dVarO + ". Supertypes = " + R2.m.S0(hVar2, null, null, null, null, 63)).toString());
                                }
                                k4.d dVar2 = (k4.d) arrayDeque2.pop();
                                d3.i.d("current", dVar2);
                                if (hVar2.add(dVar2)) {
                                    if (bVar.O(dVar2)) {
                                        fVar.add(dVar2);
                                        h5 = h6;
                                    } else {
                                        h5 = h7;
                                    }
                                    if (!(!d3.i.a(h5, h6))) {
                                        h5 = null;
                                    }
                                    if (h5 != null) {
                                        Iterator it5 = bVar.o0(bVar.A0(dVar2)).iterator();
                                        while (it5.hasNext()) {
                                            arrayDeque2.add(h5.x(i5, (k4.c) it5.next()));
                                        }
                                    }
                                }
                            }
                            i5.a();
                            ArrayList arrayList = new ArrayList();
                            Iterator it6 = fVar.iterator();
                            while (it6.hasNext()) {
                                k4.d dVar3 = (k4.d) it6.next();
                                d3.i.d("it", dVar3);
                                R2.s.E0(arrayList, e(i5, dVar3, jA05));
                            }
                            listD = arrayList;
                        } else {
                            listD = d(i5, dVarO, jA05);
                        }
                        ArrayList arrayList2 = new ArrayList(R2.o.C0(listD));
                        for (k4.d dVar4 : listD) {
                            AbstractC0472z abstractC0472zZ2 = bVar.Z(i5.d(dVar4));
                            if (abstractC0472zZ2 != null) {
                                dVar4 = abstractC0472zZ2;
                            }
                            arrayList2.add(dVar4);
                        }
                        int size = arrayList2.size();
                        if (size == 0) {
                            J jA06 = bVar.A0(dVarO);
                            if (bVar.c0(jA06)) {
                                zG0 = bVar.g0(jA06);
                            } else if (!bVar.g0(bVar.A0(dVarO))) {
                                i5.c();
                                ArrayDeque arrayDeque3 = i5.f7030g;
                                d3.i.b(arrayDeque3);
                                q4.h hVar3 = i5.f7031h;
                                d3.i.b(hVar3);
                                arrayDeque3.push(dVarO);
                                while (!arrayDeque3.isEmpty()) {
                                    if (hVar3.f8706d > 1000) {
                                        throw new IllegalStateException(("Too many supertypes for type: " + dVarO + ". Supertypes = " + R2.m.S0(hVar3, null, null, null, null, 63)).toString());
                                    }
                                    k4.d dVar5 = (k4.d) arrayDeque3.pop();
                                    d3.i.d("current", dVar5);
                                    if (hVar3.add(dVar5)) {
                                        H h9 = bVar.O(dVar5) ? h6 : h7;
                                        if (!(!d3.i.a(h9, h6))) {
                                            h9 = null;
                                        }
                                        if (h9 == null) {
                                            continue;
                                        } else {
                                            Iterator it7 = bVar.o0(bVar.A0(dVar5)).iterator();
                                            while (it7.hasNext()) {
                                                k4.d dVarX2 = h9.x(i5, (k4.c) it7.next());
                                                if (bVar.g0(bVar.A0(dVarX2))) {
                                                    i5.a();
                                                    return true;
                                                }
                                                arrayDeque3.add(dVarX2);
                                            }
                                        }
                                    }
                                }
                                i5.a();
                                return false;
                            }
                        } else {
                            if (size == 1) {
                                return m(i5, bVar.p((k4.d) R2.m.M0(arrayList2)), abstractC0472zG2);
                            }
                            k4.a aVar = new k4.a(bVar.L(jA05));
                            int iL = bVar.L(jA05);
                            boolean z5 = false;
                            for (int i7 = 0; i7 < iL; i7++) {
                                z5 = z5 || bVar.d0(bVar.W(jA05, i7)) != 2;
                                if (!z5) {
                                    ArrayList arrayList3 = new ArrayList(R2.o.C0(arrayList2));
                                    Iterator it8 = arrayList2.iterator();
                                    while (it8.hasNext()) {
                                        k4.d dVar6 = (k4.d) it8.next();
                                        N nV = bVar.v(dVar6, i7);
                                        if (nV != null) {
                                            if (bVar.i0(nV) != 3) {
                                                nV = null;
                                            }
                                            if (nV != null && (zQ = bVar.q(nV)) != null) {
                                                arrayList3.add(zQ);
                                            }
                                        }
                                        throw new IllegalStateException(("Incorrect type: " + dVar6 + ", subType: " + dVarO + ", superType: " + abstractC0472zG2).toString());
                                    }
                                    aVar.add(bVar.B0(bVar.U(arrayList3)));
                                }
                            }
                            if (z5 || !m(i5, aVar, abstractC0472zG2)) {
                                Iterator it9 = arrayList2.iterator();
                                boolean zM = false;
                                while (it9.hasNext()) {
                                    k4.d dVar7 = (k4.d) it9.next();
                                    if (!zM) {
                                        zM = m(i5, bVar.p(dVar7), abstractC0472zG2);
                                    }
                                }
                                return zM;
                            }
                        }
                    }
                    return true;
                }
            }
            return zG0;
        }
        return false;
    }

    public static void o(i4.b bVar, k4.c cVar, k4.c cVar2) {
        k4.e eVarZ = bVar.Z(cVar);
        if (eVarZ instanceof k4.b) {
            k4.b bVar2 = (k4.b) eVarZ;
            if (!bVar.n0(bVar2) && bVar.c(bVar.Q(bVar.h(bVar2))) && bVar.T(bVar2) == 1) {
                bVar.u0(cVar2);
            }
        }
    }

    public static C0460m p(Z z4, boolean z5) {
        boolean zF;
        d3.i.e("type", z4);
        if (z4 instanceof C0460m) {
            return (C0460m) z4;
        }
        z4.J0();
        if ((z4.J0().i() instanceof InterfaceC0789Q) || (z4 instanceof i4.h)) {
            InterfaceC0804g interfaceC0804gI = z4.J0().i();
            u3.T t2 = interfaceC0804gI instanceof u3.T ? (u3.T) interfaceC0804gI : null;
            zF = true;
            if (t2 == null || t2.n) {
                zF = (z5 && (z4.J0().i() instanceof InterfaceC0789Q)) ? X.f(z4) : true ^ AbstractC0450c.f(AbstractC0420a.i(false, true, i4.e.f7171d, null, null, 24), AbstractC0450c.k(z4), H.f7021b);
            }
        } else {
            zF = false;
        }
        if (!zF) {
            return null;
        }
        if (z4 instanceof AbstractC0464q) {
            AbstractC0464q abstractC0464q = (AbstractC0464q) z4;
            d3.i.a(abstractC0464q.f7069d.J0(), abstractC0464q.f7070e.J0());
        }
        return new C0460m(AbstractC0450c.k(z4).N0(false), z5);
    }

    public static final AbstractC0472z q(G g5, InterfaceC0802e interfaceC0802e, List list) {
        d3.i.e("attributes", g5);
        d3.i.e("descriptor", interfaceC0802e);
        d3.i.e("arguments", list);
        J jH = interfaceC0802e.H();
        d3.i.d("descriptor.typeConstructor", jH);
        return r(g5, jH, list, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0074 A[PHI: r1
      0x0074: PHI (r1v11 a4.o) = (r1v10 a4.o), (r1v13 a4.o) binds: [B:31:0x0098, B:22:0x0071] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static AbstractC0472z r(G g5, J j3, List list, boolean z4) {
        a4.o oVarG;
        AbstractC0865A abstractC0865A;
        a4.o oVarD;
        d3.i.e("attributes", g5);
        d3.i.e("constructor", j3);
        d3.i.e("arguments", list);
        if (g5.isEmpty() && list.isEmpty() && !z4 && j3.i() != null) {
            InterfaceC0804g interfaceC0804gI = j3.i();
            d3.i.b(interfaceC0804gI);
            AbstractC0472z abstractC0472zQ = interfaceC0804gI.q();
            d3.i.d("constructor.declarationDescriptor!!.defaultType", abstractC0472zQ);
            return abstractC0472zQ;
        }
        InterfaceC0804g interfaceC0804gI2 = j3.i();
        if (interfaceC0804gI2 instanceof InterfaceC0789Q) {
            oVarG = ((InterfaceC0789Q) interfaceC0804gI2).q().q0();
        } else if (interfaceC0804gI2 instanceof InterfaceC0802e) {
            X3.f.i(X3.f.j(interfaceC0804gI2));
            i4.f fVar = i4.f.f7172a;
            if (list.isEmpty()) {
                InterfaceC0802e interfaceC0802e = (InterfaceC0802e) interfaceC0804gI2;
                d3.i.e("<this>", interfaceC0802e);
                abstractC0865A = interfaceC0802e instanceof AbstractC0865A ? (AbstractC0865A) interfaceC0802e : null;
                if (abstractC0865A == null || (oVarD = abstractC0865A.J(fVar)) == null) {
                    oVarG = interfaceC0802e.f0();
                    d3.i.d("this.unsubstitutedMemberScope", oVarG);
                } else {
                    oVarG = oVarD;
                }
            } else {
                InterfaceC0802e interfaceC0802e2 = (InterfaceC0802e) interfaceC0804gI2;
                S sF = L.f7034b.f(j3, list);
                d3.i.e("<this>", interfaceC0802e2);
                abstractC0865A = interfaceC0802e2 instanceof AbstractC0865A ? (AbstractC0865A) interfaceC0802e2 : null;
                if (abstractC0865A == null || (oVarD = abstractC0865A.d(sF, fVar)) == null) {
                    oVarG = interfaceC0802e2.C(sF);
                    d3.i.d("this.getMemberScope(\n   …ubstitution\n            )", oVarG);
                }
            }
        } else if (interfaceC0804gI2 instanceof f4.t) {
            String str = ((f4.t) interfaceC0804gI2).getName().f2242c;
            d3.i.d("descriptor.name.toString()", str);
            oVarG = j4.i.a(4, true, str);
        } else {
            if (!(j3 instanceof C0467u)) {
                throw new IllegalStateException("Unsupported classifier: " + interfaceC0804gI2 + " for constructor: " + j3);
            }
            oVarG = L2.b.g("member scope for intersection type", ((C0467u) j3).f7076b);
        }
        return t(g5, j3, list, z4, oVarG, new C0469w(g5, j3, list, z4));
    }

    public static final AbstractC0472z s(a4.o oVar, G g5, J j3, List list, boolean z4) {
        d3.i.e("attributes", g5);
        d3.i.e("constructor", j3);
        d3.i.e("arguments", list);
        d3.i.e("memberScope", oVar);
        A a3 = new A(j3, list, z4, oVar, new C0469w(oVar, g5, j3, list, z4));
        return g5.isEmpty() ? a3 : new B(a3, g5);
    }

    public static final AbstractC0472z t(G g5, J j3, List list, boolean z4, a4.o oVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("attributes", g5);
        d3.i.e("constructor", j3);
        d3.i.e("arguments", list);
        d3.i.e("memberScope", oVar);
        A a3 = new A(j3, list, z4, oVar, interfaceC0222b);
        return g5.isEmpty() ? a3 : new B(a3, g5);
    }

    public void a(InterfaceC0845h interfaceC0845h, InterfaceC0845h interfaceC0845h2) {
        HashSet hashSet = new HashSet();
        Iterator it = interfaceC0845h.iterator();
        while (it.hasNext()) {
            hashSet.add(((InterfaceC0839b) it.next()).a());
        }
        Iterator it2 = interfaceC0845h2.iterator();
        while (it2.hasNext()) {
            hashSet.contains(((InterfaceC0839b) it2.next()).a());
        }
    }

    public S f(J j3, List list) {
        d3.i.e("typeConstructor", j3);
        d3.i.e("arguments", list);
        List listK = j3.k();
        d3.i.d("typeConstructor.parameters", listK);
        InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) R2.m.V0(listK);
        if (interfaceC0789Q == null || !interfaceC0789Q.m0()) {
            return new C0466t((InterfaceC0789Q[]) listK.toArray(new InterfaceC0789Q[0]), (N[]) list.toArray(new N[0]), false);
        }
        List listK2 = j3.k();
        d3.i.d("typeConstructor.parameters", listK2);
        ArrayList arrayList = new ArrayList(R2.o.C0(listK2));
        Iterator it = listK2.iterator();
        while (it.hasNext()) {
            arrayList.add(((InterfaceC0789Q) it.next()).H());
        }
        return new K(R2.z.C1(R2.m.l1(arrayList, list)), false);
    }

    public AbstractC0472z h(com.google.firebase.messaging.p pVar, G g5, boolean z4, int i5, boolean z5) {
        G gJ;
        f4.t tVar = (f4.t) pVar.f6259e;
        N nI = i(new O(1, tVar.S0()), pVar, null, i5);
        AbstractC0468v abstractC0468vB = nI.b();
        d3.i.d("expandedProjection.type", abstractC0468vB);
        AbstractC0472z abstractC0472zB = AbstractC0450c.b(abstractC0468vB);
        if (AbstractC0450c.i(abstractC0472zB)) {
            return abstractC0472zB;
        }
        nI.a();
        a(abstractC0472zB.t(), AbstractC0456i.a(g5));
        if (!AbstractC0450c.i(abstractC0472zB)) {
            if (AbstractC0450c.i(abstractC0472zB)) {
                gJ = abstractC0472zB.I0();
            } else {
                G gI0 = abstractC0472zB.I0();
                d3.i.e("other", gI0);
                if (g5.isEmpty() && gI0.isEmpty()) {
                    gJ = g5;
                } else {
                    ArrayList arrayList = new ArrayList();
                    Collection collectionValues = ((ConcurrentHashMap) G.f7019d.f6792c).values();
                    d3.i.d("idPerType.values", collectionValues);
                    Iterator it = collectionValues.iterator();
                    while (it.hasNext()) {
                        int iIntValue = ((Number) it.next()).intValue();
                        C0455h c0455h = (C0455h) g5.f8341c.get(iIntValue);
                        C0455h c0455h2 = (C0455h) gI0.f8341c.get(iIntValue);
                        if (c0455h != null) {
                            if (c0455h2 != null) {
                                c0455h = new C0455h(AbstractC0735a.e(c0455h.f7057a, c0455h2.f7057a));
                            }
                            c0455h2 = c0455h;
                        } else if (c0455h2 == null) {
                            c0455h2 = null;
                        } else if (c0455h != null) {
                            c0455h2 = new C0455h(AbstractC0735a.e(c0455h2.f7057a, c0455h.f7057a));
                        }
                        q4.k.b(arrayList, c0455h2);
                    }
                    gJ = e.v.j(arrayList);
                }
            }
            abstractC0472zB = AbstractC0450c.p(abstractC0472zB, null, gJ, 1);
        }
        AbstractC0472z abstractC0472zJ = X.j(abstractC0472zB, z4);
        d3.i.d("expandedType.combineAttr…fNeeded(it, isNullable) }", abstractC0472zJ);
        if (!z5) {
            return abstractC0472zJ;
        }
        C0873e c0873e = tVar.f6902i;
        d3.i.d("descriptor.typeConstructor", c0873e);
        return AbstractC0450c.z(abstractC0472zJ, s(a4.n.f3128b, g5, c0873e, (List) pVar.f, z4));
    }

    public N i(N n, com.google.firebase.messaging.p pVar, InterfaceC0789Q interfaceC0789Q, int i5) {
        int iA;
        N o2;
        f4.t tVar = (f4.t) pVar.f6259e;
        if (i5 > 100) {
            throw new AssertionError("Too deep recursion while expanding type alias " + tVar.getName());
        }
        if (n.c()) {
            d3.i.b(interfaceC0789Q);
            return X.k(interfaceC0789Q);
        }
        AbstractC0468v abstractC0468vB = n.b();
        d3.i.d("underlyingProjection.type", abstractC0468vB);
        J jJ0 = abstractC0468vB.J0();
        d3.i.e("constructor", jJ0);
        InterfaceC0804g interfaceC0804gI = jJ0.i();
        N n5 = interfaceC0804gI instanceof InterfaceC0789Q ? (N) ((Map) pVar.f6260g).get(interfaceC0804gI) : null;
        if (n5 != null) {
            if (n5.c()) {
                d3.i.b(interfaceC0789Q);
                return X.k(interfaceC0789Q);
            }
            Z zM0 = n5.b().M0();
            int iA2 = n5.a();
            B.f.E(iA2, "argument.projectionKind");
            int iA3 = n.a();
            B.f.E(iA3, "underlyingProjection.projectionKind");
            if (iA3 != iA2 && iA3 != 1) {
                if (iA2 == 1) {
                    iA2 = iA3;
                } else {
                    d3.i.e("typeAlias", tVar);
                }
            }
            if (interfaceC0789Q == null || (iA = interfaceC0789Q.A()) == 0) {
                iA = 1;
            }
            if (iA != iA2 && iA != 1) {
                if (iA2 == 1) {
                    iA2 = 1;
                } else {
                    d3.i.e("typeAlias", tVar);
                }
            }
            a(abstractC0468vB.t(), zM0.t());
            AbstractC0472z abstractC0472zJ = X.j(AbstractC0450c.b(zM0), abstractC0468vB.K0());
            d3.i.d("makeNullableIfNeeded(thi…romType.isMarkedNullable)", abstractC0472zJ);
            G gI0 = abstractC0468vB.I0();
            if (!AbstractC0450c.i(abstractC0472zJ)) {
                if (AbstractC0450c.i(abstractC0472zJ)) {
                    gI0 = abstractC0472zJ.I0();
                } else {
                    G gI02 = abstractC0472zJ.I0();
                    gI0.getClass();
                    d3.i.e("other", gI02);
                    if (!gI0.isEmpty() || !gI02.isEmpty()) {
                        ArrayList arrayList = new ArrayList();
                        Collection collectionValues = ((ConcurrentHashMap) G.f7019d.f6792c).values();
                        d3.i.d("idPerType.values", collectionValues);
                        Iterator it = collectionValues.iterator();
                        while (it.hasNext()) {
                            int iIntValue = ((Number) it.next()).intValue();
                            C0455h c0455h = (C0455h) gI0.f8341c.get(iIntValue);
                            C0455h c0455h2 = (C0455h) gI02.f8341c.get(iIntValue);
                            if (c0455h != null) {
                                if (c0455h2 != null) {
                                    c0455h = new C0455h(AbstractC0735a.e(c0455h.f7057a, c0455h2.f7057a));
                                }
                                c0455h2 = c0455h;
                            } else if (c0455h2 == null) {
                                c0455h2 = null;
                            } else if (c0455h != null) {
                                c0455h2 = new C0455h(AbstractC0735a.e(c0455h2.f7057a, c0455h.f7057a));
                            }
                            q4.k.b(arrayList, c0455h2);
                        }
                        gI0 = e.v.j(arrayList);
                    }
                }
                abstractC0472zJ = AbstractC0450c.p(abstractC0472zJ, null, gI0, 1);
            }
            return new O(iA2, abstractC0472zJ);
        }
        AbstractC0472z abstractC0472zB = AbstractC0450c.b(n.b().M0());
        if (AbstractC0450c.i(abstractC0472zB) || !X.d(abstractC0472zB, l4.a.f, null)) {
            return n;
        }
        J jJ02 = abstractC0472zB.J0();
        InterfaceC0804g interfaceC0804gI2 = jJ02.i();
        jJ02.k().size();
        abstractC0472zB.u0().size();
        if (interfaceC0804gI2 instanceof InterfaceC0789Q) {
            o2 = n;
        } else {
            int i6 = 0;
            if (interfaceC0804gI2 instanceof f4.t) {
                f4.t tVar2 = (f4.t) interfaceC0804gI2;
                if (pVar.B(tVar2)) {
                    j4.h hVar = j4.h.f7627h;
                    String str = tVar2.getName().f2242c;
                    d3.i.d("typeDescriptor.name.toString()", str);
                    return new O(1, j4.i.c(hVar, str));
                }
                List listU0 = abstractC0472zB.u0();
                ArrayList arrayList2 = new ArrayList(R2.o.C0(listU0));
                for (Object obj : listU0) {
                    int i7 = i6 + 1;
                    if (i6 < 0) {
                        R2.n.B0();
                        throw null;
                    }
                    arrayList2.add(i((N) obj, pVar, (InterfaceC0789Q) jJ02.k().get(i6), i5 + 1));
                    i6 = i7;
                }
                List listK = tVar2.f6902i.k();
                ArrayList arrayList3 = new ArrayList(R2.o.C0(listK));
                Iterator it2 = listK.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(((InterfaceC0789Q) it2.next()).a());
                }
                o2 = new O(n.a(), AbstractC0450c.z(h(new com.google.firebase.messaging.p(pVar, tVar2, arrayList2, R2.z.C1(R2.m.l1(arrayList3, arrayList2)), 15), abstractC0472zB.I0(), abstractC0472zB.K0(), i5 + 1, false), u(abstractC0472zB, pVar, i5)));
            } else {
                AbstractC0472z abstractC0472zU = u(abstractC0472zB, pVar, i5);
                V.d(abstractC0472zU);
                for (Object obj2 : abstractC0472zU.u0()) {
                    int i8 = i6 + 1;
                    if (i6 < 0) {
                        R2.n.B0();
                        throw null;
                    }
                    N n6 = (N) obj2;
                    if (!n6.c()) {
                        AbstractC0468v abstractC0468vB2 = n6.b();
                        d3.i.d("substitutedArgument.type", abstractC0468vB2);
                        if (!X.d(abstractC0468vB2, l4.a.f8245e, null)) {
                        }
                    }
                    i6 = i8;
                }
                o2 = new O(n.a(), abstractC0472zU);
            }
        }
        return o2;
    }

    public AbstractC0472z u(AbstractC0472z abstractC0472z, com.google.firebase.messaging.p pVar, int i5) {
        J jJ0 = abstractC0472z.J0();
        List listU0 = abstractC0472z.u0();
        ArrayList arrayList = new ArrayList(R2.o.C0(listU0));
        int i6 = 0;
        for (Object obj : listU0) {
            int i7 = i6 + 1;
            if (i6 < 0) {
                R2.n.B0();
                throw null;
            }
            N n = (N) obj;
            N nI = i(n, pVar, (InterfaceC0789Q) jJ0.k().get(i6), i5 + 1);
            if (!nI.c()) {
                nI = new O(nI.a(), X.i(nI.b(), n.b().K0()));
            }
            arrayList.add(nI);
            i6 = i7;
        }
        return AbstractC0450c.p(abstractC0472z, arrayList, null, 2);
    }
}
