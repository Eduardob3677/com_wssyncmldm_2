package E3;

import c3.InterfaceC0221a;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import q3.C0758e;
import r3.InterfaceC0802e;
import s2.C0837c;
import x3.AbstractC0917d;
import x3.AbstractC0919f;
import x3.C0918e;

/* renamed from: E3.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0022e extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f580d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0023f f581e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0022e(C0023f c0023f, int i5) {
        super(0);
        this.f580d = i5;
        this.f581e = c0023f;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        switch (this.f580d) {
            case 0:
                C0023f c0023f = this.f581e;
                ArrayList arrayListA = c0023f.f584b.a();
                ArrayList arrayList = new ArrayList();
                Iterator it = arrayListA.iterator();
                while (it.hasNext()) {
                    H3.a aVar = (H3.a) it.next();
                    Q3.f fVar = ((AbstractC0919f) aVar).f9655a;
                    if (fVar == null) {
                        fVar = A3.z.f166b;
                    }
                    V3.g gVarC = c0023f.c(aVar);
                    Q2.e eVar = gVarC != null ? new Q2.e(fVar, gVarC) : null;
                    if (eVar != null) {
                        arrayList.add(eVar);
                    }
                }
                return R2.z.C1(arrayList);
            case 1:
                return AbstractC0917d.a(L2.b.q(L2.b.k(this.f581e.f584b.f9654a))).b();
            default:
                C0023f c0023f2 = this.f581e;
                Q3.c cVarA = c0023f2.a();
                C0918e c0918e = c0023f2.f584b;
                if (cVarA == null) {
                    return j4.i.c(j4.h.f7623G, c0918e.toString());
                }
                D3.e eVar2 = c0023f2.f583a;
                InterfaceC0802e interfaceC0802eB = C0758e.b(cVarA, ((D3.a) eVar2.f499d).f481o.g());
                if (interfaceC0802eB == null) {
                    x3.o oVar = new x3.o(L2.b.q(L2.b.k(c0918e.f9654a)));
                    D3.a aVar2 = (D3.a) eVar2.f499d;
                    C0837c c0837c = (C0837c) aVar2.f478k.f9022c;
                    if (c0837c == null) {
                        d3.i.g("resolver");
                        throw null;
                    }
                    interfaceC0802eB = c0837c.n(oVar);
                    if (interfaceC0802eB == null) {
                        interfaceC0802eB = o4.a.g(aVar2.f481o, Q3.b.k(cVarA), aVar2.f472d.c().f6539l);
                    }
                }
                return interfaceC0802eB.q();
        }
    }
}
