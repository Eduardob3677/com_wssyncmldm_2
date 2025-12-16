package a4;

import c3.InterfaceC0221a;
import c3.InterfaceC0222b;
import i3.x;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import r3.InterfaceC0799b;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;

/* loaded from: classes.dex */
public final class k implements o {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3121b = 1;

    /* renamed from: c, reason: collision with root package name */
    public final Object f3122c;

    public k(o oVar) {
        this.f3122c = oVar;
    }

    @Override // a4.o
    public final Set a() {
        return l().a();
    }

    @Override // a4.o
    public final Set b() {
        return l().b();
    }

    @Override // a4.q
    public final InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return l().c(fVar, bVar);
    }

    @Override // a4.o
    public Collection d(Q3.f fVar, z3.b bVar) {
        switch (this.f3121b) {
            case 1:
                d3.i.e("name", fVar);
                return x.Z0(j(fVar, bVar), l.f3124g);
            default:
                return j(fVar, bVar);
        }
    }

    @Override // a4.o
    public final Set e() {
        return l().e();
    }

    @Override // a4.q
    public Collection f(f fVar, InterfaceC0222b interfaceC0222b) {
        switch (this.f3121b) {
            case 1:
                d3.i.e("kindFilter", fVar);
                d3.i.e("nameFilter", interfaceC0222b);
                Collection collectionI = i(fVar, interfaceC0222b);
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : collectionI) {
                    if (((InterfaceC0807j) obj) instanceof InterfaceC0799b) {
                        arrayList.add(obj);
                    } else {
                        arrayList2.add(obj);
                    }
                }
                return R2.m.Y0(x.Z0(arrayList, l.f), arrayList2);
            default:
                return i(fVar, interfaceC0222b);
        }
    }

    @Override // a4.o
    public Collection g(Q3.f fVar, z3.b bVar) {
        switch (this.f3121b) {
            case 1:
                d3.i.e("name", fVar);
                return x.Z0(k(fVar, bVar), l.f3125h);
            default:
                return k(fVar, bVar);
        }
    }

    public final o h() {
        if (!(l() instanceof k)) {
            return l();
        }
        o oVarL = l();
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.AbstractScopeAdapter", oVarL);
        return ((k) oVarL).h();
    }

    public final Collection i(f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        return l().f(fVar, interfaceC0222b);
    }

    public final Collection j(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return l().d(fVar, bVar);
    }

    public final Collection k(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return l().g(fVar, bVar);
    }

    public final o l() {
        switch (this.f3121b) {
            case 0:
                return (o) ((g4.i) this.f3122c).a();
            default:
                return (o) this.f3122c;
        }
    }

    public k(g4.o oVar, InterfaceC0221a interfaceC0221a) {
        d3.i.e("storageManager", oVar);
        this.f3122c = new g4.i((g4.l) oVar, new j(0, interfaceC0221a));
    }
}
