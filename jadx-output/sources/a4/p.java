package a4;

import R2.u;
import c3.InterfaceC0222b;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import r3.InterfaceC0804g;
import u3.N;

/* loaded from: classes.dex */
public abstract class p implements o {
    @Override // a4.o
    public Set a() {
        Collection collectionF = f(f.f3108p, q4.b.f8695d);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : collectionF) {
            if (obj instanceof N) {
                Q3.f name = ((N) obj).getName();
                d3.i.d("it.name", name);
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override // a4.o
    public Set b() {
        Collection collectionF = f(f.f3109q, q4.b.f8695d);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Object obj : collectionF) {
            if (obj instanceof N) {
                Q3.f name = ((N) obj).getName();
                d3.i.d("it.name", name);
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override // a4.q
    public InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return null;
    }

    @Override // a4.o
    public Collection d(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return u.f2325c;
    }

    @Override // a4.o
    public Set e() {
        return null;
    }

    @Override // a4.q
    public Collection f(f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        return u.f2325c;
    }

    @Override // a4.o
    public Collection g(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return u.f2325c;
    }
}
