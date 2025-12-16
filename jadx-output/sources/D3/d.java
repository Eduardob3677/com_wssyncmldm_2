package D3;

import E3.s;
import R2.n;
import R2.u;
import c3.InterfaceC0222b;
import d3.i;
import g4.l;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import q4.k;
import r3.InterfaceC0779G;
import x3.y;

/* loaded from: classes.dex */
public final class d implements InterfaceC0779G {

    /* renamed from: a, reason: collision with root package name */
    public final e f496a;

    /* renamed from: b, reason: collision with root package name */
    public final g4.e f497b;

    public d(a aVar) {
        this.f496a = new e(aVar, b.f492b, new Q2.a(0));
        l lVar = (l) aVar.f469a;
        lVar.getClass();
        this.f497b = new g4.e(lVar, new ConcurrentHashMap(3, 1.0f, 2));
    }

    @Override // r3.InterfaceC0779G
    public final boolean a(Q3.c cVar) {
        i.e("fqName", cVar);
        ((a) this.f496a.f499d).f470b.getClass();
        return false;
    }

    @Override // r3.InterfaceC0776D
    public final List b(Q3.c cVar) {
        i.e("fqName", cVar);
        return n.z0(d(cVar));
    }

    @Override // r3.InterfaceC0779G
    public final void c(Q3.c cVar, ArrayList arrayList) {
        i.e("fqName", cVar);
        k.b(arrayList, d(cVar));
    }

    public final s d(Q3.c cVar) throws Throwable {
        ((a) this.f496a.f499d).f470b.getClass();
        i.e("fqName", cVar);
        B3.c cVar2 = new B3.c(this, 3, new y(cVar));
        g4.e eVar = this.f497b;
        eVar.getClass();
        Object objE = eVar.e(new g4.g(cVar, cVar2));
        if (objE != null) {
            return (s) objE;
        }
        g4.e.a(3);
        throw null;
    }

    @Override // r3.InterfaceC0776D
    public final Collection o(Q3.c cVar, InterfaceC0222b interfaceC0222b) {
        i.e("fqName", cVar);
        i.e("nameFilter", interfaceC0222b);
        List list = (List) d(cVar).f637m.a();
        return list == null ? u.f2325c : list;
    }

    public final String toString() {
        return "LazyJavaPackageFragmentProvider of module " + ((a) this.f496a.f499d).f481o;
    }
}
