package A3;

import com.samsung.android.fotaagent.common.feature.CarrierFeature;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class I {

    /* renamed from: a, reason: collision with root package name */
    public static final n f92a = new n();

    /* renamed from: b, reason: collision with root package name */
    public static final ArrayList f93b;

    /* renamed from: c, reason: collision with root package name */
    public static final ArrayList f94c;

    /* renamed from: d, reason: collision with root package name */
    public static final Map f95d;

    /* renamed from: e, reason: collision with root package name */
    public static final LinkedHashMap f96e;
    public static final Set f;

    /* renamed from: g, reason: collision with root package name */
    public static final Set f97g;

    /* renamed from: h, reason: collision with root package name */
    public static final F f98h;

    /* renamed from: i, reason: collision with root package name */
    public static final Map f99i;

    /* renamed from: j, reason: collision with root package name */
    public static final LinkedHashMap f100j;

    /* renamed from: k, reason: collision with root package name */
    public static final ArrayList f101k;

    /* renamed from: l, reason: collision with root package name */
    public static final LinkedHashMap f102l;

    static {
        Set<String> setT = R2.B.T("containsAll", "removeAll", "retainAll");
        ArrayList arrayList = new ArrayList(R2.o.C0(setT));
        for (String str : setT) {
            n nVar = f92a;
            String strC = Y3.c.BOOLEAN.c();
            d3.i.d("BOOLEAN.desc", strC);
            arrayList.add(n.a(nVar, "java/util/Collection", str, "Ljava/util/Collection;", strC));
        }
        f93b = arrayList;
        ArrayList arrayList2 = new ArrayList(R2.o.C0(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((F) it.next()).f86b);
        }
        f94c = arrayList2;
        ArrayList arrayList3 = f93b;
        ArrayList arrayList4 = new ArrayList(R2.o.C0(arrayList3));
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            arrayList4.add(((F) it2.next()).f85a.b());
        }
        n nVar2 = f92a;
        String strConcat = "java/util/".concat("Collection");
        Y3.c cVar = Y3.c.BOOLEAN;
        String strC2 = cVar.c();
        d3.i.d("BOOLEAN.desc", strC2);
        F fA = n.a(nVar2, strConcat, "contains", "Ljava/lang/Object;", strC2);
        H h5 = H.f;
        Q2.e eVar = new Q2.e(fA, h5);
        String strConcat2 = "java/util/".concat("Collection");
        String strC3 = cVar.c();
        d3.i.d("BOOLEAN.desc", strC3);
        Q2.e eVar2 = new Q2.e(n.a(nVar2, strConcat2, CarrierFeature.VALUE_AUTO_DOWNLOAD_REMOVE, "Ljava/lang/Object;", strC3), h5);
        String strConcat3 = "java/util/".concat("Map");
        String strC4 = cVar.c();
        d3.i.d("BOOLEAN.desc", strC4);
        Q2.e eVar3 = new Q2.e(n.a(nVar2, strConcat3, "containsKey", "Ljava/lang/Object;", strC4), h5);
        String strConcat4 = "java/util/".concat("Map");
        String strC5 = cVar.c();
        d3.i.d("BOOLEAN.desc", strC5);
        Q2.e eVar4 = new Q2.e(n.a(nVar2, strConcat4, "containsValue", "Ljava/lang/Object;", strC5), h5);
        String strConcat5 = "java/util/".concat("Map");
        String strC6 = cVar.c();
        d3.i.d("BOOLEAN.desc", strC6);
        Q2.e eVar5 = new Q2.e(n.a(nVar2, strConcat5, CarrierFeature.VALUE_AUTO_DOWNLOAD_REMOVE, "Ljava/lang/Object;Ljava/lang/Object;", strC6), h5);
        Q2.e eVar6 = new Q2.e(n.a(nVar2, "java/util/".concat("Map"), "getOrDefault", "Ljava/lang/Object;Ljava/lang/Object;", "Ljava/lang/Object;"), H.f89g);
        F fA2 = n.a(nVar2, "java/util/".concat("Map"), "get", "Ljava/lang/Object;", "Ljava/lang/Object;");
        H h6 = H.f87d;
        Q2.e eVar7 = new Q2.e(fA2, h6);
        Q2.e eVar8 = new Q2.e(n.a(nVar2, "java/util/".concat("Map"), CarrierFeature.VALUE_AUTO_DOWNLOAD_REMOVE, "Ljava/lang/Object;", "Ljava/lang/Object;"), h6);
        String strConcat6 = "java/util/".concat("List");
        Y3.c cVar2 = Y3.c.INT;
        String strC7 = cVar2.c();
        d3.i.d("INT.desc", strC7);
        F fA3 = n.a(nVar2, strConcat6, "indexOf", "Ljava/lang/Object;", strC7);
        H h7 = H.f88e;
        Q2.e eVar9 = new Q2.e(fA3, h7);
        String strConcat7 = "java/util/".concat("List");
        String strC8 = cVar2.c();
        d3.i.d("INT.desc", strC8);
        Map mapA1 = R2.z.A1(eVar, eVar2, eVar3, eVar4, eVar5, eVar6, eVar7, eVar8, eVar9, new Q2.e(n.a(nVar2, strConcat7, "lastIndexOf", "Ljava/lang/Object;", strC8), h7));
        f95d = mapA1;
        LinkedHashMap linkedHashMap = new LinkedHashMap(R2.z.y1(mapA1.size()));
        for (Map.Entry entry : mapA1.entrySet()) {
            linkedHashMap.put(((F) entry.getKey()).f86b, entry.getValue());
        }
        f96e = linkedHashMap;
        LinkedHashSet linkedHashSetS = R2.B.S(f95d.keySet(), f93b);
        ArrayList arrayList5 = new ArrayList(R2.o.C0(linkedHashSetS));
        Iterator it3 = linkedHashSetS.iterator();
        while (it3.hasNext()) {
            arrayList5.add(((F) it3.next()).f85a);
        }
        f = R2.m.j1(arrayList5);
        ArrayList arrayList6 = new ArrayList(R2.o.C0(linkedHashSetS));
        Iterator it4 = linkedHashSetS.iterator();
        while (it4.hasNext()) {
            arrayList6.add(((F) it4.next()).f86b);
        }
        f97g = R2.m.j1(arrayList6);
        n nVar3 = f92a;
        Y3.c cVar3 = Y3.c.INT;
        String strC9 = cVar3.c();
        d3.i.d("INT.desc", strC9);
        F fA4 = n.a(nVar3, "java/util/List", "removeAt", strC9, "Ljava/lang/Object;");
        f98h = fA4;
        String strConcat8 = "java/lang/".concat("Number");
        String strC10 = Y3.c.BYTE.c();
        d3.i.d("BYTE.desc", strC10);
        Q2.e eVar10 = new Q2.e(n.a(nVar3, strConcat8, "toByte", "", strC10), Q3.f.e("byteValue"));
        String strConcat9 = "java/lang/".concat("Number");
        String strC11 = Y3.c.SHORT.c();
        d3.i.d("SHORT.desc", strC11);
        Q2.e eVar11 = new Q2.e(n.a(nVar3, strConcat9, "toShort", "", strC11), Q3.f.e("shortValue"));
        String strConcat10 = "java/lang/".concat("Number");
        String strC12 = cVar3.c();
        d3.i.d("INT.desc", strC12);
        Q2.e eVar12 = new Q2.e(n.a(nVar3, strConcat10, "toInt", "", strC12), Q3.f.e("intValue"));
        String strConcat11 = "java/lang/".concat("Number");
        String strC13 = Y3.c.LONG.c();
        d3.i.d("LONG.desc", strC13);
        Q2.e eVar13 = new Q2.e(n.a(nVar3, strConcat11, "toLong", "", strC13), Q3.f.e("longValue"));
        String strConcat12 = "java/lang/".concat("Number");
        String strC14 = Y3.c.FLOAT.c();
        d3.i.d("FLOAT.desc", strC14);
        Q2.e eVar14 = new Q2.e(n.a(nVar3, strConcat12, "toFloat", "", strC14), Q3.f.e("floatValue"));
        String strConcat13 = "java/lang/".concat("Number");
        String strC15 = Y3.c.DOUBLE.c();
        d3.i.d("DOUBLE.desc", strC15);
        Q2.e eVar15 = new Q2.e(n.a(nVar3, strConcat13, "toDouble", "", strC15), Q3.f.e("doubleValue"));
        Q2.e eVar16 = new Q2.e(fA4, Q3.f.e(CarrierFeature.VALUE_AUTO_DOWNLOAD_REMOVE));
        String strConcat14 = "java/lang/".concat("CharSequence");
        String strC16 = cVar3.c();
        d3.i.d("INT.desc", strC16);
        String strC17 = Y3.c.CHAR.c();
        d3.i.d("CHAR.desc", strC17);
        Map mapA12 = R2.z.A1(eVar10, eVar11, eVar12, eVar13, eVar14, eVar15, eVar16, new Q2.e(n.a(nVar3, strConcat14, "get", strC16, strC17), Q3.f.e("charAt")));
        f99i = mapA12;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(R2.z.y1(mapA12.size()));
        for (Map.Entry entry2 : mapA12.entrySet()) {
            linkedHashMap2.put(((F) entry2.getKey()).f86b, entry2.getValue());
        }
        f100j = linkedHashMap2;
        Set setKeySet = f99i.keySet();
        ArrayList arrayList7 = new ArrayList(R2.o.C0(setKeySet));
        Iterator it5 = setKeySet.iterator();
        while (it5.hasNext()) {
            arrayList7.add(((F) it5.next()).f85a);
        }
        f101k = arrayList7;
        Set<Map.Entry> setEntrySet = f99i.entrySet();
        ArrayList arrayList8 = new ArrayList(R2.o.C0(setEntrySet));
        for (Map.Entry entry3 : setEntrySet) {
            arrayList8.add(new Q2.e(((F) entry3.getKey()).f85a, entry3.getValue()));
        }
        int iY1 = R2.z.y1(R2.o.C0(arrayList8));
        if (iY1 < 16) {
            iY1 = 16;
        }
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(iY1);
        Iterator it6 = arrayList8.iterator();
        while (it6.hasNext()) {
            Q2.e eVar17 = (Q2.e) it6.next();
            linkedHashMap3.put((Q3.f) eVar17.f2213d, (Q3.f) eVar17.f2212c);
        }
        f102l = linkedHashMap3;
    }
}
