package l3;

import L3.C0063l;
import L3.C0075y;
import R3.AbstractC0080b;
import R3.C0087i;
import R3.C0094p;
import f1.AbstractC0420a;
import java.lang.reflect.Method;
import q3.C0754a;
import r3.InterfaceC0783K;
import r3.InterfaceC0786N;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import u3.AbstractC0883o;

/* loaded from: classes.dex */
public abstract class u0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Q3.b f8226a = Q3.b.k(new Q3.c("java.lang.Void"));

    /* JADX WARN: Multi-variable type inference failed */
    public static C0685j a(InterfaceC0816s interfaceC0816s) {
        String strN = i3.x.N(interfaceC0816s);
        if (strN == null) {
            if (interfaceC0816s instanceof u3.L) {
                String strB = X3.f.k(interfaceC0816s).getName().b();
                d3.i.d("descriptor.propertyIfAccessor.name.asString()", strB);
                strN = A3.y.a(strB);
            } else if (interfaceC0816s instanceof u3.M) {
                String strB2 = X3.f.k(interfaceC0816s).getName().b();
                d3.i.d("descriptor.propertyIfAccessor.name.asString()", strB2);
                strN = A3.y.b(strB2);
            } else {
                strN = ((AbstractC0883o) interfaceC0816s).getName().b();
                d3.i.d("descriptor.name.asString()", strN);
            }
        }
        return new C0685j(new P3.e(strN, W1.a.n(interfaceC0816s, 1)));
    }

    public static r0 b(InterfaceC0783K interfaceC0783K) {
        d3.i.e("possiblyOverriddenProperty", interfaceC0783K);
        InterfaceC0783K interfaceC0783KA = ((InterfaceC0783K) T3.e.u(interfaceC0783K)).a();
        d3.i.d("unwrapFakeOverride(possi…rriddenProperty).original", interfaceC0783KA);
        if (interfaceC0783KA instanceof f4.r) {
            f4.r rVar = (f4.r) interfaceC0783KA;
            C0094p c0094p = O3.k.f2019d;
            d3.i.d("propertySignature", c0094p);
            L3.G g5 = rVar.f6891D;
            O3.e eVar = (O3.e) AbstractC0420a.C(g5, c0094p);
            if (eVar != null) {
                return new C0688m(interfaceC0783KA, g5, eVar, rVar.E, rVar.f6892F);
            }
        } else if (interfaceC0783KA instanceof C3.g) {
            InterfaceC0786N interfaceC0786NM = ((C3.g) interfaceC0783KA).m();
            w3.f fVar = interfaceC0786NM instanceof w3.f ? (w3.f) interfaceC0786NM : null;
            x3.s sVar = fVar != null ? fVar.f9615b : null;
            if (sVar instanceof x3.u) {
                return new C0686k(((x3.u) sVar).f9672a);
            }
            if (!(sVar instanceof x3.x)) {
                throw new Q2.d("Incorrect resolution sequence for Java field " + interfaceC0783KA + " (source = " + sVar + ')', 2);
            }
            Method method = ((x3.x) sVar).f9674a;
            u3.M mF = interfaceC0783KA.f();
            InterfaceC0786N interfaceC0786NM2 = mF != null ? mF.m() : null;
            w3.f fVar2 = interfaceC0786NM2 instanceof w3.f ? (w3.f) interfaceC0786NM2 : null;
            x3.s sVar2 = fVar2 != null ? fVar2.f9615b : null;
            x3.x xVar = sVar2 instanceof x3.x ? (x3.x) sVar2 : null;
            return new C0687l(method, xVar != null ? xVar.f9674a : null);
        }
        u3.L lR = interfaceC0783KA.r();
        d3.i.b(lR);
        C0685j c0685jA = a(lR);
        u3.M mF2 = interfaceC0783KA.f();
        return new C0689n(c0685jA, mF2 != null ? a(mF2) : null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static r0 c(InterfaceC0816s interfaceC0816s) {
        Method method;
        d3.i.e("possiblySubstitutedFunction", interfaceC0816s);
        InterfaceC0816s interfaceC0816sA = ((InterfaceC0816s) T3.e.u(interfaceC0816s)).a();
        d3.i.d("unwrapFakeOverride(possi…titutedFunction).original", interfaceC0816sA);
        if (interfaceC0816sA instanceof f4.b) {
            f4.b bVar = (f4.b) interfaceC0816sA;
            AbstractC0080b abstractC0080bL0 = bVar.l0();
            if (abstractC0080bL0 instanceof C0075y) {
                C0087i c0087i = P3.h.f2166a;
                P3.e eVarC = P3.h.c((C0075y) abstractC0080bL0, bVar.B0(), bVar.Z());
                if (eVarC != null) {
                    return new C0685j(eVarC);
                }
            }
            if (abstractC0080bL0 instanceof C0063l) {
                C0087i c0087i2 = P3.h.f2166a;
                P3.e eVarA = P3.h.a((C0063l) abstractC0080bL0, bVar.B0(), bVar.Z());
                if (eVarA != null) {
                    InterfaceC0807j interfaceC0807jL = interfaceC0816s.l();
                    d3.i.d("possiblySubstitutedFunction.containingDeclaration", interfaceC0807jL);
                    return T3.i.b(interfaceC0807jL) ? new C0685j(eVarA) : new C0684i(eVarA);
                }
            }
            return a(interfaceC0816sA);
        }
        if (interfaceC0816sA instanceof C3.f) {
            InterfaceC0786N interfaceC0786NM = ((C3.f) interfaceC0816sA).m();
            w3.f fVar = interfaceC0786NM instanceof w3.f ? (w3.f) interfaceC0786NM : null;
            x3.s sVar = fVar != null ? fVar.f9615b : null;
            x3.x xVar = sVar instanceof x3.x ? (x3.x) sVar : null;
            if (xVar != null && (method = xVar.f9674a) != null) {
                return new C0683h(method);
            }
            throw new Q2.d("Incorrect resolution sequence for Java method " + interfaceC0816sA, 2);
        }
        if (!(interfaceC0816sA instanceof C3.b)) {
            AbstractC0883o abstractC0883o = (AbstractC0883o) interfaceC0816sA;
            if ((abstractC0883o.getName().equals(o3.n.f8532c) && Z0.j.S(interfaceC0816sA)) || ((abstractC0883o.getName().equals(o3.n.f8530a) && Z0.j.S(interfaceC0816sA)) || (d3.i.a(abstractC0883o.getName(), C0754a.f8641e) && interfaceC0816sA.w0().isEmpty()))) {
                return a(interfaceC0816sA);
            }
            throw new Q2.d("Unknown origin of " + interfaceC0816sA + " (" + interfaceC0816sA.getClass() + ')', 2);
        }
        InterfaceC0786N interfaceC0786NM2 = ((C3.b) interfaceC0816sA).m();
        w3.f fVar2 = interfaceC0786NM2 instanceof w3.f ? (w3.f) interfaceC0786NM2 : null;
        Object obj = fVar2 != null ? fVar2.f9615b : null;
        if (obj instanceof x3.r) {
            return new C0682g(((x3.r) obj).f9670a);
        }
        if (obj instanceof x3.o) {
            x3.o oVar = (x3.o) obj;
            if (oVar.f9666a.isAnnotation()) {
                return new C0680f(oVar.f9666a);
            }
        }
        throw new Q2.d("Incorrect resolution sequence for Java constructor " + interfaceC0816sA + " (" + obj + ')', 2);
    }
}
