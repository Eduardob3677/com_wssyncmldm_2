package o3;

import R2.u;
import R2.v;
import R2.x;
import R2.y;
import R2.z;
import android.content.Context;
import android.view.HapticFeedbackConstants;
import android.view.inputmethod.InputMethodManager;
import b2.C0205a;
import f1.AbstractC0420a;
import h4.AbstractC0450c;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.N;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import p3.C0745c;
import p3.C0746d;
import p3.C0749g;
import p3.EnumC0747e;
import q3.C0757d;
import r3.AbstractC0811n;
import r3.InterfaceC0775C;
import r3.InterfaceC0786N;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import r3.InterfaceC0821x;
import s2.C0835a;
import s3.C0843f;
import s3.C0844g;
import s3.C0846i;
import s3.C0847j;
import s3.InterfaceC0839b;
import s3.InterfaceC0845h;
import u3.C0890w;
import u3.V;
import w3.C0902a;
import x3.AbstractC0917d;

/* renamed from: o3.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0729f {

    /* renamed from: a, reason: collision with root package name */
    public static com.google.firebase.messaging.p f8449a;

    public static V3.f a(Class cls) {
        int i5 = 0;
        while (cls.isArray()) {
            i5++;
            cls = cls.getComponentType();
            d3.i.d("currentClass.componentType", cls);
        }
        if (cls.isPrimitive()) {
            if (d3.i.a(cls, Void.TYPE)) {
                return new V3.f(Q3.b.k(m.f8509d.g()), i5);
            }
            EnumC0734k enumC0734kD = Y3.c.b(cls.getName()).d();
            d3.i.d("get(currentClass.name).primitiveType", enumC0734kD);
            return i5 > 0 ? new V3.f(Q3.b.k((Q3.c) enumC0734kD.f.getValue()), i5 - 1) : new V3.f(Q3.b.k((Q3.c) enumC0734kD.f8472e.getValue()), i5);
        }
        Q3.b bVarA = AbstractC0917d.a(cls);
        String str = C0757d.f8645a;
        Q3.c cVarB = bVarA.b();
        d3.i.d("javaClassId.asSingleFqName()", cVarB);
        Q3.b bVar = (Q3.b) C0757d.f8651h.get(cVarB.i());
        if (bVar != null) {
            bVarA = bVar;
        }
        return new V3.f(bVarA, i5);
    }

    public static final int b(AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", abstractC0468v);
        InterfaceC0839b interfaceC0839bF = abstractC0468v.t().f(m.f8520q);
        if (interfaceC0839bF == null) {
            return 0;
        }
        V3.g gVar = (V3.g) z.x1(interfaceC0839bF.b(), n.f8533d);
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.resolve.constants.IntValue", gVar);
        return ((Number) ((V3.k) gVar).f2797a).intValue();
    }

    public static b2.c c(String str, String str2) {
        C0835a c0835a = new C0835a(str, str2);
        b2.b bVarA = b2.c.a(C0835a.class);
        bVarA.f5112b = 1;
        bVarA.f = new C0205a(0, c0835a);
        return bVarA.b();
    }

    public static C0749g d(C0745c c0745c, boolean z4) {
        String lowerCase;
        d3.i.e("functionClass", c0745c);
        C0749g c0749g = new C0749g(c0745c, null, 1, z4);
        C0890w c0890wH0 = c0745c.H0();
        u uVar = u.f2325c;
        ArrayList arrayList = new ArrayList();
        List list = c0745c.f8589m;
        for (Object obj : list) {
            if (((InterfaceC0789Q) obj).A() != 2) {
                break;
            }
            arrayList.add(obj);
        }
        R2.k kVarK1 = R2.m.k1(arrayList);
        ArrayList arrayList2 = new ArrayList(R2.o.C0(kVarK1));
        Iterator it = kVarK1.iterator();
        while (true) {
            y yVar = (y) it;
            if (!yVar.f2331d.hasNext()) {
                c0749g.V0(null, c0890wH0, uVar, uVar, arrayList2, ((InterfaceC0789Q) R2.m.U0(list)).q(), 4, AbstractC0811n.f8813e);
                c0749g.f9507z = true;
                return c0749g;
            }
            x xVar = (x) yVar.next();
            int i5 = xVar.f2328a;
            InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) xVar.f2329b;
            String strB = interfaceC0789Q.getName().b();
            d3.i.d("typeParameter.name.asString()", strB);
            if (d3.i.a(strB, "T")) {
                lowerCase = "instance";
            } else if (d3.i.a(strB, "E")) {
                lowerCase = "receiver";
            } else {
                lowerCase = strB.toLowerCase(Locale.ROOT);
                d3.i.d("this as java.lang.String).toLowerCase(Locale.ROOT)", lowerCase);
            }
            C0843f c0843f = C0844g.f9041a;
            Q3.f fVarE = Q3.f.e(lowerCase);
            AbstractC0472z abstractC0472zQ = interfaceC0789Q.q();
            d3.i.d("typeParameter.defaultType", abstractC0472zQ);
            C0890w c0890w = c0890wH0;
            ArrayList arrayList3 = arrayList2;
            arrayList3.add(new V(c0749g, null, i5, c0843f, fVarE, abstractC0472zQ, false, false, false, null, InterfaceC0786N.f8790a));
            arrayList2 = arrayList3;
            c0890wH0 = c0890w;
        }
    }

    public static final AbstractC0472z e(AbstractC0732i abstractC0732i, InterfaceC0845h interfaceC0845h, AbstractC0468v abstractC0468v, List list, ArrayList arrayList, AbstractC0468v abstractC0468v2, boolean z4) {
        InterfaceC0802e interfaceC0802eJ;
        int i5 = 0;
        ArrayList arrayList2 = new ArrayList(list.size() + arrayList.size() + (abstractC0468v != null ? 1 : 0) + 1);
        ArrayList arrayList3 = new ArrayList(R2.o.C0(list));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList3.add(AbstractC0420a.b((AbstractC0468v) it.next()));
        }
        arrayList2.addAll(arrayList3);
        q4.k.b(arrayList2, abstractC0468v != null ? AbstractC0420a.b(abstractC0468v) : null);
        Iterator it2 = arrayList.iterator();
        int i6 = 0;
        while (true) {
            boolean zHasNext = it2.hasNext();
            InterfaceC0845h c0846i = C0844g.f9041a;
            if (!zHasNext) {
                arrayList2.add(AbstractC0420a.b(abstractC0468v2));
                int size = list.size() + arrayList.size() + (abstractC0468v == null ? 0 : 1);
                if (z4) {
                    interfaceC0802eJ = abstractC0732i.v(size);
                } else {
                    Q3.f fVar = n.f8530a;
                    interfaceC0802eJ = abstractC0732i.j("Function" + size);
                }
                d3.i.d("if (isSuspendFunction) b…tFunction(parameterCount)", interfaceC0802eJ);
                if (abstractC0468v != null) {
                    Q3.c cVar = m.f8519p;
                    if (!interfaceC0845h.b(cVar)) {
                        ArrayList arrayListX0 = R2.m.X0(interfaceC0845h, new C0847j(abstractC0732i, cVar, v.f2326c));
                        interfaceC0845h = arrayListX0.isEmpty() ? c0846i : new C0846i(i5, arrayListX0);
                    }
                }
                if (!list.isEmpty()) {
                    int size2 = list.size();
                    Q3.c cVar2 = m.f8520q;
                    if (!interfaceC0845h.b(cVar2)) {
                        ArrayList arrayListX02 = R2.m.X0(interfaceC0845h, new C0847j(abstractC0732i, cVar2, z.z1(new Q2.e(n.f8533d, new V3.k(size2)))));
                        if (!arrayListX02.isEmpty()) {
                            c0846i = new C0846i(i5, arrayListX02);
                        }
                        interfaceC0845h = c0846i;
                    }
                }
                return C0451d.q(AbstractC0450c.w(interfaceC0845h), interfaceC0802eJ, arrayList2);
            }
            Object next = it2.next();
            int i7 = i6 + 1;
            if (i6 < 0) {
                R2.n.B0();
                throw null;
            }
            arrayList2.add(AbstractC0420a.b((AbstractC0468v) next));
            i6 = i7;
        }
    }

    public static final Q3.f f(AbstractC0468v abstractC0468v) {
        String str;
        InterfaceC0839b interfaceC0839bF = abstractC0468v.t().f(m.f8521r);
        if (interfaceC0839bF == null) {
            return null;
        }
        Object objC1 = R2.m.c1(interfaceC0839bF.b().values());
        V3.v vVar = objC1 instanceof V3.v ? (V3.v) objC1 : null;
        if (vVar != null && (str = (String) vVar.f2797a) != null) {
            if (!Q3.f.f(str)) {
                str = null;
            }
            if (str != null) {
                return Q3.f.e(str);
            }
        }
        return null;
    }

    public static b2.c g(String str, E2.a aVar) {
        b2.b bVarA = b2.c.a(C0835a.class);
        bVarA.f5112b = 1;
        bVarA.a(new b2.l(1, 0, Context.class));
        bVarA.f = new Q0.h(str, aVar);
        return bVarA.b();
    }

    public static final List h(AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", abstractC0468v);
        n(abstractC0468v);
        int iB = b(abstractC0468v);
        if (iB == 0) {
            return u.f2325c;
        }
        List listSubList = abstractC0468v.u0().subList(0, iB);
        ArrayList arrayList = new ArrayList(R2.o.C0(listSubList));
        Iterator it = listSubList.iterator();
        while (it.hasNext()) {
            AbstractC0468v abstractC0468vB = ((N) it.next()).b();
            d3.i.d("it.type", abstractC0468vB);
            arrayList.add(abstractC0468vB);
        }
        return arrayList;
    }

    public static final EnumC0747e i(InterfaceC0804g interfaceC0804g) {
        if (!(interfaceC0804g instanceof InterfaceC0802e) || !AbstractC0732i.H(interfaceC0804g)) {
            return null;
        }
        Q3.e eVarH = X3.f.h(interfaceC0804g);
        if (!eVarH.d() || eVarH.f2238a.isEmpty()) {
            return null;
        }
        Z0.h hVar = EnumC0747e.f8592e;
        String strB = eVarH.f().b();
        d3.i.d("shortName().asString()", strB);
        Q3.c cVarE = eVarH.g().e();
        d3.i.d("toSafe().parent()", cVarE);
        hVar.getClass();
        C0746d c0746dG = Z0.h.g(strB, cVarE);
        if (c0746dG != null) {
            return c0746dG.f8590a;
        }
        return null;
    }

    public static final AbstractC0468v j(AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", abstractC0468v);
        n(abstractC0468v);
        if (abstractC0468v.t().f(m.f8519p) == null) {
            return null;
        }
        return ((N) abstractC0468v.u0().get(b(abstractC0468v))).b();
    }

    public static final InterfaceC0804g k(InterfaceC0807j interfaceC0807j) {
        d3.i.e("<this>", interfaceC0807j);
        InterfaceC0807j interfaceC0807jL = interfaceC0807j.l();
        if (interfaceC0807jL == null || (interfaceC0807j instanceof InterfaceC0775C)) {
            return null;
        }
        if (!(interfaceC0807jL.l() instanceof InterfaceC0775C)) {
            return k(interfaceC0807jL);
        }
        if (interfaceC0807jL instanceof InterfaceC0804g) {
            return (InterfaceC0804g) interfaceC0807jL;
        }
        return null;
    }

    public static final List l(AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", abstractC0468v);
        n(abstractC0468v);
        List listU0 = abstractC0468v.u0();
        return listU0.subList(((!n(abstractC0468v) || abstractC0468v.t().f(m.f8519p) == null) ? 0 : 1) + b(abstractC0468v), listU0.size() - 1);
    }

    public static int m(InputMethodManager inputMethodManager) {
        Method methodP = i3.x.P(InputMethodManager.class, "isAccessoryKeyboardState", new Class[0]);
        if (methodP != null) {
            Object objJ0 = i3.x.j0(inputMethodManager, methodP, new Object[0]);
            if (objJ0 instanceof Integer) {
                return ((Integer) objJ0).intValue();
            }
        }
        return 0;
    }

    public static final boolean n(AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", abstractC0468v);
        InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
        if (interfaceC0804gI == null) {
            return false;
        }
        EnumC0747e enumC0747eI = i(interfaceC0804gI);
        return enumC0747eI == EnumC0747e.f || enumC0747eI == EnumC0747e.f8593g;
    }

    public static final boolean o(AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", abstractC0468v);
        InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
        return (interfaceC0804gI != null ? i(interfaceC0804gI) : null) == EnumC0747e.f8593g;
    }

    public static void p(Class cls, J3.o oVar) {
        d3.i.e("klass", cls);
        Annotation[] declaredAnnotations = cls.getDeclaredAnnotations();
        d3.i.d("klass.declaredAnnotations", declaredAnnotations);
        for (Annotation annotation : declaredAnnotations) {
            d3.i.d("annotation", annotation);
            Class clsQ = L2.b.q(L2.b.k(annotation));
            J3.m mVarE = oVar.e(AbstractC0917d.a(clsQ), new C0902a(annotation));
            if (mVarE != null) {
                q(mVarE, annotation, clsQ);
            }
        }
        oVar.d();
    }

    public static void q(J3.m mVar, Annotation annotation, Class cls) {
        Method[] declaredMethods = cls.getDeclaredMethods();
        d3.i.d("annotationType.declaredMethods", declaredMethods);
        for (Method method : declaredMethods) {
            try {
                Object objInvoke = method.invoke(annotation, null);
                d3.i.b(objInvoke);
                Q3.f fVarE = Q3.f.e(method.getName());
                Class<?> enclosingClass = objInvoke.getClass();
                if (d3.i.a(enclosingClass, Class.class)) {
                    mVar.i(fVarE, a((Class) objInvoke));
                } else if (w3.c.f9610a.contains(enclosingClass)) {
                    mVar.g(fVarE, objInvoke);
                } else {
                    List list = AbstractC0917d.f9651a;
                    if (Enum.class.isAssignableFrom(enclosingClass)) {
                        if (!enclosingClass.isEnum()) {
                            enclosingClass = enclosingClass.getEnclosingClass();
                        }
                        d3.i.d("if (clazz.isEnum) clazz else clazz.enclosingClass", enclosingClass);
                        mVar.h(fVarE, AbstractC0917d.a(enclosingClass), Q3.f.e(((Enum) objInvoke).name()));
                    } else if (Annotation.class.isAssignableFrom(enclosingClass)) {
                        Class<?>[] interfaces = enclosingClass.getInterfaces();
                        d3.i.d("clazz.interfaces", interfaces);
                        Class cls2 = (Class) R2.i.u0(interfaces);
                        d3.i.d("annotationClass", cls2);
                        J3.m mVarJ = mVar.j(AbstractC0917d.a(cls2), fVarE);
                        if (mVarJ != null) {
                            q(mVarJ, (Annotation) objInvoke, cls2);
                        }
                    } else {
                        if (!enclosingClass.isArray()) {
                            throw new UnsupportedOperationException("Unsupported annotation argument value (" + enclosingClass + "): " + objInvoke);
                        }
                        J3.n nVarM = mVar.m(fVarE);
                        if (nVarM != null) {
                            Class<?> componentType = enclosingClass.getComponentType();
                            if (componentType.isEnum()) {
                                Q3.b bVarA = AbstractC0917d.a(componentType);
                                for (Object obj : (Object[]) objInvoke) {
                                    d3.i.c("null cannot be cast to non-null type kotlin.Enum<*>", obj);
                                    nVarM.J(bVarA, Q3.f.e(((Enum) obj).name()));
                                }
                            } else if (d3.i.a(componentType, Class.class)) {
                                for (Object obj2 : (Object[]) objInvoke) {
                                    d3.i.c("null cannot be cast to non-null type java.lang.Class<*>", obj2);
                                    nVarM.c0(a((Class) obj2));
                                }
                            } else if (Annotation.class.isAssignableFrom(componentType)) {
                                for (Object obj3 : (Object[]) objInvoke) {
                                    J3.m mVarP0 = nVarM.p0(AbstractC0917d.a(componentType));
                                    if (mVarP0 != null) {
                                        d3.i.c("null cannot be cast to non-null type kotlin.Annotation", obj3);
                                        q(mVarP0, (Annotation) obj3, componentType);
                                    }
                                }
                            } else {
                                for (Object obj4 : (Object[]) objInvoke) {
                                    nVarM.u0(obj4);
                                }
                            }
                            nVarM.d();
                        }
                    }
                }
            } catch (IllegalAccessException unused) {
            }
        }
        mVar.d();
    }

    public static final InterfaceC0802e r(InterfaceC0821x interfaceC0821x, Q3.c cVar) {
        InterfaceC0804g interfaceC0804gC;
        a4.o oVarR;
        z3.b bVar = z3.b.f9729c;
        d3.i.e("<this>", interfaceC0821x);
        d3.i.e("fqName", cVar);
        if (cVar.d()) {
            return null;
        }
        Q3.c cVarE = cVar.e();
        d3.i.d("fqName.parent()", cVarE);
        a4.k kVar = ((u3.y) interfaceC0821x.a0(cVarE)).f9516i;
        Q3.f fVarF = cVar.f();
        d3.i.d("fqName.shortName()", fVarF);
        InterfaceC0804g interfaceC0804gC2 = kVar.c(fVarF, bVar);
        InterfaceC0802e interfaceC0802e = interfaceC0804gC2 instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gC2 : null;
        if (interfaceC0802e != null) {
            return interfaceC0802e;
        }
        Q3.c cVarE2 = cVar.e();
        d3.i.d("fqName.parent()", cVarE2);
        InterfaceC0802e interfaceC0802eR = r(interfaceC0821x, cVarE2);
        if (interfaceC0802eR == null || (oVarR = interfaceC0802eR.R()) == null) {
            interfaceC0804gC = null;
        } else {
            Q3.f fVarF2 = cVar.f();
            d3.i.d("fqName.shortName()", fVarF2);
            interfaceC0804gC = oVarR.c(fVarF2, bVar);
        }
        if (interfaceC0804gC instanceof InterfaceC0802e) {
            return (InterfaceC0802e) interfaceC0804gC;
        }
        return null;
    }

    public static int s(int i5) {
        Method methodJ = i3.x.J(HapticFeedbackConstants.class, "hidden_semGetVibrationIndex", Integer.TYPE);
        if (methodJ == null) {
            return -1;
        }
        Object objJ0 = i3.x.j0(null, methodJ, Integer.valueOf(i5));
        if (objJ0 instanceof Integer) {
            return ((Integer) objJ0).intValue();
        }
        return -1;
    }
}
