package r3;

import c3.InterfaceC0222b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* renamed from: r3.F, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0778F implements InterfaceC0779G {

    /* renamed from: a, reason: collision with root package name */
    public final Collection f8784a;

    public C0778F(ArrayList arrayList) {
        this.f8784a = arrayList;
    }

    @Override // r3.InterfaceC0779G
    public final boolean a(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        Collection collection = this.f8784a;
        if ((collection instanceof Collection) && collection.isEmpty()) {
            return true;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (d3.i.a(((u3.E) ((InterfaceC0775C) it.next())).f9353g, cVar)) {
                return false;
            }
        }
        return true;
    }

    @Override // r3.InterfaceC0776D
    public final List b(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        ArrayList arrayList = new ArrayList();
        for (Object obj : this.f8784a) {
            if (d3.i.a(((u3.E) ((InterfaceC0775C) obj)).f9353g, cVar)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // r3.InterfaceC0779G
    public final void c(Q3.c cVar, ArrayList arrayList) {
        d3.i.e("fqName", cVar);
        for (Object obj : this.f8784a) {
            if (d3.i.a(((u3.E) ((InterfaceC0775C) obj)).f9353g, cVar)) {
                arrayList.add(obj);
            }
        }
    }

    @Override // r3.InterfaceC0776D
    public final Collection o(Q3.c cVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("fqName", cVar);
        d3.i.e("nameFilter", interfaceC0222b);
        return r4.m.n(r4.m.i(r4.m.l(R2.m.G0(this.f8784a), C0814q.f), new C0777E(cVar, 0)));
    }
}
