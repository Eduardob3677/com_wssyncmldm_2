package f4;

import L3.C;
import L3.X;
import L3.e0;
import R2.w;
import c3.InterfaceC0221a;
import c3.InterfaceC0222b;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import p0.AbstractC0739a;
import r3.InterfaceC0775C;
import r3.InterfaceC0804g;
import s2.C0837c;
import t3.InterfaceC0859c;
import u3.E;

/* loaded from: classes.dex */
public final class q extends p {

    /* renamed from: g, reason: collision with root package name */
    public final InterfaceC0775C f6888g;

    /* renamed from: h, reason: collision with root package name */
    public final String f6889h;

    /* renamed from: i, reason: collision with root package name */
    public final Q3.c f6890i;

    public q(InterfaceC0775C interfaceC0775C, C c2, N3.f fVar, N3.a aVar, j jVar, d4.i iVar, String str, InterfaceC0221a interfaceC0221a) {
        N3.g gVar;
        d3.i.e("packageDescriptor", interfaceC0775C);
        d3.i.e("nameResolver", fVar);
        d3.i.e("metadataVersion", aVar);
        d3.i.e("debugName", str);
        X x4 = c2.f1373i;
        d3.i.d("proto.typeTable", x4);
        C0837c c0837c = new C0837c(x4);
        e0 e0Var = c2.f1374j;
        d3.i.d("proto.versionRequirementTable", e0Var);
        if (e0Var.f1632d.size() == 0) {
            gVar = N3.g.f1909a;
        } else {
            d3.i.d("table.requirementList", e0Var.f1632d);
            gVar = new N3.g();
        }
        G4 g4A = iVar.a(interfaceC0775C, fVar, c0837c, gVar, aVar, jVar);
        List list = c2.f;
        d3.i.d("proto.functionList", list);
        List list2 = c2.f1371g;
        d3.i.d("proto.propertyList", list2);
        List list3 = c2.f1372h;
        d3.i.d("proto.typeAliasList", list3);
        super(g4A, list, list2, list3, interfaceC0221a);
        this.f6888g = interfaceC0775C;
        this.f6889h = str;
        this.f6890i = ((E) interfaceC0775C).f9353g;
    }

    @Override // f4.p, a4.p, a4.q
    public final InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        AbstractC0739a.n(((d4.i) this.f6884b.f5377c).f6536i, bVar, this.f6888g, fVar);
        return super.c(fVar, bVar);
    }

    @Override // a4.p, a4.q
    public final Collection f(a4.f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        List listI = i(fVar, interfaceC0222b);
        Iterable iterable = ((d4.i) this.f6884b.f5377c).f6538k;
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            R2.s.E0(arrayList, ((InterfaceC0859c) it.next()).b(this.f6890i));
        }
        return R2.m.Y0(listI, arrayList);
    }

    @Override // f4.p
    public final void h(ArrayList arrayList, InterfaceC0222b interfaceC0222b) {
        d3.i.e("nameFilter", interfaceC0222b);
    }

    @Override // f4.p
    public final Q3.b l(Q3.f fVar) {
        d3.i.e("name", fVar);
        return new Q3.b(this.f6890i, fVar);
    }

    @Override // f4.p
    public final Set n() {
        return w.f2327c;
    }

    @Override // f4.p
    public final Set o() {
        return w.f2327c;
    }

    @Override // f4.p
    public final Set p() {
        return w.f2327c;
    }

    @Override // f4.p
    public final boolean q(Q3.f fVar) {
        d3.i.e("name", fVar);
        if (!super.q(fVar)) {
            Iterable iterable = ((d4.i) this.f6884b.f5377c).f6538k;
            if (!(iterable instanceof Collection) || !((Collection) iterable).isEmpty()) {
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    if (((InterfaceC0859c) it.next()).a(this.f6890i, fVar)) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    public final String toString() {
        return this.f6889h;
    }
}
