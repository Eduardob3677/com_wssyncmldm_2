package h4;

import com.google.android.gms.internal.p000firebaseauthapi.Z3;
import com.idm.fotaagent.database.room.data.entity.Property;
import f1.AbstractC0420a;
import i3.InterfaceC0494o;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import o3.AbstractC0732i;
import r3.InterfaceC0789Q;
import r3.InterfaceC0804g;
import r3.InterfaceC0805h;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import s3.C0844g;
import s3.C0849l;
import s3.InterfaceC0845h;

/* renamed from: h4.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0450c {
    /* JADX WARN: Multi-variable type inference failed */
    public static final Z A(Z z4, AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", z4);
        if (z4 instanceof Y) {
            return A(((Y) z4).c0(), abstractC0468v);
        }
        if (abstractC0468v == null || d3.i.a(abstractC0468v, z4)) {
            return z4;
        }
        if (z4 instanceof AbstractC0472z) {
            return new C((AbstractC0472z) z4, abstractC0468v);
        }
        if (z4 instanceof AbstractC0464q) {
            return new C0465s((AbstractC0464q) z4, abstractC0468v);
        }
        throw new A0.c();
    }

    public static /* synthetic */ void a(int i5) {
        String str = i5 != 4 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i5 != 4 ? 3 : 2];
        switch (i5) {
            case 1:
            case 6:
                objArr[0] = "originalSubstitution";
                break;
            case 2:
            case 7:
                objArr[0] = "newContainingDeclaration";
                break;
            case 3:
            case 8:
                objArr[0] = "result";
                break;
            case 4:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
                break;
            case 5:
            default:
                objArr[0] = "typeParameters";
                break;
        }
        if (i5 != 4) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/DescriptorSubstitutor";
        } else {
            objArr[1] = "substituteTypeParameters";
        }
        if (i5 != 4) {
            objArr[2] = "substituteTypeParameters";
        }
        String str2 = String.format(str, objArr);
        if (i5 == 4) {
            throw new IllegalStateException(str2);
        }
    }

    public static final AbstractC0472z b(AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", abstractC0468v);
        Z zM0 = abstractC0468v.M0();
        AbstractC0472z abstractC0472z = zM0 instanceof AbstractC0472z ? (AbstractC0472z) zM0 : null;
        if (abstractC0472z != null) {
            return abstractC0472z;
        }
        throw new IllegalStateException(("This is should be simple type: " + abstractC0468v).toString());
    }

    public static final AbstractC0468v c(ArrayList arrayList, List list, AbstractC0732i abstractC0732i) {
        AbstractC0468v abstractC0468vJ = V.e(new F(arrayList)).j(3, (AbstractC0468v) R2.m.M0(list));
        return abstractC0468vJ == null ? abstractC0732i.m() : abstractC0468vJ;
    }

    public static final k4.c d(k4.c cVar, HashSet hashSet) {
        k4.c cVarD;
        i4.e eVar = i4.e.f7171d;
        J jU0 = eVar.u0(cVar);
        if (!hashSet.add(jU0)) {
            return null;
        }
        InterfaceC0789Q interfaceC0789QC0 = i3.x.c0(jU0);
        if (interfaceC0789QC0 != null) {
            k4.c cVarI = AbstractC0420a.I(interfaceC0789QC0);
            cVarD = d(cVarI, hashSet);
            if (cVarD == null) {
                return null;
            }
            boolean z4 = i3.x.p0(eVar.u0(cVarI)) || ((cVarI instanceof k4.d) && i3.x.x0((k4.d) cVarI));
            if ((cVarD instanceof k4.d) && i3.x.x0((k4.d) cVarD) && i3.x.w0(cVar) && z4) {
                return eVar.s(cVarI);
            }
            if (!i3.x.w0(cVarD) && eVar.r(cVar)) {
                return eVar.s(cVarD);
            }
        } else {
            if (!i3.x.p0(jU0)) {
                return cVar;
            }
            AbstractC0472z abstractC0472zD0 = i3.x.d0(cVar);
            if (abstractC0472zD0 == null || (cVarD = d(abstractC0472zD0, hashSet)) == null) {
                return null;
            }
            if (i3.x.w0(cVar)) {
                return i3.x.w0(cVarD) ? cVar : ((cVarD instanceof k4.d) && i3.x.x0((k4.d) cVarD)) ? cVar : eVar.s(cVarD);
            }
        }
        return cVarD;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final AbstractC0468v e(AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", abstractC0468v);
        if (abstractC0468v instanceof Y) {
            return ((Y) abstractC0468v).p0();
        }
        return null;
    }

    public static boolean f(I i5, k4.d dVar, AbstractC0450c abstractC0450c) {
        d3.i.e("<this>", i5);
        d3.i.e("type", dVar);
        i4.b bVar = i5.f7027c;
        if ((bVar.O(dVar) && !bVar.m0(dVar)) || bVar.q0(dVar)) {
            return true;
        }
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
                AbstractC0450c abstractC0450c2 = bVar.m0(dVar2) ? H.f7022c : abstractC0450c;
                if (!(!d3.i.a(abstractC0450c2, r6))) {
                    abstractC0450c2 = null;
                }
                if (abstractC0450c2 == null) {
                    continue;
                } else {
                    Iterator it = bVar.o0(bVar.A0(dVar2)).iterator();
                    while (it.hasNext()) {
                        k4.d dVarX = abstractC0450c2.x(i5, (k4.c) it.next());
                        if ((bVar.O(dVarX) && !bVar.m0(dVarX)) || bVar.q0(dVarX)) {
                            i5.a();
                            return true;
                        }
                        arrayDeque.add(dVarX);
                    }
                }
            }
        }
        i5.a();
        return false;
    }

    public static final Z g(Z z4, AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", z4);
        d3.i.e("origin", abstractC0468v);
        return A(z4, e(abstractC0468v));
    }

    public static boolean h(I i5, k4.d dVar, k4.f fVar) {
        i4.b bVar = i5.f7027c;
        if (bVar.E(dVar)) {
            return true;
        }
        if (bVar.m0(dVar)) {
            return false;
        }
        if (i5.f7026b) {
            bVar.w0(dVar);
        }
        return bVar.z0(bVar.A0(dVar), fVar);
    }

    public static final boolean i(AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", abstractC0468v);
        Z zM0 = abstractC0468v.M0();
        return (zM0 instanceof j4.f) || ((zM0 instanceof AbstractC0464q) && (((AbstractC0464q) zM0).Q0() instanceof j4.f));
    }

    public static final boolean j(AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", abstractC0468v);
        return abstractC0468v.M0() instanceof AbstractC0464q;
    }

    public static final AbstractC0472z k(AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", abstractC0468v);
        Z zM0 = abstractC0468v.M0();
        if (zM0 instanceof AbstractC0464q) {
            return ((AbstractC0464q) zM0).f7069d;
        }
        if (zM0 instanceof AbstractC0472z) {
            return (AbstractC0472z) zM0;
        }
        throw new A0.c();
    }

    public static final Z l(Z z4, boolean z5) {
        d3.i.e("<this>", z4);
        C0460m c0460mP = C0451d.p(z4, z5);
        if (c0460mP != null) {
            return c0460mP;
        }
        AbstractC0472z abstractC0472zM = m(z4);
        return abstractC0472zM != null ? abstractC0472zM : z4.N0(false);
    }

    public static final AbstractC0472z m(AbstractC0468v abstractC0468v) {
        C0467u c0467u;
        J jJ0 = abstractC0468v.J0();
        C0467u c0467u2 = jJ0 instanceof C0467u ? (C0467u) jJ0 : null;
        if (c0467u2 == null) {
            return null;
        }
        LinkedHashSet<AbstractC0468v> linkedHashSet = c0467u2.f7076b;
        ArrayList arrayList = new ArrayList(R2.o.C0(linkedHashSet));
        boolean z4 = false;
        for (AbstractC0468v abstractC0468vL : linkedHashSet) {
            if (X.f(abstractC0468vL)) {
                abstractC0468vL = l(abstractC0468vL.M0(), false);
                z4 = true;
            }
            arrayList.add(abstractC0468vL);
        }
        if (z4) {
            AbstractC0468v abstractC0468vL2 = c0467u2.f7075a;
            if (abstractC0468vL2 == null) {
                abstractC0468vL2 = null;
            } else if (X.f(abstractC0468vL2)) {
                abstractC0468vL2 = l(abstractC0468vL2.M0(), false);
            }
            arrayList.isEmpty();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet(arrayList);
            linkedHashSet2.hashCode();
            c0467u = new C0467u(linkedHashSet2);
            c0467u.f7075a = abstractC0468vL2;
        } else {
            c0467u = null;
        }
        if (c0467u == null) {
            return null;
        }
        return c0467u.b();
    }

    public static final AbstractC0472z n(AbstractC0472z abstractC0472z, List list, G g5) {
        d3.i.e("<this>", abstractC0472z);
        d3.i.e("newArguments", list);
        d3.i.e("newAttributes", g5);
        if (list.isEmpty() && g5 == abstractC0472z.I0()) {
            return abstractC0472z;
        }
        if (list.isEmpty()) {
            return abstractC0472z.P0(g5);
        }
        if (!(abstractC0472z instanceof j4.f)) {
            return C0451d.r(g5, abstractC0472z.J0(), list, abstractC0472z.K0());
        }
        j4.f fVar = (j4.f) abstractC0472z;
        String[] strArr = fVar.f7613i;
        return new j4.f(fVar.f7609d, fVar.f7610e, fVar.f, list, fVar.f7612h, (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static AbstractC0468v o(AbstractC0468v abstractC0468v, List list, InterfaceC0845h interfaceC0845h, int i5) {
        if ((i5 & 2) != 0) {
            interfaceC0845h = abstractC0468v.t();
        }
        d3.i.e("<this>", abstractC0468v);
        d3.i.e("newAnnotations", interfaceC0845h);
        if ((list.isEmpty() || list == abstractC0468v.u0()) && interfaceC0845h == abstractC0468v.t()) {
            return abstractC0468v;
        }
        G gI0 = abstractC0468v.I0();
        if ((interfaceC0845h instanceof C0849l) && interfaceC0845h.isEmpty()) {
            interfaceC0845h = C0844g.f9041a;
        }
        G gQ = q(gI0, interfaceC0845h);
        Z zM0 = abstractC0468v.M0();
        if (zM0 instanceof AbstractC0464q) {
            AbstractC0464q abstractC0464q = (AbstractC0464q) zM0;
            return C0451d.j(n(abstractC0464q.f7069d, list, gQ), n(abstractC0464q.f7070e, list, gQ));
        }
        if (zM0 instanceof AbstractC0472z) {
            return n((AbstractC0472z) zM0, list, gQ);
        }
        throw new A0.c();
    }

    public static /* synthetic */ AbstractC0472z p(AbstractC0472z abstractC0472z, List list, G g5, int i5) {
        if ((i5 & 1) != 0) {
            list = abstractC0472z.u0();
        }
        if ((i5 & 2) != 0) {
            g5 = abstractC0472z.I0();
        }
        return n(abstractC0472z, list, g5);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final G q(G g5, InterfaceC0845h interfaceC0845h) {
        G gJ;
        d3.i.e("<this>", g5);
        if (AbstractC0456i.a(g5) == interfaceC0845h) {
            return g5;
        }
        InterfaceC0494o interfaceC0494o = AbstractC0456i.f7058a[0];
        Z3 z32 = AbstractC0456i.f7059b;
        z32.getClass();
        d3.i.e(Property.TABLE_NAME, interfaceC0494o);
        if (((C0455h) g5.f8341c.get(z32.f5498a)) != null) {
            if (g5.isEmpty()) {
                gJ = g5;
                if (gJ != null) {
                    g5 = gJ;
                }
            } else {
                n4.a aVar = g5.f8341c;
                ArrayList arrayList = new ArrayList();
                for (Object obj : aVar) {
                    if (!d3.i.a((C0455h) obj, r0)) {
                        arrayList.add(obj);
                    }
                }
                if (arrayList.size() != g5.f8341c.l()) {
                    G.f7019d.getClass();
                    gJ = e.v.j(arrayList);
                }
                if (gJ != null) {
                }
            }
        }
        if (!interfaceC0845h.iterator().hasNext() && interfaceC0845h.isEmpty()) {
            return g5;
        }
        C0455h c0455h = new C0455h(interfaceC0845h);
        return g5.f8341c.get(G.f7019d.p(d3.q.f6516a.b(C0455h.class))) != null ? g5 : g5.isEmpty() ? new G(AbstractC0420a.V(c0455h)) : e.v.j(R2.m.Z0(R2.m.g1(g5), c0455h));
    }

    public static final AbstractC0468v r(InterfaceC0789Q interfaceC0789Q) {
        d3.i.e("<this>", interfaceC0789Q);
        InterfaceC0807j interfaceC0807jL = interfaceC0789Q.l();
        d3.i.d("this.containingDeclaration", interfaceC0807jL);
        if (interfaceC0807jL instanceof InterfaceC0805h) {
            List listK = ((InterfaceC0805h) interfaceC0807jL).H().k();
            d3.i.d("descriptor.typeConstructor.parameters", listK);
            ArrayList arrayList = new ArrayList(R2.o.C0(listK));
            Iterator it = listK.iterator();
            while (it.hasNext()) {
                J jH = ((InterfaceC0789Q) it.next()).H();
                d3.i.d("it.typeConstructor", jH);
                arrayList.add(jH);
            }
            List upperBounds = interfaceC0789Q.getUpperBounds();
            d3.i.d("upperBounds", upperBounds);
            return c(arrayList, upperBounds, X3.f.e(interfaceC0789Q));
        }
        if (!(interfaceC0807jL instanceof InterfaceC0816s)) {
            throw new IllegalArgumentException("Unsupported descriptor type to build star projection type based on type parameters of it");
        }
        List listU = ((InterfaceC0816s) interfaceC0807jL).u();
        d3.i.d("descriptor.typeParameters", listU);
        ArrayList arrayList2 = new ArrayList(R2.o.C0(listU));
        Iterator it2 = listU.iterator();
        while (it2.hasNext()) {
            J jH2 = ((InterfaceC0789Q) it2.next()).H();
            d3.i.d("it.typeConstructor", jH2);
            arrayList2.add(jH2);
        }
        List upperBounds2 = interfaceC0789Q.getUpperBounds();
        d3.i.d("upperBounds", upperBounds2);
        return c(arrayList2, upperBounds2, X3.f.e(interfaceC0789Q));
    }

    public static boolean s(i4.b bVar, k4.d dVar, k4.d dVar2) {
        if (bVar.K(dVar) == bVar.K(dVar2) && bVar.m0(dVar) == bVar.m0(dVar2)) {
            if ((bVar.p0(dVar) == null) == (bVar.p0(dVar2) == null) && bVar.z0(bVar.A0(dVar), bVar.A0(dVar2))) {
                if (bVar.s0(dVar, dVar2)) {
                    return true;
                }
                int iK = bVar.K(dVar);
                for (int i5 = 0; i5 < iK; i5++) {
                    N nX = bVar.X(dVar, i5);
                    N nX2 = bVar.X(dVar2, i5);
                    if (bVar.c(nX) != bVar.c(nX2)) {
                        return false;
                    }
                    if (!bVar.c(nX) && (bVar.i0(nX) != bVar.i0(nX2) || !t(bVar, bVar.q(nX), bVar.q(nX2)))) {
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    public static boolean t(i4.b bVar, k4.c cVar, k4.c cVar2) {
        if (cVar == cVar2) {
            return true;
        }
        AbstractC0472z abstractC0472zZ = bVar.Z(cVar);
        AbstractC0472z abstractC0472zZ2 = bVar.Z(cVar2);
        if (abstractC0472zZ != null && abstractC0472zZ2 != null) {
            return s(bVar, abstractC0472zZ, abstractC0472zZ2);
        }
        AbstractC0464q abstractC0464qE0 = bVar.e0(cVar);
        AbstractC0464q abstractC0464qE02 = bVar.e0(cVar2);
        if (abstractC0464qE0 == null || abstractC0464qE02 == null) {
            return false;
        }
        return s(bVar, bVar.b0(abstractC0464qE0), bVar.b0(abstractC0464qE02)) && s(bVar, bVar.h0(abstractC0464qE0), bVar.h0(abstractC0464qE02));
    }

    public static V u(List list, S s5, InterfaceC0807j interfaceC0807j, List list2) {
        if (s5 == null) {
            a(1);
            throw null;
        }
        if (interfaceC0807j == null) {
            a(2);
            throw null;
        }
        if (list2 == null) {
            a(3);
            throw null;
        }
        V v4 = v(list, s5, interfaceC0807j, list2, null);
        if (v4 != null) {
            return v4;
        }
        throw new AssertionError("Substitution failed");
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static V v(List list, S s5, InterfaceC0807j interfaceC0807j, List list2, boolean[] zArr) {
        V v4;
        if (s5 == null) {
            a(6);
            throw null;
        }
        if (interfaceC0807j == null) {
            a(7);
            throw null;
        }
        if (list2 == null) {
            a(8);
            throw null;
        }
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        Iterator it = list.iterator();
        int i5 = 0;
        while (it.hasNext()) {
            InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) it.next();
            u3.T tS0 = u3.T.S0(interfaceC0807j, interfaceC0789Q.t(), interfaceC0789Q.n0(), interfaceC0789Q.A(), interfaceC0789Q.getName(), i5, interfaceC0789Q.K());
            map.put(interfaceC0789Q.H(), new O(tS0.q()));
            map2.put(interfaceC0789Q, tS0);
            list2.add(tS0);
            i5++;
        }
        K k5 = new K(map, false);
        V vF = V.f(s5, k5);
        V vF2 = V.f(new Q(s5), k5);
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            InterfaceC0789Q interfaceC0789Q2 = (InterfaceC0789Q) it2.next();
            u3.T t2 = (u3.T) map2.get(interfaceC0789Q2);
            for (AbstractC0468v abstractC0468v : interfaceC0789Q2.getUpperBounds()) {
                InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
                if (interfaceC0804gI instanceof InterfaceC0789Q) {
                    InterfaceC0789Q interfaceC0789Q3 = (InterfaceC0789Q) interfaceC0804gI;
                    d3.i.e("typeParameter", interfaceC0789Q3);
                    v4 = AbstractC0420a.L(interfaceC0789Q3, null, null) ? vF : vF2;
                }
                AbstractC0468v abstractC0468vJ = v4.j(3, abstractC0468v);
                if (abstractC0468vJ == null) {
                    return null;
                }
                if (abstractC0468vJ != abstractC0468v && zArr != null) {
                    zArr[0] = true;
                }
                if (t2.n) {
                    throw new IllegalStateException("Type parameter descriptor is already initialized: " + t2.U0());
                }
                if (!i(abstractC0468vJ)) {
                    t2.f9407m.add(abstractC0468vJ);
                }
            }
            if (t2.n) {
                throw new IllegalStateException("Type parameter descriptor is already initialized: " + t2.U0());
            }
            t2.n = true;
        }
        return vF;
    }

    public static final G w(InterfaceC0845h interfaceC0845h) {
        d3.i.e("<this>", interfaceC0845h);
        if (interfaceC0845h.isEmpty()) {
            G.f7019d.getClass();
            return G.f7020e;
        }
        e.v vVar = G.f7019d;
        List listV = AbstractC0420a.V(new C0455h(interfaceC0845h));
        vVar.getClass();
        return e.v.j(listV);
    }

    public static final AbstractC0472z y(AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", abstractC0468v);
        Z zM0 = abstractC0468v.M0();
        if (zM0 instanceof AbstractC0464q) {
            return ((AbstractC0464q) zM0).f7070e;
        }
        if (zM0 instanceof AbstractC0472z) {
            return (AbstractC0472z) zM0;
        }
        throw new A0.c();
    }

    public static final AbstractC0472z z(AbstractC0472z abstractC0472z, AbstractC0472z abstractC0472z2) {
        d3.i.e("<this>", abstractC0472z);
        d3.i.e("abbreviatedType", abstractC0472z2);
        return i(abstractC0472z) ? abstractC0472z : new C0448a(abstractC0472z, abstractC0472z2);
    }

    public abstract k4.d x(I i5, k4.c cVar);
}
