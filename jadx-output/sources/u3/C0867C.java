package u3;

import A3.C0005d;
import c3.InterfaceC0222b;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import o3.AbstractC0732i;
import r3.AbstractC0819v;
import r3.C0818u;
import r3.InterfaceC0776D;
import r3.InterfaceC0780H;
import r3.InterfaceC0807j;
import r3.InterfaceC0809l;
import r3.InterfaceC0821x;
import s3.C0844g;

/* renamed from: u3.C, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0867C extends AbstractC0883o implements InterfaceC0821x {

    /* renamed from: e, reason: collision with root package name */
    public final g4.o f9338e;
    public final AbstractC0732i f;

    /* renamed from: g, reason: collision with root package name */
    public final Map f9339g;

    /* renamed from: h, reason: collision with root package name */
    public final H f9340h;

    /* renamed from: i, reason: collision with root package name */
    public e.v f9341i;

    /* renamed from: j, reason: collision with root package name */
    public InterfaceC0776D f9342j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f9343k;

    /* renamed from: l, reason: collision with root package name */
    public final g4.e f9344l;

    /* renamed from: m, reason: collision with root package name */
    public final Q2.h f9345m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0867C(Q3.f fVar, g4.o oVar, AbstractC0732i abstractC0732i, int i5) {
        super(C0844g.f9041a, fVar);
        R2.v vVar = R2.v.f2326c;
        this.f9338e = oVar;
        this.f = abstractC0732i;
        if (!fVar.f2243d) {
            throw new IllegalArgumentException("Module name must be special: " + fVar);
        }
        this.f9339g = vVar;
        H.f9358a.getClass();
        H h5 = (H) U(F.f9356b);
        this.f9340h = h5 == null ? G.f9357b : h5;
        this.f9343k = true;
        this.f9344l = ((g4.l) oVar).b(new C0005d(24, this));
        this.f9345m = new Q2.h(new C0866B(this, 0));
    }

    @Override // r3.InterfaceC0821x
    public final List E0() {
        if (this.f9341i != null) {
            return R2.u.f2325c;
        }
        StringBuilder sb = new StringBuilder("Dependencies of module ");
        String str = getName().f2242c;
        d3.i.d("name.toString()", str);
        sb.append(str);
        sb.append(" were not set");
        throw new AssertionError(sb.toString());
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.m(obj, this);
    }

    public final void P0() {
        if (this.f9343k) {
            return;
        }
        B.f.F(U(AbstractC0819v.f8831a));
        String str = "Accessing invalid module descriptor " + this;
        d3.i.e("message", str);
        throw new C0818u(str);
    }

    @Override // r3.InterfaceC0821x
    public final Object U(I2.a aVar) {
        d3.i.e("capability", aVar);
        Object obj = this.f9339g.get(aVar);
        if (obj == null) {
            return null;
        }
        return obj;
    }

    @Override // r3.InterfaceC0821x
    public final InterfaceC0780H a0(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        P0();
        return (InterfaceC0780H) this.f9344l.e(cVar);
    }

    @Override // r3.InterfaceC0821x
    public final AbstractC0732i g() {
        return this.f;
    }

    @Override // r3.InterfaceC0807j
    public final InterfaceC0807j l() {
        return null;
    }

    @Override // r3.InterfaceC0821x
    public final Collection o(Q3.c cVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("fqName", cVar);
        d3.i.e("nameFilter", interfaceC0222b);
        P0();
        P0();
        return ((C0882n) this.f9345m.getValue()).o(cVar, interfaceC0222b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // r3.InterfaceC0821x
    public final boolean t0(InterfaceC0821x interfaceC0821x) {
        d3.i.e("targetModule", interfaceC0821x);
        if (d3.i.a(this, interfaceC0821x)) {
            return true;
        }
        e.v vVar = this.f9341i;
        d3.i.b(vVar);
        if (R2.m.H0((Set) vVar.f6793d, interfaceC0821x)) {
            return true;
        }
        E0();
        if (interfaceC0821x instanceof Void) {
        }
        return interfaceC0821x.E0().contains(this);
    }

    @Override // u3.AbstractC0883o
    public final String toString() {
        String strO0 = AbstractC0883o.O0(this);
        d3.i.d("super.toString()", strO0);
        return this.f9343k ? strO0 : strO0.concat(" !isValid");
    }
}
