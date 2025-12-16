package i4;

import R2.u;
import c3.InterfaceC0223c;
import e.v;
import h4.AbstractC0450c;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.C0455h;
import h4.C0467u;
import h4.G;
import h4.J;
import h4.Z;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public static final t f7196a = new t();

    public static ArrayList a(AbstractCollection abstractCollection, InterfaceC0223c interfaceC0223c) {
        ArrayList arrayList = new ArrayList(abstractCollection);
        Iterator it = arrayList.iterator();
        d3.i.d("filteredTypes.iterator()", it);
        while (it.hasNext()) {
            AbstractC0472z abstractC0472z = (AbstractC0472z) it.next();
            if (!arrayList.isEmpty()) {
                Iterator it2 = arrayList.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    AbstractC0472z abstractC0472z2 = (AbstractC0472z) it2.next();
                    if (abstractC0472z2 != abstractC0472z) {
                        d3.i.d("lower", abstractC0472z2);
                        d3.i.d("upper", abstractC0472z);
                        if (((Boolean) interfaceC0223c.d(abstractC0472z2, abstractC0472z)).booleanValue()) {
                            it.remove();
                            break;
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v8, types: [java.util.Set] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11, types: [h4.G] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v9, types: [h4.G, java.lang.Object, n4.d] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v18, types: [h4.z] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8, types: [h4.v, h4.z, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v9 */
    public final AbstractC0472z b(ArrayList arrayList) {
        AbstractC0472z abstractC0472z;
        AbstractC0472z abstractC0472zB;
        arrayList.size();
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            AbstractC0472z abstractC0472z2 = (AbstractC0472z) it.next();
            if (abstractC0472z2.J0() instanceof C0467u) {
                Collection<AbstractC0468v> collectionJ = abstractC0472z2.J0().j();
                d3.i.d("type.constructor.supertypes", collectionJ);
                ArrayList arrayList3 = new ArrayList(R2.o.C0(collectionJ));
                for (AbstractC0468v abstractC0468v : collectionJ) {
                    d3.i.d("it", abstractC0468v);
                    AbstractC0472z abstractC0472zY = AbstractC0450c.y(abstractC0468v);
                    if (abstractC0472z2.K0()) {
                        abstractC0472zY = abstractC0472zY.N0(true);
                    }
                    arrayList3.add(abstractC0472zY);
                }
                arrayList2.addAll(arrayList3);
            } else {
                arrayList2.add(abstractC0472z2);
            }
        }
        r rVarA = r.f7191c;
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            rVarA = rVarA.a((Z) it2.next());
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it3 = arrayList2.iterator();
        while (it3.hasNext()) {
            AbstractC0472z abstractC0472zN0 = (AbstractC0472z) it3.next();
            if (rVarA == r.f) {
                if (abstractC0472zN0 instanceof h) {
                    h hVar = (h) abstractC0472zN0;
                    d3.i.e("<this>", hVar);
                    abstractC0472zN0 = new h(hVar.f7174d, hVar.f7175e, hVar.f, hVar.f7176g, hVar.f7177h, true);
                }
                d3.i.e("<this>", abstractC0472zN0);
                AbstractC0472z abstractC0472zP = C0451d.p(abstractC0472zN0, false);
                abstractC0472zN0 = (abstractC0472zP == null && (abstractC0472zP = AbstractC0450c.m(abstractC0472zN0)) == null) ? abstractC0472zN0.N0(false) : abstractC0472zP;
            }
            linkedHashSet.add(abstractC0472zN0);
        }
        ArrayList arrayList4 = new ArrayList(R2.o.C0(arrayList));
        Iterator it4 = arrayList.iterator();
        while (it4.hasNext()) {
            arrayList4.add(((AbstractC0472z) it4.next()).I0());
        }
        Iterator it5 = arrayList4.iterator();
        if (!it5.hasNext()) {
            throw new UnsupportedOperationException("Empty collection can't be reduced.");
        }
        ?? next = it5.next();
        while (true) {
            abstractC0472z = null;
            if (!it5.hasNext()) {
                break;
            }
            G g5 = (G) it5.next();
            next = (G) next;
            next.getClass();
            d3.i.e("other", g5);
            if (!next.isEmpty() || !g5.isEmpty()) {
                ArrayList arrayList5 = new ArrayList();
                Collection collectionValues = ((ConcurrentHashMap) G.f7019d.f6792c).values();
                d3.i.d("idPerType.values", collectionValues);
                Iterator it6 = collectionValues.iterator();
                while (it6.hasNext()) {
                    int iIntValue = ((Number) it6.next()).intValue();
                    C0455h c0455h = (C0455h) next.f8341c.get(iIntValue);
                    C0455h c0455h2 = (C0455h) g5.f8341c.get(iIntValue);
                    if (c0455h != null) {
                        if (!d3.i.a(c0455h2, c0455h)) {
                            c0455h = null;
                        }
                        c0455h2 = c0455h;
                    } else if (c0455h2 == null || !d3.i.a(c0455h, c0455h2)) {
                        c0455h2 = null;
                    }
                    q4.k.b(arrayList5, c0455h2);
                }
                next = v.j(arrayList5);
            }
        }
        G g6 = (G) next;
        if (linkedHashSet.size() == 1) {
            abstractC0472zB = (AbstractC0472z) R2.m.a1(linkedHashSet);
        } else {
            ArrayList arrayListA = a(linkedHashSet, new s(2, this, 0));
            arrayListA.isEmpty();
            if (!arrayListA.isEmpty()) {
                Iterator it7 = arrayListA.iterator();
                if (!it7.hasNext()) {
                    throw new UnsupportedOperationException("Empty collection can't be reduced.");
                }
                AbstractC0472z next2 = it7.next();
                while (it7.hasNext()) {
                    AbstractC0472z abstractC0472z3 = (AbstractC0472z) it7.next();
                    next2 = next2;
                    if (next2 != 0 && abstractC0472z3 != null) {
                        J jJ0 = next2.J0();
                        J jJ02 = abstractC0472z3.J0();
                        boolean z4 = jJ0 instanceof V3.m;
                        if (z4 && (jJ02 instanceof V3.m)) {
                            V3.m mVar = (V3.m) jJ0;
                            Set set = mVar.f2805c;
                            Set set2 = ((V3.m) jJ02).f2805c;
                            d3.i.e("<this>", set);
                            d3.i.e("other", set2);
                            Set setI1 = R2.m.i1(set);
                            R2.s.E0(setI1, set2);
                            V3.m mVar2 = new V3.m(mVar.f2803a, mVar.f2804b, setI1);
                            G.f7019d.getClass();
                            G g7 = G.f7020e;
                            d3.i.e("attributes", g7);
                            next2 = C0451d.s(j4.i.a(2, true, "unknown integer literal type"), g7, mVar2, u.f2325c, false);
                        } else if (z4) {
                            if (!((V3.m) jJ0).f2805c.contains(abstractC0472z3)) {
                                abstractC0472z3 = null;
                            }
                            next2 = abstractC0472z3;
                        } else if (!(jJ02 instanceof V3.m) || !((V3.m) jJ02).f2805c.contains(next2)) {
                        }
                    }
                    next2 = 0;
                }
                abstractC0472z = next2;
            }
            if (abstractC0472z != null) {
                abstractC0472zB = abstractC0472z;
            } else {
                k.f7186b.getClass();
                ArrayList arrayListA2 = a(arrayListA, new s(2, j.f7185b, 1));
                arrayListA2.isEmpty();
                abstractC0472zB = arrayListA2.size() < 2 ? (AbstractC0472z) R2.m.a1(arrayListA2) : new C0467u(linkedHashSet).b();
            }
        }
        return abstractC0472zB.P0(g6);
    }
}
