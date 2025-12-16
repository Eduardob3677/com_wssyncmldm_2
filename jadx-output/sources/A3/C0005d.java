package A3;

import E3.C0018a;
import L3.C0061j;
import L3.X;
import L3.e0;
import c3.InterfaceC0221a;
import c3.InterfaceC0222b;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import com.samsung.android.knox.ex.KnoxContract;
import com.samsung.android.knox.ucm.core.UniversalCredentialUtil;
import f1.AbstractC0420a;
import h4.AbstractC0454g;
import h4.AbstractC0464q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.C0452e;
import h4.C0467u;
import h4.J;
import h4.K;
import h4.M;
import h4.N;
import h4.Z;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import o3.AbstractC0729f;
import o3.AbstractC0732i;
import o3.EnumC0734k;
import p.AbstractC0735a;
import q3.C0757d;
import r3.InterfaceC0775C;
import r3.InterfaceC0786N;
import r3.InterfaceC0789Q;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0807j;
import r3.InterfaceC0821x;
import s2.C0837c;
import t3.InterfaceC0859c;
import u3.C0867C;
import u3.V;
import w3.C0902a;
import x3.AbstractC0917d;
import x3.C0911C;
import x3.C0912D;
import x3.C0918e;

/* renamed from: A3.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0005d extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f118d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f119e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0005d(int i5, Object obj) {
        super(1);
        this.f118d = i5;
        this.f119e = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x0809  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0819  */
    /* JADX WARN: Removed duplicated region for block: B:304:0x081c  */
    /* JADX WARN: Removed duplicated region for block: B:305:0x081e  */
    @Override // c3.InterfaceC0222b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(Object obj) throws SecurityException {
        Object next;
        boolean z4;
        boolean z5;
        boolean zIsEmpty;
        I3.a aVar;
        AbstractC0464q abstractC0464qJ;
        AbstractC0464q abstractC0464qJ2;
        Object next2;
        N3.g gVar;
        G4 g4A;
        InterfaceC0802e interfaceC0802eC;
        N nC;
        boolean zEquals;
        Q2.k kVar = Q2.k.f2225a;
        String str = "method.parameterTypes";
        boolean z6 = false;
        Object obj2 = this.f119e;
        switch (this.f118d) {
            case 0:
                d3.i.e("it", (InterfaceC0800c) obj);
                return Boolean.valueOf(I.f100j.containsKey(W1.a.o((u3.N) obj2)));
            case 1:
                Q3.c cVar = (Q3.c) obj;
                d3.i.d("it", cVar);
                Map map = (Map) ((D) obj2).f80d;
                d3.i.e("values", map);
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Map.Entry entry : map.entrySet()) {
                    Q3.c cVar2 = (Q3.c) entry.getKey();
                    if (!d3.i.a(cVar, cVar2)) {
                        d3.i.e(UniversalCredentialUtil.AGENT_PACKAGENAME, cVar2);
                        if (d3.i.a(cVar.d() ? null : cVar.e(), cVar2)) {
                        }
                    }
                    linkedHashMap.put(entry.getKey(), entry.getValue());
                }
                if (!(!linkedHashMap.isEmpty())) {
                    linkedHashMap = null;
                }
                if (linkedHashMap == null) {
                    return null;
                }
                Iterator it = linkedHashMap.entrySet().iterator();
                if (it.hasNext()) {
                    next = it.next();
                    if (it.hasNext()) {
                        int length = L2.b.L((Q3.c) ((Map.Entry) next).getKey(), cVar).b().length();
                        do {
                            Object next3 = it.next();
                            int length2 = L2.b.L((Q3.c) ((Map.Entry) next3).getKey(), cVar).b().length();
                            if (length > length2) {
                                next = next3;
                                length = length2;
                            }
                        } while (it.hasNext());
                    }
                } else {
                    next = null;
                }
                Map.Entry entry2 = (Map.Entry) next;
                if (entry2 != null) {
                    return entry2.getValue();
                }
                return null;
            case 2:
                C0918e c0918e = (C0918e) obj;
                d3.i.e("annotation", c0918e);
                Q3.f fVar = B3.e.f231a;
                D3.c cVar3 = (D3.c) obj2;
                return B3.e.b(cVar3.f493c, c0918e, cVar3.f495e);
            case 3:
                C0911C c0911c = (C0911C) obj;
                d3.i.e("typeParameter", c0911c);
                D3.f fVar2 = (D3.f) obj2;
                Integer num = (Integer) ((LinkedHashMap) fVar2.f507e).get(c0911c);
                if (num == null) {
                    return null;
                }
                int iIntValue = num.intValue();
                D3.e eVar = (D3.e) fVar2.f505c;
                d3.i.e("<this>", eVar);
                D3.e eVar2 = new D3.e((D3.a) eVar.f499d, fVar2, (Q2.c) eVar.f);
                InterfaceC0807j interfaceC0807j = (InterfaceC0807j) fVar2.f506d;
                return new E3.I(L2.b.f(eVar2, interfaceC0807j.t()), c0911c, fVar2.f504b + iIntValue, interfaceC0807j);
            case 4:
                x3.x xVar = (x3.x) obj;
                d3.i.e("m", xVar);
                if (((Boolean) ((C0018a) obj2).f571b.e(xVar)).booleanValue()) {
                    Class<?> declaringClass = ((Method) xVar.a()).getDeclaringClass();
                    d3.i.d("member.declaringClass", declaringClass);
                    if (declaringClass.isInterface()) {
                        String strB = xVar.b().b();
                        int iHashCode = strB.hashCode();
                        if (iHashCode != -1776922004) {
                            if (iHashCode != -1295482945) {
                                if (iHashCode == 147696667 && strB.equals("hashCode")) {
                                    zIsEmpty = ((ArrayList) xVar.f()).isEmpty();
                                }
                            } else if (strB.equals("equals")) {
                                C0912D c0912d = (C0912D) R2.m.d1(xVar.f());
                                H3.d dVar = c0912d != null ? c0912d.f9638a : null;
                                x3.q qVar = dVar instanceof x3.q ? (x3.q) dVar : null;
                                if (qVar != null) {
                                    x3.s sVar = qVar.f9669b;
                                    if (sVar instanceof x3.o) {
                                        zIsEmpty = d3.i.a(((x3.o) sVar).b().b(), "java.lang.Object");
                                    }
                                }
                            }
                            zIsEmpty = false;
                        } else if (!strB.equals("toString")) {
                            zIsEmpty = false;
                        }
                        if (zIsEmpty) {
                            z5 = true;
                        }
                        if (z5) {
                        }
                    } else {
                        z5 = false;
                        z4 = z5;
                    }
                }
                return Boolean.valueOf(z4);
            case 5:
                d3.i.e("it", (i4.f) obj);
                E3.j jVar = (E3.j) obj2;
                return new E3.q(jVar.f597m, jVar, jVar.f595k, jVar.f596l != null, jVar.f603t);
            case 6:
                d3.i.e("kotlinTypeRefiner", (i4.f) obj);
                InterfaceC0802e interfaceC0802e = (InterfaceC0802e) obj2;
                if (!(interfaceC0802e instanceof InterfaceC0802e)) {
                    interfaceC0802e = null;
                }
                if (interfaceC0802e != null) {
                    X3.f.f(interfaceC0802e);
                }
                return null;
            case 7:
                I3.a aVar2 = (I3.a) obj;
                d3.i.e("it", aVar2);
                I3.p pVar = (I3.p) obj2;
                boolean z7 = pVar.f919b;
                k4.c cVar4 = aVar2.f880a;
                if (z7) {
                    if (((cVar4 == null || (abstractC0464qJ2 = i3.x.j(cVar4)) == null) ? null : i3.x.k(abstractC0464qJ2)) != null) {
                        return null;
                    }
                }
                if (cVar4 == null) {
                    return null;
                }
                AbstractC0472z abstractC0472zL = i3.x.l(cVar4);
                if (abstractC0472zL == null && ((abstractC0464qJ = i3.x.j(cVar4)) == null || (abstractC0472zL = i3.x.D0(abstractC0464qJ)) == null)) {
                    abstractC0472zL = i3.x.l(cVar4);
                    d3.i.b(abstractC0472zL);
                }
                J jI1 = i3.x.i1(abstractC0472zL);
                if (jI1 == null) {
                    return null;
                }
                List listU = i3.x.U(jI1);
                List listD = i3.x.D(cVar4);
                Iterator it2 = listU.iterator();
                Iterator it3 = listD.iterator();
                ArrayList arrayList = new ArrayList(Math.min(R2.o.C0(listU), R2.o.C0(listD)));
                while (it2.hasNext() && it3.hasNext()) {
                    Object next4 = it2.next();
                    N n = (N) it3.next();
                    InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) next4;
                    boolean zZ0 = i3.x.z0(n);
                    w wVar = aVar2.f881b;
                    if (zZ0) {
                        aVar = new I3.a(null, wVar, interfaceC0789Q);
                    } else {
                        Z zB0 = i3.x.b0(n);
                        aVar = new I3.a(zB0, ((D3.a) ((D3.e) pVar.f921d).f499d).f483q.b(wVar, zB0.t()), interfaceC0789Q);
                    }
                    arrayList.add(aVar);
                }
                return arrayList;
            case 8:
                InterfaceC0800c interfaceC0800c = (InterfaceC0800c) obj;
                d3.i.e("it", interfaceC0800c);
                AbstractC0468v abstractC0468vE = ((V) interfaceC0800c.w0().get(((V) obj2).f9408h)).e();
                d3.i.d("it.valueParameters[p.index].type", abstractC0468vE);
                return abstractC0468vE;
            case 9:
                w3.b bVar = (w3.b) obj;
                d3.i.e("kotlinClass", bVar);
                J3.d dVar2 = (J3.d) obj2;
                dVar2.getClass();
                HashMap map2 = new HashMap();
                HashMap map3 = new HashMap();
                HashMap map4 = new HashMap();
                D d2 = new D(dVar2, map2, map3);
                Class cls = bVar.f9608a;
                d3.i.e("klass", cls);
                Method[] declaredMethods = cls.getDeclaredMethods();
                d3.i.d("klass.declaredMethods", declaredMethods);
                int length3 = declaredMethods.length;
                int i5 = 0;
                while (true) {
                    String str2 = "sb.toString()";
                    String str3 = "parameterType";
                    String str4 = "(";
                    if (i5 >= length3) {
                        Constructor<?>[] declaredConstructors = cls.getDeclaredConstructors();
                        d3.i.d("klass.declaredConstructors", declaredConstructors);
                        int length4 = declaredConstructors.length;
                        int i6 = 0;
                        while (i6 < length4) {
                            Constructor<?> constructor = declaredConstructors[i6];
                            Q3.f fVar3 = Q3.h.f2249e;
                            d3.i.d("constructor", constructor);
                            StringBuilder sb = new StringBuilder(str4);
                            Constructor<?>[] constructorArr = declaredConstructors;
                            Class<?>[] parameterTypes = constructor.getParameterTypes();
                            int i7 = length4;
                            d3.i.d("constructor.parameterTypes", parameterTypes);
                            int length5 = parameterTypes.length;
                            String str5 = str4;
                            int i8 = 0;
                            while (i8 < length5) {
                                int i9 = length5;
                                Class<?> cls2 = parameterTypes[i8];
                                d3.i.d(str3, cls2);
                                sb.append(AbstractC0917d.b(cls2));
                                i8++;
                                length5 = i9;
                            }
                            sb.append(")V");
                            String string = sb.toString();
                            d3.i.d(str2, string);
                            com.google.firebase.messaging.p pVarN0 = d2.N0(fVar3, string);
                            Annotation[] declaredAnnotations = constructor.getDeclaredAnnotations();
                            d3.i.d("constructor.declaredAnnotations", declaredAnnotations);
                            int length6 = declaredAnnotations.length;
                            int i10 = 0;
                            while (i10 < length6) {
                                Annotation annotation = declaredAnnotations[i10];
                                d3.i.d("annotation", annotation);
                                Annotation[] annotationArr = declaredAnnotations;
                                Class clsQ = L2.b.q(L2.b.k(annotation));
                                int i11 = length6;
                                String str6 = str2;
                                String str7 = str3;
                                HashMap map5 = map2;
                                J3.c cVarL = ((J3.d) ((D) pVarN0.f).f80d).l(AbstractC0917d.a(clsQ), new C0902a(annotation), (ArrayList) pVarN0.f6259e);
                                if (cVarL != null) {
                                    AbstractC0729f.q(cVarL, annotation, clsQ);
                                }
                                i10++;
                                length6 = i11;
                                declaredAnnotations = annotationArr;
                                str2 = str6;
                                str3 = str7;
                                map2 = map5;
                            }
                            HashMap map6 = map2;
                            String str8 = str2;
                            String str9 = str3;
                            Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
                            d3.i.d("parameterAnnotations", parameterAnnotations);
                            if (!(parameterAnnotations.length == 0)) {
                                int length7 = constructor.getParameterTypes().length - parameterAnnotations.length;
                                int length8 = parameterAnnotations.length;
                                int i12 = 0;
                                while (i12 < length8) {
                                    Annotation[] annotationArr2 = parameterAnnotations[i12];
                                    d3.i.d("annotations", annotationArr2);
                                    int length9 = annotationArr2.length;
                                    int i13 = 0;
                                    while (i13 < length9) {
                                        Annotation annotation2 = annotationArr2[i13];
                                        Annotation[][] annotationArr3 = parameterAnnotations;
                                        Class clsQ2 = L2.b.q(L2.b.k(annotation2));
                                        int i14 = length8;
                                        int i15 = length7;
                                        Annotation[] annotationArr4 = annotationArr2;
                                        J3.c cVarN = pVarN0.N(i12 + length7, AbstractC0917d.a(clsQ2), new C0902a(annotation2));
                                        if (cVarN != null) {
                                            AbstractC0729f.q(cVarN, annotation2, clsQ2);
                                        }
                                        i13++;
                                        length8 = i14;
                                        parameterAnnotations = annotationArr3;
                                        length7 = i15;
                                        annotationArr2 = annotationArr4;
                                    }
                                    i12++;
                                    parameterAnnotations = parameterAnnotations;
                                }
                            }
                            pVarN0.d();
                            i6++;
                            declaredConstructors = constructorArr;
                            str4 = str5;
                            length4 = i7;
                            str2 = str8;
                            str3 = str9;
                            map2 = map6;
                        }
                        HashMap map7 = map2;
                        Field[] declaredFields = cls.getDeclaredFields();
                        d3.i.d("klass.declaredFields", declaredFields);
                        int length10 = declaredFields.length;
                        int i16 = 0;
                        while (i16 < length10) {
                            Field field = declaredFields[i16];
                            Q3.f fVarE = Q3.f.e(field.getName());
                            Class<?> type = field.getType();
                            d3.i.d("field.type", type);
                            String strB2 = AbstractC0917d.b(type);
                            d3.i.e("desc", strB2);
                            String strB3 = fVarE.b();
                            d3.i.d("name.asString()", strB3);
                            J3.r rVar = new J3.r(strB3 + '#' + strB2);
                            ArrayList arrayList2 = new ArrayList();
                            Annotation[] declaredAnnotations2 = field.getDeclaredAnnotations();
                            d3.i.d("field.declaredAnnotations", declaredAnnotations2);
                            int length11 = declaredAnnotations2.length;
                            int i17 = 0;
                            while (i17 < length11) {
                                Annotation annotation3 = declaredAnnotations2[i17];
                                d3.i.d("annotation", annotation3);
                                Class clsQ3 = L2.b.q(L2.b.k(annotation3));
                                Field[] fieldArr = declaredFields;
                                J3.c cVarL2 = ((J3.d) d2.f80d).l(AbstractC0917d.a(clsQ3), new C0902a(annotation3), arrayList2);
                                if (cVarL2 != null) {
                                    AbstractC0729f.q(cVarL2, annotation3, clsQ3);
                                }
                                i17++;
                                declaredFields = fieldArr;
                            }
                            Field[] fieldArr2 = declaredFields;
                            if (!arrayList2.isEmpty()) {
                                ((HashMap) d2.f81e).put(rVar, arrayList2);
                            }
                            i16++;
                            declaredFields = fieldArr2;
                        }
                        return new J3.a(map7, map3, map4);
                    }
                    Method method = declaredMethods[i5];
                    Q3.f fVarE2 = Q3.f.e(method.getName());
                    StringBuilder sb2 = new StringBuilder("(");
                    Class<?>[] parameterTypes2 = method.getParameterTypes();
                    d3.i.d(str, parameterTypes2);
                    String str10 = str;
                    int length12 = parameterTypes2.length;
                    Method[] methodArr = declaredMethods;
                    int i18 = 0;
                    while (i18 < length12) {
                        int i19 = length12;
                        Class<?> cls3 = parameterTypes2[i18];
                        d3.i.d("parameterType", cls3);
                        sb2.append(AbstractC0917d.b(cls3));
                        i18++;
                        length12 = i19;
                    }
                    sb2.append(")");
                    Class<?> returnType = method.getReturnType();
                    d3.i.d("method.returnType", returnType);
                    sb2.append(AbstractC0917d.b(returnType));
                    String string2 = sb2.toString();
                    d3.i.d("sb.toString()", string2);
                    com.google.firebase.messaging.p pVarN02 = d2.N0(fVarE2, string2);
                    Annotation[] declaredAnnotations3 = method.getDeclaredAnnotations();
                    d3.i.d("method.declaredAnnotations", declaredAnnotations3);
                    int length13 = declaredAnnotations3.length;
                    int i20 = 0;
                    while (i20 < length13) {
                        Annotation annotation4 = declaredAnnotations3[i20];
                        d3.i.d("annotation", annotation4);
                        Class clsQ4 = L2.b.q(L2.b.k(annotation4));
                        Annotation[] annotationArr5 = declaredAnnotations3;
                        int i21 = length13;
                        int i22 = length3;
                        J3.c cVarL3 = ((J3.d) ((D) pVarN02.f).f80d).l(AbstractC0917d.a(clsQ4), new C0902a(annotation4), (ArrayList) pVarN02.f6259e);
                        if (cVarL3 != null) {
                            AbstractC0729f.q(cVarL3, annotation4, clsQ4);
                        }
                        i20++;
                        declaredAnnotations3 = annotationArr5;
                        length13 = i21;
                        length3 = i22;
                    }
                    int i23 = length3;
                    Annotation[][] parameterAnnotations2 = method.getParameterAnnotations();
                    d3.i.d("method.parameterAnnotations", parameterAnnotations2);
                    Annotation[][] annotationArr6 = parameterAnnotations2;
                    int length14 = annotationArr6.length;
                    int i24 = 0;
                    while (i24 < length14) {
                        Annotation[] annotationArr7 = annotationArr6[i24];
                        d3.i.d("annotations", annotationArr7);
                        int length15 = annotationArr7.length;
                        int i25 = 0;
                        while (i25 < length15) {
                            Annotation annotation5 = annotationArr7[i25];
                            Annotation[][] annotationArr8 = annotationArr6;
                            Class clsQ5 = L2.b.q(L2.b.k(annotation5));
                            int i26 = length14;
                            Annotation[] annotationArr9 = annotationArr7;
                            J3.c cVarN2 = pVarN02.N(i24, AbstractC0917d.a(clsQ5), new C0902a(annotation5));
                            if (cVarN2 != null) {
                                AbstractC0729f.q(cVarN2, annotation5, clsQ5);
                            }
                            i25++;
                            annotationArr6 = annotationArr8;
                            length14 = i26;
                            annotationArr7 = annotationArr9;
                        }
                        i24++;
                        annotationArr6 = annotationArr6;
                    }
                    pVarN02.d();
                    i5++;
                    str = str10;
                    length3 = i23;
                    declaredMethods = methodArr;
                }
            case 10:
                return obj == ((R2.d) obj2) ? "(this Collection)" : String.valueOf(obj);
            case 11:
                d3.i.d("it", obj);
                ((q4.h) obj2).add(obj);
                return kVar;
            case 12:
                InterfaceC0821x interfaceC0821x = (InterfaceC0821x) obj;
                d3.i.e("it", interfaceC0821x);
                return interfaceC0821x.g().q((EnumC0734k) obj2);
            case 13:
                d3.i.e("it", (InterfaceC0821x) obj);
                return (AbstractC0468v) obj2;
            case 14:
                Q3.c cVar5 = (Q3.c) obj;
                d3.i.e("fqName", cVar5);
                q3.o oVar = (q3.o) obj2;
                e4.c cVarD = oVar.d(cVar5);
                if (cVarD == null) {
                    return null;
                }
                d4.i iVar = oVar.f8688d;
                if (iVar != null) {
                    cVarD.R0(iVar);
                    return cVarD;
                }
                d3.i.g("components");
                throw null;
            case 15:
                d4.f fVar4 = (d4.f) obj;
                d3.i.e(KnoxContract.KEY, fVar4);
                d4.g gVar2 = (d4.g) obj2;
                gVar2.getClass();
                d4.i iVar2 = gVar2.f6526a;
                Iterator it4 = iVar2.f6538k.iterator();
                do {
                    boolean zHasNext = it4.hasNext();
                    Q3.b bVar2 = fVar4.f6523a;
                    if (!zHasNext) {
                        if (d4.g.f6525c.contains(bVar2)) {
                            return null;
                        }
                        d4.d dVarM = fVar4.f6524b;
                        if (dVarM == null && (dVarM = iVar2.f6532d.M(bVar2)) == null) {
                            return null;
                        }
                        Q3.b bVarG = bVar2.g();
                        N3.f fVar5 = dVarM.f6519a;
                        C0061j c0061j = dVarM.f6520b;
                        N3.a aVar3 = dVarM.f6521c;
                        if (bVarG != null) {
                            InterfaceC0802e interfaceC0802eA = gVar2.a(bVarG, null);
                            f4.i iVar3 = interfaceC0802eA instanceof f4.i ? (f4.i) interfaceC0802eA : null;
                            if (iVar3 == null) {
                                return null;
                            }
                            Q3.f fVarJ = bVar2.j();
                            d3.i.d("classId.shortClassName", fVarJ);
                            if (!iVar3.u0().m().contains(fVarJ)) {
                                return null;
                            }
                            g4A = iVar3.n;
                        } else {
                            Q3.c cVarH = bVar2.h();
                            d3.i.d("classId.packageFqName", cVarH);
                            Iterator it5 = AbstractC0735a.m(iVar2.f, cVarH).iterator();
                            while (true) {
                                if (it5.hasNext()) {
                                    next2 = it5.next();
                                    InterfaceC0775C interfaceC0775C = (InterfaceC0775C) next2;
                                    if (interfaceC0775C instanceof e4.c) {
                                        e4.c cVar6 = (e4.c) interfaceC0775C;
                                        Q3.f fVarJ2 = bVar2.j();
                                        d3.i.d("classId.shortClassName", fVarJ2);
                                        cVar6.getClass();
                                        if (((f4.p) cVar6.q0()).m().contains(fVarJ2)) {
                                        }
                                    }
                                } else {
                                    next2 = null;
                                }
                            }
                            InterfaceC0775C interfaceC0775C2 = (InterfaceC0775C) next2;
                            if (interfaceC0775C2 == null) {
                                return null;
                            }
                            X x4 = c0061j.f1682G;
                            d3.i.d("classProto.typeTable", x4);
                            C0837c c0837c = new C0837c(x4);
                            e0 e0Var = c0061j.f1684I;
                            d3.i.d("classProto.versionRequirementTable", e0Var);
                            if (e0Var.f1632d.size() == 0) {
                                gVar = N3.g.f1909a;
                            } else {
                                d3.i.d("table.requirementList", e0Var.f1632d);
                                gVar = new N3.g();
                            }
                            g4A = gVar2.f6526a.a(interfaceC0775C2, fVar5, c0837c, gVar, aVar3, null);
                        }
                        return new f4.i(g4A, c0061j, fVar5, aVar3, dVarM.f6522d);
                    }
                    interfaceC0802eC = ((InterfaceC0859c) it4.next()).c(bVar2);
                } while (interfaceC0802eC == null);
                return interfaceC0802eC;
            case 16:
                d3.i.e("it", (Q3.b) obj);
                f4.j jVar2 = ((e4.c) obj2).f6811j;
                return jVar2 != null ? jVar2 : InterfaceC0786N.f8790a;
            case 17:
                C0452e c0452e = (C0452e) obj;
                d3.i.e("supertypes", c0452e);
                AbstractC0454g abstractC0454g = (AbstractC0454g) obj2;
                abstractC0454g.d().getClass();
                Collection collection = c0452e.f7051a;
                d3.i.e("superTypes", collection);
                boolean zIsEmpty2 = collection.isEmpty();
                Collection collection2 = collection;
                if (zIsEmpty2) {
                    AbstractC0468v abstractC0468vC = abstractC0454g.c();
                    Collection collectionV = abstractC0468vC != null ? AbstractC0420a.V(abstractC0468vC) : null;
                    if (collectionV == null) {
                        collectionV = R2.u.f2325c;
                    }
                    collection2 = collectionV;
                }
                List listG1 = collection2 instanceof List ? (List) collection2 : null;
                if (listG1 == null) {
                    listG1 = R2.m.g1(collection2);
                }
                List listL = abstractC0454g.l(listG1);
                d3.i.e("<set-?>", listL);
                c0452e.f7052b = listL;
                return kVar;
            case 18:
                i4.f fVar6 = (i4.f) obj;
                d3.i.e("kotlinTypeRefiner", fVar6);
                return ((C0467u) obj2).d(fVar6).b();
            case 19:
                AbstractC0468v abstractC0468v = (AbstractC0468v) obj;
                d3.i.d("it", abstractC0468v);
                return ((InterfaceC0222b) obj2).e(abstractC0468v).toString();
            case 20:
                M m5 = (M) obj;
                InterfaceC0789Q interfaceC0789Q2 = m5.f7035a;
                com.google.firebase.messaging.p pVar2 = (com.google.firebase.messaging.p) obj2;
                pVar2.getClass();
                F3.a aVar4 = m5.f7036b;
                Set set = aVar4.f762e;
                if (set != null && set.contains(interfaceC0789Q2.a())) {
                    return pVar2.w(aVar4);
                }
                AbstractC0472z abstractC0472zQ = interfaceC0789Q2.q();
                d3.i.d("typeParameter.defaultType", abstractC0472zQ);
                LinkedHashSet<InterfaceC0789Q> linkedHashSet = new LinkedHashSet();
                AbstractC0420a.v(abstractC0472zQ, abstractC0472zQ, linkedHashSet, set);
                int iY1 = R2.z.y1(R2.o.C0(linkedHashSet));
                if (iY1 < 16) {
                    iY1 = 16;
                }
                LinkedHashMap linkedHashMap2 = new LinkedHashMap(iY1);
                for (InterfaceC0789Q interfaceC0789Q3 : linkedHashSet) {
                    if (set == null || !set.contains(interfaceC0789Q3)) {
                        Set set2 = aVar4.f762e;
                        AbstractC0468v abstractC0468vX = pVar2.x(interfaceC0789Q3, F3.a.a(aVar4, 0, false, set2 != null ? R2.B.R(set2, interfaceC0789Q2) : L2.b.I(interfaceC0789Q2), null, 47));
                        ((Z0.h) pVar2.f6258d).getClass();
                        nC = Z0.h.c(interfaceC0789Q3, aVar4, pVar2, abstractC0468vX);
                    } else {
                        nC = h4.X.l(interfaceC0789Q3, aVar4);
                    }
                    linkedHashMap2.put(interfaceC0789Q3.H(), nC);
                }
                h4.V vE = h4.V.e(new K(linkedHashMap2, false));
                List upperBounds = interfaceC0789Q2.getUpperBounds();
                d3.i.d("typeParameter.upperBounds", upperBounds);
                S2.h hVarH = pVar2.H(vE, upperBounds, aVar4);
                if (!(!hVarH.f2607c.isEmpty())) {
                    return pVar2.w(aVar4);
                }
                ((C0451d) pVar2.f6259e).getClass();
                if (hVarH.l() == 1) {
                    return (AbstractC0468v) R2.m.a1(hVarH);
                }
                throw new IllegalArgumentException("Should only be one computed upper bound if no need to intersect all bounds".toString());
            case 21:
                InterfaceC0800c interfaceC0800c2 = (InterfaceC0800c) obj;
                if (interfaceC0800c2.k0() == 1) {
                    ((q3.n) obj2).getClass();
                    InterfaceC0807j interfaceC0807jL = interfaceC0800c2.l();
                    d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807jL);
                    String str11 = C0757d.f8645a;
                    if (C0757d.f8653j.containsKey(T3.e.g((InterfaceC0802e) interfaceC0807jL))) {
                        z6 = true;
                    }
                }
                return Boolean.valueOf(z6);
            case 22:
                d3.i.e("it", obj);
                return ((InterfaceC0221a) obj2).a();
            case 23:
                InterfaceC0821x interfaceC0821x2 = (InterfaceC0821x) obj;
                d3.i.e("module", interfaceC0821x2);
                return interfaceC0821x2.g().h(((AbstractC0732i) obj2).u());
            case 24:
                Q3.c cVar7 = (Q3.c) obj;
                d3.i.e("fqName", cVar7);
                C0867C c0867c = (C0867C) obj2;
                ((u3.G) c0867c.f9340h).getClass();
                g4.o oVar2 = c0867c.f9338e;
                d3.i.e("storageManager", oVar2);
                return new u3.y(c0867c, cVar7, oVar2);
            default:
                Method method2 = (Method) obj;
                if (!method2.isSynthetic()) {
                    if (((x3.o) obj2).f9666a.isEnum()) {
                        String name = method2.getName();
                        if (d3.i.a(name, "values")) {
                            Class<?>[] parameterTypes3 = method2.getParameterTypes();
                            d3.i.d("method.parameterTypes", parameterTypes3);
                            zEquals = parameterTypes3.length == 0;
                            if (!zEquals) {
                                z6 = true;
                            }
                        } else {
                            if (d3.i.a(name, "valueOf")) {
                                zEquals = Arrays.equals(method2.getParameterTypes(), new Class[]{String.class});
                            }
                            if (!zEquals) {
                            }
                        }
                    }
                }
                return Boolean.valueOf(z6);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0005d(InterfaceC0802e interfaceC0802e, F3.d dVar, AbstractC0472z abstractC0472z, F3.a aVar) {
        super(1);
        this.f118d = 6;
        this.f119e = interfaceC0802e;
    }
}
