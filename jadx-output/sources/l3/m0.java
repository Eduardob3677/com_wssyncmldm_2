package l3;

import i3.InterfaceC0494o;
import i3.InterfaceC0495p;
import k.Q0;
import r3.InterfaceC0789Q;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0807j;

/* loaded from: classes.dex */
public final class m0 implements InterfaceC0495p {
    public static final /* synthetic */ InterfaceC0494o[] f;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0789Q f8201c;

    /* renamed from: d, reason: collision with root package name */
    public final p0 f8202d;

    /* renamed from: e, reason: collision with root package name */
    public final n0 f8203e;

    static {
        d3.r rVar = d3.q.f6516a;
        f = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(m0.class), "upperBounds", "getUpperBounds()Ljava/util/List;"))};
    }

    public m0(n0 n0Var, InterfaceC0789Q interfaceC0789Q) {
        Class cls;
        C0701z c0701zB;
        Object objF0;
        d3.i.e("descriptor", interfaceC0789Q);
        this.f8201c = interfaceC0789Q;
        this.f8202d = r0.j(new B3.k(23, this));
        if (n0Var == null) {
            InterfaceC0807j interfaceC0807jL = interfaceC0789Q.l();
            d3.i.d("descriptor.containingDeclaration", interfaceC0807jL);
            if (interfaceC0807jL instanceof InterfaceC0802e) {
                objF0 = b((InterfaceC0802e) interfaceC0807jL);
            } else {
                if (!(interfaceC0807jL instanceof InterfaceC0800c)) {
                    throw new Q2.d("Unknown type parameter container: " + interfaceC0807jL, 2);
                }
                InterfaceC0807j interfaceC0807jL2 = ((InterfaceC0800c) interfaceC0807jL).l();
                d3.i.d("declaration.containingDeclaration", interfaceC0807jL2);
                if (interfaceC0807jL2 instanceof InterfaceC0802e) {
                    c0701zB = b((InterfaceC0802e) interfaceC0807jL2);
                } else {
                    f4.k kVar = interfaceC0807jL instanceof f4.k ? (f4.k) interfaceC0807jL : null;
                    if (kVar == null) {
                        throw new Q2.d("Non-class callable descriptor must be deserialized: " + interfaceC0807jL, 2);
                    }
                    f4.j jVarX = kVar.x();
                    J3.h hVar = jVarX instanceof J3.h ? (J3.h) jVarX : null;
                    w3.b bVar = hVar != null ? hVar.f1160d : null;
                    w3.b bVar2 = bVar instanceof w3.b ? bVar : null;
                    if (bVar2 == null || (cls = bVar2.f9608a) == null) {
                        throw new Q2.d("Container of deserialized member is not resolved: " + kVar, 2);
                    }
                    c0701zB = (C0701z) L2.b.t(cls);
                }
                objF0 = interfaceC0807jL.F0(new c1.w((AbstractC0647C) c0701zB), Q2.k.f2225a);
            }
            d3.i.d("when (val declaration = … $declaration\")\n        }", objF0);
            n0Var = (n0) objF0;
        }
        this.f8203e = n0Var;
    }

    public static C0701z b(InterfaceC0802e interfaceC0802e) {
        Class clsJ = w0.j(interfaceC0802e);
        C0701z c0701z = (C0701z) (clsJ != null ? L2.b.t(clsJ) : null);
        if (c0701z != null) {
            return c0701z;
        }
        throw new Q2.d("Type parameter container is not resolved: " + interfaceC0802e.l(), 2);
    }

    public final String a() {
        String strB = this.f8201c.getName().b();
        d3.i.d("descriptor.name.asString()", strB);
        return strB;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof m0) {
            m0 m0Var = (m0) obj;
            if (d3.i.a(this.f8203e, m0Var.f8203e) && d3.i.a(a(), m0Var.a())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return a().hashCode() + (this.f8203e.hashCode() * 31);
    }

    public final String toString() {
        int i5;
        StringBuilder sb = new StringBuilder();
        int iF = Q0.f(this.f8201c.A());
        if (iF == 0) {
            i5 = 1;
        } else if (iF == 1) {
            i5 = 2;
        } else {
            if (iF != 2) {
                throw new A0.c();
            }
            i5 = 3;
        }
        int iF2 = Q0.f(i5);
        if (iF2 == 1) {
            sb.append("in ");
        } else if (iF2 == 2) {
            sb.append("out ");
        }
        sb.append(a());
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }
}
