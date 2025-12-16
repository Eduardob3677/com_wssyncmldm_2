package E3;

import A3.EnumC0002a;
import f1.AbstractC0420a;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.X;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import r3.InterfaceC0807j;
import s2.C0837c;
import u3.AbstractC0871c;
import x3.C0911C;

/* loaded from: classes.dex */
public final class I extends AbstractC0871c {

    /* renamed from: m, reason: collision with root package name */
    public final D3.e f569m;
    public final C0911C n;

    /* JADX WARN: Illegal instructions before constructor call */
    public I(D3.e eVar, C0911C c0911c, int i5, InterfaceC0807j interfaceC0807j) {
        d3.i.e("javaTypeParameter", c0911c);
        d3.i.e("containingDeclaration", interfaceC0807j);
        D3.a aVar = (D3.a) eVar.f499d;
        super(aVar.f469a, interfaceC0807j, new D3.c(eVar, c0911c, false), Q3.f.e(c0911c.f9637a.getName()), 1, false, i5, aVar.f480m);
        this.f569m = eVar;
        this.n = c0911c;
    }

    @Override // u3.AbstractC0878j
    public final List Q0(List list) {
        D3.e eVar = this.f569m;
        C0837c c0837c = ((D3.a) eVar.f499d).f484r;
        c0837c.getClass();
        ArrayList arrayList = new ArrayList(R2.o.C0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            AbstractC0468v abstractC0468vI = (AbstractC0468v) it.next();
            I3.n nVar = I3.n.f913h;
            d3.i.e("<this>", abstractC0468vI);
            if (!X.d(abstractC0468vI, nVar, null) && (abstractC0468vI = c0837c.i(new I3.p(this, false, eVar, EnumC0002a.TYPE_PARAMETER_BOUNDS, false), abstractC0468vI, R2.u.f2325c, null, false)) == null) {
                abstractC0468vI = abstractC0468vI;
            }
            arrayList.add(abstractC0468vI);
        }
        return arrayList;
    }

    @Override // u3.AbstractC0878j
    public final List R0() {
        Type[] bounds = this.n.f9637a.getBounds();
        d3.i.d("typeVariable.bounds", bounds);
        ArrayList arrayList = new ArrayList(bounds.length);
        for (Type type : bounds) {
            arrayList.add(new x3.q(type));
        }
        x3.q qVar = (x3.q) R2.m.d1(arrayList);
        List list = arrayList;
        if (d3.i.a(qVar != null ? qVar.f9668a : null, Object.class)) {
            list = R2.u.f2325c;
        }
        boolean zIsEmpty = list.isEmpty();
        D3.e eVar = this.f569m;
        if (zIsEmpty) {
            AbstractC0472z abstractC0472zE = ((D3.a) eVar.f499d).f481o.g().e();
            d3.i.d("c.module.builtIns.anyType", abstractC0472zE);
            AbstractC0472z abstractC0472zO = ((D3.a) eVar.f499d).f481o.g().o();
            d3.i.d("c.module.builtIns.nullableAnyType", abstractC0472zO);
            return AbstractC0420a.V(C0451d.j(abstractC0472zE, abstractC0472zO));
        }
        ArrayList arrayList2 = new ArrayList(R2.o.C0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList2.add(((com.google.firebase.messaging.p) eVar.f502h).K((x3.q) it.next(), L2.b.N(2, false, false, this, 3)));
        }
        return arrayList2;
    }
}
