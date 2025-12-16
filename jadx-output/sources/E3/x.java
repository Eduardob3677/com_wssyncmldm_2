package E3;

import c3.InterfaceC0222b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;

/* loaded from: classes.dex */
public final class x extends H {
    public final x3.y n;

    /* renamed from: o, reason: collision with root package name */
    public final s f643o;

    /* renamed from: p, reason: collision with root package name */
    public final g4.h f644p;

    /* renamed from: q, reason: collision with root package name */
    public final g4.j f645q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(D3.e eVar, x3.y yVar, s sVar) {
        super(eVar, null);
        d3.i.e("jPackage", yVar);
        d3.i.e("ownerDescriptor", sVar);
        this.n = yVar;
        this.f643o = sVar;
        D3.a aVar = (D3.a) eVar.f499d;
        g4.o oVar = aVar.f469a;
        B3.c cVar = new B3.c(eVar, 4, this);
        g4.l lVar = (g4.l) oVar;
        lVar.getClass();
        this.f644p = new g4.h(lVar, cVar);
        this.f645q = ((g4.l) aVar.f469a).c(new p(this, 2, eVar));
    }

    @Override // a4.p, a4.q
    public final InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return v(fVar, null);
    }

    @Override // E3.C, a4.p, a4.q
    public final Collection f(a4.f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        if (!fVar.a(a4.f.f3105l | a4.f.f3099e)) {
            return R2.u.f2325c;
        }
        Iterable iterable = (Iterable) this.f553d.a();
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            InterfaceC0807j interfaceC0807j = (InterfaceC0807j) obj;
            if (interfaceC0807j instanceof InterfaceC0802e) {
                Q3.f name = ((InterfaceC0802e) interfaceC0807j).getName();
                d3.i.d("it.name", name);
                if (((Boolean) interfaceC0222b.e(name)).booleanValue()) {
                    arrayList.add(obj);
                }
            }
        }
        return arrayList;
    }

    @Override // E3.C, a4.p, a4.o
    public final Collection g(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return R2.u.f2325c;
    }

    @Override // E3.C
    public final Set h(a4.f fVar, a4.l lVar) {
        d3.i.e("kindFilter", fVar);
        if (!fVar.a(a4.f.f3099e)) {
            return R2.w.f2327c;
        }
        Set set = (Set) this.f644p.a();
        if (set == null) {
            this.n.getClass();
            return new LinkedHashSet();
        }
        HashSet hashSet = new HashSet();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            hashSet.add(Q3.f.e((String) it.next()));
        }
        return hashSet;
    }

    @Override // E3.C
    public final Set i(a4.f fVar, a4.l lVar) {
        d3.i.e("kindFilter", fVar);
        return R2.w.f2327c;
    }

    @Override // E3.C
    public final InterfaceC0020c k() {
        return C0019b.f575a;
    }

    @Override // E3.C
    public final void m(LinkedHashSet linkedHashSet, Q3.f fVar) {
        d3.i.e("name", fVar);
    }

    @Override // E3.C
    public final Set o(a4.f fVar) {
        d3.i.e("kindFilter", fVar);
        return R2.w.f2327c;
    }

    @Override // E3.C
    public final InterfaceC0807j q() {
        return this.f643o;
    }

    public final InterfaceC0802e v(Q3.f fVar, x3.o oVar) {
        Q3.f fVar2 = Q3.h.f2245a;
        d3.i.e("name", fVar);
        String strB = fVar.b();
        d3.i.d("name.asString()", strB);
        if (strB.length() <= 0 || fVar.f2243d) {
            return null;
        }
        Set set = (Set) this.f644p.a();
        if (oVar != null || set == null || set.contains(fVar.b())) {
            return (InterfaceC0802e) this.f645q.e(new t(fVar, oVar));
        }
        return null;
    }
}
