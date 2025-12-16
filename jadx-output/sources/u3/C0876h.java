package u3;

import c3.InterfaceC0221a;
import h4.C0451d;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import r3.InterfaceC0816s;

/* renamed from: u3.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0876h implements InterfaceC0221a {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f9428c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f9429d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractC0884p f9430e;

    public /* synthetic */ C0876h(AbstractC0884p abstractC0884p, Object obj, int i5) {
        this.f9428c = i5;
        this.f9430e = abstractC0884p;
        this.f9429d = obj;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f9428c) {
            case 0:
                h4.G.f7019d.getClass();
                h4.G g5 = h4.G.f7020e;
                h4.J jH = ((AbstractC0878j) this.f9430e).H();
                List listEmptyList = Collections.emptyList();
                C0875g c0875g = new C0875g(0, this);
                g4.b bVar = g4.l.f6948e;
                d3.i.d("NO_LOCKS", bVar);
                return C0451d.s(new a4.k(bVar, c0875g), g5, jH, listEmptyList, false);
            default:
                q4.f fVar = new q4.f();
                Iterator it = ((AbstractC0889v) this.f9430e).p().iterator();
                while (it.hasNext()) {
                    fVar.add(((InterfaceC0816s) it.next()).b((h4.V) this.f9429d));
                }
                return fVar;
        }
    }
}
