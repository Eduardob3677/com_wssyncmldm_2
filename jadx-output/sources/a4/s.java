package a4;

import c3.InterfaceC0222b;
import i3.InterfaceC0494o;
import java.util.Collection;
import java.util.List;
import r3.InterfaceC0783K;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import u3.N;

/* loaded from: classes.dex */
public final class s extends p {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f3132e;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0802e f3133b;

    /* renamed from: c, reason: collision with root package name */
    public final g4.i f3134c;

    /* renamed from: d, reason: collision with root package name */
    public final g4.i f3135d;

    static {
        d3.r rVar = d3.q.f6516a;
        f3132e = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(s.class), "functions", "getFunctions()Ljava/util/List;")), rVar.e(new d3.n(rVar.b(s.class), "properties", "getProperties()Ljava/util/List;"))};
    }

    public s(g4.o oVar, InterfaceC0802e interfaceC0802e) {
        d3.i.e("storageManager", oVar);
        d3.i.e("containingClass", interfaceC0802e);
        this.f3133b = interfaceC0802e;
        interfaceC0802e.L();
        g4.l lVar = (g4.l) oVar;
        this.f3134c = new g4.i(lVar, new r(this, 0));
        this.f3135d = new g4.i(lVar, new r(this, 1));
    }

    @Override // a4.p, a4.q
    public final InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return null;
    }

    @Override // a4.p, a4.o
    public final Collection d(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        List list = (List) Z0.j.N(this.f3134c, f3132e[0]);
        q4.f fVar2 = new q4.f();
        for (Object obj : list) {
            if (d3.i.a(((N) obj).getName(), fVar)) {
                fVar2.add(obj);
            }
        }
        return fVar2;
    }

    @Override // a4.p, a4.q
    public final Collection f(f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        g4.i iVar = this.f3134c;
        InterfaceC0494o[] interfaceC0494oArr = f3132e;
        return R2.m.Y0((List) Z0.j.N(iVar, interfaceC0494oArr[0]), (List) Z0.j.N(this.f3135d, interfaceC0494oArr[1]));
    }

    @Override // a4.p, a4.o
    public final Collection g(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        List list = (List) Z0.j.N(this.f3135d, f3132e[1]);
        q4.f fVar2 = new q4.f();
        for (Object obj : list) {
            if (d3.i.a(((InterfaceC0783K) obj).getName(), fVar)) {
                fVar2.add(obj);
            }
        }
        return fVar2;
    }
}
