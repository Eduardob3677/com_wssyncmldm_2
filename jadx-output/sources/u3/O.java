package u3;

import c3.InterfaceC0222b;
import com.idm.fotaagent.database.sqlite.database.IDMDatabaseInterface;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import r3.InterfaceC0821x;

/* loaded from: classes.dex */
public final class O extends a4.p {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0821x f9401b;

    /* renamed from: c, reason: collision with root package name */
    public final Q3.c f9402c;

    public O(C0867C c0867c, Q3.c cVar) {
        d3.i.e("moduleDescriptor", c0867c);
        d3.i.e("fqName", cVar);
        this.f9401b = c0867c;
        this.f9402c = cVar;
    }

    @Override // a4.p, a4.o
    public final Set e() {
        return R2.w.f2327c;
    }

    @Override // a4.p, a4.q
    public final Collection f(a4.f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        boolean zA = fVar.a(a4.f.f3101h);
        R2.u uVar = R2.u.f2325c;
        if (!zA) {
            return uVar;
        }
        Q3.c cVar = this.f9402c;
        if (cVar.d()) {
            if (fVar.f3112a.contains(a4.c.f3094a)) {
                return uVar;
            }
        }
        InterfaceC0821x interfaceC0821x = this.f9401b;
        Collection collectionO = interfaceC0821x.o(cVar, interfaceC0222b);
        ArrayList arrayList = new ArrayList(collectionO.size());
        Iterator it = collectionO.iterator();
        while (it.hasNext()) {
            Q3.f fVarF = ((Q3.c) it.next()).f();
            d3.i.d("subFqName.shortName()", fVarF);
            if (((Boolean) interfaceC0222b.e(fVarF)).booleanValue()) {
                y yVar = null;
                if (!fVarF.f2243d) {
                    y yVar2 = (y) interfaceC0821x.a0(cVar.c(fVarF));
                    if (!((Boolean) Z0.j.N(yVar2.f9515h, y.f9512j[1])).booleanValue()) {
                        yVar = yVar2;
                    }
                }
                q4.k.b(arrayList, yVar);
            }
        }
        return arrayList;
    }

    public final String toString() {
        return "subpackages of " + this.f9402c + IDMDatabaseInterface.IDM_SQL_FROM + this.f9401b;
    }
}
