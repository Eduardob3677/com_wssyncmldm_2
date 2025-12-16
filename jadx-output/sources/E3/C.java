package E3;

import c3.InterfaceC0222b;
import h4.AbstractC0468v;
import h4.Z;
import i3.InterfaceC0494o;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import r3.InterfaceC0789Q;
import r3.InterfaceC0807j;
import u3.AbstractC0889v;
import u3.C0890w;
import u3.V;
import x3.AbstractC0910B;
import x3.C0911C;
import x3.C0912D;

/* loaded from: classes.dex */
public abstract class C extends a4.p {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f550m;

    /* renamed from: b, reason: collision with root package name */
    public final D3.e f551b;

    /* renamed from: c, reason: collision with root package name */
    public final C f552c;

    /* renamed from: d, reason: collision with root package name */
    public final g4.c f553d;

    /* renamed from: e, reason: collision with root package name */
    public final g4.i f554e;
    public final g4.e f;

    /* renamed from: g, reason: collision with root package name */
    public final g4.j f555g;

    /* renamed from: h, reason: collision with root package name */
    public final g4.e f556h;

    /* renamed from: i, reason: collision with root package name */
    public final g4.i f557i;

    /* renamed from: j, reason: collision with root package name */
    public final g4.i f558j;

    /* renamed from: k, reason: collision with root package name */
    public final g4.i f559k;

    /* renamed from: l, reason: collision with root package name */
    public final g4.e f560l;

    static {
        d3.r rVar = d3.q.f6516a;
        f550m = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(C.class), "functionNamesLazy", "getFunctionNamesLazy()Ljava/util/Set;")), rVar.e(new d3.n(rVar.b(C.class), "propertyNamesLazy", "getPropertyNamesLazy()Ljava/util/Set;")), rVar.e(new d3.n(rVar.b(C.class), "classNamesLazy", "getClassNamesLazy()Ljava/util/Set;"))};
    }

    public C(D3.e eVar, C c2) {
        d3.i.e("c", eVar);
        this.f551b = eVar;
        this.f552c = c2;
        D3.a aVar = (D3.a) eVar.f499d;
        g4.o oVar = aVar.f469a;
        z zVar = new z(this, 0);
        g4.l lVar = (g4.l) oVar;
        lVar.getClass();
        this.f553d = new g4.c(lVar, zVar);
        z zVar2 = new z(this, 2);
        g4.o oVar2 = aVar.f469a;
        g4.l lVar2 = (g4.l) oVar2;
        lVar2.getClass();
        this.f554e = new g4.i(lVar2, zVar2);
        this.f = ((g4.l) oVar2).b(new A(this, 1));
        this.f555g = ((g4.l) oVar2).c(new A(this, 0));
        this.f556h = ((g4.l) oVar2).b(new A(this, 2));
        z zVar3 = new z(this, 3);
        g4.l lVar3 = (g4.l) oVar2;
        lVar3.getClass();
        this.f557i = new g4.i(lVar3, zVar3);
        z zVar4 = new z(this, 4);
        g4.l lVar4 = (g4.l) oVar2;
        lVar4.getClass();
        this.f558j = new g4.i(lVar4, zVar4);
        z zVar5 = new z(this, 1);
        g4.l lVar5 = (g4.l) oVar2;
        lVar5.getClass();
        this.f559k = new g4.i(lVar5, zVar5);
        this.f560l = ((g4.l) oVar2).b(new A(this, 3));
    }

    public static AbstractC0468v l(x3.x xVar, D3.e eVar) {
        d3.i.e("method", xVar);
        Class<?> declaringClass = ((Method) xVar.a()).getDeclaringClass();
        d3.i.d("member.declaringClass", declaringClass);
        F3.a aVarN = L2.b.N(2, declaringClass.isAnnotation(), false, null, 6);
        return ((com.google.firebase.messaging.p) eVar.f502h).K(xVar.e(), aVarN);
    }

    public static B1.c u(D3.e eVar, AbstractC0889v abstractC0889v, List list) {
        Q2.e eVar2;
        Q3.f fVar;
        Q3.f fVarE;
        R2.k kVarK1 = R2.m.k1(list);
        ArrayList arrayList = new ArrayList(R2.o.C0(kVarK1));
        Iterator it = kVarK1.iterator();
        boolean z4 = false;
        while (true) {
            R2.y yVar = (R2.y) it;
            if (!yVar.f2331d.hasNext()) {
                return new B1.c(R2.m.g1(arrayList), z4, 1);
            }
            R2.x xVar = (R2.x) yVar.next();
            int i5 = xVar.f2328a;
            C0912D c0912d = (C0912D) xVar.f2329b;
            D3.c cVarG0 = W1.a.g0(eVar, c0912d);
            F3.a aVarN = L2.b.N(2, false, false, null, 7);
            boolean z5 = c0912d.f9641d;
            com.google.firebase.messaging.p pVar = (com.google.firebase.messaging.p) eVar.f502h;
            D3.a aVar = (D3.a) eVar.f499d;
            AbstractC0910B abstractC0910B = c0912d.f9638a;
            if (z5) {
                x3.i iVar = abstractC0910B instanceof x3.i ? (x3.i) abstractC0910B : null;
                if (iVar == null) {
                    throw new AssertionError("Vararg parameter should be an array: " + c0912d);
                }
                Z zI = pVar.I(iVar, aVarN, true);
                eVar2 = new Q2.e(zI, aVar.f481o.g().f(zI));
            } else {
                eVar2 = new Q2.e(pVar.K(abstractC0910B, aVarN), null);
            }
            AbstractC0468v abstractC0468v = (AbstractC0468v) eVar2.f2212c;
            AbstractC0468v abstractC0468v2 = (AbstractC0468v) eVar2.f2213d;
            if (d3.i.a(abstractC0889v.getName().b(), "equals") && list.size() == 1 && d3.i.a(aVar.f481o.g().o(), abstractC0468v)) {
                fVarE = Q3.f.e("other");
            } else {
                String str = c0912d.f9640c;
                Q3.f fVarD = str != null ? Q3.f.d(str) : null;
                if (fVarD == null) {
                    z4 = true;
                }
                if (fVarD == null) {
                    fVarE = Q3.f.e("p" + i5);
                } else {
                    fVar = fVarD;
                    arrayList.add(new V(abstractC0889v, null, i5, cVarG0, fVar, abstractC0468v, false, false, false, abstractC0468v2, aVar.f477j.c(c0912d)));
                }
            }
            fVar = fVarE;
            arrayList.add(new V(abstractC0889v, null, i5, cVarG0, fVar, abstractC0468v, false, false, false, abstractC0468v2, aVar.f477j.c(c0912d)));
        }
    }

    @Override // a4.p, a4.o
    public final Set a() {
        return (Set) Z0.j.N(this.f557i, f550m[0]);
    }

    @Override // a4.p, a4.o
    public final Set b() {
        return (Set) Z0.j.N(this.f558j, f550m[1]);
    }

    @Override // a4.p, a4.o
    public Collection d(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return !a().contains(fVar) ? R2.u.f2325c : (Collection) this.f556h.e(fVar);
    }

    @Override // a4.p, a4.o
    public final Set e() {
        return (Set) Z0.j.N(this.f559k, f550m[2]);
    }

    @Override // a4.p, a4.q
    public Collection f(a4.f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        return (Collection) this.f553d.a();
    }

    @Override // a4.p, a4.o
    public Collection g(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return !b().contains(fVar) ? R2.u.f2325c : (Collection) this.f560l.e(fVar);
    }

    public abstract Set h(a4.f fVar, a4.l lVar);

    public abstract Set i(a4.f fVar, a4.l lVar);

    public void j(Q3.f fVar, ArrayList arrayList) {
        d3.i.e("name", fVar);
    }

    public abstract InterfaceC0020c k();

    public abstract void m(LinkedHashSet linkedHashSet, Q3.f fVar);

    public abstract void n(Q3.f fVar, ArrayList arrayList);

    public abstract Set o(a4.f fVar);

    public abstract C0890w p();

    public abstract InterfaceC0807j q();

    public boolean r(C3.f fVar) {
        return true;
    }

    public abstract y s(x3.x xVar, ArrayList arrayList, AbstractC0468v abstractC0468v, List list);

    /* JADX WARN: Removed duplicated region for block: B:21:0x00f3 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C3.f t(x3.x xVar) {
        int i5;
        int i6;
        d3.i.e("method", xVar);
        D3.e eVar = this.f551b;
        C3.f fVarF1 = C3.f.f1(q(), W1.a.g0(eVar, xVar), xVar.b(), ((D3.a) eVar.f499d).f477j.c(xVar), ((InterfaceC0020c) this.f554e.a()).a(xVar.b()) != null && ((ArrayList) xVar.f()).isEmpty());
        d3.i.e("<this>", eVar);
        D3.e eVar2 = new D3.e((D3.a) eVar.f499d, new D3.f(eVar, fVarF1, xVar, 0), (Q2.c) eVar.f);
        ArrayList arrayListU = xVar.u();
        ArrayList arrayList = new ArrayList(R2.o.C0(arrayListU));
        Iterator it = arrayListU.iterator();
        while (it.hasNext()) {
            InterfaceC0789Q interfaceC0789QA = ((D3.g) eVar2.f500e).a((C0911C) it.next());
            d3.i.b(interfaceC0789QA);
            arrayList.add(interfaceC0789QA);
        }
        B1.c cVarU = u(eVar2, fVarF1, xVar.f());
        y yVarS = s(xVar, arrayList, l(xVar, eVar2), (List) cVarU.f198e);
        C0890w c0890wP = p();
        R2.u uVar = R2.u.f2325c;
        boolean zIsAbstract = Modifier.isAbstract(((Method) xVar.a()).getModifiers());
        boolean z4 = !Modifier.isFinal(((Method) xVar.a()).getModifiers());
        if (zIsAbstract) {
            i6 = 4;
        } else {
            if (!z4) {
                i5 = 1;
                fVarF1.e1(null, c0890wP, uVar, yVarS.f648c, yVarS.f647b, yVarS.f646a, i5, L2.b.O(xVar.d()), R2.v.f2326c);
                fVarF1.g1(false, cVarU.f197d);
                if (!yVarS.f649d.isEmpty()) {
                    return fVarF1;
                }
                ((D3.a) eVar2.f499d).f473e.getClass();
                throw new UnsupportedOperationException("Should not be called");
            }
            i6 = 3;
        }
        i5 = i6;
        fVarF1.e1(null, c0890wP, uVar, yVarS.f648c, yVarS.f647b, yVarS.f646a, i5, L2.b.O(xVar.d()), R2.v.f2326c);
        fVarF1.g1(false, cVarU.f197d);
        if (!yVarS.f649d.isEmpty()) {
        }
    }

    public String toString() {
        return "Lazy scope for " + q();
    }
}
