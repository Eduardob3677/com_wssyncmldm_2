package E3;

import f1.AbstractC0420a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import r3.InterfaceC0783K;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;

/* loaded from: classes.dex */
public final class G extends H {

    /* renamed from: p, reason: collision with root package name */
    public static final /* synthetic */ int f567p = 0;
    public final x3.o n;

    /* renamed from: o, reason: collision with root package name */
    public final C3.c f568o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public G(D3.e eVar, x3.o oVar, C3.c cVar) {
        super(eVar, null);
        d3.i.e("jClass", oVar);
        d3.i.e("ownerDescriptor", cVar);
        this.n = oVar;
        this.f568o = cVar;
    }

    public static InterfaceC0783K v(InterfaceC0783K interfaceC0783K) {
        if (interfaceC0783K.k0() != 2) {
            return interfaceC0783K;
        }
        Collection<InterfaceC0783K> collectionP = interfaceC0783K.p();
        d3.i.d("this.overriddenDescriptors", collectionP);
        ArrayList arrayList = new ArrayList(R2.o.C0(collectionP));
        for (InterfaceC0783K interfaceC0783K2 : collectionP) {
            d3.i.d("it", interfaceC0783K2);
            arrayList.add(v(interfaceC0783K2));
        }
        return (InterfaceC0783K) R2.m.b1(R2.m.g1(R2.m.i1(arrayList)));
    }

    @Override // a4.p, a4.q
    public final InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return null;
    }

    @Override // E3.C
    public final Set h(a4.f fVar, a4.l lVar) {
        d3.i.e("kindFilter", fVar);
        return R2.w.f2327c;
    }

    @Override // E3.C
    public final Set i(a4.f fVar, a4.l lVar) {
        d3.i.e("kindFilter", fVar);
        Set setI1 = R2.m.i1(((InterfaceC0020c) this.f554e.a()).e());
        C3.c cVar = this.f568o;
        G gV = i3.x.V(cVar);
        Set setA = gV != null ? gV.a() : null;
        if (setA == null) {
            setA = R2.w.f2327c;
        }
        setI1.addAll(setA);
        if (this.n.f9666a.isEnum()) {
            setI1.addAll(R2.n.y0(o3.n.f8532c, o3.n.f8530a));
        }
        D3.e eVar = this.f551b;
        setI1.addAll(((Y3.a) ((D3.a) eVar.f499d).f490x).g(eVar, cVar));
        return setI1;
    }

    @Override // E3.C
    public final void j(Q3.f fVar, ArrayList arrayList) {
        d3.i.e("name", fVar);
        D3.e eVar = this.f551b;
        ((Y3.a) ((D3.a) eVar.f499d).f490x).d(eVar, this.f568o, fVar, arrayList);
    }

    @Override // E3.C
    public final InterfaceC0020c k() {
        return new C0018a(this.n, k.f610g);
    }

    @Override // E3.C
    public final void m(LinkedHashSet linkedHashSet, Q3.f fVar) {
        d3.i.e("name", fVar);
        C3.c cVar = this.f568o;
        G gV = i3.x.V(cVar);
        Collection collectionJ1 = gV == null ? R2.w.f2327c : R2.m.j1(gV.d(fVar, z3.b.f9732g));
        D3.a aVar = (D3.a) this.f551b.f499d;
        linkedHashSet.addAll(i3.x.T0(fVar, collectionJ1, linkedHashSet, this.f568o, aVar.f, ((i4.l) aVar.f487u).f7188d));
        if (this.n.f9666a.isEnum()) {
            if (d3.i.a(fVar, o3.n.f8532c)) {
                linkedHashSet.add(Z0.j.C(cVar));
            } else if (d3.i.a(fVar, o3.n.f8530a)) {
                linkedHashSet.add(Z0.j.D(cVar));
            }
        }
    }

    @Override // E3.H, E3.C
    public final void n(Q3.f fVar, ArrayList arrayList) {
        d3.i.e("name", fVar);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        E e5 = new E(fVar, 0);
        C3.c cVar = this.f568o;
        q4.k.f(AbstractC0420a.V(cVar), D.f561c, new F(cVar, linkedHashSet, e5));
        boolean z4 = !arrayList.isEmpty();
        D3.e eVar = this.f551b;
        if (z4) {
            D3.a aVar = (D3.a) eVar.f499d;
            arrayList.addAll(i3.x.T0(fVar, linkedHashSet, arrayList, this.f568o, aVar.f, ((i4.l) aVar.f487u).f7188d));
        } else {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : linkedHashSet) {
                InterfaceC0783K interfaceC0783KV = v((InterfaceC0783K) obj);
                Object arrayList2 = linkedHashMap.get(interfaceC0783KV);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    linkedHashMap.put(interfaceC0783KV, arrayList2);
                }
                ((List) arrayList2).add(obj);
            }
            ArrayList arrayList3 = new ArrayList();
            Iterator it = linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                Collection collection = (Collection) ((Map.Entry) it.next()).getValue();
                D3.a aVar2 = (D3.a) eVar.f499d;
                R2.s.E0(arrayList3, i3.x.T0(fVar, collection, arrayList, this.f568o, aVar2.f, ((i4.l) aVar2.f487u).f7188d));
            }
            arrayList.addAll(arrayList3);
        }
        if (this.n.f9666a.isEnum() && d3.i.a(fVar, o3.n.f8531b)) {
            q4.k.b(arrayList, Z0.j.B(cVar));
        }
    }

    @Override // E3.C
    public final Set o(a4.f fVar) {
        d3.i.e("kindFilter", fVar);
        Set setI1 = R2.m.i1(((InterfaceC0020c) this.f554e.a()).d());
        k kVar = k.f611h;
        C3.c cVar = this.f568o;
        q4.k.f(AbstractC0420a.V(cVar), D.f561c, new F(cVar, setI1, kVar));
        if (this.n.f9666a.isEnum()) {
            setI1.add(o3.n.f8531b);
        }
        return setI1;
    }

    @Override // E3.C
    public final InterfaceC0807j q() {
        return this.f568o;
    }
}
