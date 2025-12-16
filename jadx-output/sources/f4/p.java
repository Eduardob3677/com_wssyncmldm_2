package f4;

import c3.InterfaceC0221a;
import c3.InterfaceC0222b;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import i3.InterfaceC0494o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;
import r3.InterfaceC0804g;

/* loaded from: classes.dex */
public abstract class p extends a4.p {
    public static final /* synthetic */ InterfaceC0494o[] f;

    /* renamed from: b, reason: collision with root package name */
    public final G4 f6884b;

    /* renamed from: c, reason: collision with root package name */
    public final o f6885c;

    /* renamed from: d, reason: collision with root package name */
    public final g4.i f6886d;

    /* renamed from: e, reason: collision with root package name */
    public final g4.h f6887e;

    static {
        d3.r rVar = d3.q.f6516a;
        f = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(p.class), "classNames", "getClassNames$deserialization()Ljava/util/Set;")), rVar.e(new d3.n(rVar.b(p.class), "classifierNamesLazy", "getClassifierNamesLazy()Ljava/util/Set;"))};
    }

    public p(G4 g42, List list, List list2, List list3, InterfaceC0221a interfaceC0221a) {
        d3.i.e("c", g42);
        this.f6884b = g42;
        d4.i iVar = (d4.i) g42.f5377c;
        iVar.f6531c.getClass();
        this.f6885c = new o(this, list, list2, list3);
        a4.j jVar = new a4.j(1, interfaceC0221a);
        g4.o oVar = iVar.f6529a;
        g4.l lVar = (g4.l) oVar;
        lVar.getClass();
        this.f6886d = new g4.i(lVar, jVar);
        B3.k kVar = new B3.k(13, this);
        g4.l lVar2 = (g4.l) oVar;
        lVar2.getClass();
        this.f6887e = new g4.h(lVar2, kVar);
    }

    @Override // a4.p, a4.o
    public final Set a() {
        return (Set) Z0.j.N(this.f6885c.f6881g, o.f6875j[0]);
    }

    @Override // a4.p, a4.o
    public final Set b() {
        return (Set) Z0.j.N(this.f6885c.f6882h, o.f6875j[1]);
    }

    @Override // a4.p, a4.q
    public InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        if (q(fVar)) {
            return ((d4.i) this.f6884b.f5377c).b(l(fVar));
        }
        o oVar = this.f6885c;
        if (!oVar.f6878c.keySet().contains(fVar)) {
            return null;
        }
        oVar.getClass();
        return (t) oVar.f.e(fVar);
    }

    @Override // a4.p, a4.o
    public Collection d(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return this.f6885c.a(fVar, bVar);
    }

    @Override // a4.p, a4.o
    public final Set e() {
        g4.h hVar = this.f6887e;
        InterfaceC0494o interfaceC0494o = f[1];
        d3.i.e("<this>", hVar);
        d3.i.e("p", interfaceC0494o);
        return (Set) hVar.a();
    }

    @Override // a4.p, a4.o
    public Collection g(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return this.f6885c.b(fVar, bVar);
    }

    public abstract void h(ArrayList arrayList, InterfaceC0222b interfaceC0222b);

    public final List i(a4.f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        ArrayList arrayList = new ArrayList(0);
        if (fVar.a(a4.f.f)) {
            h(arrayList, interfaceC0222b);
        }
        o oVar = this.f6885c;
        oVar.getClass();
        boolean zA = fVar.a(a4.f.f3103j);
        T3.j jVar = T3.j.f2727b;
        R2.u uVar = R2.u.f2325c;
        if (zA) {
            g4.i iVar = oVar.f6882h;
            Set<Q3.f> set = (Set) Z0.j.N(iVar, o.f6875j[1]);
            ArrayList arrayList2 = new ArrayList();
            for (Q3.f fVar2 : set) {
                if (((Boolean) interfaceC0222b.e(fVar2)).booleanValue()) {
                    d3.i.e("name", fVar2);
                    arrayList2.addAll(!((Set) Z0.j.N(iVar, o.f6875j[1])).contains(fVar2) ? uVar : (Collection) oVar.f6880e.e(fVar2));
                }
            }
            R2.r.D0(arrayList2, jVar);
            arrayList.addAll(arrayList2);
        }
        if (fVar.a(a4.f.f3102i)) {
            g4.i iVar2 = oVar.f6881g;
            Set<Q3.f> set2 = (Set) Z0.j.N(iVar2, o.f6875j[0]);
            ArrayList arrayList3 = new ArrayList();
            for (Q3.f fVar3 : set2) {
                if (((Boolean) interfaceC0222b.e(fVar3)).booleanValue()) {
                    d3.i.e("name", fVar3);
                    arrayList3.addAll(!((Set) Z0.j.N(iVar2, o.f6875j[0])).contains(fVar3) ? uVar : (Collection) oVar.f6879d.e(fVar3));
                }
            }
            R2.r.D0(arrayList3, jVar);
            arrayList.addAll(arrayList3);
        }
        if (fVar.a(a4.f.f3105l)) {
            for (Q3.f fVar4 : m()) {
                if (((Boolean) interfaceC0222b.e(fVar4)).booleanValue()) {
                    q4.k.b(arrayList, ((d4.i) this.f6884b.f5377c).b(l(fVar4)));
                }
            }
        }
        if (fVar.a(a4.f.f3100g)) {
            for (Q3.f fVar5 : oVar.f6878c.keySet()) {
                if (((Boolean) interfaceC0222b.e(fVar5)).booleanValue()) {
                    oVar.getClass();
                    d3.i.e("name", fVar5);
                    q4.k.b(arrayList, (t) oVar.f.e(fVar5));
                }
            }
        }
        return q4.k.e(arrayList);
    }

    public void j(Q3.f fVar, ArrayList arrayList) {
        d3.i.e("name", fVar);
    }

    public void k(Q3.f fVar, ArrayList arrayList) {
        d3.i.e("name", fVar);
    }

    public abstract Q3.b l(Q3.f fVar);

    public final Set m() {
        return (Set) Z0.j.N(this.f6886d, f[0]);
    }

    public abstract Set n();

    public abstract Set o();

    public abstract Set p();

    public boolean q(Q3.f fVar) {
        d3.i.e("name", fVar);
        return m().contains(fVar);
    }

    public boolean r(s sVar) {
        return true;
    }
}
