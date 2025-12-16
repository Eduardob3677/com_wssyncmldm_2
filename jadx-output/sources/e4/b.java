package e4;

import A3.D;
import Z0.j;
import c1.w;
import com.google.firebase.messaging.p;
import d3.i;
import d4.k;
import g4.o;
import h0.AbstractC0432c;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import o3.InterfaceC0726c;
import o3.n;
import r3.C0778F;
import r3.InterfaceC0776D;
import r3.InterfaceC0821x;
import t3.InterfaceC0858b;
import t3.InterfaceC0860d;

/* loaded from: classes.dex */
public final class b implements InterfaceC0726c {

    /* renamed from: b, reason: collision with root package name */
    public final d f6809b = new d(0);

    public InterfaceC0776D a(o oVar, InterfaceC0821x interfaceC0821x, Iterable iterable, InterfaceC0860d interfaceC0860d, InterfaceC0858b interfaceC0858b, boolean z4) {
        i.e("storageManager", oVar);
        i.e("builtInsModule", interfaceC0821x);
        i.e("classDescriptorFactories", iterable);
        i.e("platformDependentDeclarationFilter", interfaceC0860d);
        i.e("additionalClassPartsProvider", interfaceC0858b);
        Set<Q3.c> set = n.f8542o;
        i.e("packageFqNames", set);
        ArrayList arrayList = new ArrayList(R2.o.C0(set));
        for (Q3.c cVar : set) {
            a.f6808q.getClass();
            String strA = a.a(cVar);
            i.e("p0", strA);
            this.f6809b.getClass();
            InputStream inputStreamI = d.i(strA);
            if (inputStreamI == null) {
                throw new IllegalStateException(AbstractC0432c.i("Resource not found in classpath: ", strA));
            }
            arrayList.add(j.w(cVar, oVar, interfaceC0821x, inputStreamI));
        }
        C0778F c0778f = new C0778F(arrayList);
        p pVar = new p(oVar, interfaceC0821x);
        w wVar = new w(c0778f);
        a aVar = a.f6808q;
        d4.i iVar = new d4.i(oVar, interfaceC0821x, wVar, new D(interfaceC0821x, pVar, aVar), c0778f, k.f6550a, d4.j.f6548c, iterable, pVar, interfaceC0858b, interfaceC0860d, aVar.f5277a, null, new d(oVar), null, 851968);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            ((c) it.next()).R0(iVar);
        }
        return c0778f;
    }
}
