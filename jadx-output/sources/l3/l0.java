package l3;

import c3.InterfaceC0221a;
import h4.AbstractC0468v;
import i3.InterfaceC0483d;
import i3.InterfaceC0494o;
import java.lang.reflect.Array;
import java.util.List;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import x3.AbstractC0917d;

/* loaded from: classes.dex */
public final class l0 implements d3.j {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f8191e;

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0468v f8192a;

    /* renamed from: b, reason: collision with root package name */
    public final p0 f8193b;

    /* renamed from: c, reason: collision with root package name */
    public final p0 f8194c;

    /* renamed from: d, reason: collision with root package name */
    public final p0 f8195d;

    static {
        d3.r rVar = d3.q.f6516a;
        f8191e = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(l0.class), "classifier", "getClassifier()Lkotlin/reflect/KClassifier;")), rVar.e(new d3.n(rVar.b(l0.class), "arguments", "getArguments()Ljava/util/List;"))};
    }

    public l0(AbstractC0468v abstractC0468v, InterfaceC0221a interfaceC0221a) {
        d3.i.e("type", abstractC0468v);
        this.f8192a = abstractC0468v;
        p0 p0VarJ = null;
        p0 p0Var = interfaceC0221a instanceof p0 ? (p0) interfaceC0221a : null;
        if (p0Var != null) {
            p0VarJ = p0Var;
        } else if (interfaceC0221a != null) {
            p0VarJ = r0.j(interfaceC0221a);
        }
        this.f8193b = p0VarJ;
        this.f8194c = r0.j(new k0(1, this));
        this.f8195d = r0.j(new B3.c(this, 10, interfaceC0221a));
    }

    public final InterfaceC0483d a(AbstractC0468v abstractC0468v) {
        AbstractC0468v abstractC0468vB;
        InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
        if (!(interfaceC0804gI instanceof InterfaceC0802e)) {
            if (interfaceC0804gI instanceof InterfaceC0789Q) {
                return new m0(null, (InterfaceC0789Q) interfaceC0804gI);
            }
            if (interfaceC0804gI instanceof f4.t) {
                throw new Q2.d("An operation is not implemented: Type alias classifiers are not yet supported");
            }
            return null;
        }
        Class clsJ = w0.j((InterfaceC0802e) interfaceC0804gI);
        if (clsJ == null) {
            return null;
        }
        if (!clsJ.isArray()) {
            if (h4.X.f(abstractC0468v)) {
                return new C0701z(clsJ);
            }
            Class cls = (Class) AbstractC0917d.f9652b.get(clsJ);
            if (cls != null) {
                clsJ = cls;
            }
            return new C0701z(clsJ);
        }
        h4.N n = (h4.N) R2.m.d1(abstractC0468v.u0());
        if (n == null || (abstractC0468vB = n.b()) == null) {
            return new C0701z(clsJ);
        }
        InterfaceC0483d interfaceC0483dA = a(abstractC0468vB);
        if (interfaceC0483dA != null) {
            return new C0701z(Array.newInstance((Class<?>) L2.b.q(Z0.j.L(interfaceC0483dA)), 0).getClass());
        }
        throw new Q2.d("Cannot determine classifier for array element type: " + this, 2);
    }

    public final List b() {
        InterfaceC0494o interfaceC0494o = f8191e[1];
        Object objA = this.f8195d.a();
        d3.i.d("<get-arguments>(...)", objA);
        return (List) objA;
    }

    public final InterfaceC0483d c() {
        InterfaceC0494o interfaceC0494o = f8191e[0];
        return (InterfaceC0483d) this.f8194c.a();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof l0) {
            l0 l0Var = (l0) obj;
            if (d3.i.a(this.f8192a, l0Var.f8192a) && d3.i.a(c(), l0Var.c()) && d3.i.a(b(), l0Var.b())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.f8192a.hashCode() * 31;
        InterfaceC0483d interfaceC0483dC = c();
        return b().hashCode() + ((iHashCode + (interfaceC0483dC != null ? interfaceC0483dC.hashCode() : 0)) * 31);
    }

    public final String toString() {
        S3.g gVar = t0.f8223a;
        return t0.d(this.f8192a);
    }
}
