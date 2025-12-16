package l3;

import L3.C0075y;
import R3.AbstractC0092n;
import c3.InterfaceC0223c;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import com.idm.fotaagent.restapi.parser.XmlParser;
import com.idm.providers.mo.IDMMoInterface;
import d3.AbstractC0395g;
import f1.AbstractC0420a;
import h4.AbstractC0468v;
import i3.InterfaceC0481b;
import java.lang.annotation.Annotation;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import o3.AbstractC0732i;
import o3.EnumC0734k;
import q3.C0757d;
import r3.InterfaceC0786N;
import r3.InterfaceC0799b;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import r3.InterfaceC0821x;
import s2.C0837c;
import s3.InterfaceC0838a;
import s3.InterfaceC0839b;
import s3.InterfaceC0845h;
import u3.C0890w;
import w3.C0902a;
import x3.AbstractC0917d;
import x3.C0918e;

/* loaded from: classes.dex */
public abstract class w0 {

    /* renamed from: a, reason: collision with root package name */
    public static final Q3.c f8238a = new Q3.c("kotlin.jvm.JvmStatic");

    public static final AbstractC0693r a(Object obj) {
        AbstractC0693r abstractC0693r = obj instanceof AbstractC0693r ? (AbstractC0693r) obj : null;
        if (abstractC0693r != null) {
            return abstractC0693r;
        }
        C0649E c0649eB = b(obj);
        return c0649eB != null ? c0649eB : c(obj);
    }

    public static final C0649E b(Object obj) {
        C0649E c0649e = obj instanceof C0649E ? (C0649E) obj : null;
        if (c0649e != null) {
            return c0649e;
        }
        AbstractC0395g abstractC0395g = obj instanceof AbstractC0395g ? (AbstractC0395g) obj : null;
        InterfaceC0481b interfaceC0481bC = abstractC0395g != null ? abstractC0395g.c() : null;
        if (interfaceC0481bC instanceof C0649E) {
            return (C0649E) interfaceC0481bC;
        }
        return null;
    }

    public static final j0 c(Object obj) {
        j0 j0Var = obj instanceof j0 ? (j0) obj : null;
        if (j0Var != null) {
            return j0Var;
        }
        d3.o oVar = obj instanceof d3.o ? (d3.o) obj : null;
        InterfaceC0481b interfaceC0481bC = oVar != null ? oVar.c() : null;
        if (interfaceC0481bC instanceof j0) {
            return (j0) interfaceC0481bC;
        }
        return null;
    }

    public static final ArrayList d(InterfaceC0838a interfaceC0838a) throws IllegalAccessException, IllegalArgumentException, NegativeArraySizeException, InvocationTargetException {
        List listV;
        d3.i.e("<this>", interfaceC0838a);
        InterfaceC0845h interfaceC0845hT = interfaceC0838a.t();
        ArrayList arrayList = new ArrayList();
        Iterator it = interfaceC0845hT.iterator();
        while (true) {
            Annotation annotationI = null;
            if (!it.hasNext()) {
                break;
            }
            InterfaceC0839b interfaceC0839b = (InterfaceC0839b) it.next();
            InterfaceC0786N interfaceC0786NM = interfaceC0839b.m();
            if (interfaceC0786NM instanceof C0902a) {
                annotationI = ((C0902a) interfaceC0786NM).f9607b;
            } else if (interfaceC0786NM instanceof w3.f) {
                x3.s sVar = ((w3.f) interfaceC0786NM).f9615b;
                C0918e c0918e = sVar instanceof C0918e ? (C0918e) sVar : null;
                if (c0918e != null) {
                    annotationI = c0918e.f9654a;
                }
            } else {
                annotationI = i(interfaceC0839b);
            }
            if (annotationI != null) {
                arrayList.add(annotationI);
            }
        }
        if (arrayList.isEmpty()) {
            return arrayList;
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (d3.i.a(L2.b.q(L2.b.k((Annotation) it2.next())).getSimpleName(), "Container")) {
                ArrayList arrayList2 = new ArrayList();
                Iterator it3 = arrayList.iterator();
                while (it3.hasNext()) {
                    Annotation annotation = (Annotation) it3.next();
                    Class clsQ = L2.b.q(L2.b.k(annotation));
                    if (!d3.i.a(clsQ.getSimpleName(), "Container") || clsQ.getAnnotation(d3.s.class) == null) {
                        listV = AbstractC0420a.V(annotation);
                    } else {
                        Object objInvoke = clsQ.getDeclaredMethod("value", null).invoke(annotation, null);
                        d3.i.c("null cannot be cast to non-null type kotlin.Array<out kotlin.Annotation>", objInvoke);
                        listV = R2.i.g0((Annotation[]) objInvoke);
                    }
                    R2.s.E0(arrayList2, listV);
                }
                return arrayList2;
            }
        }
        return arrayList;
    }

    public static final Object e(Type type) {
        d3.i.e("type", type);
        if (!(type instanceof Class) || !((Class) type).isPrimitive()) {
            return null;
        }
        if (d3.i.a(type, Boolean.TYPE)) {
            return Boolean.FALSE;
        }
        if (d3.i.a(type, Character.TYPE)) {
            return (char) 0;
        }
        if (d3.i.a(type, Byte.TYPE)) {
            return (byte) 0;
        }
        if (d3.i.a(type, Short.TYPE)) {
            return (short) 0;
        }
        if (d3.i.a(type, Integer.TYPE)) {
            return 0;
        }
        if (d3.i.a(type, Float.TYPE)) {
            return Float.valueOf(0.0f);
        }
        if (d3.i.a(type, Long.TYPE)) {
            return 0L;
        }
        if (d3.i.a(type, Double.TYPE)) {
            return Double.valueOf(0.0d);
        }
        if (d3.i.a(type, Void.TYPE)) {
            throw new IllegalStateException("Parameter with void type is illegal");
        }
        throw new UnsupportedOperationException("Unknown primitive: " + type);
    }

    public static final InterfaceC0799b f(Class cls, AbstractC0092n abstractC0092n, N3.f fVar, C0837c c0837c, N3.a aVar, InterfaceC0223c interfaceC0223c) {
        List list;
        d3.i.e("moduleAnchor", cls);
        d3.i.e("proto", abstractC0092n);
        d3.i.e("nameResolver", fVar);
        d3.i.e("typeTable", c0837c);
        d3.i.e("metadataVersion", aVar);
        w3.e eVarA = o0.a(cls);
        if (abstractC0092n instanceof C0075y) {
            list = ((C0075y) abstractC0092n).f1797k;
        } else {
            if (!(abstractC0092n instanceof L3.G)) {
                throw new IllegalStateException(("Unsupported message: " + abstractC0092n).toString());
            }
            list = ((L3.G) abstractC0092n).f1411k;
        }
        List list2 = list;
        d4.i iVar = eVarA.f9613a;
        InterfaceC0821x interfaceC0821x = iVar.f6530b;
        N3.g gVar = N3.g.f1909a;
        d3.i.d("typeParameters", list2);
        return (InterfaceC0799b) interfaceC0223c.d(new d4.r(new G4(iVar, fVar, interfaceC0821x, c0837c, gVar, aVar, null, null, list2)), abstractC0092n);
    }

    public static final C0890w g(InterfaceC0799b interfaceC0799b) {
        d3.i.e("<this>", interfaceC0799b);
        if (interfaceC0799b.F() == null) {
            return null;
        }
        InterfaceC0807j interfaceC0807jL = interfaceC0799b.l();
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807jL);
        return ((InterfaceC0802e) interfaceC0807jL).H0();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    public static final Class h(ClassLoader classLoader, Q3.b bVar, int i5) {
        String str = C0757d.f8645a;
        Q3.e eVarI = bVar.b().i();
        d3.i.d("kotlinClassId.asSingleFqName().toUnsafe()", eVarI);
        Q3.b bVarF = C0757d.f(eVarI);
        if (bVarF != null) {
            bVar = bVarF;
        }
        String strB = bVar.h().b();
        String strB2 = bVar.i().b();
        if (d3.i.a(strB, "kotlin")) {
            switch (strB2.hashCode()) {
                case -901856463:
                    if (strB2.equals("BooleanArray")) {
                        return boolean[].class;
                    }
                    break;
                case -763279523:
                    if (strB2.equals("ShortArray")) {
                        return short[].class;
                    }
                    break;
                case -755911549:
                    if (strB2.equals("CharArray")) {
                        return char[].class;
                    }
                    break;
                case -74930671:
                    if (strB2.equals("ByteArray")) {
                        return byte[].class;
                    }
                    break;
                case 22374632:
                    if (strB2.equals("DoubleArray")) {
                        return double[].class;
                    }
                    break;
                case 63537721:
                    if (strB2.equals("Array")) {
                        return Object[].class;
                    }
                    break;
                case 601811914:
                    if (strB2.equals("IntArray")) {
                        return int[].class;
                    }
                    break;
                case 948852093:
                    if (strB2.equals("FloatArray")) {
                        return float[].class;
                    }
                    break;
                case 2104330525:
                    if (strB2.equals("LongArray")) {
                        return long[].class;
                    }
                    break;
            }
        }
        StringBuilder sb = new StringBuilder();
        if (i5 > 0) {
            for (int i6 = 0; i6 < i5; i6++) {
                sb.append("[");
            }
            sb.append("L");
        }
        if (strB.length() > 0) {
            sb.append(strB.concat(IDMMoInterface.IDM_MO_ROOT_PATH));
        }
        sb.append(s4.h.q(strB2, '.', '$'));
        if (i5 > 0) {
            sb.append(XmlParser.Polling.POLLING_VERSION_SEPARATOR);
        }
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return o4.a.r(classLoader, string);
    }

    public static final Annotation i(InterfaceC0839b interfaceC0839b) throws NegativeArraySizeException {
        InterfaceC0802e interfaceC0802eD = X3.f.d(interfaceC0839b);
        Class clsJ = interfaceC0802eD != null ? j(interfaceC0802eD) : null;
        if (!(clsJ instanceof Class)) {
            clsJ = null;
        }
        if (clsJ == null) {
            return null;
        }
        Set<Map.Entry> setEntrySet = interfaceC0839b.b().entrySet();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : setEntrySet) {
            Q3.f fVar = (Q3.f) entry.getKey();
            V3.g gVar = (V3.g) entry.getValue();
            ClassLoader classLoader = clsJ.getClassLoader();
            d3.i.d("annotationClass.classLoader", classLoader);
            Object objK = k(gVar, classLoader);
            Q2.e eVar = objK != null ? new Q2.e(fVar.b(), objK) : null;
            if (eVar != null) {
                arrayList.add(eVar);
            }
        }
        Map mapC1 = R2.z.C1(arrayList);
        Set setKeySet = mapC1.keySet();
        ArrayList arrayList2 = new ArrayList(R2.o.C0(setKeySet));
        Iterator it = setKeySet.iterator();
        while (it.hasNext()) {
            arrayList2.add(clsJ.getDeclaredMethod((String) it.next(), null));
        }
        return (Annotation) L2.b.h(clsJ, mapC1, arrayList2);
    }

    public static final Class j(InterfaceC0802e interfaceC0802e) {
        d3.i.e("<this>", interfaceC0802e);
        InterfaceC0786N interfaceC0786NM = interfaceC0802e.m();
        d3.i.d("source", interfaceC0786NM);
        if (interfaceC0786NM instanceof J3.q) {
            w3.b bVar = ((J3.q) interfaceC0786NM).f1172b;
            d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.components.ReflectKotlinClass", bVar);
            return bVar.f9608a;
        }
        if (interfaceC0786NM instanceof w3.f) {
            x3.s sVar = ((w3.f) interfaceC0786NM).f9615b;
            d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.runtime.structure.ReflectJavaClass", sVar);
            return ((x3.o) sVar).f9666a;
        }
        Q3.b bVarF = X3.f.f(interfaceC0802e);
        if (bVarF == null) {
            return null;
        }
        return h(AbstractC0917d.d(interfaceC0802e.getClass()), bVarF, 0);
    }

    /* JADX WARN: Incorrect type for immutable var: ssa=boolean[], code=short[], for r8v16, types: [boolean[]] */
    /* JADX WARN: Incorrect type for immutable var: ssa=byte[], code=short[], for r8v18, types: [byte[]] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v13, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r8v14, types: [java.lang.Class[]] */
    /* JADX WARN: Type inference failed for: r8v15, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r8v20, types: [int[]] */
    /* JADX WARN: Type inference failed for: r8v21, types: [float[]] */
    /* JADX WARN: Type inference failed for: r8v22, types: [long[]] */
    /* JADX WARN: Type inference failed for: r8v23 */
    /* JADX WARN: Type inference failed for: r8v24, types: [double[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object k(V3.g gVar, ClassLoader classLoader) throws NegativeArraySizeException {
        AbstractC0468v abstractC0468v;
        Class clsH;
        short[] sArr;
        if (gVar instanceof V3.a) {
            return i((InterfaceC0839b) ((V3.a) gVar).f2797a);
        }
        int i5 = 0;
        if (gVar instanceof V3.b) {
            V3.b bVar = (V3.b) gVar;
            V3.w wVar = bVar instanceof V3.w ? (V3.w) bVar : null;
            if (wVar != null && (abstractC0468v = wVar.f2810c) != null) {
                Iterable iterable = (Iterable) bVar.f2797a;
                ArrayList arrayList = new ArrayList(R2.o.C0(iterable));
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(k((V3.g) it.next(), classLoader));
                }
                Q3.f fVar = AbstractC0732i.f8454e;
                InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
                EnumC0734k enumC0734kR = interfaceC0804gI == null ? null : AbstractC0732i.r(interfaceC0804gI);
                int i6 = enumC0734kR == null ? -1 : v0.f8228a[enumC0734kR.ordinal()];
                Object obj = bVar.f2797a;
                switch (i6) {
                    case -1:
                        if (!AbstractC0732i.y(abstractC0468v)) {
                            throw new IllegalStateException(("Not an array type: " + abstractC0468v).toString());
                        }
                        AbstractC0468v abstractC0468vB = ((h4.N) R2.m.b1(abstractC0468v.u0())).b();
                        d3.i.d("type.arguments.single().type", abstractC0468vB);
                        InterfaceC0804g interfaceC0804gI2 = abstractC0468vB.J0().i();
                        InterfaceC0802e interfaceC0802e = interfaceC0804gI2 instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gI2 : null;
                        if (interfaceC0802e == null) {
                            throw new IllegalStateException(("Not a class type: " + abstractC0468vB).toString());
                        }
                        if (AbstractC0732i.D(abstractC0468vB, o3.m.f)) {
                            int size = ((List) obj).size();
                            sArr = new String[size];
                            while (i5 < size) {
                                Object obj2 = arrayList.get(i5);
                                d3.i.c("null cannot be cast to non-null type kotlin.String", obj2);
                                sArr[i5] = obj2;
                                i5++;
                            }
                        } else if (AbstractC0732i.b(interfaceC0802e, o3.m.f8492P)) {
                            int size2 = ((List) obj).size();
                            sArr = new Class[size2];
                            while (i5 < size2) {
                                Object obj3 = arrayList.get(i5);
                                d3.i.c("null cannot be cast to non-null type java.lang.Class<*>", obj3);
                                sArr[i5] = obj3;
                                i5++;
                            }
                        } else {
                            Q3.b bVarF = X3.f.f(interfaceC0802e);
                            if (bVarF != null && (clsH = h(classLoader, bVarF, 0)) != null) {
                                Object objNewInstance = Array.newInstance((Class<?>) clsH, ((List) obj).size());
                                d3.i.c("null cannot be cast to non-null type kotlin.Array<in kotlin.Any?>", objNewInstance);
                                sArr = (Object[]) objNewInstance;
                                int size3 = arrayList.size();
                                while (i5 < size3) {
                                    sArr[i5] = arrayList.get(i5);
                                    i5++;
                                }
                            }
                        }
                        return sArr;
                    case 0:
                    default:
                        throw new A0.c();
                    case 1:
                        int size4 = ((List) obj).size();
                        sArr = new boolean[size4];
                        while (i5 < size4) {
                            Object obj4 = arrayList.get(i5);
                            d3.i.c("null cannot be cast to non-null type kotlin.Boolean", obj4);
                            sArr[i5] = ((Boolean) obj4).booleanValue();
                            i5++;
                        }
                        return sArr;
                    case 2:
                        int size5 = ((List) obj).size();
                        sArr = new char[size5];
                        while (i5 < size5) {
                            Object obj5 = arrayList.get(i5);
                            d3.i.c("null cannot be cast to non-null type kotlin.Char", obj5);
                            sArr[i5] = ((Character) obj5).charValue();
                            i5++;
                        }
                        return sArr;
                    case 3:
                        int size6 = ((List) obj).size();
                        sArr = new byte[size6];
                        while (i5 < size6) {
                            Object obj6 = arrayList.get(i5);
                            d3.i.c("null cannot be cast to non-null type kotlin.Byte", obj6);
                            sArr[i5] = ((Byte) obj6).byteValue();
                            i5++;
                        }
                        return sArr;
                    case 4:
                        int size7 = ((List) obj).size();
                        sArr = new short[size7];
                        while (i5 < size7) {
                            Object obj7 = arrayList.get(i5);
                            d3.i.c("null cannot be cast to non-null type kotlin.Short", obj7);
                            sArr[i5] = ((Short) obj7).shortValue();
                            i5++;
                        }
                        return sArr;
                    case 5:
                        int size8 = ((List) obj).size();
                        sArr = new int[size8];
                        while (i5 < size8) {
                            Object obj8 = arrayList.get(i5);
                            d3.i.c("null cannot be cast to non-null type kotlin.Int", obj8);
                            sArr[i5] = ((Integer) obj8).intValue();
                            i5++;
                        }
                        return sArr;
                    case 6:
                        int size9 = ((List) obj).size();
                        sArr = new float[size9];
                        while (i5 < size9) {
                            Object obj9 = arrayList.get(i5);
                            d3.i.c("null cannot be cast to non-null type kotlin.Float", obj9);
                            sArr[i5] = ((Float) obj9).floatValue();
                            i5++;
                        }
                        return sArr;
                    case 7:
                        int size10 = ((List) obj).size();
                        sArr = new long[size10];
                        while (i5 < size10) {
                            Object obj10 = arrayList.get(i5);
                            d3.i.c("null cannot be cast to non-null type kotlin.Long", obj10);
                            sArr[i5] = ((Long) obj10).longValue();
                            i5++;
                        }
                        return sArr;
                    case 8:
                        int size11 = ((List) obj).size();
                        sArr = new double[size11];
                        while (i5 < size11) {
                            Object obj11 = arrayList.get(i5);
                            d3.i.c("null cannot be cast to non-null type kotlin.Double", obj11);
                            sArr[i5] = ((Double) obj11).doubleValue();
                            i5++;
                        }
                        return sArr;
                }
            }
        } else if (gVar instanceof V3.i) {
            Q2.e eVar = (Q2.e) ((V3.i) gVar).f2797a;
            Q3.b bVar2 = (Q3.b) eVar.f2212c;
            Q3.f fVar2 = (Q3.f) eVar.f2213d;
            Class clsH2 = h(classLoader, bVar2, 0);
            if (clsH2 != null) {
                return Enum.valueOf(clsH2, fVar2.b());
            }
        } else if (gVar instanceof V3.r) {
            V3.q qVar = (V3.q) ((V3.r) gVar).f2797a;
            if (qVar instanceof V3.p) {
                V3.f fVar3 = ((V3.p) qVar).f2809a;
                return h(classLoader, fVar3.f2795a, fVar3.f2796b);
            }
            if (!(qVar instanceof V3.o)) {
                throw new A0.c();
            }
            InterfaceC0804g interfaceC0804gI3 = ((V3.o) qVar).f2808a.J0().i();
            InterfaceC0802e interfaceC0802e2 = interfaceC0804gI3 instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gI3 : null;
            if (interfaceC0802e2 != null) {
                return j(interfaceC0802e2);
            }
        } else {
            if (!(gVar instanceof V3.j ? true : gVar instanceof V3.t)) {
                return gVar.b();
            }
        }
        return null;
    }
}
