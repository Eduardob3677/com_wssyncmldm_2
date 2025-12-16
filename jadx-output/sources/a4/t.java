package a4;

import c3.InterfaceC0222b;
import h4.S;
import h4.V;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import r3.InterfaceC0788P;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;

/* loaded from: classes.dex */
public final class t implements o {

    /* renamed from: b, reason: collision with root package name */
    public final o f3136b;

    /* renamed from: c, reason: collision with root package name */
    public final V f3137c;

    /* renamed from: d, reason: collision with root package name */
    public HashMap f3138d;

    /* renamed from: e, reason: collision with root package name */
    public final Q2.h f3139e;

    public t(o oVar, V v4) {
        d3.i.e("workerScope", oVar);
        d3.i.e("givenSubstitutor", v4);
        this.f3136b = oVar;
        S sG = v4.g();
        d3.i.d("givenSubstitutor.substitution", sG);
        this.f3137c = V.e(L2.b.P(sG));
        this.f3139e = new Q2.h(new B3.k(9, this));
    }

    @Override // a4.o
    public final Set a() {
        return this.f3136b.a();
    }

    @Override // a4.o
    public final Set b() {
        return this.f3136b.b();
    }

    @Override // a4.q
    public final InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        InterfaceC0804g interfaceC0804gC = this.f3136b.c(fVar, bVar);
        if (interfaceC0804gC != null) {
            return (InterfaceC0804g) i(interfaceC0804gC);
        }
        return null;
    }

    @Override // a4.o
    public final Collection d(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return h(this.f3136b.d(fVar, bVar));
    }

    @Override // a4.o
    public final Set e() {
        return this.f3136b.e();
    }

    @Override // a4.q
    public final Collection f(f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        return (Collection) this.f3139e.getValue();
    }

    @Override // a4.o
    public final Collection g(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return h(this.f3136b.g(fVar, bVar));
    }

    public final Collection h(Collection collection) {
        if (this.f3137c.f7042a.e() || collection.isEmpty()) {
            return collection;
        }
        int size = collection.size();
        LinkedHashSet linkedHashSet = new LinkedHashSet(size >= 3 ? (size / 3) + size + 1 : 3);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(i((InterfaceC0807j) it.next()));
        }
        return linkedHashSet;
    }

    public final InterfaceC0807j i(InterfaceC0807j interfaceC0807j) {
        V v4 = this.f3137c;
        if (v4.f7042a.e()) {
            return interfaceC0807j;
        }
        if (this.f3138d == null) {
            this.f3138d = new HashMap();
        }
        HashMap map = this.f3138d;
        d3.i.b(map);
        Object objB = map.get(interfaceC0807j);
        if (objB == null) {
            if (!(interfaceC0807j instanceof InterfaceC0788P)) {
                throw new IllegalStateException(("Unknown descriptor in scope: " + interfaceC0807j).toString());
            }
            objB = ((InterfaceC0788P) interfaceC0807j).b(v4);
            if (objB == null) {
                throw new AssertionError("We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but " + interfaceC0807j + " substitution fails");
            }
            map.put(interfaceC0807j, objB);
        }
        return (InterfaceC0807j) objB;
    }
}
