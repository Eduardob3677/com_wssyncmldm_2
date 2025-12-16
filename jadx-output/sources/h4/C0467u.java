package h4;

import A3.C0005d;
import c3.InterfaceC0222b;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import o3.AbstractC0732i;
import r3.InterfaceC0804g;

/* renamed from: h4.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0467u implements J, k4.f {

    /* renamed from: a, reason: collision with root package name */
    public AbstractC0468v f7075a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashSet f7076b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7077c;

    public C0467u(AbstractCollection abstractCollection) {
        d3.i.e("typesToIntersect", abstractCollection);
        abstractCollection.isEmpty();
        LinkedHashSet linkedHashSet = new LinkedHashSet(abstractCollection);
        this.f7076b = linkedHashSet;
        this.f7077c = linkedHashSet.hashCode();
    }

    public final AbstractC0472z b() {
        G.f7019d.getClass();
        return C0451d.t(G.f7020e, this, R2.u.f2325c, false, L2.b.g("member scope for intersection type", this.f7076b), new C0005d(18, this));
    }

    public final String c(InterfaceC0222b interfaceC0222b) {
        d3.i.e("getProperTypeRelatedToStringify", interfaceC0222b);
        return R2.m.S0(R2.m.e1(this.f7076b, new C1.d(1, interfaceC0222b)), " & ", "{", "}", new C0005d(19, interfaceC0222b), 24);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final C0467u d(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        LinkedHashSet linkedHashSet = this.f7076b;
        ArrayList arrayList = new ArrayList(R2.o.C0(linkedHashSet));
        Iterator it = linkedHashSet.iterator();
        boolean z4 = false;
        while (it.hasNext()) {
            arrayList.add(((AbstractC0468v) it.next()).L0(fVar));
            z4 = true;
        }
        if (z4) {
            AbstractC0468v abstractC0468v = this.f7075a;
            abstractC0468vO0 = abstractC0468v != null ? abstractC0468v.L0(fVar) : null;
            C0467u c0467u = new C0467u(new C0467u(arrayList).f7076b);
            c0467u.f7075a = abstractC0468vO0;
            abstractC0468vO0 = c0467u;
        }
        return abstractC0468vO0 == null ? this : abstractC0468vO0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C0467u) {
            return d3.i.a(this.f7076b, ((C0467u) obj).f7076b);
        }
        return false;
    }

    @Override // h4.J
    public final AbstractC0732i g() {
        AbstractC0732i abstractC0732iG = ((AbstractC0468v) this.f7076b.iterator().next()).J0().g();
        d3.i.d("intersectedTypes.iterato…xt().constructor.builtIns", abstractC0732iG);
        return abstractC0732iG;
    }

    @Override // h4.J
    public final boolean h() {
        return false;
    }

    public final int hashCode() {
        return this.f7077c;
    }

    @Override // h4.J
    public final InterfaceC0804g i() {
        return null;
    }

    @Override // h4.J
    public final Collection j() {
        return this.f7076b;
    }

    @Override // h4.J
    public final List k() {
        return R2.u.f2325c;
    }

    public final String toString() {
        return c(C0453f.f);
    }
}
