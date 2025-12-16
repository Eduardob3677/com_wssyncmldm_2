package F3;

import A3.C0005d;
import Z0.h;
import a4.o;
import com.google.firebase.messaging.p;
import d3.i;
import f1.AbstractC0420a;
import h4.AbstractC0450c;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.G;
import h4.J;
import h4.N;
import h4.O;
import h4.S;
import java.util.ArrayList;
import java.util.List;
import o3.AbstractC0732i;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;

/* loaded from: classes.dex */
public final class d extends S {

    /* renamed from: d, reason: collision with root package name */
    public static final a f768d = L2.b.N(2, false, true, null, 5).b(3);

    /* renamed from: e, reason: collision with root package name */
    public static final a f769e = L2.b.N(2, false, true, null, 5).b(2);

    /* renamed from: b, reason: collision with root package name */
    public final h f770b;

    /* renamed from: c, reason: collision with root package name */
    public final p f771c;

    public d() {
        h hVar = new h(2);
        this.f770b = hVar;
        this.f771c = new p(hVar);
    }

    @Override // h4.S
    public final N d(AbstractC0468v abstractC0468v) {
        return new O(h(abstractC0468v, new a(2, false, false, null, 62)));
    }

    public final Q2.e g(AbstractC0472z abstractC0472z, InterfaceC0802e interfaceC0802e, a aVar) {
        if (abstractC0472z.J0().k().isEmpty()) {
            return new Q2.e(abstractC0472z, Boolean.FALSE);
        }
        if (AbstractC0732i.y(abstractC0472z)) {
            N n = (N) abstractC0472z.u0().get(0);
            int iA = n.a();
            AbstractC0468v abstractC0468vB = n.b();
            i.d("componentTypeProjection.type", abstractC0468vB);
            return new Q2.e(C0451d.r(abstractC0472z.I0(), abstractC0472z.J0(), AbstractC0420a.V(new O(iA, h(abstractC0468vB, aVar))), abstractC0472z.K0()), Boolean.FALSE);
        }
        if (AbstractC0450c.i(abstractC0472z)) {
            return new Q2.e(j4.i.c(j4.h.f7634p, abstractC0472z.J0().toString()), Boolean.FALSE);
        }
        o oVarC = interfaceC0802e.C(this);
        i.d("declaration.getMemberScope(this)", oVarC);
        G gI0 = abstractC0472z.I0();
        J jH = interfaceC0802e.H();
        i.d("declaration.typeConstructor", jH);
        List<InterfaceC0789Q> listK = interfaceC0802e.H().k();
        i.d("declaration.typeConstructor.parameters", listK);
        ArrayList arrayList = new ArrayList(R2.o.C0(listK));
        for (InterfaceC0789Q interfaceC0789Q : listK) {
            i.d("parameter", interfaceC0789Q);
            p pVar = this.f771c;
            AbstractC0468v abstractC0468vX = pVar.x(interfaceC0789Q, aVar);
            this.f770b.getClass();
            arrayList.add(h.c(interfaceC0789Q, aVar, pVar, abstractC0468vX));
        }
        return new Q2.e(C0451d.t(gI0, jH, arrayList, abstractC0472z.K0(), oVarC, new C0005d(interfaceC0802e, this, abstractC0472z, aVar)), Boolean.TRUE);
    }

    public final AbstractC0468v h(AbstractC0468v abstractC0468v, a aVar) {
        InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
        if (interfaceC0804gI instanceof InterfaceC0789Q) {
            aVar.getClass();
            return h(this.f771c.x((InterfaceC0789Q) interfaceC0804gI, a.a(aVar, 0, true, null, null, 59)), aVar);
        }
        if (!(interfaceC0804gI instanceof InterfaceC0802e)) {
            throw new IllegalStateException(("Unexpected declaration kind: " + interfaceC0804gI).toString());
        }
        InterfaceC0804g interfaceC0804gI2 = AbstractC0450c.y(abstractC0468v).J0().i();
        if (interfaceC0804gI2 instanceof InterfaceC0802e) {
            Q2.e eVarG = g(AbstractC0450c.k(abstractC0468v), (InterfaceC0802e) interfaceC0804gI, f768d);
            AbstractC0472z abstractC0472z = (AbstractC0472z) eVarG.f2212c;
            boolean zBooleanValue = ((Boolean) eVarG.f2213d).booleanValue();
            Q2.e eVarG2 = g(AbstractC0450c.y(abstractC0468v), (InterfaceC0802e) interfaceC0804gI2, f769e);
            AbstractC0472z abstractC0472z2 = (AbstractC0472z) eVarG2.f2212c;
            return (zBooleanValue || ((Boolean) eVarG2.f2213d).booleanValue()) ? new f(abstractC0472z, abstractC0472z2) : C0451d.j(abstractC0472z, abstractC0472z2);
        }
        throw new IllegalStateException(("For some reason declaration for upper bound is not a class but \"" + interfaceC0804gI2 + "\" while for lower it's \"" + interfaceC0804gI + '\"').toString());
    }
}
