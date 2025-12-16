package E3;

import c3.InterfaceC0221a;
import h4.AbstractC0468v;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import s2.C0837c;
import s3.C0843f;
import s3.C0844g;
import u3.C0879k;
import u3.V;
import x3.AbstractC0910B;
import x3.C0909A;
import x3.C0911C;

/* loaded from: classes.dex */
public final class n extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f617d = 1;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ D3.e f618e;
    public final /* synthetic */ q f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(D3.e eVar, q qVar) {
        super(0);
        this.f618e = eVar;
        this.f = qVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r10v2, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r14v1, types: [C3.b, u3.k, u3.v] */
    /* JADX WARN: Type inference failed for: r1v20, types: [E3.q] */
    /* JADX WARN: Type inference failed for: r1v26, types: [E3.q] */
    @Override // c3.InterfaceC0221a
    public final Object a() throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        q qVar;
        D3.e eVar;
        String str;
        String str2;
        ?? EmptyList;
        com.google.firebase.messaging.p pVar;
        Q2.e eVar2;
        Object obj;
        List listC;
        switch (this.f617d) {
            case 0:
                q qVar2 = this.f;
                Constructor<?>[] declaredConstructors = qVar2.f623o.f9666a.getDeclaredConstructors();
                d3.i.d("klass.declaredConstructors", declaredConstructors);
                List listN = r4.m.n(r4.m.l(new r4.f(R2.i.h0(declaredConstructors), false, x3.j.f9661l), x3.k.f9662l));
                ArrayList arrayList = new ArrayList(listN.size());
                Iterator it = listN.iterator();
                while (true) {
                    boolean zHasNext = it.hasNext();
                    D3.e eVar3 = qVar2.f551b;
                    InterfaceC0802e interfaceC0802e = qVar2.n;
                    if (!zHasNext) {
                        x3.o oVar = qVar2.f623o;
                        boolean zE = oVar.e();
                        C0843f c0843f = C0844g.f9041a;
                        D3.e eVar4 = this.f618e;
                        if (zE) {
                            C3.b bVarH1 = C3.b.h1(interfaceC0802e, c0843f, true, ((D3.a) eVar3.f499d).f477j.c(oVar));
                            ArrayList arrayListD = oVar.d();
                            qVar = qVar2;
                            ArrayList arrayList2 = new ArrayList(arrayListD.size());
                            F3.a aVarN = L2.b.N(2, false, false, null, 6);
                            Iterator it2 = arrayListD.iterator();
                            int i5 = 0;
                            while (it2.hasNext()) {
                                C0909A c0909a = (C0909A) it2.next();
                                arrayList2.add(new V(bVarH1, null, i5, c0843f, c0909a.b(), ((com.google.firebase.messaging.p) eVar3.f502h).K(c0909a.e(), aVarN), false, false, false, null, ((D3.a) eVar3.f499d).f477j.c(c0909a)));
                                i5++;
                            }
                            bVarH1.Z0(false);
                            A3.p pVarC = interfaceC0802e.c();
                            d3.i.d("classDescriptor.visibility", pVarC);
                            if (d3.i.a(pVarC, A3.q.f143b)) {
                                pVarC = A3.q.f144c;
                                d3.i.d("PROTECTED_AND_PACKAGE", pVarC);
                            }
                            bVarH1.e1(arrayList2, pVarC);
                            bVarH1.Y0(false);
                            bVarH1.a1(interfaceC0802e.q());
                            int i6 = 2;
                            String strN = W1.a.n(bVarH1, 2);
                            if (arrayList.isEmpty()) {
                                arrayList.add(bVarH1);
                                ((D3.a) eVar4.f499d).f474g.getClass();
                            } else {
                                Iterator it3 = arrayList.iterator();
                                while (it3.hasNext()) {
                                    if (!d3.i.a(W1.a.n((C0879k) it3.next(), i6), strN)) {
                                        i6 = 2;
                                    }
                                }
                                arrayList.add(bVarH1);
                                ((D3.a) eVar4.f499d).f474g.getClass();
                            }
                        } else {
                            qVar = qVar2;
                        }
                        ((Y3.a) ((D3.a) eVar4.f499d).f490x).a(eVar4, interfaceC0802e, arrayList);
                        C0837c c0837c = ((D3.a) eVar4.f499d).f484r;
                        boolean zIsEmpty = arrayList.isEmpty();
                        Collection collectionZ0 = arrayList;
                        if (zIsEmpty) {
                            Class cls = oVar.f9666a;
                            boolean zIsAnnotation = cls.isAnnotation();
                            cls.isInterface();
                            if (zIsAnnotation) {
                                ?? H12 = C3.b.h1(interfaceC0802e, c0843f, true, ((D3.a) eVar3.f499d).f477j.c(oVar));
                                if (zIsAnnotation) {
                                    List listC2 = oVar.c();
                                    EmptyList = new ArrayList(listC2.size());
                                    F3.a aVarN2 = L2.b.N(2, true, false, null, 6);
                                    ArrayList arrayList3 = new ArrayList();
                                    ArrayList arrayList4 = new ArrayList();
                                    for (Object obj2 : listC2) {
                                        if (d3.i.a(((x3.x) obj2).b(), A3.z.f166b)) {
                                            arrayList3.add(obj2);
                                        } else {
                                            arrayList4.add(obj2);
                                        }
                                    }
                                    arrayList3.size();
                                    x3.x xVar = (x3.x) R2.m.O0(arrayList3);
                                    com.google.firebase.messaging.p pVar2 = (com.google.firebase.messaging.p) eVar3.f502h;
                                    if (xVar != null) {
                                        AbstractC0910B abstractC0910BE = xVar.e();
                                        if (abstractC0910BE instanceof x3.i) {
                                            x3.i iVar = (x3.i) abstractC0910BE;
                                            eVar2 = new Q2.e(pVar2.I(iVar, aVarN2, true), pVar2.K(iVar.f9659b, aVarN2));
                                        } else {
                                            eVar2 = new Q2.e(pVar2.K(abstractC0910BE, aVarN2), null);
                                        }
                                        pVar = pVar2;
                                        str = "classDescriptor.visibility";
                                        eVar = eVar4;
                                        str2 = "PROTECTED_AND_PACKAGE";
                                        qVar.x(EmptyList, H12, 0, xVar, (AbstractC0468v) eVar2.f2212c, (AbstractC0468v) eVar2.f2213d);
                                    } else {
                                        eVar = eVar4;
                                        pVar = pVar2;
                                        str = "classDescriptor.visibility";
                                        str2 = "PROTECTED_AND_PACKAGE";
                                    }
                                    int i7 = xVar != null ? 1 : 0;
                                    Iterator it4 = arrayList4.iterator();
                                    int i8 = 0;
                                    while (it4.hasNext()) {
                                        x3.x xVar2 = (x3.x) it4.next();
                                        com.google.firebase.messaging.p pVar3 = pVar;
                                        qVar.x(EmptyList, H12, i8 + i7, xVar2, pVar3.K(xVar2.e(), aVarN2), null);
                                        i8++;
                                        pVar = pVar3;
                                    }
                                } else {
                                    eVar = eVar4;
                                    str = "classDescriptor.visibility";
                                    str2 = "PROTECTED_AND_PACKAGE";
                                    EmptyList = Collections.emptyList();
                                }
                                H12.Z0(false);
                                A3.p pVarC2 = interfaceC0802e.c();
                                d3.i.d(str, pVarC2);
                                if (d3.i.a(pVarC2, A3.q.f143b)) {
                                    pVarC2 = A3.q.f144c;
                                    d3.i.d(str2, pVarC2);
                                }
                                H12.e1(EmptyList, pVarC2);
                                H12.Y0(true);
                                H12.a1(interfaceC0802e.q());
                                ((D3.a) eVar3.f499d).f474g.getClass();
                                obj = H12;
                            } else {
                                eVar = eVar4;
                                obj = null;
                            }
                            eVar4 = eVar;
                            collectionZ0 = R2.n.z0(obj);
                        }
                        return R2.m.g1(c0837c.j(eVar4, collectionZ0));
                    }
                    x3.r rVar = (x3.r) it.next();
                    D3.c cVarG0 = W1.a.g0(eVar3, rVar);
                    D3.a aVar = (D3.a) eVar3.f499d;
                    C3.b bVarH12 = C3.b.h1(interfaceC0802e, cVarG0, false, aVar.f477j.c(rVar));
                    D3.e eVar5 = new D3.e(aVar, new D3.f(eVar3, bVarH12, rVar, interfaceC0802e.s().size()), (Q2.c) eVar3.f);
                    Constructor constructor = rVar.f9670a;
                    Type[] genericParameterTypes = constructor.getGenericParameterTypes();
                    d3.i.d("types", genericParameterTypes);
                    if (genericParameterTypes.length == 0) {
                        listC = R2.u.f2325c;
                    } else {
                        Class declaringClass = constructor.getDeclaringClass();
                        if (declaringClass.getDeclaringClass() != null && !Modifier.isStatic(declaringClass.getModifiers())) {
                            genericParameterTypes = (Type[]) R2.i.l0(genericParameterTypes, 1, genericParameterTypes.length);
                        }
                        Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
                        if (parameterAnnotations.length < genericParameterTypes.length) {
                            throw new IllegalStateException("Illegal generic signature: " + constructor);
                        }
                        if (parameterAnnotations.length > genericParameterTypes.length) {
                            parameterAnnotations = (Annotation[][]) R2.i.l0(parameterAnnotations, parameterAnnotations.length - genericParameterTypes.length, parameterAnnotations.length);
                        }
                        listC = rVar.c(genericParameterTypes, parameterAnnotations, constructor.isVarArgs());
                    }
                    B1.c cVarU = C.u(eVar5, bVarH12, listC);
                    List listS = interfaceC0802e.s();
                    d3.i.d("classDescriptor.declaredTypeParameters", listS);
                    ArrayList arrayListU = rVar.u();
                    ArrayList arrayList5 = new ArrayList(R2.o.C0(arrayListU));
                    Iterator it5 = arrayListU.iterator();
                    while (it5.hasNext()) {
                        InterfaceC0789Q interfaceC0789QA = ((D3.g) eVar5.f500e).a((C0911C) it5.next());
                        d3.i.b(interfaceC0789QA);
                        arrayList5.add(interfaceC0789QA);
                    }
                    bVarH12.f1((List) cVarU.f198e, L2.b.O(rVar.d()), R2.m.Y0(listS, arrayList5));
                    bVarH12.Y0(false);
                    bVarH12.Z0(cVarU.f197d);
                    bVarH12.a1(interfaceC0802e.q());
                    ((D3.a) eVar5.f499d).f474g.getClass();
                    arrayList.add(bVarH12);
                }
                break;
            default:
                D3.e eVar6 = this.f618e;
                return R2.m.j1(((Y3.a) ((D3.a) eVar6.f499d).f490x).f(eVar6, this.f.n));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(q qVar, D3.e eVar) {
        super(0);
        this.f = qVar;
        this.f618e = eVar;
    }
}
