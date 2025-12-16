package E3;

import c3.InterfaceC0222b;
import f1.AbstractC0420a;
import i3.InterfaceC0494o;
import java.util.Collection;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;
import p0.AbstractC0739a;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0805h;

/* renamed from: E3.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0021d implements a4.o {
    public static final /* synthetic */ InterfaceC0494o[] f;

    /* renamed from: b, reason: collision with root package name */
    public final D3.e f576b;

    /* renamed from: c, reason: collision with root package name */
    public final s f577c;

    /* renamed from: d, reason: collision with root package name */
    public final x f578d;

    /* renamed from: e, reason: collision with root package name */
    public final g4.i f579e;

    static {
        d3.r rVar = d3.q.f6516a;
        f = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(C0021d.class), "kotlinScopes", "getKotlinScopes()[Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"))};
    }

    public C0021d(D3.e eVar, x3.y yVar, s sVar) {
        d3.i.e("jPackage", yVar);
        d3.i.e("packageFragment", sVar);
        this.f576b = eVar;
        this.f577c = sVar;
        this.f578d = new x(eVar, yVar, sVar);
        g4.o oVar = ((D3.a) eVar.f499d).f469a;
        B3.k kVar = new B3.k(2, this);
        g4.l lVar = (g4.l) oVar;
        lVar.getClass();
        this.f579e = new g4.i(lVar, kVar);
    }

    @Override // a4.o
    public final Set a() {
        a4.o[] oVarArrH = h();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (a4.o oVar : oVarArrH) {
            R2.s.E0(linkedHashSet, oVar.a());
        }
        linkedHashSet.addAll(this.f578d.a());
        return linkedHashSet;
    }

    @Override // a4.o
    public final Set b() {
        a4.o[] oVarArrH = h();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (a4.o oVar : oVarArrH) {
            R2.s.E0(linkedHashSet, oVar.b());
        }
        linkedHashSet.addAll(this.f578d.b());
        return linkedHashSet;
    }

    @Override // a4.q
    public final InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        i(fVar, bVar);
        x xVar = this.f578d;
        xVar.getClass();
        InterfaceC0804g interfaceC0804g = null;
        InterfaceC0802e interfaceC0802eV = xVar.v(fVar, null);
        if (interfaceC0802eV != null) {
            return interfaceC0802eV;
        }
        for (a4.o oVar : h()) {
            InterfaceC0804g interfaceC0804gC = oVar.c(fVar, bVar);
            if (interfaceC0804gC != null) {
                if (!(interfaceC0804gC instanceof InterfaceC0805h) || !((InterfaceC0805h) interfaceC0804gC).y()) {
                    return interfaceC0804gC;
                }
                if (interfaceC0804g == null) {
                    interfaceC0804g = interfaceC0804gC;
                }
            }
        }
        return interfaceC0804g;
    }

    @Override // a4.o
    public final Collection d(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        i(fVar, bVar);
        a4.o[] oVarArrH = h();
        Collection collectionD = this.f578d.d(fVar, bVar);
        for (a4.o oVar : oVarArrH) {
            collectionD = o4.a.b(collectionD, oVar.d(fVar, bVar));
        }
        return collectionD == null ? R2.w.f2327c : collectionD;
    }

    @Override // a4.o
    public final Set e() {
        a4.o[] oVarArrH = h();
        d3.i.e("<this>", oVarArrH);
        HashSet hashSetX = AbstractC0420a.x(oVarArrH.length == 0 ? R2.u.f2325c : new R2.k(0, oVarArrH));
        if (hashSetX == null) {
            return null;
        }
        hashSetX.addAll(this.f578d.e());
        return hashSetX;
    }

    @Override // a4.q
    public final Collection f(a4.f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        a4.o[] oVarArrH = h();
        Collection collectionF = this.f578d.f(fVar, interfaceC0222b);
        for (a4.o oVar : oVarArrH) {
            collectionF = o4.a.b(collectionF, oVar.f(fVar, interfaceC0222b));
        }
        return collectionF == null ? R2.w.f2327c : collectionF;
    }

    @Override // a4.o
    public final Collection g(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        i(fVar, bVar);
        a4.o[] oVarArrH = h();
        this.f578d.getClass();
        Collection collectionB = R2.u.f2325c;
        for (a4.o oVar : oVarArrH) {
            collectionB = o4.a.b(collectionB, oVar.g(fVar, bVar));
        }
        return collectionB == null ? R2.w.f2327c : collectionB;
    }

    public final a4.o[] h() {
        return (a4.o[]) Z0.j.N(this.f579e, f[0]);
    }

    public final void i(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        AbstractC0739a.n(((D3.a) this.f576b.f499d).n, bVar, this.f577c, fVar);
    }

    public final String toString() {
        return "scope for " + this.f577c;
    }
}
