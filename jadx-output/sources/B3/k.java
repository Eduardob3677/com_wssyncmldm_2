package B3;

import E3.C0021d;
import E3.s;
import L3.C0061j;
import L3.C0075y;
import L3.G;
import R2.B;
import R2.n;
import R2.u;
import R2.v;
import R2.z;
import a4.o;
import androidx.lifecycle.S;
import androidx.lifecycle.d0;
import c3.InterfaceC0221a;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import com.google.firebase.messaging.p;
import d3.InterfaceC0391c;
import f1.AbstractC0420a;
import f4.q;
import h4.AbstractC0450c;
import h4.AbstractC0454g;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0452e;
import h4.E;
import h4.N;
import h4.O;
import i3.InterfaceC0482c;
import i3.x;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import l3.AbstractC0647C;
import l3.C0650F;
import l3.C0651G;
import l3.C0652H;
import l3.C0653I;
import l3.C0654J;
import l3.C0655K;
import l3.l0;
import l3.m0;
import l3.o0;
import o3.AbstractC0732i;
import o3.EnumC0734k;
import q3.C0761h;
import q3.C0763j;
import r3.C0784L;
import r3.InterfaceC0783K;
import r3.InterfaceC0800c;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import r3.InterfaceC0821x;
import s3.C0847j;
import s3.EnumC0850m;
import u3.AbstractC0883o;
import u3.y;
import x3.t;

/* loaded from: classes.dex */
public final class k extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f243d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f244e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ k(int i5, Object obj) {
        super(0);
        this.f243d = i5;
        this.f244e = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v11, types: [R2.u] */
    /* JADX WARN: Type inference failed for: r6v12 */
    /* JADX WARN: Type inference failed for: r6v14, types: [java.util.ArrayList] */
    @Override // c3.InterfaceC0221a
    public final Object a() throws IllegalAccessException, SecurityException, IllegalArgumentException {
        Map mapZ1;
        EnumC0850m enumC0850m;
        V3.b bVarA;
        Collection arrayList;
        v vVar = v.f2326c;
        int iHashCode = 0;
        Object obj = this.f244e;
        switch (this.f243d) {
            case 0:
                Map map = g.f236a;
                H3.a aVar = ((l) obj).f230d;
                t tVar = aVar instanceof t ? (t) aVar : null;
                V3.i iVar = (tVar == null || (enumC0850m = (EnumC0850m) g.f237b.get(Q3.f.e(tVar.f9671b.name()).b())) == null) ? null : new V3.i(Q3.b.k(o3.m.f8525v), Q3.f.e(enumC0850m.name()));
                mapZ1 = iVar != null ? z.z1(new Q2.e(e.f233c, iVar)) : null;
                return mapZ1 == null ? vVar : mapZ1;
            case 1:
                H3.a aVar2 = ((m) obj).f230d;
                if (aVar2 instanceof x3.h) {
                    Map map2 = g.f236a;
                    bVarA = g.a(((x3.h) aVar2).a());
                } else if (aVar2 instanceof t) {
                    Map map3 = g.f236a;
                    bVarA = g.a(AbstractC0420a.V(aVar2));
                } else {
                    bVarA = null;
                }
                mapZ1 = bVarA != null ? z.z1(new Q2.e(e.f232b, bVarA)) : null;
                return mapZ1 == null ? vVar : mapZ1;
            case 2:
                C0021d c0021d = (C0021d) obj;
                Collection collectionValues = ((Map) Z0.j.N(c0021d.f577c.f635k, s.f632o[0])).values();
                ArrayList arrayList2 = new ArrayList();
                Iterator it = collectionValues.iterator();
                while (it.hasNext()) {
                    q qVarA = ((D3.a) c0021d.f576b.f499d).f472d.a(c0021d.f577c, (w3.b) it.next());
                    if (qVarA != null) {
                        arrayList2.add(qVarA);
                    }
                }
                return (o[]) o4.a.p(arrayList2).toArray(new o[0]);
            case 3:
                return d3.t.c((Object[]) obj);
            case 4:
                return ((Iterable) obj).iterator();
            case 5:
                S3.g gVar = (S3.g) obj;
                gVar.getClass();
                S3.k kVar = gVar.f2625a;
                kVar.getClass();
                S3.k kVar2 = new S3.k();
                Field[] declaredFields = S3.k.class.getDeclaredFields();
                d3.i.d("this::class.java.declaredFields", declaredFields);
                for (Field field : declaredFields) {
                    if ((field.getModifiers() & 8) == 0) {
                        field.setAccessible(true);
                        Object obj2 = field.get(kVar);
                        S3.j jVar = obj2 instanceof S3.j ? (S3.j) obj2 : null;
                        if (jVar != null) {
                            String name = field.getName();
                            d3.i.d("field.name", name);
                            s4.h.s(name, "is");
                            InterfaceC0482c interfaceC0482cB = d3.q.f6516a.b(S3.k.class);
                            field.getName();
                            StringBuilder sb = new StringBuilder("get");
                            String name2 = field.getName();
                            d3.i.d("field.name", name2);
                            if (name2.length() > 0) {
                                char upperCase = Character.toUpperCase(name2.charAt(0));
                                String strSubstring = name2.substring(1);
                                d3.i.d("this as java.lang.String).substring(startIndex)", strSubstring);
                                name2 = upperCase + strSubstring;
                            }
                            sb.append(name2);
                            ((InterfaceC0391c) interfaceC0482cB).a();
                            field.set(kVar2, new S3.j(jVar.f2643a, kVar2));
                        }
                    }
                }
                kVar2.o(B.S(kVar2.n(), n.y0(o3.m.f8519p, o3.m.f8520q)));
                kVar2.f2667a = true;
                return new S3.g(kVar2);
            case 6:
                AbstractC0468v abstractC0468vB = ((N) obj).b();
                d3.i.d("this@createCapturedIfNeeded.type", abstractC0468vB);
                return abstractC0468vB;
            case 7:
                V3.m mVar = (V3.m) obj;
                AbstractC0472z abstractC0472zQ = mVar.f2804b.g().j("Comparable").q();
                d3.i.d("builtIns.comparable.defaultType", abstractC0472zQ);
                ArrayList arrayList3 = new ArrayList(new R2.g(new AbstractC0472z[]{AbstractC0450c.p(abstractC0472zQ, AbstractC0420a.V(new O(2, mVar.f2806d)), null, 2)}, true));
                InterfaceC0821x interfaceC0821x = mVar.f2804b;
                d3.i.e("<this>", interfaceC0821x);
                AbstractC0732i abstractC0732iG = interfaceC0821x.g();
                abstractC0732iG.getClass();
                AbstractC0472z abstractC0472zS = abstractC0732iG.s(EnumC0734k.INT);
                if (abstractC0472zS == null) {
                    AbstractC0732i.a(58);
                    throw null;
                }
                AbstractC0732i abstractC0732iG2 = interfaceC0821x.g();
                abstractC0732iG2.getClass();
                AbstractC0472z abstractC0472zS2 = abstractC0732iG2.s(EnumC0734k.LONG);
                if (abstractC0472zS2 == null) {
                    AbstractC0732i.a(59);
                    throw null;
                }
                AbstractC0732i abstractC0732iG3 = interfaceC0821x.g();
                abstractC0732iG3.getClass();
                AbstractC0472z abstractC0472zS3 = abstractC0732iG3.s(EnumC0734k.BYTE);
                if (abstractC0472zS3 == null) {
                    AbstractC0732i.a(56);
                    throw null;
                }
                AbstractC0732i abstractC0732iG4 = interfaceC0821x.g();
                abstractC0732iG4.getClass();
                AbstractC0472z abstractC0472zS4 = abstractC0732iG4.s(EnumC0734k.SHORT);
                if (abstractC0472zS4 == null) {
                    AbstractC0732i.a(57);
                    throw null;
                }
                List listY0 = n.y0(abstractC0472zS, abstractC0472zS2, abstractC0472zS3, abstractC0472zS4);
                if (!listY0.isEmpty()) {
                    Iterator it2 = listY0.iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (!(!mVar.f2805c.contains((AbstractC0468v) it2.next()))) {
                                AbstractC0472z abstractC0472zQ2 = interfaceC0821x.g().j("Number").q();
                                if (abstractC0472zQ2 == null) {
                                    AbstractC0732i.a(55);
                                    throw null;
                                }
                                arrayList3.add(abstractC0472zQ2);
                            }
                        }
                    }
                }
                return arrayList3;
            case 8:
                a4.h hVar = (a4.h) obj;
                List listH = hVar.h();
                ArrayList arrayList4 = new ArrayList(3);
                Collection collectionJ = hVar.f3116b.H().j();
                d3.i.d("containingClass.typeConstructor.supertypes", collectionJ);
                ArrayList arrayList5 = new ArrayList();
                Iterator it3 = collectionJ.iterator();
                while (it3.hasNext()) {
                    R2.s.E0(arrayList5, x.H(((AbstractC0468v) it3.next()).q0(), null, 3));
                }
                ArrayList arrayList6 = new ArrayList();
                Iterator it4 = arrayList5.iterator();
                while (it4.hasNext()) {
                    Object next = it4.next();
                    if (next instanceof InterfaceC0800c) {
                        arrayList6.add(next);
                    }
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Iterator it5 = arrayList6.iterator();
                while (it5.hasNext()) {
                    Object next2 = it5.next();
                    Q3.f name3 = ((InterfaceC0800c) next2).getName();
                    Object arrayList7 = linkedHashMap.get(name3);
                    if (arrayList7 == null) {
                        arrayList7 = new ArrayList();
                        linkedHashMap.put(name3, arrayList7);
                    }
                    ((List) arrayList7).add(next2);
                }
                for (Map.Entry entry : linkedHashMap.entrySet()) {
                    Q3.f fVar = (Q3.f) entry.getKey();
                    List list = (List) entry.getValue();
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    for (Object obj3 : list) {
                        Boolean boolValueOf = Boolean.valueOf(((InterfaceC0800c) obj3) instanceof InterfaceC0816s);
                        Object arrayList8 = linkedHashMap2.get(boolValueOf);
                        if (arrayList8 == null) {
                            arrayList8 = new ArrayList();
                            linkedHashMap2.put(boolValueOf, arrayList8);
                        }
                        ((List) arrayList8).add(obj3);
                    }
                    for (Map.Entry entry2 : linkedHashMap2.entrySet()) {
                        boolean zBooleanValue = ((Boolean) entry2.getKey()).booleanValue();
                        List list2 = (List) entry2.getValue();
                        T3.n nVar = T3.n.f2735d;
                        if (zBooleanValue) {
                            arrayList = new ArrayList();
                            for (Object obj4 : listH) {
                                if (d3.i.a(((AbstractC0883o) ((InterfaceC0816s) obj4)).getName(), fVar)) {
                                    arrayList.add(obj4);
                                }
                            }
                        } else {
                            arrayList = u.f2325c;
                        }
                        nVar.h(fVar, list2, arrayList, hVar.f3116b, new a4.g(arrayList4, hVar));
                    }
                }
                return R2.m.Y0(listH, q4.k.e(arrayList4));
            case 9:
                a4.t tVar2 = (a4.t) obj;
                return tVar2.h(x.H(tVar2.f3136b, null, 3));
            case 10:
                return S.f((d0) obj);
            case 11:
                Set setKeySet = ((LinkedHashMap) ((e4.c) obj).f6813l.f6260g).keySet();
                ArrayList arrayList9 = new ArrayList();
                for (Object obj5 : setKeySet) {
                    Q3.b bVar = (Q3.b) obj5;
                    if (!(!bVar.f2231b.e().d()) && !d4.g.f6525c.contains(bVar)) {
                        arrayList9.add(obj5);
                    }
                }
                ArrayList arrayList10 = new ArrayList(R2.o.C0(arrayList9));
                Iterator it6 = arrayList9.iterator();
                while (it6.hasNext()) {
                    arrayList10.add(((Q3.b) it6.next()).j());
                }
                return arrayList10;
            case 12:
                p pVar = (p) obj;
                pVar.getClass();
                HashSet hashSet = new HashSet();
                f4.i iVar2 = (f4.i) pVar.f6260g;
                Iterator it7 = iVar2.f6858p.j().iterator();
                while (it7.hasNext()) {
                    for (InterfaceC0807j interfaceC0807j : x.H(((AbstractC0468v) it7.next()).q0(), null, 3)) {
                        if ((interfaceC0807j instanceof u3.N) || (interfaceC0807j instanceof InterfaceC0783K)) {
                            hashSet.add(interfaceC0807j.getName());
                        }
                    }
                }
                C0061j c0061j = iVar2.f6850g;
                List list3 = c0061j.f1700s;
                d3.i.d("classProto.functionList", list3);
                Iterator it8 = list3.iterator();
                while (true) {
                    boolean zHasNext = it8.hasNext();
                    G4 g42 = iVar2.n;
                    if (!zHasNext) {
                        List list4 = c0061j.f1701t;
                        d3.i.d("classProto.propertyList", list4);
                        Iterator it9 = list4.iterator();
                        while (it9.hasNext()) {
                            hashSet.add(L2.b.v((N3.f) g42.f5378d, ((G) it9.next()).f1408h));
                        }
                        return B.S(hashSet, hashSet);
                    }
                    hashSet.add(L2.b.v((N3.f) g42.f5378d, ((C0075y) it8.next()).f1794h));
                }
                break;
            case 13:
                f4.p pVar2 = (f4.p) obj;
                Set setN = pVar2.n();
                if (setN == null) {
                    return null;
                }
                return B.S(B.S(pVar2.m(), pVar2.f6885c.f6878c.keySet()), setN);
            case 14:
                f4.u uVar = (f4.u) obj;
                G4 g43 = uVar.f6912m;
                return R2.m.g1(((d4.i) g43.f5377c).f6533e.a0(uVar.n, (N3.f) g43.f5378d));
            case 15:
                return new C0452e(((AbstractC0454g) obj).b());
            case 16:
                return AbstractC0450c.r(((E) obj).f7016a);
            case 17:
                return j4.i.c(j4.h.f7618A, ((p) obj).toString());
            case 18:
                InterfaceC0221a interfaceC0221a = ((i4.i) obj).f7180b;
                if (interfaceC0221a != null) {
                    return (List) interfaceC0221a.a();
                }
                return null;
            case 19:
                return o0.a(((AbstractC0647C) obj).a());
            case 20:
                return new C0650F((C0651G) obj);
            case 21:
                return new C0652H((C0653I) obj);
            case 22:
                return new C0654J((C0655K) obj);
            case 23:
                List upperBounds = ((m0) obj).f8201c.getUpperBounds();
                d3.i.d("descriptor.upperBounds", upperBounds);
                ArrayList arrayList11 = new ArrayList(R2.o.C0(upperBounds));
                Iterator it10 = upperBounds.iterator();
                while (it10.hasNext()) {
                    arrayList11.add(new l0((AbstractC0468v) it10.next(), null));
                }
                return arrayList11;
            case 24:
                for (Map.Entry entry3 : ((Map) obj).entrySet()) {
                    String str = (String) entry3.getKey();
                    Object value = entry3.getValue();
                    iHashCode += (value instanceof boolean[] ? Arrays.hashCode((boolean[]) value) : value instanceof char[] ? Arrays.hashCode((char[]) value) : value instanceof byte[] ? Arrays.hashCode((byte[]) value) : value instanceof short[] ? Arrays.hashCode((short[]) value) : value instanceof int[] ? Arrays.hashCode((int[]) value) : value instanceof float[] ? Arrays.hashCode((float[]) value) : value instanceof long[] ? Arrays.hashCode((long[]) value) : value instanceof double[] ? Arrays.hashCode((double[]) value) : value instanceof Object[] ? Arrays.hashCode((Object[]) value) : value.hashCode()) ^ (str.hashCode() * 127);
                }
                return Integer.valueOf(iHashCode);
            case 25:
                return ((y) ((InterfaceC0821x) obj).a0(o3.n.f8536h)).f9516i;
            case 26:
                C0763j c0763j = (C0763j) obj;
                InterfaceC0221a interfaceC0221a2 = c0763j.f;
                if (interfaceC0221a2 == null) {
                    throw new AssertionError("JvmBuiltins instance has not been initialized properly");
                }
                C0761h c0761h = (C0761h) interfaceC0221a2.a();
                c0763j.f = null;
                return c0761h;
            case 27:
                C0784L c0784l = (C0784L) obj;
                return (o) c0784l.f8787b.e(c0784l.f8788c);
            case 28:
                return obj;
            default:
                C0847j c0847j = (C0847j) obj;
                return c0847j.f9044a.i(c0847j.f9045b).q();
        }
    }
}
