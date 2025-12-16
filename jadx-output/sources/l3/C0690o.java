package l3;

import c3.InterfaceC0221a;
import h4.AbstractC0468v;
import i3.InterfaceC0490k;
import java.lang.reflect.Array;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import r3.InterfaceC0781I;
import r3.InterfaceC0789Q;
import r3.InterfaceC0800c;
import u3.C0890w;

/* renamed from: l3.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0690o extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8206d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractC0693r f8207e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0690o(AbstractC0693r abstractC0693r, int i5) {
        super(0);
        this.f8206d = i5;
        this.f8207e = abstractC0693r;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() throws NegativeArraySizeException {
        int i5;
        Type[] lowerBounds;
        Type type = null;
        int i6 = 3;
        int i7 = 0;
        AbstractC0693r abstractC0693r = this.f8207e;
        switch (this.f8206d) {
            case 0:
                int size = (abstractC0693r.h() ? 1 : 0) + abstractC0693r.l().size();
                int size2 = (abstractC0693r.l().size() + 31) / 32;
                Object[] objArr = new Object[size + size2 + 1];
                Iterator it = abstractC0693r.l().iterator();
                while (it.hasNext()) {
                    C0663T c0663t = (C0663T) ((InterfaceC0490k) it.next());
                    InterfaceC0781I interfaceC0781IA = c0663t.a();
                    u3.V v4 = interfaceC0781IA instanceof u3.V ? (u3.V) interfaceC0781IA : null;
                    boolean zA = v4 != null ? X3.f.a(v4) : false;
                    int i8 = c0663t.f8135b;
                    if (zA) {
                        l0 l0VarC = c0663t.c();
                        Q3.c cVar = w0.f8238a;
                        AbstractC0468v abstractC0468v = l0VarC.f8192a;
                        if (abstractC0468v == null || !T3.i.c(abstractC0468v)) {
                            l0 l0VarC2 = c0663t.c();
                            p0 p0Var = l0VarC2.f8193b;
                            Type typeR = p0Var != null ? (Type) p0Var.a() : null;
                            if (typeR == null) {
                                Type type2 = p0Var != null ? (Type) p0Var.a() : null;
                                typeR = type2 != null ? type2 : i3.x.r(l0VarC2, false);
                            }
                            objArr[i8] = w0.e(typeR);
                        }
                    }
                    InterfaceC0781I interfaceC0781IA2 = c0663t.a();
                    if ((interfaceC0781IA2 instanceof u3.V) && ((u3.V) interfaceC0781IA2).f9412l != null) {
                        Class clsQ = L2.b.q(Z0.j.K(c0663t.c()));
                        if (!clsQ.isArray()) {
                            throw new Q2.d("Cannot instantiate the default empty array of type " + clsQ.getSimpleName() + ", because it is not an array type", 2);
                        }
                        Object objNewInstance = Array.newInstance(clsQ.getComponentType(), 0);
                        d3.i.d("type.jvmErasure.java.run…\"\n            )\n        }", objNewInstance);
                        objArr[i8] = objNewInstance;
                    }
                }
                for (int i9 = 0; i9 < size2; i9++) {
                    objArr[size + i9] = 0;
                }
                return objArr;
            case 1:
                return w0.d(abstractC0693r.k());
            case 2:
                InterfaceC0800c interfaceC0800cK = abstractC0693r.k();
                ArrayList arrayList = new ArrayList();
                if (abstractC0693r.n()) {
                    i5 = 0;
                } else {
                    C0890w c0890wG = w0.g(interfaceC0800cK);
                    if (c0890wG != null) {
                        arrayList.add(new C0663T(abstractC0693r, 0, 1, new C0691p(c0890wG, 0)));
                        i5 = 1;
                    } else {
                        i5 = 0;
                    }
                    C0890w c0890wD0 = interfaceC0800cK.d0();
                    if (c0890wD0 != null) {
                        arrayList.add(new C0663T(abstractC0693r, i5, 2, new C0691p(c0890wD0, 1)));
                        i5++;
                    }
                }
                int size3 = interfaceC0800cK.w0().size();
                while (i7 < size3) {
                    arrayList.add(new C0663T(abstractC0693r, i5, 3, new C0692q(interfaceC0800cK, i7)));
                    i7++;
                    i5++;
                }
                if (abstractC0693r.m() && (interfaceC0800cK instanceof C3.a) && arrayList.size() > 1) {
                    R2.r.D0(arrayList, new F0.b(5));
                }
                arrayList.trimToSize();
                return arrayList;
            case 3:
                if (abstractC0693r.h()) {
                    Object objV0 = R2.m.V0(abstractC0693r.g().o());
                    ParameterizedType parameterizedType = objV0 instanceof ParameterizedType ? (ParameterizedType) objV0 : null;
                    if (d3.i.a(parameterizedType != null ? parameterizedType.getRawType() : null, U2.a.class)) {
                        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
                        d3.i.d("continuationType.actualTypeArguments", actualTypeArguments);
                        Object objU0 = R2.i.u0(actualTypeArguments);
                        WildcardType wildcardType = objU0 instanceof WildcardType ? (WildcardType) objU0 : null;
                        if (wildcardType != null && (lowerBounds = wildcardType.getLowerBounds()) != null) {
                            type = (Type) R2.i.n0(lowerBounds);
                        }
                    }
                }
                return type == null ? abstractC0693r.g().n() : type;
            case 4:
                AbstractC0468v abstractC0468vN = abstractC0693r.k().n();
                d3.i.b(abstractC0468vN);
                return new l0(abstractC0468vN, new C0690o(abstractC0693r, i6));
            default:
                List<InterfaceC0789Q> listU = abstractC0693r.k().u();
                d3.i.d("descriptor.typeParameters", listU);
                ArrayList arrayList2 = new ArrayList(R2.o.C0(listU));
                for (InterfaceC0789Q interfaceC0789Q : listU) {
                    d3.i.d("descriptor", interfaceC0789Q);
                    arrayList2.add(new m0(abstractC0693r, interfaceC0789Q));
                }
                return arrayList2;
        }
    }
}
