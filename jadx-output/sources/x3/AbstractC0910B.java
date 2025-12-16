package x3;

import java.lang.reflect.Type;
import java.util.Iterator;

/* renamed from: x3.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0910B implements H3.d {
    public abstract Type a();

    public final boolean equals(Object obj) {
        return (obj instanceof AbstractC0910B) && d3.i.a(a(), ((AbstractC0910B) obj).a());
    }

    public final int hashCode() {
        return a().hashCode();
    }

    public final String toString() {
        return getClass().getName() + ": " + a();
    }

    @Override // H3.b
    public C0918e v(Q3.c cVar) {
        Object next;
        d3.i.e("fqName", cVar);
        Iterator it = t().iterator();
        while (true) {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            if (d3.i.a(AbstractC0917d.a(L2.b.q(L2.b.k(((C0918e) next).f9654a))).b(), cVar)) {
                break;
            }
        }
        return (C0918e) next;
    }
}
