package l3;

import c3.InterfaceC0221a;
import f1.AbstractC0420a;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.regex.Pattern;
import r3.AbstractC0811n;
import r3.InterfaceC0783K;
import r3.InterfaceC0807j;
import x3.AbstractC0917d;

/* loaded from: classes.dex */
public abstract class r0 {

    /* renamed from: c, reason: collision with root package name */
    public static final e4.d f8218c = new e4.d(15);

    public static /* synthetic */ void b(int i5) {
        Object[] objArr = new Object[3];
        objArr[0] = "initializer";
        objArr[1] = "kotlin/reflect/jvm/internal/ReflectProperties";
        if (i5 == 1 || i5 == 2) {
            objArr[2] = "lazySoft";
        } else {
            objArr[2] = "lazy";
        }
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final m3.e c(AbstractC0677d0 abstractC0677d0, boolean z4) throws NoSuchMethodException, ClassNotFoundException, SecurityException {
        C0685j c0685j;
        Method method;
        m3.e pVar;
        O3.c cVar;
        Q2.a aVar = AbstractC0647C.f8104c;
        String str = abstractC0677d0.p().f;
        aVar.getClass();
        d3.i.e("input", str);
        if (((Pattern) aVar.f2208d).matcher(str).matches()) {
            return m3.y.f8308a;
        }
        Q3.b bVar = u0.f8226a;
        r0 r0VarB = u0.b(abstractC0677d0.p().k());
        if (r0VarB instanceof C0688m) {
            C0688m c0688m = (C0688m) r0VarB;
            Method methodC = null;
            O3.e eVar = c0688m.f;
            if (z4) {
                cVar = (eVar.f1978d & 4) == 4 ? eVar.f1980g : null;
                if (cVar != null) {
                    AbstractC0647C abstractC0647C = abstractC0677d0.p().f8181d;
                    int i5 = cVar.f1967e;
                    N3.f fVar = c0688m.f8198g;
                    methodC = abstractC0647C.c(fVar.r(i5), fVar.r(cVar.f));
                }
                if (methodC == null) {
                    pVar = !Modifier.isStatic(methodC.getModifiers()) ? abstractC0677d0.n() ? new m3.p(methodC, h(abstractC0677d0)) : new m3.s(0, methodC) : abstractC0677d0.p().k().t().b(w0.f8238a) ? abstractC0677d0.n() ? new m3.q(methodC) : new m3.s(1, methodC) : abstractC0677d0.n() ? new m3.r(methodC, h(abstractC0677d0)) : new m3.s(2, methodC);
                } else if (T3.i.d(abstractC0677d0.p().k()) && d3.i.a(abstractC0677d0.p().k().c(), AbstractC0811n.f8812d)) {
                    Class clsP0 = AbstractC0420a.p0(abstractC0677d0.p().k().l());
                    if (clsP0 == null) {
                        throw new Q2.d("Underlying property of inline class " + abstractC0677d0.p() + " should have a field", 2);
                    }
                    Method methodJ = AbstractC0420a.J(clsP0, abstractC0677d0.p().k());
                    pVar = abstractC0677d0.n() ? new m3.v(methodJ, h(abstractC0677d0)) : new m3.w(methodJ, AbstractC0420a.V(methodJ.getDeclaringClass()));
                } else {
                    Field field = (Field) abstractC0677d0.p().f8184h.getValue();
                    if (field == null) {
                        throw new Q2.d("No accessors or field is found for property " + abstractC0677d0.p(), 2);
                    }
                    pVar = f(abstractC0677d0, z4, field);
                }
            } else {
                if ((eVar.f1978d & 8) == 8) {
                    cVar = eVar.f1981h;
                }
                if (cVar != null) {
                }
                if (methodC == null) {
                }
            }
        } else if (r0VarB instanceof C0686k) {
            pVar = f(abstractC0677d0, z4, ((C0686k) r0VarB).f8186d);
        } else {
            if (!(r0VarB instanceof C0687l)) {
                if (!(r0VarB instanceof C0689n)) {
                    throw new A0.c();
                }
                if (z4) {
                    c0685j = ((C0689n) r0VarB).f8204d;
                } else {
                    c0685j = ((C0689n) r0VarB).f8205e;
                    if (c0685j == null) {
                        throw new Q2.d("No setter found for property " + abstractC0677d0.p(), 2);
                    }
                }
                AbstractC0647C abstractC0647C2 = abstractC0677d0.p().f8181d;
                P3.e eVar2 = c0685j.f8178d;
                Method methodC2 = abstractC0647C2.c(eVar2.f2159b, eVar2.f2160c);
                if (methodC2 != null) {
                    Modifier.isStatic(methodC2.getModifiers());
                    return abstractC0677d0.n() ? new m3.p(methodC2, h(abstractC0677d0)) : new m3.s(0, methodC2);
                }
                throw new Q2.d("No accessor found for property " + abstractC0677d0.p(), 2);
            }
            if (z4) {
                method = ((C0687l) r0VarB).f8189d;
            } else {
                C0687l c0687l = (C0687l) r0VarB;
                method = c0687l.f8190e;
                if (method == null) {
                    throw new Q2.d("No source found for setter of Java method property: " + c0687l.f8189d, 2);
                }
            }
            pVar = abstractC0677d0.n() ? new m3.p(method, h(abstractC0677d0)) : new m3.s(0, method);
        }
        return AbstractC0420a.k(pVar, abstractC0677d0.o(), false);
    }

    public static final String d(Method method) {
        StringBuilder sb = new StringBuilder();
        sb.append(method.getName());
        Class<?>[] parameterTypes = method.getParameterTypes();
        d3.i.d("parameterTypes", parameterTypes);
        sb.append(R2.i.s0(parameterTypes, "(", ")", C0672b.f8155m));
        Class<?> returnType = method.getReturnType();
        d3.i.d("returnType", returnType);
        sb.append(AbstractC0917d.b(returnType));
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final m3.t f(AbstractC0677d0 abstractC0677d0, boolean z4, Field field) {
        InterfaceC0783K interfaceC0783KK = abstractC0677d0.p().k();
        InterfaceC0807j interfaceC0807jL = interfaceC0783KK.l();
        d3.i.d("containingDeclaration", interfaceC0807jL);
        boolean z5 = true;
        if (T3.e.m(interfaceC0807jL)) {
            InterfaceC0807j interfaceC0807jL2 = interfaceC0807jL.l();
            if ((T3.e.o(interfaceC0807jL2, 2) || T3.e.o(interfaceC0807jL2, 5)) && (!(interfaceC0783KK instanceof f4.r) || !P3.h.d(((f4.r) interfaceC0783KK).f6891D))) {
            }
        } else if (Modifier.isStatic(field.getModifiers())) {
            boolean z6 = false;
            if (!abstractC0677d0.p().k().t().b(w0.f8238a)) {
                return z4 ? new m3.j(field, z6, 2) : new m3.n(field, g(abstractC0677d0), false, 2);
            }
            if (z4) {
                return abstractC0677d0.n() ? new m3.i(field, false) : new m3.j(field, z5, 1);
            }
            return abstractC0677d0.n() ? new m3.m(field, g(abstractC0677d0), false) : new m3.n(field, g(abstractC0677d0), true, 1);
        }
        if (z4) {
            if (abstractC0677d0.n()) {
                return new m3.h(h(abstractC0677d0), field);
            }
            d3.i.e("field", field);
            return new m3.j(field, z5, 0);
        }
        if (abstractC0677d0.n()) {
            return new m3.l(field, g(abstractC0677d0), h(abstractC0677d0));
        }
        boolean zG = g(abstractC0677d0);
        d3.i.e("field", field);
        return new m3.n(field, zG, true, 0);
    }

    public static final boolean g(AbstractC0677d0 abstractC0677d0) {
        return !h4.X.f(abstractC0677d0.p().k().e());
    }

    public static final Object h(AbstractC0677d0 abstractC0677d0) {
        d3.i.e("<this>", abstractC0677d0);
        j0 j0VarP = abstractC0677d0.p();
        return AbstractC0420a.c(j0VarP.f8183g, j0VarP.k());
    }

    public static q0 i(InterfaceC0221a interfaceC0221a) {
        return new q0(interfaceC0221a);
    }

    public static p0 j(InterfaceC0221a interfaceC0221a) {
        if (interfaceC0221a != null) {
            return new p0(null, interfaceC0221a);
        }
        b(2);
        throw null;
    }

    public abstract String e();
}
