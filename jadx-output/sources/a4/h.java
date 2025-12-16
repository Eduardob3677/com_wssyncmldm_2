package a4;

import R2.u;
import c3.InterfaceC0222b;
import i3.InterfaceC0494o;
import java.util.Collection;
import java.util.List;
import r3.InterfaceC0783K;
import r3.InterfaceC0802e;
import u3.N;

/* loaded from: classes.dex */
public abstract class h extends p {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f3115d;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0802e f3116b;

    /* renamed from: c, reason: collision with root package name */
    public final g4.i f3117c;

    static {
        d3.r rVar = d3.q.f6516a;
        f3115d = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(h.class), "allDescriptors", "getAllDescriptors()Ljava/util/List;"))};
    }

    public h(g4.o oVar, InterfaceC0802e interfaceC0802e) {
        d3.i.e("storageManager", oVar);
        d3.i.e("containingClass", interfaceC0802e);
        this.f3116b = interfaceC0802e;
        this.f3117c = new g4.i((g4.l) oVar, new B3.k(8, this));
    }

    @Override // a4.p, a4.o
    public final Collection d(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        List list = (List) Z0.j.N(this.f3117c, f3115d[0]);
        q4.f fVar2 = new q4.f();
        for (Object obj : list) {
            if ((obj instanceof N) && d3.i.a(((N) obj).getName(), fVar)) {
                fVar2.add(obj);
            }
        }
        return fVar2;
    }

    @Override // a4.p, a4.q
    public final Collection f(f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        return !fVar.a(f.n.f3113b) ? u.f2325c : (List) Z0.j.N(this.f3117c, f3115d[0]);
    }

    @Override // a4.p, a4.o
    public final Collection g(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        List list = (List) Z0.j.N(this.f3117c, f3115d[0]);
        q4.f fVar2 = new q4.f();
        for (Object obj : list) {
            if ((obj instanceof InterfaceC0783K) && d3.i.a(((InterfaceC0783K) obj).getName(), fVar)) {
                fVar2.add(obj);
            }
        }
        return fVar2;
    }

    public abstract List h();
}
