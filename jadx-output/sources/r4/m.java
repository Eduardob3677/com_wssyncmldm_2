package r4;

import c3.InterfaceC0222b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class m extends n {
    public static int h(k kVar) {
        Iterator it = kVar.iterator();
        int i5 = 0;
        while (it.hasNext()) {
            it.next();
            i5++;
            if (i5 < 0) {
                throw new ArithmeticException("Count overflow has happened.");
            }
        }
        return i5;
    }

    public static f i(k kVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("predicate", interfaceC0222b);
        return new f(kVar, true, interfaceC0222b);
    }

    public static final h j(k kVar) {
        o oVar = o.f8861e;
        if (!(kVar instanceof r)) {
            return new h(kVar, o.f, oVar);
        }
        r rVar = (r) kVar;
        return new h(rVar.f8867a, rVar.f8868b, oVar);
    }

    public static k k(Object obj, InterfaceC0222b interfaceC0222b) {
        return obj == null ? d.f8838a : new j(new B3.k(28, obj), interfaceC0222b);
    }

    public static r l(k kVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("transform", interfaceC0222b);
        return new r(kVar, interfaceC0222b);
    }

    public static f m(k kVar, InterfaceC0222b interfaceC0222b) {
        return new f(new r(kVar, interfaceC0222b), false, o.f8862g);
    }

    public static List n(k kVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = kVar.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return R2.n.A0(arrayList);
    }
}
