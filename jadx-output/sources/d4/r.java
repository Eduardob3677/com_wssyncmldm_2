package d4;

import A3.D;
import L3.C0063l;
import L3.C0075y;
import L3.EnumC0076z;
import L3.G;
import L3.Q;
import L3.Z;
import L3.f0;
import R3.AbstractC0080b;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import com.google.android.gms.internal.p000firebaseauthapi.X;
import f1.AbstractC0420a;
import h4.AbstractC0468v;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import r3.C0785M;
import r3.InterfaceC0775C;
import r3.InterfaceC0786N;
import r3.InterfaceC0799b;
import r3.InterfaceC0802e;
import r3.InterfaceC0807j;
import s2.C0837c;
import s3.C0844g;
import s3.InterfaceC0845h;
import u3.C0887t;
import u3.C0890w;
import u3.E;
import u3.L;
import u3.M;
import u3.V;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final G4 f6569a;

    /* renamed from: b, reason: collision with root package name */
    public final D f6570b;

    public r(G4 g42) {
        d3.i.e("c", g42);
        this.f6569a = g42;
        i iVar = (i) g42.f5377c;
        this.f6570b = new D(iVar.f6530b, iVar.f6539l);
    }

    public static C0890w g(Q q2, G4 g42, InterfaceC0799b interfaceC0799b, int i5) {
        return Z0.j.x(interfaceC0799b, ((J3.c) g42.f5383j).o(q2), null, C0844g.f9041a, i5);
    }

    public final X a(InterfaceC0807j interfaceC0807j) {
        if (interfaceC0807j instanceof InterfaceC0775C) {
            Q3.c cVar = ((E) ((InterfaceC0775C) interfaceC0807j)).f9353g;
            G4 g42 = this.f6569a;
            return new t(cVar, (N3.f) g42.f5378d, (C0837c) g42.f, (f4.j) g42.f5382i);
        }
        if (interfaceC0807j instanceof f4.i) {
            return ((f4.i) interfaceC0807j).f6866x;
        }
        return null;
    }

    public final InterfaceC0845h b(AbstractC0080b abstractC0080b, int i5, int i6) {
        return !N3.e.f1887c.c(i5).booleanValue() ? C0844g.f9041a : new f4.v(((i) this.f6569a.f5377c).f6529a, new n(this, abstractC0080b, i6, 0));
    }

    public final InterfaceC0845h c(G g5, boolean z4) {
        return !N3.e.f1887c.c(g5.f).booleanValue() ? C0844g.f9041a : new f4.v(((i) this.f6569a.f5377c).f6529a, new o(this, z4, g5));
    }

    public final f4.c d(C0063l c0063l, boolean z4) {
        G4 g42 = this.f6569a;
        InterfaceC0807j interfaceC0807j = (InterfaceC0807j) g42.f5379e;
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807j);
        InterfaceC0802e interfaceC0802e = (InterfaceC0802e) interfaceC0807j;
        f4.c cVar = new f4.c(interfaceC0802e, null, b(c0063l, c0063l.f, 1), z4, 1, c0063l, (N3.f) g42.f5378d, (C0837c) g42.f, (N3.g) g42.f5380g, (f4.j) g42.f5382i, null);
        G4 g4B = g42.b(cVar, R2.u.f2325c, (N3.f) g42.f5378d, (C0837c) g42.f, (N3.g) g42.f5380g, (N3.a) g42.f5381h);
        List list = c0063l.f1715g;
        d3.i.d("proto.valueParameterList", list);
        cVar.e1(((r) g4B.f5384k).h(list, c0063l, 1), W1.a.x((f0) N3.e.f1888d.c(c0063l.f)));
        cVar.a1(interfaceC0802e.q());
        cVar.f9501t = interfaceC0802e.y();
        cVar.f9506y = !N3.e.n.c(c0063l.f).booleanValue();
        return cVar;
    }

    public final f4.s e(C0075y c0075y) {
        int i5;
        AbstractC0468v abstractC0468vO;
        d3.i.e("proto", c0075y);
        int i6 = 1;
        if ((c0075y.f1792e & 1) == 1) {
            i5 = c0075y.f;
        } else {
            int i7 = c0075y.f1793g;
            i5 = ((i7 >> 8) << 6) + (i7 & 63);
        }
        int i8 = i5;
        InterfaceC0845h interfaceC0845hB = b(c0075y, i8, 1);
        boolean zQ = c0075y.q();
        InterfaceC0845h interfaceC0845h = C0844g.f9041a;
        G4 g42 = this.f6569a;
        InterfaceC0845h aVar = (zQ || (c0075y.f1792e & 64) == 64) ? new f4.a(((i) g42.f5377c).f6529a, new n(this, c0075y, i6, 1)) : interfaceC0845h;
        Q3.c cVarG = X3.f.g((InterfaceC0807j) g42.f5379e);
        int i9 = c0075y.f1794h;
        N3.f fVar = (N3.f) g42.f5378d;
        InterfaceC0845h interfaceC0845h2 = aVar;
        f4.s sVar = new f4.s((InterfaceC0807j) g42.f5379e, null, interfaceC0845hB, L2.b.v(fVar, c0075y.f1794h), W1.a.a0((EnumC0076z) N3.e.f1897o.c(i8)), c0075y, (N3.f) g42.f5378d, (C0837c) g42.f, d3.i.a(cVarG.c(L2.b.v(fVar, i9)), w.f6580a) ? N3.g.f1909a : (N3.g) g42.f5380g, (f4.j) g42.f5382i, null);
        List list = c0075y.f1797k;
        d3.i.d("proto.typeParameterList", list);
        G4 g4B = g42.b(sVar, list, (N3.f) g42.f5378d, (C0837c) g42.f, (N3.g) g42.f5380g, (N3.a) g42.f5381h);
        C0837c c0837c = (C0837c) g42.f;
        Q qO0 = i3.x.O0(c0075y, c0837c);
        J3.c cVar = (J3.c) g4B.f5383j;
        C0890w c0890wE = (qO0 == null || (abstractC0468vO = cVar.o(qO0)) == null) ? null : Z0.j.E(sVar, abstractC0468vO, interfaceC0845h2);
        InterfaceC0807j interfaceC0807j = (InterfaceC0807j) g42.f5379e;
        InterfaceC0802e interfaceC0802e = interfaceC0807j instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0807j : null;
        C0890w c0890wH0 = interfaceC0802e != null ? interfaceC0802e.H0() : null;
        d3.i.e("typeTable", c0837c);
        List list2 = c0075y.n;
        if (!(!list2.isEmpty())) {
            list2 = null;
        }
        if (list2 == null) {
            List<Integer> list3 = c0075y.f1800o;
            d3.i.d("contextReceiverTypeIdList", list3);
            ArrayList arrayList = new ArrayList(R2.o.C0(list3));
            for (Integer num : list3) {
                d3.i.d("it", num);
                arrayList.add(c0837c.l(num.intValue()));
            }
            list2 = arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        int i10 = 0;
        for (Object obj : list2) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                R2.n.B0();
                throw null;
            }
            C0890w c0890wX = Z0.j.x(sVar, cVar.o((Q) obj), null, interfaceC0845h, i10);
            if (c0890wX != null) {
                arrayList2.add(c0890wX);
            }
            i10 = i11;
        }
        List listG1 = R2.m.g1(((Map) cVar.f1143j).values());
        List list4 = c0075y.f1802q;
        d3.i.d("proto.valueParameterList", list4);
        sVar.e1(c0890wE, c0890wH0, arrayList2, listG1, ((r) g4B.f5384k).h(list4, c0075y, 1), cVar.o(i3.x.W0(c0075y, c0837c)), j.e((L3.A) N3.e.f1889e.c(i8)), W1.a.x((f0) N3.e.f1888d.c(i8)), R2.v.f2326c);
        sVar.f9496o = N3.e.f1898p.c(i8).booleanValue();
        sVar.f9497p = N3.e.f1899q.c(i8).booleanValue();
        sVar.f9498q = N3.e.f1902t.c(i8).booleanValue();
        sVar.f9499r = N3.e.f1900r.c(i8).booleanValue();
        sVar.f9500s = N3.e.f1901s.c(i8).booleanValue();
        sVar.f9505x = N3.e.f1903u.c(i8).booleanValue();
        sVar.f9501t = N3.e.f1904v.c(i8).booleanValue();
        sVar.f9506y = !N3.e.f1905w.c(i8).booleanValue();
        ((i) g42.f5377c).f6540m.getClass();
        d3.i.e("typeTable", c0837c);
        return sVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v106 */
    /* JADX WARN: Type inference failed for: r1v62 */
    /* JADX WARN: Type inference failed for: r1v63, types: [r3.e] */
    public final f4.r f(G g5) {
        int i5;
        G g6;
        r rVar;
        N3.b bVar;
        N3.b bVar2;
        N3.b bVar3;
        N3.c cVar;
        G4 g42;
        G4 g43;
        N3.c cVar2;
        G g7;
        L l5;
        L l6;
        g4.h hVar;
        M mA;
        r rVar2;
        L lZ;
        AbstractC0468v abstractC0468vO;
        d3.i.e("proto", g5);
        if ((g5.f1406e & 1) == 1) {
            i5 = g5.f;
        } else {
            int i6 = g5.f1407g;
            i5 = ((i6 >> 8) << 6) + (i6 & 63);
        }
        int i7 = i5;
        G4 g44 = this.f6569a;
        f4.r rVar3 = new f4.r((InterfaceC0807j) g44.f5379e, null, b(g5, i7, 2), j.e((L3.A) N3.e.f1889e.c(i7)), W1.a.x((f0) N3.e.f1888d.c(i7)), N3.e.f1906x.c(i7).booleanValue(), L2.b.v((N3.f) g44.f5378d, g5.f1408h), W1.a.a0((EnumC0076z) N3.e.f1897o.c(i7)), N3.e.f1874B.c(i7).booleanValue(), N3.e.f1873A.c(i7).booleanValue(), N3.e.f1876D.c(i7).booleanValue(), N3.e.E.c(i7).booleanValue(), N3.e.f1877F.c(i7).booleanValue(), g5, (N3.f) g44.f5378d, (C0837c) g44.f, (N3.g) g44.f5380g, (f4.j) g44.f5382i);
        List list = g5.f1411k;
        d3.i.d("proto.typeParameterList", list);
        G4 g4B = g44.b(rVar3, list, (N3.f) g44.f5378d, (C0837c) g44.f, (N3.g) g44.f5380g, (N3.a) g44.f5381h);
        boolean zBooleanValue = N3.e.f1907y.c(i7).booleanValue();
        InterfaceC0845h aVar = C0844g.f9041a;
        int i8 = 3;
        if (zBooleanValue && (g5.q() || (g5.f1406e & 64) == 64)) {
            g4.o oVar = ((i) g44.f5377c).f6529a;
            g6 = g5;
            rVar = this;
            aVar = new f4.a(oVar, new n(rVar, g6, i8, 1));
        } else {
            g6 = g5;
            rVar = this;
        }
        C0837c c0837c = (C0837c) g44.f;
        Q qX0 = i3.x.X0(g6, c0837c);
        J3.c cVar3 = (J3.c) g4B.f5383j;
        AbstractC0468v abstractC0468vO2 = cVar3.o(qX0);
        List listG1 = R2.m.g1(((Map) cVar3.f1143j).values());
        InterfaceC0807j interfaceC0807j = (InterfaceC0807j) g44.f5379e;
        InterfaceC0802e interfaceC0802e = interfaceC0807j instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0807j : null;
        C0890w c0890wH0 = interfaceC0802e != null ? interfaceC0802e.H0() : null;
        d3.i.e("typeTable", c0837c);
        Q qL = g5.q() ? g6.f1412l : (g6.f1406e & 64) == 64 ? c0837c.l(g6.f1413m) : null;
        C0890w c0890wE = (qL == null || (abstractC0468vO = cVar3.o(qL)) == null) ? null : Z0.j.E(rVar3, abstractC0468vO, aVar);
        d3.i.e("typeTable", c0837c);
        List list2 = g6.n;
        if (!(!list2.isEmpty())) {
            list2 = null;
        }
        if (list2 == null) {
            List<Integer> list3 = g6.f1414o;
            d3.i.d("contextReceiverTypeIdList", list3);
            ArrayList arrayList = new ArrayList(R2.o.C0(list3));
            for (Integer num : list3) {
                d3.i.d("it", num);
                arrayList.add(c0837c.l(num.intValue()));
            }
            list2 = arrayList;
        }
        ArrayList arrayList2 = new ArrayList(R2.o.C0(list2));
        int i9 = 0;
        for (Object obj : list2) {
            int i10 = i9 + 1;
            if (i9 < 0) {
                R2.n.B0();
                throw null;
            }
            arrayList2.add(g((Q) obj, g4B, rVar3, i9));
            i9 = i10;
        }
        rVar3.Y0(abstractC0468vO2, listG1, c0890wH0, c0890wE, arrayList2);
        N3.b bVar4 = N3.e.f1887c;
        boolean zBooleanValue2 = bVar4.c(i7).booleanValue();
        N3.c cVar4 = N3.e.f1888d;
        f0 f0Var = (f0) cVar4.c(i7);
        N3.c cVar5 = N3.e.f1889e;
        L3.A a3 = (L3.A) cVar5.c(i7);
        if (f0Var == null) {
            N3.e.a(10);
            throw null;
        }
        if (a3 == null) {
            N3.e.a(11);
            throw null;
        }
        int iA = (zBooleanValue2 ? 1 << bVar4.f1871a : 0) | (a3.a() << cVar5.f1871a) | (f0Var.a() << cVar4.f1871a);
        N3.b bVar5 = N3.e.f1881J;
        bVar5.getClass();
        N3.b bVar6 = N3.e.f1882K;
        bVar6.getClass();
        N3.b bVar7 = N3.e.f1883L;
        bVar7.getClass();
        C0785M c0785m = InterfaceC0786N.f8790a;
        if (zBooleanValue) {
            int i11 = (g6.f1406e & 256) == 256 ? g6.f1417r : iA;
            boolean zBooleanValue3 = bVar5.c(i11).booleanValue();
            boolean zBooleanValue4 = bVar6.c(i11).booleanValue();
            boolean zBooleanValue5 = bVar7.c(i11).booleanValue();
            InterfaceC0845h interfaceC0845hB = rVar.b(g6, i11, 3);
            if (zBooleanValue3) {
                bVar = bVar7;
                bVar2 = bVar6;
                bVar3 = bVar5;
                cVar = cVar5;
                g42 = g44;
                cVar2 = cVar4;
                g43 = g4B;
                g7 = g6;
                lZ = new L(rVar3, interfaceC0845hB, j.e((L3.A) cVar5.c(i11)), W1.a.x((f0) cVar4.c(i11)), !zBooleanValue3, zBooleanValue4, zBooleanValue5, rVar3.k0(), null, c0785m);
            } else {
                bVar = bVar7;
                bVar2 = bVar6;
                bVar3 = bVar5;
                cVar = cVar5;
                g42 = g44;
                g43 = g4B;
                cVar2 = cVar4;
                g7 = g6;
                lZ = Z0.j.z(rVar3, interfaceC0845hB);
            }
            lZ.T0(rVar3.n());
            l5 = lZ;
        } else {
            bVar = bVar7;
            bVar2 = bVar6;
            bVar3 = bVar5;
            cVar = cVar5;
            g42 = g44;
            g43 = g4B;
            cVar2 = cVar4;
            g7 = g6;
            l5 = null;
        }
        if (N3.e.f1908z.c(i7).booleanValue()) {
            int i12 = (g7.f1406e & 512) == 512 ? g7.f1418s : iA;
            boolean zBooleanValue6 = bVar3.c(i12).booleanValue();
            boolean zBooleanValue7 = bVar2.c(i12).booleanValue();
            boolean zBooleanValue8 = bVar.c(i12).booleanValue();
            InterfaceC0845h interfaceC0845hB2 = rVar.b(g7, i12, 4);
            if (zBooleanValue6) {
                l6 = l5;
                M m5 = new M(rVar3, interfaceC0845hB2, j.e((L3.A) cVar.c(i12)), W1.a.x((f0) cVar2.c(i12)), !zBooleanValue6, zBooleanValue7, zBooleanValue8, rVar3.k0(), null, c0785m);
                G4 g45 = g43;
                V v4 = (V) R2.m.b1(((r) g45.b(m5, R2.u.f2325c, (N3.f) g45.f5378d, (C0837c) g45.f, (N3.g) g45.f5380g, (N3.a) g45.f5381h).f5384k).h(AbstractC0420a.V(g7.f1416q), g7, 4));
                if (v4 == null) {
                    M.I0(6);
                    throw null;
                }
                m5.f9399o = v4;
                mA = m5;
                hVar = null;
            } else {
                l6 = l5;
                hVar = null;
                mA = Z0.j.A(rVar3, interfaceC0845hB2);
            }
        } else {
            l6 = l5;
            hVar = null;
            mA = null;
        }
        if (N3.e.f1875C.c(i7).booleanValue()) {
            rVar2 = this;
            rVar3.W0(hVar, new p(rVar2, g7, rVar3, 1));
        } else {
            rVar2 = this;
        }
        InterfaceC0807j interfaceC0807j2 = (InterfaceC0807j) g42.f5379e;
        ?? r12 = interfaceC0807j2 instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0807j2 : hVar;
        if ((r12 != 0 ? r12.L() : 0) == 5) {
            rVar3.W0(hVar, new p(rVar2, g7, rVar3, 3));
        }
        rVar3.V0(l6, mA, new C0887t(rVar2.c(g7, false)), new C0887t(rVar2.c(g7, true)));
        return rVar3;
    }

    public final List h(List list, AbstractC0080b abstractC0080b, int i5) {
        G4 g42 = this.f6569a;
        InterfaceC0807j interfaceC0807j = (InterfaceC0807j) g42.f5379e;
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor", interfaceC0807j);
        InterfaceC0799b interfaceC0799b = (InterfaceC0799b) interfaceC0807j;
        InterfaceC0807j interfaceC0807jL = interfaceC0799b.l();
        d3.i.d("callableDescriptor.containingDeclaration", interfaceC0807jL);
        X xA = a(interfaceC0807jL);
        ArrayList arrayList = new ArrayList(R2.o.C0(list));
        int i6 = 0;
        for (Object obj : list) {
            int i7 = i6 + 1;
            if (i6 < 0) {
                R2.n.B0();
                throw null;
            }
            Z z4 = (Z) obj;
            int i8 = (z4.f1551e & 1) == 1 ? z4.f : 0;
            InterfaceC0845h vVar = (xA == null || !N3.e.f1887c.c(i8).booleanValue()) ? C0844g.f9041a : new f4.v(((i) g42.f5377c).f6529a, new q(this, xA, abstractC0080b, i5, i6, z4));
            Q3.f fVarV = L2.b.v((N3.f) g42.f5378d, z4.f1552g);
            C0837c c0837c = (C0837c) g42.f;
            Q qH1 = i3.x.h1(z4, c0837c);
            J3.c cVar = (J3.c) g42.f5383j;
            AbstractC0468v abstractC0468vO = cVar.o(qH1);
            boolean zBooleanValue = N3.e.f1878G.c(i8).booleanValue();
            boolean zBooleanValue2 = N3.e.f1879H.c(i8).booleanValue();
            boolean zBooleanValue3 = N3.e.f1880I.c(i8).booleanValue();
            d3.i.e("typeTable", c0837c);
            int i9 = z4.f1551e;
            Q qL = (i9 & 16) == 16 ? z4.f1555j : (i9 & 32) == 32 ? c0837c.l(z4.f1556k) : null;
            AbstractC0468v abstractC0468vO2 = qL != null ? cVar.o(qL) : null;
            ArrayList arrayList2 = arrayList;
            arrayList2.add(new V(interfaceC0799b, null, i6, vVar, fVarV, abstractC0468vO, zBooleanValue, zBooleanValue2, zBooleanValue3, abstractC0468vO2, InterfaceC0786N.f8790a));
            arrayList = arrayList2;
            i6 = i7;
        }
        return R2.m.g1(arrayList);
    }
}
