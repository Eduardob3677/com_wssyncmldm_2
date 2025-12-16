package f4;

import L3.C0061j;
import L3.C0063l;
import L3.Q;
import c3.InterfaceC0221a;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import h0.AbstractC0432c;
import h4.AbstractC0472z;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import p0.AbstractC0739a;
import r3.AbstractC0790S;
import r3.AbstractC0811n;
import r3.C0817t;
import r3.C0822y;
import r3.InterfaceC0775C;
import r3.InterfaceC0786N;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import s2.C0837c;
import s3.C0844g;
import u3.C0879k;
import u3.V;

/* loaded from: classes.dex */
public final class h extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f6848d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ i f6849e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ h(i iVar, int i5) {
        super(0);
        this.f6848d = i5;
        this.f6849e = iVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v48, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r1v49, types: [java.lang.Iterable, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v52, types: [java.util.ArrayList] */
    @Override // c3.InterfaceC0221a
    public final Object a() {
        Object next;
        A3.p pVar;
        AbstractC0790S c0817t;
        AbstractC0472z abstractC0472zI0;
        ?? arrayList;
        int i5 = 1;
        i iVar = this.f6849e;
        switch (this.f6848d) {
            case 0:
                return AbstractC0739a.f(iVar);
            case 1:
                return R2.m.g1(((d4.i) iVar.n.f5377c).f6533e.k0(iVar.f6866x));
            case 2:
                C0061j c0061j = iVar.f6850g;
                if (!((c0061j.f1688e & 4) == 4)) {
                    return null;
                }
                InterfaceC0804g interfaceC0804gC = iVar.u0().c(L2.b.v((N3.f) iVar.n.f5378d, c0061j.f1690h), z3.b.f9734i);
                if (interfaceC0804gC instanceof InterfaceC0802e) {
                    return (InterfaceC0802e) interfaceC0804gC;
                }
                return null;
            case 3:
                List list = iVar.f6850g.f1699r;
                d3.i.d("classProto.constructorList", list);
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : list) {
                    if (N3.e.f1896m.c(((C0063l) obj).f).booleanValue()) {
                        arrayList2.add(obj);
                    }
                }
                ArrayList arrayList3 = new ArrayList(R2.o.C0(arrayList2));
                Iterator it = arrayList2.iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    G4 g42 = iVar.n;
                    if (!zHasNext) {
                        return R2.m.Y0(R2.m.Y0(arrayList3, R2.n.z0(iVar.W())), ((d4.i) g42.f5377c).n.b(iVar));
                    }
                    C0063l c0063l = (C0063l) it.next();
                    d4.r rVar = (d4.r) g42.f5384k;
                    d3.i.d("it", c0063l);
                    arrayList3.add(rVar.d(c0063l, false));
                }
            case 4:
                i iVar2 = this.f6849e;
                if (!AbstractC0432c.a(iVar2.f6856m)) {
                    List list2 = iVar2.f6850g.f1699r;
                    d3.i.d("classProto.constructorList", list2);
                    Iterator it2 = list2.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            next = it2.next();
                            if (!N3.e.f1896m.c(((C0063l) next).f).booleanValue()) {
                            }
                        } else {
                            next = null;
                        }
                    }
                    C0063l c0063l2 = (C0063l) next;
                    return c0063l2 != null ? ((d4.r) iVar2.n.f5384k).d(c0063l2, true) : null;
                }
                T3.d dVar = new T3.d(iVar2, null, C0844g.f9041a, true, 1, InterfaceC0786N.f8790a);
                List listEmptyList = Collections.emptyList();
                int i6 = T3.e.f2720a;
                int i7 = iVar2.f6856m;
                if (i7 == 3 || AbstractC0432c.a(i7)) {
                    pVar = AbstractC0811n.f8809a;
                    if (pVar == null) {
                        T3.e.a(49);
                        throw null;
                    }
                } else if (T3.e.r(iVar2)) {
                    pVar = AbstractC0811n.f8809a;
                    if (pVar == null) {
                        T3.e.a(51);
                        throw null;
                    }
                } else if (T3.e.l(iVar2)) {
                    pVar = AbstractC0811n.f8817j;
                    if (pVar == null) {
                        T3.e.a(52);
                        throw null;
                    }
                } else {
                    pVar = AbstractC0811n.f8813e;
                    if (pVar == null) {
                        T3.e.a(53);
                        throw null;
                    }
                }
                dVar.e1(listEmptyList, pVar);
                dVar.a1(iVar2.q());
                return dVar;
            case 5:
                R2.u uVar = R2.u.f2325c;
                if (iVar.f6854k != 2) {
                    return uVar;
                }
                List<Integer> list3 = iVar.f6850g.f1704w;
                d3.i.d("fqNames", list3);
                if (!(!list3.isEmpty())) {
                    if (iVar.f6854k != 2) {
                        return uVar;
                    }
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    InterfaceC0807j interfaceC0807j = iVar.f6861s;
                    if (interfaceC0807j instanceof InterfaceC0775C) {
                        W1.a.p(iVar, linkedHashSet, ((InterfaceC0775C) interfaceC0807j).q0(), false);
                    }
                    W1.a.p(iVar, linkedHashSet, iVar.R(), true);
                    return R2.m.e1(linkedHashSet, new T3.j(i5));
                }
                ArrayList arrayList4 = new ArrayList();
                for (Integer num : list3) {
                    G4 g43 = iVar.n;
                    d4.i iVar3 = (d4.i) g43.f5377c;
                    d3.i.d("index", num);
                    InterfaceC0802e interfaceC0802eB = iVar3.b(L2.b.l((N3.f) g43.f5378d, num.intValue()));
                    if (interfaceC0802eB != null) {
                        arrayList4.add(interfaceC0802eB);
                    }
                }
                return arrayList4;
            default:
                if (!iVar.j() && !iVar.v()) {
                    return null;
                }
                G4 g44 = iVar.n;
                N3.f fVar = (N3.f) g44.f5378d;
                C0061j c0061j2 = iVar.f6850g;
                d3.i.e("<this>", c0061j2);
                d3.i.e("nameResolver", fVar);
                C0837c c0837c = (C0837c) g44.f;
                d3.i.e("typeTable", c0837c);
                int size = c0061j2.f1678B.size();
                J3.c cVar = (J3.c) g44.f5383j;
                if (size > 0) {
                    List<Integer> list4 = c0061j2.f1678B;
                    d3.i.d("multiFieldValueClassUnderlyingNameList", list4);
                    ArrayList arrayList5 = new ArrayList(R2.o.C0(list4));
                    for (Integer num2 : list4) {
                        d3.i.d("it", num2);
                        arrayList5.add(L2.b.v(fVar, num2.intValue()));
                    }
                    Q2.e eVar = new Q2.e(Integer.valueOf(c0061j2.E.size()), Integer.valueOf(c0061j2.f1680D.size()));
                    if (d3.i.a(eVar, new Q2.e(Integer.valueOf(arrayList5.size()), 0))) {
                        List<Integer> list5 = c0061j2.E;
                        d3.i.d("multiFieldValueClassUnderlyingTypeIdList", list5);
                        arrayList = new ArrayList(R2.o.C0(list5));
                        for (Integer num3 : list5) {
                            d3.i.d("it", num3);
                            arrayList.add(c0837c.l(num3.intValue()));
                        }
                    } else {
                        if (!d3.i.a(eVar, new Q2.e(0, Integer.valueOf(arrayList5.size())))) {
                            throw new IllegalStateException(("class " + L2.b.v(fVar, c0061j2.f1689g) + " has illegal multi-field value class representation").toString());
                        }
                        arrayList = c0061j2.f1680D;
                    }
                    d3.i.d("when (typeIdCount to typ…epresentation\")\n        }", arrayList);
                    ArrayList arrayList6 = new ArrayList(R2.o.C0(arrayList));
                    for (Q q2 : arrayList) {
                        d3.i.e("p0", q2);
                        arrayList6.add(cVar.f(q2, true));
                    }
                    c0817t = new C0822y(R2.m.l1(arrayList5, arrayList6));
                } else if ((c0061j2.f1688e & 8) == 8) {
                    Q3.f fVarV = L2.b.v(fVar, c0061j2.f1706y);
                    int i8 = c0061j2.f1688e;
                    Q qL = (i8 & 16) == 16 ? c0061j2.f1707z : (i8 & 32) == 32 ? c0837c.l(c0061j2.f1677A) : null;
                    if ((qL == null || (abstractC0472zI0 = cVar.f(qL, true)) == null) && (abstractC0472zI0 = iVar.I0(fVarV)) == null) {
                        throw new IllegalStateException(("cannot determine underlying type for value class " + L2.b.v(fVar, c0061j2.f1689g) + " with property " + fVarV).toString());
                    }
                    c0817t = new C0817t(fVarV, abstractC0472zI0);
                } else {
                    c0817t = null;
                }
                if (c0817t != null) {
                    return c0817t;
                }
                if (iVar.f6851h.a(1, 5, 1)) {
                    return null;
                }
                C0879k c0879kW = iVar.W();
                if (c0879kW == null) {
                    throw new IllegalStateException(("Inline class has no primary constructor: " + iVar).toString());
                }
                List listW0 = c0879kW.w0();
                d3.i.d("constructor.valueParameters", listW0);
                Q3.f name = ((V) R2.m.M0(listW0)).getName();
                d3.i.d("constructor.valueParameters.first().name", name);
                AbstractC0472z abstractC0472zI02 = iVar.I0(name);
                if (abstractC0472zI02 != null) {
                    return new C0817t(name, abstractC0472zI02);
                }
                throw new IllegalStateException(("Value class has no underlying property: " + iVar).toString());
        }
    }
}
