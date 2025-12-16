package u3;

import c3.InterfaceC0222b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import p.AbstractC0735a;
import r3.InterfaceC0776D;
import r3.InterfaceC0779G;

/* renamed from: u3.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0882n implements InterfaceC0779G {

    /* renamed from: a, reason: collision with root package name */
    public final List f9448a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9449b;

    public C0882n(String str, List list) {
        d3.i.e("debugName", str);
        this.f9448a = list;
        this.f9449b = str;
        list.size();
        R2.m.j1(list).size();
    }

    @Override // r3.InterfaceC0779G
    public final boolean a(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        List list = this.f9448a;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (!AbstractC0735a.k((InterfaceC0776D) it.next(), cVar)) {
                return false;
            }
        }
        return true;
    }

    @Override // r3.InterfaceC0776D
    public final List b(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        ArrayList arrayList = new ArrayList();
        Iterator it = this.f9448a.iterator();
        while (it.hasNext()) {
            AbstractC0735a.d((InterfaceC0776D) it.next(), cVar, arrayList);
        }
        return R2.m.g1(arrayList);
    }

    @Override // r3.InterfaceC0779G
    public final void c(Q3.c cVar, ArrayList arrayList) {
        d3.i.e("fqName", cVar);
        Iterator it = this.f9448a.iterator();
        while (it.hasNext()) {
            AbstractC0735a.d((InterfaceC0776D) it.next(), cVar, arrayList);
        }
    }

    @Override // r3.InterfaceC0776D
    public final Collection o(Q3.c cVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("fqName", cVar);
        d3.i.e("nameFilter", interfaceC0222b);
        HashSet hashSet = new HashSet();
        Iterator it = this.f9448a.iterator();
        while (it.hasNext()) {
            hashSet.addAll(((InterfaceC0776D) it.next()).o(cVar, interfaceC0222b));
        }
        return hashSet;
    }

    public final String toString() {
        return this.f9449b;
    }
}
