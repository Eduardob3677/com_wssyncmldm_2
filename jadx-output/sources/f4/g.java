package f4;

import L3.C0061j;
import c3.InterfaceC0222b;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import h4.AbstractC0468v;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;

/* loaded from: classes.dex */
public final class g extends p {

    /* renamed from: g, reason: collision with root package name */
    public final i4.f f6844g;

    /* renamed from: h, reason: collision with root package name */
    public final g4.i f6845h;

    /* renamed from: i, reason: collision with root package name */
    public final g4.i f6846i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ i f6847j;

    public g(i iVar, i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        this.f6847j = iVar;
        G4 g42 = iVar.n;
        C0061j c0061j = iVar.f6850g;
        List list = c0061j.f1700s;
        d3.i.d("classProto.functionList", list);
        List list2 = c0061j.f1701t;
        d3.i.d("classProto.propertyList", list2);
        List list3 = c0061j.f1702u;
        d3.i.d("classProto.typeAliasList", list3);
        List list4 = c0061j.f1695m;
        d3.i.d("classProto.nestedClassNameList", list4);
        N3.f fVar2 = (N3.f) iVar.n.f5378d;
        ArrayList arrayList = new ArrayList(R2.o.C0(list4));
        Iterator it = list4.iterator();
        while (it.hasNext()) {
            arrayList.add(L2.b.v(fVar2, ((Number) it.next()).intValue()));
        }
        super(g42, list, list2, list3, new d(arrayList, 0));
        this.f6844g = fVar;
        d4.i iVar2 = (d4.i) g42.f5377c;
        g4.o oVar = iVar2.f6529a;
        e eVar = new e(this, 0);
        g4.l lVar = (g4.l) oVar;
        lVar.getClass();
        this.f6845h = new g4.i(lVar, eVar);
        g4.o oVar2 = iVar2.f6529a;
        e eVar2 = new e(this, 1);
        g4.l lVar2 = (g4.l) oVar2;
        lVar2.getClass();
        this.f6846i = new g4.i(lVar2, eVar2);
    }

    @Override // f4.p, a4.p, a4.q
    public final InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        InterfaceC0802e interfaceC0802e;
        d3.i.e("name", fVar);
        s(fVar, bVar);
        com.google.firebase.messaging.p pVar = this.f6847j.f6860r;
        return (pVar == null || (interfaceC0802e = (InterfaceC0802e) ((g4.j) pVar.f6259e).e(fVar)) == null) ? super.c(fVar, bVar) : interfaceC0802e;
    }

    @Override // f4.p, a4.p, a4.o
    public final Collection d(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        s(fVar, bVar);
        return super.d(fVar, bVar);
    }

    @Override // a4.p, a4.q
    public final Collection f(a4.f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        return (Collection) this.f6845h.a();
    }

    @Override // f4.p, a4.p, a4.o
    public final Collection g(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        s(fVar, bVar);
        return super.g(fVar, bVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.util.Collection] */
    /* JADX WARN: Type inference failed for: r0v4, types: [R2.u] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.util.ArrayList] */
    @Override // f4.p
    public final void h(ArrayList arrayList, InterfaceC0222b interfaceC0222b) {
        ?? arrayList2;
        d3.i.e("nameFilter", interfaceC0222b);
        com.google.firebase.messaging.p pVar = this.f6847j.f6860r;
        if (pVar != null) {
            Set<Q3.f> setKeySet = ((LinkedHashMap) pVar.f6258d).keySet();
            arrayList2 = new ArrayList();
            for (Q3.f fVar : setKeySet) {
                d3.i.e("name", fVar);
                InterfaceC0802e interfaceC0802e = (InterfaceC0802e) ((g4.j) pVar.f6259e).e(fVar);
                if (interfaceC0802e != null) {
                    arrayList2.add(interfaceC0802e);
                }
            }
        } else {
            arrayList2 = 0;
        }
        if (arrayList2 == 0) {
            arrayList2 = R2.u.f2325c;
        }
        arrayList.addAll(arrayList2);
    }

    @Override // f4.p
    public final void j(Q3.f fVar, ArrayList arrayList) {
        d3.i.e("name", fVar);
        ArrayList arrayList2 = new ArrayList();
        Iterator it = ((Collection) this.f6846i.a()).iterator();
        while (it.hasNext()) {
            arrayList2.addAll(((AbstractC0468v) it.next()).q0().d(fVar, z3.b.f9731e));
        }
        G4 g42 = this.f6884b;
        arrayList.addAll(((d4.i) g42.f5377c).n.e(fVar, this.f6847j));
        ArrayList arrayList3 = new ArrayList(arrayList);
        ((i4.l) ((d4.i) g42.f5377c).f6543q).f7188d.h(fVar, arrayList2, arrayList3, this.f6847j, new f(arrayList, 0));
    }

    @Override // f4.p
    public final void k(Q3.f fVar, ArrayList arrayList) {
        d3.i.e("name", fVar);
        ArrayList arrayList2 = new ArrayList();
        Iterator it = ((Collection) this.f6846i.a()).iterator();
        while (it.hasNext()) {
            arrayList2.addAll(((AbstractC0468v) it.next()).q0().g(fVar, z3.b.f9731e));
        }
        ArrayList arrayList3 = new ArrayList(arrayList);
        ((i4.l) ((d4.i) this.f6884b.f5377c).f6543q).f7188d.h(fVar, arrayList2, arrayList3, this.f6847j, new f(arrayList, 0));
    }

    @Override // f4.p
    public final Q3.b l(Q3.f fVar) {
        d3.i.e("name", fVar);
        return this.f6847j.f6853j.d(fVar);
    }

    @Override // f4.p
    public final Set n() {
        List listJ = this.f6847j.f6858p.j();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = listJ.iterator();
        while (it.hasNext()) {
            Set setE = ((AbstractC0468v) it.next()).q0().e();
            if (setE == null) {
                return null;
            }
            R2.s.E0(linkedHashSet, setE);
        }
        return linkedHashSet;
    }

    @Override // f4.p
    public final Set o() {
        i iVar = this.f6847j;
        List listJ = iVar.f6858p.j();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = listJ.iterator();
        while (it.hasNext()) {
            R2.s.E0(linkedHashSet, ((AbstractC0468v) it.next()).q0().a());
        }
        linkedHashSet.addAll(((d4.i) this.f6884b.f5377c).n.c(iVar));
        return linkedHashSet;
    }

    @Override // f4.p
    public final Set p() {
        List listJ = this.f6847j.f6858p.j();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = listJ.iterator();
        while (it.hasNext()) {
            R2.s.E0(linkedHashSet, ((AbstractC0468v) it.next()).q0().b());
        }
        return linkedHashSet;
    }

    @Override // f4.p
    public final boolean r(s sVar) {
        return ((d4.i) this.f6884b.f5377c).f6541o.d(this.f6847j, sVar);
    }

    public final void s(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        d3.i.e("<this>", ((d4.i) this.f6884b.f5377c).f6536i);
        d3.i.e("scopeOwner", this.f6847j);
    }
}
