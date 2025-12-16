package E3;

import A3.AbstractC0006e;
import A3.AbstractC0009h;
import A3.C0007f;
import A3.C0008g;
import c3.InterfaceC0222b;
import f1.AbstractC0420a;
import h4.AbstractC0468v;
import h4.X;
import h4.Z;
import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.util.AbstractCollection;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import o3.AbstractC0732i;
import r3.AbstractC0811n;
import r3.InterfaceC0783K;
import r3.InterfaceC0799b;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import r3.InterfaceC0815r;
import r3.InterfaceC0816s;
import s3.C0843f;
import s3.C0844g;
import u3.AbstractC0883o;
import u3.C0890w;
import u3.L;
import u3.M;
import u3.N;
import u3.V;
import x3.AbstractC0917d;
import x3.AbstractC0919f;
import x3.C0909A;

/* loaded from: classes.dex */
public final class q extends C {
    public final InterfaceC0802e n;

    /* renamed from: o, reason: collision with root package name */
    public final x3.o f623o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f624p;

    /* renamed from: q, reason: collision with root package name */
    public final g4.i f625q;

    /* renamed from: r, reason: collision with root package name */
    public final g4.i f626r;

    /* renamed from: s, reason: collision with root package name */
    public final g4.i f627s;

    /* renamed from: t, reason: collision with root package name */
    public final g4.i f628t;

    /* renamed from: u, reason: collision with root package name */
    public final g4.j f629u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public q(D3.e eVar, InterfaceC0802e interfaceC0802e, x3.o oVar, boolean z4, q qVar) {
        super(eVar, qVar);
        d3.i.e("c", eVar);
        d3.i.e("ownerDescriptor", interfaceC0802e);
        d3.i.e("jClass", oVar);
        this.n = interfaceC0802e;
        this.f623o = oVar;
        this.f624p = z4;
        D3.a aVar = (D3.a) eVar.f499d;
        g4.o oVar2 = aVar.f469a;
        n nVar = new n(this, eVar);
        g4.l lVar = (g4.l) oVar2;
        lVar.getClass();
        this.f625q = new g4.i(lVar, nVar);
        o oVar3 = new o(this, 1);
        g4.o oVar4 = aVar.f469a;
        g4.l lVar2 = (g4.l) oVar4;
        lVar2.getClass();
        this.f626r = new g4.i(lVar2, oVar3);
        n nVar2 = new n(eVar, this);
        g4.l lVar3 = (g4.l) oVar4;
        lVar3.getClass();
        this.f627s = new g4.i(lVar3, nVar2);
        o oVar5 = new o(this, 0);
        g4.l lVar4 = (g4.l) oVar4;
        lVar4.getClass();
        this.f628t = new g4.i(lVar4, oVar5);
        this.f629u = ((g4.l) oVar4).c(new p(this, eVar));
    }

    public static N C(N n, InterfaceC0816s interfaceC0816s, AbstractCollection abstractCollection) {
        if (abstractCollection.isEmpty()) {
            return n;
        }
        Iterator it = abstractCollection.iterator();
        while (it.hasNext()) {
            N n5 = (N) it.next();
            if (!d3.i.a(n, n5) && n5.E == null && F(n5, interfaceC0816s)) {
                InterfaceC0816s interfaceC0816sJ = n.e0().N().j();
                d3.i.b(interfaceC0816sJ);
                return (N) interfaceC0816sJ;
            }
        }
        return n;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static N D(N n) {
        List listW0 = n.w0();
        d3.i.d("valueParameters", listW0);
        V v4 = (V) R2.m.V0(listW0);
        if (v4 != null) {
            InterfaceC0804g interfaceC0804gI = v4.e().J0().i();
            if (interfaceC0804gI != null) {
                Q3.e eVarH = X3.f.h(interfaceC0804gI);
                if (!eVarH.d()) {
                    eVarH = null;
                }
                Q3.c cVarG = eVarH != null ? eVarH.g() : null;
                if (!d3.i.a(cVarG, o3.n.f)) {
                    v4 = null;
                }
                if (v4 != null) {
                    InterfaceC0815r interfaceC0815rE0 = n.e0();
                    List listW02 = n.w0();
                    d3.i.d("valueParameters", listW02);
                    N n5 = (N) interfaceC0815rE0.o(R2.m.J0(listW02)).I(((h4.N) v4.e().u0().get(0)).b()).j();
                    if (n5 != null) {
                        n5.f9505x = true;
                    }
                    return n5;
                }
            }
        }
        return null;
    }

    public static boolean F(InterfaceC0799b interfaceC0799b, InterfaceC0799b interfaceC0799b2) {
        int iC = T3.n.f2735d.n(interfaceC0799b2, interfaceC0799b, true).c();
        B.f.E(iC, "DEFAULT.isOverridableByW…iptor, this, true).result");
        return iC == 1 && !Z0.j.H(interfaceC0799b2, interfaceC0799b);
    }

    public static boolean G(N n, N n5) {
        int i5 = AbstractC0006e.f120m;
        d3.i.e("<this>", n);
        if (d3.i.a(n.getName().b(), "removeAt") && d3.i.a(W1.a.o(n), A3.I.f98h.f86b)) {
            n5 = n5.a();
        }
        d3.i.d("if (superDescriptor.isRe…iginal else subDescriptor", n5);
        return F(n5, n);
    }

    public static N H(InterfaceC0783K interfaceC0783K, String str, InterfaceC0222b interfaceC0222b) {
        N n;
        Iterator it = ((Iterable) interfaceC0222b.e(Q3.f.e(str))).iterator();
        do {
            n = null;
            if (!it.hasNext()) {
                break;
            }
            N n5 = (N) it.next();
            if (n5.w0().size() == 0) {
                i4.l lVar = i4.d.f7169a;
                AbstractC0468v abstractC0468v = n5.f9491i;
                if (abstractC0468v == null ? false : lVar.b(abstractC0468v, interfaceC0783K.e())) {
                    n = n5;
                }
            }
        } while (n == null);
        return n;
    }

    public static N J(InterfaceC0783K interfaceC0783K, InterfaceC0222b interfaceC0222b) {
        N n;
        AbstractC0468v abstractC0468v;
        String strB = interfaceC0783K.getName().b();
        d3.i.d("name.asString()", strB);
        Iterator it = ((Iterable) interfaceC0222b.e(Q3.f.e(A3.y.b(strB)))).iterator();
        do {
            n = null;
            if (!it.hasNext()) {
                break;
            }
            N n5 = (N) it.next();
            if (n5.w0().size() == 1 && (abstractC0468v = n5.f9491i) != null) {
                Q3.f fVar = AbstractC0732i.f8454e;
                if (AbstractC0732i.D(abstractC0468v, o3.m.f8509d)) {
                    i4.l lVar = i4.d.f7169a;
                    List listW0 = n5.w0();
                    d3.i.d("descriptor.valueParameters", listW0);
                    if (lVar.a(((V) R2.m.b1(listW0)).e(), interfaceC0783K.e())) {
                        n = n5;
                    }
                }
            }
        } while (n == null);
        return n;
    }

    public static boolean M(N n, InterfaceC0816s interfaceC0816s) {
        String strN = W1.a.n(n, 2);
        InterfaceC0816s interfaceC0816sA = interfaceC0816s.a();
        d3.i.d("builtinWithErasedParameters.original", interfaceC0816sA);
        return d3.i.a(strN, W1.a.n(interfaceC0816sA, 2)) && !F(n, interfaceC0816s);
    }

    public static final ArrayList v(q qVar, Q3.f fVar) {
        Collection collectionF = ((InterfaceC0020c) qVar.f554e.a()).f(fVar);
        ArrayList arrayList = new ArrayList(R2.o.C0(collectionF));
        Iterator it = collectionF.iterator();
        while (it.hasNext()) {
            arrayList.add(qVar.t((x3.x) it.next()));
        }
        return arrayList;
    }

    public static final ArrayList w(q qVar, Q3.f fVar) {
        LinkedHashSet linkedHashSetK = qVar.K(fVar);
        ArrayList arrayList = new ArrayList();
        for (Object obj : linkedHashSetK) {
            N n = (N) obj;
            d3.i.e("<this>", n);
            if (i3.x.R(n) == null && C0008g.a(n) == null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final void A(Set set, AbstractCollection abstractCollection, q4.h hVar, InterfaceC0222b interfaceC0222b) {
        N nJ;
        M mG;
        C3.d dVar;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            InterfaceC0783K interfaceC0783K = (InterfaceC0783K) it.next();
            if (E(interfaceC0783K, interfaceC0222b)) {
                N nI = I(interfaceC0783K, interfaceC0222b);
                d3.i.b(nI);
                if (interfaceC0783K.T()) {
                    nJ = J(interfaceC0783K, interfaceC0222b);
                    d3.i.b(nJ);
                } else {
                    nJ = null;
                }
                if (nJ != null) {
                    nJ.i();
                    nI.i();
                }
                InterfaceC0802e interfaceC0802e = this.n;
                d3.i.e("ownerDescriptor", interfaceC0802e);
                C3.d dVar2 = new C3.d(interfaceC0802e, C0844g.f9041a, nI.i(), nI.c(), nJ != null, interfaceC0783K.getName(), nI.m(), null, 1, false, null);
                AbstractC0468v abstractC0468v = nI.f9491i;
                d3.i.b(abstractC0468v);
                R2.u uVar = R2.u.f2325c;
                dVar2.Y0(abstractC0468v, uVar, p(), null, uVar);
                L lF = Z0.j.F(dVar2, nI.t(), false, nI.m());
                lF.n = nI;
                lF.T0(dVar2.e());
                if (nJ != null) {
                    List listW0 = nJ.w0();
                    d3.i.d("setterMethod.valueParameters", listW0);
                    V v4 = (V) R2.m.O0(listW0);
                    if (v4 == null) {
                        throw new AssertionError("No parameter found for " + nJ);
                    }
                    mG = Z0.j.G(dVar2, nJ.t(), v4.t(), false, nJ.c(), nJ.m());
                    mG.n = nJ;
                } else {
                    mG = null;
                }
                dVar2.V0(lF, mG, null, null);
                dVar = dVar2;
            } else {
                dVar = null;
            }
            if (dVar != null) {
                abstractCollection.add(dVar);
                if (hVar != null) {
                    hVar.add(interfaceC0783K);
                    return;
                }
                return;
            }
        }
    }

    public final Collection B() {
        boolean z4 = this.f624p;
        InterfaceC0802e interfaceC0802e = this.n;
        if (z4) {
            Collection collectionJ = interfaceC0802e.H().j();
            d3.i.d("ownerDescriptor.typeConstructor.supertypes", collectionJ);
            return collectionJ;
        }
        ((i4.l) ((D3.a) this.f551b.f499d).f487u).getClass();
        d3.i.e("classDescriptor", interfaceC0802e);
        Collection collectionJ2 = interfaceC0802e.H().j();
        d3.i.d("classDescriptor.typeConstructor.supertypes", collectionJ2);
        return collectionJ2;
    }

    public final boolean E(InterfaceC0783K interfaceC0783K, InterfaceC0222b interfaceC0222b) {
        if (AbstractC0420a.S(interfaceC0783K)) {
            return false;
        }
        N nI = I(interfaceC0783K, interfaceC0222b);
        N nJ = J(interfaceC0783K, interfaceC0222b);
        if (nI == null) {
            return false;
        }
        if (interfaceC0783K.T()) {
            return nJ != null && nJ.i() == nI.i();
        }
        return true;
    }

    public final N I(InterfaceC0783K interfaceC0783K, InterfaceC0222b interfaceC0222b) {
        Q3.f fVar;
        L lR = interfaceC0783K.r();
        String strB = null;
        L l5 = lR != null ? (L) i3.x.R(lR) : null;
        if (l5 != null) {
            AbstractC0732i.z(l5);
            InterfaceC0800c interfaceC0800cB = X3.f.b(X3.f.k(l5), C0007f.f122g);
            if (interfaceC0800cB != null && (fVar = (Q3.f) AbstractC0009h.f129a.get(X3.f.g(interfaceC0800cB))) != null) {
                strB = fVar.b();
            }
        }
        if (strB != null && !i3.x.g0(this.n, l5)) {
            return H(interfaceC0783K, strB, interfaceC0222b);
        }
        String strB2 = interfaceC0783K.getName().b();
        d3.i.d("name.asString()", strB2);
        return H(interfaceC0783K, A3.y.a(strB2), interfaceC0222b);
    }

    public final LinkedHashSet K(Q3.f fVar) {
        Collection collectionB = B();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = collectionB.iterator();
        while (it.hasNext()) {
            R2.s.E0(linkedHashSet, ((AbstractC0468v) it.next()).q0().d(fVar, z3.b.f9732g));
        }
        return linkedHashSet;
    }

    public final Set L(Q3.f fVar) {
        Collection collectionB = B();
        ArrayList arrayList = new ArrayList();
        Iterator it = collectionB.iterator();
        while (it.hasNext()) {
            Collection collectionG = ((AbstractC0468v) it.next()).q0().g(fVar, z3.b.f9732g);
            ArrayList arrayList2 = new ArrayList(R2.o.C0(collectionG));
            Iterator it2 = collectionG.iterator();
            while (it2.hasNext()) {
                arrayList2.add((InterfaceC0783K) it2.next());
            }
            R2.s.E0(arrayList, arrayList2);
        }
        return R2.m.j1(arrayList);
    }

    public final boolean N(N n) {
        Collection collectionZ0;
        int i5 = 0;
        Q3.f name = n.getName();
        d3.i.d("function.name", name);
        String strB = name.b();
        d3.i.d("name.asString()", strB);
        Q3.c cVar = A3.y.f163a;
        if (s4.h.s(strB, "get") || s4.h.s(strB, "is")) {
            Q3.f fVarB0 = AbstractC0420a.b0(name, "get", null, 12);
            if (fVarB0 == null) {
                fVarB0 = AbstractC0420a.b0(name, "is", null, 8);
            }
            collectionZ0 = R2.n.z0(fVarB0);
        } else if (s4.h.s(strB, "set")) {
            collectionZ0 = R2.i.m0(new Q3.f[]{AbstractC0420a.b0(name, "set", null, 4), AbstractC0420a.b0(name, "set", "is", 4)});
        } else {
            collectionZ0 = (List) AbstractC0009h.f130b.get(name);
            if (collectionZ0 == null) {
                collectionZ0 = R2.u.f2325c;
            }
        }
        if (!collectionZ0.isEmpty()) {
            Iterator it = collectionZ0.iterator();
            while (it.hasNext()) {
                Set<InterfaceC0783K> setL = L((Q3.f) it.next());
                if (!setL.isEmpty()) {
                    for (InterfaceC0783K interfaceC0783K : setL) {
                        if (E(interfaceC0783K, new p(n, i5, this))) {
                            if (!interfaceC0783K.T()) {
                                String strB2 = n.getName().b();
                                d3.i.d("function.name.asString()", strB2);
                                if (!s4.h.s(strB2, "set")) {
                                }
                            }
                            return false;
                        }
                    }
                }
            }
        }
        A3.n nVar = A3.I.f92a;
        Q3.f name2 = n.getName();
        d3.i.d("name", name2);
        Q3.f fVar = (Q3.f) A3.I.f102l.get(name2);
        if (fVar != null) {
            LinkedHashSet linkedHashSetK = K(fVar);
            ArrayList arrayList = new ArrayList();
            for (Object obj : linkedHashSetK) {
                N n5 = (N) obj;
                d3.i.e("<this>", n5);
                if (i3.x.R(n5) != null) {
                    arrayList.add(obj);
                }
            }
            if (!arrayList.isEmpty()) {
                InterfaceC0815r interfaceC0815rE0 = n.e0();
                interfaceC0815rE0.A(fVar);
                interfaceC0815rE0.O();
                interfaceC0815rE0.l();
                InterfaceC0816s interfaceC0816sJ = interfaceC0815rE0.j();
                d3.i.b(interfaceC0816sJ);
                N n6 = (N) interfaceC0816sJ;
                if (!arrayList.isEmpty()) {
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        if (G((N) it2.next(), n6)) {
                            return false;
                        }
                    }
                }
            }
        }
        int i6 = C0008g.f128m;
        Q3.f name3 = n.getName();
        d3.i.d("name", name3);
        if (C0008g.b(name3)) {
            Q3.f name4 = n.getName();
            d3.i.d("name", name4);
            LinkedHashSet linkedHashSetK2 = K(name4);
            ArrayList arrayList2 = new ArrayList();
            Iterator it3 = linkedHashSetK2.iterator();
            while (it3.hasNext()) {
                InterfaceC0816s interfaceC0816sA = C0008g.a((N) it3.next());
                if (interfaceC0816sA != null) {
                    arrayList2.add(interfaceC0816sA);
                }
            }
            if (!arrayList2.isEmpty()) {
                Iterator it4 = arrayList2.iterator();
                while (it4.hasNext()) {
                    if (M(n, (InterfaceC0816s) it4.next())) {
                        return false;
                    }
                }
            }
        }
        N nD = D(n);
        if (nD != null) {
            Q3.f name5 = n.getName();
            d3.i.d("name", name5);
            LinkedHashSet<N> linkedHashSetK3 = K(name5);
            if (!linkedHashSetK3.isEmpty()) {
                for (N n7 : linkedHashSetK3) {
                    if (n7.h() && F(nD, n7)) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    public final void O(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        d3.i.e("<this>", ((D3.a) this.f551b.f499d).n);
        d3.i.e("scopeOwner", this.n);
    }

    @Override // a4.p, a4.q
    public final InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        g4.j jVar;
        InterfaceC0802e interfaceC0802e;
        d3.i.e("name", fVar);
        O(fVar, bVar);
        q qVar = (q) this.f552c;
        return (qVar == null || (jVar = qVar.f629u) == null || (interfaceC0802e = (InterfaceC0802e) jVar.e(fVar)) == null) ? (InterfaceC0804g) this.f629u.e(fVar) : interfaceC0802e;
    }

    @Override // E3.C, a4.p, a4.o
    public final Collection d(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        O(fVar, bVar);
        return super.d(fVar, bVar);
    }

    @Override // E3.C, a4.p, a4.o
    public final Collection g(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        O(fVar, bVar);
        return super.g(fVar, bVar);
    }

    @Override // E3.C
    public final Set h(a4.f fVar, a4.l lVar) {
        d3.i.e("kindFilter", fVar);
        return R2.B.S((Set) this.f626r.a(), ((Map) this.f628t.a()).keySet());
    }

    @Override // E3.C
    public final Set i(a4.f fVar, a4.l lVar) {
        d3.i.e("kindFilter", fVar);
        InterfaceC0802e interfaceC0802e = this.n;
        Collection collectionJ = interfaceC0802e.H().j();
        d3.i.d("ownerDescriptor.typeConstructor.supertypes", collectionJ);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = collectionJ.iterator();
        while (it.hasNext()) {
            R2.s.E0(linkedHashSet, ((AbstractC0468v) it.next()).q0().a());
        }
        g4.i iVar = this.f554e;
        linkedHashSet.addAll(((InterfaceC0020c) iVar.a()).e());
        linkedHashSet.addAll(((InterfaceC0020c) iVar.a()).b());
        linkedHashSet.addAll(h(fVar, lVar));
        D3.e eVar = this.f551b;
        linkedHashSet.addAll(((Y3.a) ((D3.a) eVar.f499d).f490x).e(eVar, interfaceC0802e));
        return linkedHashSet;
    }

    @Override // E3.C
    public final void j(Q3.f fVar, ArrayList arrayList) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        d3.i.e("name", fVar);
        boolean zE = this.f623o.e();
        InterfaceC0802e interfaceC0802e = this.n;
        D3.e eVar = this.f551b;
        if (zE) {
            g4.i iVar = this.f554e;
            if (((InterfaceC0020c) iVar.a()).a(fVar) != null) {
                if (arrayList.isEmpty()) {
                    C0909A c0909aA = ((InterfaceC0020c) iVar.a()).a(fVar);
                    d3.i.b(c0909aA);
                    D3.c cVarG0 = W1.a.g0(eVar, c0909aA);
                    Q3.f fVarB = c0909aA.b();
                    D3.a aVar = (D3.a) eVar.f499d;
                    C3.f fVarF1 = C3.f.f1(interfaceC0802e, cVarG0, fVarB, aVar.f477j.c(c0909aA), true);
                    F3.a aVarN = L2.b.N(2, false, false, null, 6);
                    AbstractC0468v abstractC0468vK = ((com.google.firebase.messaging.p) eVar.f502h).K(c0909aA.e(), aVarN);
                    C0890w c0890wP = p();
                    R2.u uVar = R2.u.f2325c;
                    fVarF1.e1(null, c0890wP, uVar, uVar, uVar, abstractC0468vK, 3, AbstractC0811n.f8813e, null);
                    fVarF1.g1(false, false);
                    aVar.f474g.getClass();
                    arrayList.add(fVarF1);
                } else {
                    Iterator it = arrayList.iterator();
                    while (it.hasNext()) {
                        if (((N) it.next()).w0().isEmpty()) {
                            break;
                        }
                    }
                    C0909A c0909aA2 = ((InterfaceC0020c) iVar.a()).a(fVar);
                    d3.i.b(c0909aA2);
                    D3.c cVarG02 = W1.a.g0(eVar, c0909aA2);
                    Q3.f fVarB2 = c0909aA2.b();
                    D3.a aVar2 = (D3.a) eVar.f499d;
                    C3.f fVarF12 = C3.f.f1(interfaceC0802e, cVarG02, fVarB2, aVar2.f477j.c(c0909aA2), true);
                    F3.a aVarN2 = L2.b.N(2, false, false, null, 6);
                    AbstractC0468v abstractC0468vK2 = ((com.google.firebase.messaging.p) eVar.f502h).K(c0909aA2.e(), aVarN2);
                    C0890w c0890wP2 = p();
                    R2.u uVar2 = R2.u.f2325c;
                    fVarF12.e1(null, c0890wP2, uVar2, uVar2, uVar2, abstractC0468vK2, 3, AbstractC0811n.f8813e, null);
                    fVarF12.g1(false, false);
                    aVar2.f474g.getClass();
                    arrayList.add(fVarF12);
                }
            }
        }
        ((Y3.a) ((D3.a) eVar.f499d).f490x).b(eVar, interfaceC0802e, fVar, arrayList);
    }

    @Override // E3.C
    public final InterfaceC0020c k() {
        return new C0018a(this.f623o, k.f609e);
    }

    @Override // E3.C
    public final void m(LinkedHashSet linkedHashSet, Q3.f fVar) {
        d3.i.e("name", fVar);
        LinkedHashSet linkedHashSetK = K(fVar);
        A3.n nVar = A3.I.f92a;
        if (!A3.I.f101k.contains(fVar)) {
            int i5 = C0008g.f128m;
            if (!C0008g.b(fVar)) {
                if (!linkedHashSetK.isEmpty()) {
                    Iterator it = linkedHashSetK.iterator();
                    while (it.hasNext()) {
                        if (((InterfaceC0816s) it.next()).h()) {
                        }
                    }
                }
                ArrayList arrayList = new ArrayList();
                for (Object obj : linkedHashSetK) {
                    if (N((N) obj)) {
                        arrayList.add(obj);
                    }
                }
                y(linkedHashSet, fVar, arrayList, false);
                return;
            }
        }
        q4.h hVar = new q4.h();
        LinkedHashSet linkedHashSetS0 = i3.x.S0(fVar, linkedHashSetK, R2.u.f2325c, this.n, d4.k.f6550a, ((i4.l) ((D3.a) this.f551b.f499d).f487u).f7188d);
        z(fVar, linkedHashSet, linkedHashSetS0, linkedHashSet, new l(1, this, 0));
        z(fVar, linkedHashSet, linkedHashSetS0, hVar, new l(1, this, 1));
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : linkedHashSetK) {
            if (N((N) obj2)) {
                arrayList2.add(obj2);
            }
        }
        y(linkedHashSet, fVar, R2.m.Y0(arrayList2, hVar), true);
    }

    @Override // E3.C
    public final void n(Q3.f fVar, ArrayList arrayList) {
        Set setJ1;
        x3.x xVar;
        d3.i.e("name", fVar);
        boolean zIsAnnotation = this.f623o.f9666a.isAnnotation();
        D3.e eVar = this.f551b;
        if (zIsAnnotation && (xVar = (x3.x) R2.m.c1(((InterfaceC0020c) this.f554e.a()).f(fVar))) != null) {
            C3.g gVarZ0 = C3.g.Z0(this.n, W1.a.g0(eVar, xVar), L2.b.O(xVar.d()), false, xVar.b(), ((D3.a) eVar.f499d).f477j.c(xVar), false);
            L lZ = Z0.j.z(gVarZ0, C0844g.f9041a);
            gVarZ0.V0(lZ, null, null, null);
            d3.i.e("<this>", eVar);
            AbstractC0468v abstractC0468vL = C.l(xVar, new D3.e((D3.a) eVar.f499d, new D3.f(eVar, gVarZ0, xVar, 0), (Q2.c) eVar.f));
            R2.u uVar = R2.u.f2325c;
            gVarZ0.Y0(abstractC0468vL, uVar, p(), null, uVar);
            lZ.T0(abstractC0468vL);
            arrayList.add(gVarZ0);
        }
        Set setL = L(fVar);
        if (setL.isEmpty()) {
            return;
        }
        q4.h hVar = new q4.h();
        q4.h hVar2 = new q4.h();
        A(setL, arrayList, hVar, new m(this, 0));
        if (hVar.isEmpty()) {
            setJ1 = R2.m.j1(setL);
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Object obj : setL) {
                if (!hVar.contains(obj)) {
                    linkedHashSet.add(obj);
                }
            }
            setJ1 = linkedHashSet;
        }
        A(setJ1, hVar2, null, new m(this, 1));
        LinkedHashSet linkedHashSetS = R2.B.S(setL, hVar2);
        D3.a aVar = (D3.a) eVar.f499d;
        arrayList.addAll(i3.x.S0(fVar, linkedHashSetS, arrayList, this.n, aVar.f, ((i4.l) aVar.f487u).f7188d));
    }

    @Override // E3.C
    public final Set o(a4.f fVar) {
        d3.i.e("kindFilter", fVar);
        if (this.f623o.f9666a.isAnnotation()) {
            return a();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(((InterfaceC0020c) this.f554e.a()).d());
        Collection collectionJ = this.n.H().j();
        d3.i.d("ownerDescriptor.typeConstructor.supertypes", collectionJ);
        Iterator it = collectionJ.iterator();
        while (it.hasNext()) {
            R2.s.E0(linkedHashSet, ((AbstractC0468v) it.next()).q0().b());
        }
        return linkedHashSet;
    }

    @Override // E3.C
    public final C0890w p() {
        InterfaceC0802e interfaceC0802e = this.n;
        if (interfaceC0802e != null) {
            int i5 = T3.e.f2720a;
            return interfaceC0802e.H0();
        }
        T3.e.a(0);
        throw null;
    }

    @Override // E3.C
    public final InterfaceC0807j q() {
        return this.n;
    }

    @Override // E3.C
    public final boolean r(C3.f fVar) {
        if (this.f623o.f9666a.isAnnotation()) {
            return false;
        }
        return N(fVar);
    }

    @Override // E3.C
    public final y s(x3.x xVar, ArrayList arrayList, AbstractC0468v abstractC0468v, List list) {
        d3.i.e("method", xVar);
        d3.i.e("valueParameters", list);
        ((D3.a) this.f551b.f499d).f473e.getClass();
        if (this.n == null) {
            B3.j.a(1);
            throw null;
        }
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return new y(abstractC0468v, list, arrayList, listEmptyList);
        }
        L2.b.a(3);
        throw null;
    }

    @Override // E3.C
    public final String toString() {
        return "Lazy Java member scope for " + this.f623o.b();
    }

    public final void x(ArrayList arrayList, C3.b bVar, int i5, x3.x xVar, AbstractC0468v abstractC0468v, AbstractC0468v abstractC0468v2) {
        AbstractC0919f tVar;
        q qVar;
        Z zH;
        C0843f c0843f = C0844g.f9041a;
        Q3.f fVarB = xVar.b();
        if (abstractC0468v == null) {
            X.a(2);
            throw null;
        }
        Z zH2 = X.h(abstractC0468v, false);
        Object defaultValue = xVar.f9674a.getDefaultValue();
        if (defaultValue != null) {
            Class<?> cls = defaultValue.getClass();
            List list = AbstractC0917d.f9651a;
            tVar = Enum.class.isAssignableFrom(cls) ? new x3.t(null, (Enum) defaultValue) : defaultValue instanceof Annotation ? new x3.g(null, (Annotation) defaultValue) : defaultValue instanceof Object[] ? new x3.h(null, (Object[]) defaultValue) : defaultValue instanceof Class ? new x3.p(null, (Class) defaultValue) : new x3.v(null, defaultValue);
        } else {
            tVar = null;
        }
        boolean z4 = tVar != null;
        if (abstractC0468v2 != null) {
            zH = X.h(abstractC0468v2, false);
            qVar = this;
        } else {
            qVar = this;
            zH = null;
        }
        arrayList.add(new V(bVar, null, i5, c0843f, fVarB, zH2, z4, false, false, zH, ((D3.a) qVar.f551b.f499d).f477j.c(xVar)));
    }

    public final void y(LinkedHashSet linkedHashSet, Q3.f fVar, ArrayList arrayList, boolean z4) {
        D3.a aVar = (D3.a) this.f551b.f499d;
        LinkedHashSet<N> linkedHashSetS0 = i3.x.S0(fVar, arrayList, linkedHashSet, this.n, aVar.f, ((i4.l) aVar.f487u).f7188d);
        if (!z4) {
            linkedHashSet.addAll(linkedHashSetS0);
            return;
        }
        ArrayList arrayListY0 = R2.m.Y0(linkedHashSet, linkedHashSetS0);
        ArrayList arrayList2 = new ArrayList(R2.o.C0(linkedHashSetS0));
        for (N nC : linkedHashSetS0) {
            N n = (N) i3.x.S(nC);
            if (n != null) {
                nC = C(nC, n, arrayListY0);
            }
            arrayList2.add(nC);
        }
        linkedHashSet.addAll(arrayList2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void z(Q3.f fVar, LinkedHashSet linkedHashSet, LinkedHashSet linkedHashSet2, AbstractSet abstractSet, InterfaceC0222b interfaceC0222b) {
        N nC;
        Object next;
        N n;
        N nC2;
        Iterator it = linkedHashSet2.iterator();
        while (it.hasNext()) {
            N n5 = (N) it.next();
            N n6 = (N) i3.x.R(n5);
            N n7 = null;
            if (n6 == null) {
                nC = null;
            } else {
                String strN = i3.x.N(n6);
                d3.i.b(strN);
                Iterator it2 = ((Collection) interfaceC0222b.e(Q3.f.e(strN))).iterator();
                while (it2.hasNext()) {
                    InterfaceC0815r interfaceC0815rE0 = ((N) it2.next()).e0();
                    interfaceC0815rE0.A(fVar);
                    interfaceC0815rE0.O();
                    interfaceC0815rE0.l();
                    InterfaceC0816s interfaceC0816sJ = interfaceC0815rE0.j();
                    d3.i.b(interfaceC0816sJ);
                    N n8 = (N) interfaceC0816sJ;
                    if (G(n6, n8)) {
                        nC = C(n8, n6, linkedHashSet);
                        break;
                    }
                }
                nC = null;
            }
            q4.k.b(abstractSet, nC);
            InterfaceC0816s interfaceC0816sA = C0008g.a(n5);
            if (interfaceC0816sA == 0) {
                nC2 = null;
            } else {
                Q3.f name = ((AbstractC0883o) interfaceC0816sA).getName();
                d3.i.d("overridden.name", name);
                Iterator it3 = ((Iterable) interfaceC0222b.e(name)).iterator();
                while (true) {
                    if (!it3.hasNext()) {
                        next = null;
                        break;
                    } else {
                        next = it3.next();
                        if (M((N) next, interfaceC0816sA)) {
                            break;
                        }
                    }
                }
                N n9 = (N) next;
                if (n9 != null) {
                    InterfaceC0815r interfaceC0815rE02 = n9.e0();
                    List listW0 = interfaceC0816sA.w0();
                    d3.i.d("overridden.valueParameters", listW0);
                    ArrayList arrayList = new ArrayList(R2.o.C0(listW0));
                    Iterator it4 = listW0.iterator();
                    while (it4.hasNext()) {
                        arrayList.add(((V) it4.next()).e());
                    }
                    List listW02 = n9.w0();
                    d3.i.d("override.valueParameters", listW02);
                    interfaceC0815rE02.o(i3.x.v(arrayList, listW02, interfaceC0816sA));
                    interfaceC0815rE02.O();
                    interfaceC0815rE02.l();
                    interfaceC0815rE02.D();
                    n = (N) interfaceC0815rE02.j();
                } else {
                    n = null;
                }
                if (n != null) {
                    if (!N(n)) {
                        n = null;
                    }
                    if (n != null) {
                        nC2 = C(n, interfaceC0816sA, linkedHashSet);
                    }
                }
            }
            q4.k.b(abstractSet, nC2);
            if (n5.h()) {
                Q3.f name2 = n5.getName();
                d3.i.d("descriptor.name", name2);
                Iterator it5 = ((Iterable) interfaceC0222b.e(name2)).iterator();
                while (true) {
                    if (!it5.hasNext()) {
                        break;
                    }
                    N nD = D((N) it5.next());
                    if (nD == null || !F(nD, n5)) {
                        nD = null;
                    }
                    if (nD != null) {
                        n7 = nD;
                        break;
                    }
                }
            }
            q4.k.b(abstractSet, n7);
        }
    }
}
