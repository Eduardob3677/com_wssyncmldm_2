package i4;

import f1.AbstractC0420a;
import h4.AbstractC0450c;
import h4.AbstractC0464q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.C0460m;
import h4.C0467u;
import h4.J;
import h4.N;
import h4.O;
import h4.X;
import h4.Z;
import i3.x;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import r3.InterfaceC0789Q;

/* loaded from: classes.dex */
public final class e implements b {

    /* renamed from: c, reason: collision with root package name */
    public static final e f7170c = new e();

    /* renamed from: d, reason: collision with root package name */
    public static final e f7171d = new e();

    /* JADX WARN: Multi-variable type inference failed */
    public static AbstractC0472z y(AbstractC0472z abstractC0472z) {
        AbstractC0468v abstractC0468vB;
        J jJ0 = abstractC0472z.J0();
        if (jJ0 instanceof U3.c) {
            U3.c cVar = (U3.c) jJ0;
            N n = cVar.f2750a;
            if (n.a() != 2) {
                n = null;
            }
            if (n != null && (abstractC0468vB = n.b()) != null) {
                zH = abstractC0468vB.M0();
            }
            Z z4 = zH;
            if (cVar.f2751b == null) {
                Collection collectionJ = cVar.j();
                ArrayList arrayList = new ArrayList(R2.o.C0(collectionJ));
                Iterator it = collectionJ.iterator();
                while (it.hasNext()) {
                    arrayList.add(((AbstractC0468v) it.next()).M0());
                }
                N n5 = cVar.f2750a;
                d3.i.e("projection", n5);
                cVar.f2751b = new i(n5, new f4.d(arrayList, 1), null, null, 8);
            }
            i iVar = cVar.f2751b;
            d3.i.b(iVar);
            return new h(1, iVar, z4, abstractC0472z.I0(), abstractC0472z.K0(), 32);
        }
        if (!(jJ0 instanceof C0467u) || !abstractC0472z.K0()) {
            return abstractC0472z;
        }
        C0467u c0467u = (C0467u) jJ0;
        LinkedHashSet linkedHashSet = c0467u.f7076b;
        ArrayList arrayList2 = new ArrayList(R2.o.C0(linkedHashSet));
        Iterator it2 = linkedHashSet.iterator();
        boolean z5 = false;
        while (it2.hasNext()) {
            arrayList2.add(AbstractC0420a.W((AbstractC0468v) it2.next()));
            z5 = true;
        }
        if (z5) {
            AbstractC0468v abstractC0468v = c0467u.f7075a;
            zH = abstractC0468v != null ? X.h(abstractC0468v, true) : null;
            arrayList2.isEmpty();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet(arrayList2);
            linkedHashSet2.hashCode();
            C0467u c0467u2 = new C0467u(linkedHashSet2);
            c0467u2.f7075a = zH;
            zH = c0467u2;
        }
        if (zH != null) {
            c0467u = zH;
        }
        return c0467u.b();
    }

    @Override // i4.b
    public Set A(k4.d dVar) {
        return x.K0(this, dVar);
    }

    @Override // i4.b
    public J A0(k4.d dVar) {
        return x.i1(dVar);
    }

    @Override // i4.b
    public boolean B(k4.f fVar) {
        return x.n0(fVar);
    }

    @Override // i4.b
    public O B0(k4.c cVar) {
        return x.n(cVar);
    }

    @Override // i4.b
    public void C(k4.d dVar) {
        x.B0(dVar);
    }

    @Override // i4.b
    public boolean D(k4.d dVar) {
        d3.i.e("<this>", dVar);
        AbstractC0472z abstractC0472zL = x.l(dVar);
        return (abstractC0472zL != null ? x.h(this, abstractC0472zL) : null) != null;
    }

    @Override // i4.b
    public boolean E(k4.c cVar) {
        d3.i.e("<this>", cVar);
        return x.v0(u0(cVar)) && !x.w0(cVar);
    }

    @Override // i4.b
    public Z F(k4.b bVar) {
        return x.E0(bVar);
    }

    @Override // i4.b
    public k4.d I(k4.d dVar) {
        AbstractC0472z abstractC0472zH0;
        d3.i.e("<this>", dVar);
        C0460m c0460mI = x.i(dVar);
        return (c0460mI == null || (abstractC0472zH0 = x.H0(c0460mI)) == null) ? dVar : abstractC0472zH0;
    }

    @Override // i4.b
    public int K(k4.c cVar) {
        return x.f(cVar);
    }

    @Override // i4.b
    public int L(k4.f fVar) {
        return x.J0(fVar);
    }

    @Override // i4.b
    public boolean O(k4.d dVar) {
        d3.i.e("<this>", dVar);
        return x.l0(x.i1(dVar));
    }

    @Override // i4.b
    public boolean P(k4.d dVar) {
        d3.i.e("<this>", dVar);
        return x.q0(x.i1(dVar));
    }

    @Override // i4.b
    public N Q(U3.b bVar) {
        return x.L0(bVar);
    }

    @Override // i4.b
    public boolean R(k4.f fVar) {
        return x.q0(fVar);
    }

    @Override // i4.b
    public boolean S(InterfaceC0789Q interfaceC0789Q, k4.f fVar) {
        return x.h0(interfaceC0789Q, fVar);
    }

    @Override // i4.b
    public int T(k4.b bVar) {
        return x.p(bVar);
    }

    @Override // i4.b
    public Z U(ArrayList arrayList) {
        AbstractC0472z abstractC0472z;
        int size = arrayList.size();
        if (size == 0) {
            throw new IllegalStateException("Expected some types".toString());
        }
        if (size == 1) {
            return (Z) R2.m.b1(arrayList);
        }
        ArrayList arrayList2 = new ArrayList(R2.o.C0(arrayList));
        Iterator it = arrayList.iterator();
        boolean z4 = false;
        boolean z5 = false;
        while (it.hasNext()) {
            Z z6 = (Z) it.next();
            z4 = z4 || AbstractC0450c.i(z6);
            if (z6 instanceof AbstractC0472z) {
                abstractC0472z = (AbstractC0472z) z6;
            } else {
                if (!(z6 instanceof AbstractC0464q)) {
                    throw new A0.c();
                }
                d3.i.e("<this>", z6);
                abstractC0472z = ((AbstractC0464q) z6).f7069d;
                z5 = true;
            }
            arrayList2.add(abstractC0472z);
        }
        if (z4) {
            return j4.i.c(j4.h.f7644z, arrayList.toString());
        }
        t tVar = t.f7196a;
        if (!z5) {
            return tVar.b(arrayList2);
        }
        ArrayList arrayList3 = new ArrayList(R2.o.C0(arrayList));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList3.add(AbstractC0450c.y((Z) it2.next()));
        }
        return C0451d.j(tVar.b(arrayList2), tVar.b(arrayList3));
    }

    @Override // i4.b
    public InterfaceC0789Q W(k4.f fVar, int i5) {
        return x.T(fVar, i5);
    }

    @Override // i4.b
    public N X(k4.c cVar, int i5) {
        return x.C(cVar, i5);
    }

    @Override // i4.b
    public AbstractC0472z Z(k4.c cVar) {
        return x.l(cVar);
    }

    @Override // i4.b
    public AbstractC0472z a(C0460m c0460m) {
        return x.H0(c0460m);
    }

    @Override // i4.b
    public void b(k4.c cVar) {
        d3.i.e("<this>", cVar);
        x.j(cVar);
    }

    @Override // i4.b
    public AbstractC0472z b0(AbstractC0464q abstractC0464q) {
        return x.D0(abstractC0464q);
    }

    @Override // i4.b
    public boolean c(N n) {
        return x.z0(n);
    }

    @Override // i4.b
    public boolean c0(k4.f fVar) {
        return x.l0(fVar);
    }

    @Override // i4.b
    public void d(k4.d dVar, k4.f fVar) {
    }

    @Override // i4.b
    public int d0(InterfaceC0789Q interfaceC0789Q) {
        d3.i.e("$receiver", interfaceC0789Q);
        int iA = interfaceC0789Q.A();
        B.f.E(iA, "this.variance");
        return x.u(iA);
    }

    @Override // i4.b
    public boolean e(k4.c cVar) {
        d3.i.e("$receiver", cVar);
        return cVar instanceof I3.g;
    }

    @Override // i4.b
    public AbstractC0464q e0(k4.c cVar) {
        return x.j(cVar);
    }

    @Override // i4.b
    public int f(k4.e eVar) {
        d3.i.e("<this>", eVar);
        if (eVar instanceof k4.d) {
            return x.f((k4.c) eVar);
        }
        if (eVar instanceof k4.a) {
            return ((k4.a) eVar).size();
        }
        throw new IllegalStateException(("unknown type argument list type: " + eVar + ", " + d3.q.f6516a.b(eVar.getClass())).toString());
    }

    @Override // i4.b
    public AbstractC0472z f0(k4.d dVar, boolean z4) {
        return x.l1(dVar, z4);
    }

    @Override // i4.b
    public AbstractC0472z g(k4.c cVar) {
        AbstractC0472z abstractC0472zK1;
        d3.i.e("<this>", cVar);
        AbstractC0464q abstractC0464qJ = x.j(cVar);
        if (abstractC0464qJ != null && (abstractC0472zK1 = x.k1(abstractC0464qJ)) != null) {
            return abstractC0472zK1;
        }
        AbstractC0472z abstractC0472zL = x.l(cVar);
        d3.i.b(abstractC0472zL);
        return abstractC0472zL;
    }

    @Override // i4.b
    public boolean g0(k4.f fVar) {
        return x.v0(fVar);
    }

    @Override // i4.b
    public i h(k4.b bVar) {
        return x.j1(bVar);
    }

    @Override // i4.b
    public AbstractC0472z h0(AbstractC0464q abstractC0464q) {
        return x.k1(abstractC0464q);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // i4.b
    public N i(k4.e eVar, int i5) {
        d3.i.e("<this>", eVar);
        if (eVar instanceof k4.d) {
            return x.C((k4.c) eVar, i5);
        }
        if (eVar instanceof k4.a) {
            E e5 = ((k4.a) eVar).get(i5);
            d3.i.d("get(index)", e5);
            return (N) e5;
        }
        throw new IllegalStateException(("unknown type argument list type: " + eVar + ", " + d3.q.f6516a.b(eVar.getClass())).toString());
    }

    @Override // i4.b
    public int i0(N n) {
        return x.e0(n);
    }

    @Override // i4.b
    public boolean j(Z z4) {
        d3.i.e("<this>", z4);
        return x.u0(o(z4)) != x.u0(g(z4));
    }

    @Override // i4.b
    public AbstractC0472z k(k4.d dVar) {
        return x.o(dVar);
    }

    @Override // i4.b
    public boolean l(k4.f fVar) {
        return x.k0(fVar);
    }

    @Override // i4.b
    public boolean l0(k4.b bVar) {
        return x.y0(bVar);
    }

    @Override // i4.b
    public Z m(k4.d dVar, k4.d dVar2) {
        return x.x(this, dVar, dVar2);
    }

    @Override // i4.b
    public boolean m0(k4.d dVar) {
        return x.u0(dVar);
    }

    @Override // i4.b
    public Z n(k4.c cVar) {
        return x.F0(cVar);
    }

    @Override // i4.b
    public boolean n0(k4.b bVar) {
        d3.i.e("$receiver", bVar);
        return bVar instanceof U3.a;
    }

    @Override // i4.b
    public AbstractC0472z o(k4.c cVar) {
        AbstractC0472z abstractC0472zD0;
        d3.i.e("<this>", cVar);
        AbstractC0464q abstractC0464qJ = x.j(cVar);
        if (abstractC0464qJ != null && (abstractC0472zD0 = x.D0(abstractC0464qJ)) != null) {
            return abstractC0472zD0;
        }
        AbstractC0472z abstractC0472zL = x.l(cVar);
        d3.i.b(abstractC0472zL);
        return abstractC0472zL;
    }

    @Override // i4.b
    public Collection o0(k4.f fVar) {
        return x.f1(fVar);
    }

    @Override // i4.b
    public k4.e p(k4.d dVar) {
        return x.g(dVar);
    }

    @Override // i4.b
    public C0460m p0(k4.d dVar) {
        return x.i(dVar);
    }

    @Override // i4.b
    public Z q(N n) {
        return x.b0(n);
    }

    @Override // i4.b
    public boolean q0(k4.c cVar) {
        d3.i.e("<this>", cVar);
        AbstractC0472z abstractC0472zL = x.l(cVar);
        return (abstractC0472zL != null ? x.i(abstractC0472zL) : null) != null;
    }

    public boolean r(k4.c cVar) {
        d3.i.e("<this>", cVar);
        return (cVar instanceof k4.d) && x.u0((k4.d) cVar);
    }

    @Override // i4.b
    public boolean r0(k4.f fVar) {
        return x.m0(fVar);
    }

    public k4.c s(k4.c cVar) {
        AbstractC0472z abstractC0472zL1;
        d3.i.e("<this>", cVar);
        AbstractC0472z abstractC0472zL = x.l(cVar);
        return (abstractC0472zL == null || (abstractC0472zL1 = x.l1(abstractC0472zL, true)) == null) ? cVar : abstractC0472zL1;
    }

    @Override // i4.b
    public boolean s0(k4.d dVar, k4.d dVar2) {
        return x.i0(dVar, dVar2);
    }

    @Override // i4.b
    public a t(k4.d dVar) {
        return x.e1(this, dVar);
    }

    @Override // i4.b
    public k4.c t0(k4.c cVar) {
        return x.m1(this, cVar);
    }

    public Z u(k4.c cVar) {
        Z zJ;
        d3.i.e("type", cVar);
        if (!(cVar instanceof AbstractC0468v)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        Z zM0 = ((AbstractC0468v) cVar).M0();
        if (zM0 instanceof AbstractC0472z) {
            zJ = y((AbstractC0472z) zM0);
        } else {
            if (!(zM0 instanceof AbstractC0464q)) {
                throw new A0.c();
            }
            AbstractC0464q abstractC0464q = (AbstractC0464q) zM0;
            AbstractC0472z abstractC0472z = abstractC0464q.f7069d;
            AbstractC0472z abstractC0472zY = y(abstractC0472z);
            AbstractC0472z abstractC0472z2 = abstractC0464q.f7070e;
            AbstractC0472z abstractC0472zY2 = y(abstractC0472z2);
            zJ = (abstractC0472zY == abstractC0472z && abstractC0472zY2 == abstractC0472z2) ? zM0 : C0451d.j(abstractC0472zY, abstractC0472zY2);
        }
        AbstractC0468v abstractC0468vE = AbstractC0450c.e(zM0);
        return AbstractC0450c.A(zJ, abstractC0468vE != null ? u(abstractC0468vE) : null);
    }

    @Override // i4.b
    public J u0(k4.c cVar) {
        d3.i.e("<this>", cVar);
        AbstractC0472z abstractC0472zL = x.l(cVar);
        if (abstractC0472zL == null) {
            abstractC0472zL = o(cVar);
        }
        return x.i1(abstractC0472zL);
    }

    @Override // i4.b
    public N v(k4.d dVar, int i5) {
        d3.i.e("<this>", dVar);
        if (i5 < 0 || i5 >= x.f(dVar)) {
            return null;
        }
        return x.C(dVar, i5);
    }

    @Override // i4.b
    public k4.b v0(k4.d dVar) {
        return x.h(this, dVar);
    }

    @Override // i4.b
    public boolean w(k4.d dVar) {
        return x.o0(dVar);
    }

    @Override // i4.b
    public void w0(k4.d dVar) {
        x.A0(dVar);
    }

    @Override // i4.b
    public boolean x(k4.f fVar) {
        return x.r0(fVar);
    }

    @Override // i4.b
    public boolean z0(k4.f fVar, k4.f fVar2) {
        return x.e(fVar, fVar2);
    }
}
