package A3;

import com.idm.core.dd.IDMDDConstants;
import com.samsung.android.lib.episode.EternalContract;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* renamed from: A3.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0009h {

    /* renamed from: a, reason: collision with root package name */
    public static final Map f129a;

    /* renamed from: b, reason: collision with root package name */
    public static final LinkedHashMap f130b;

    /* renamed from: c, reason: collision with root package name */
    public static final Set f131c;

    /* renamed from: d, reason: collision with root package name */
    public static final Set f132d;

    static {
        Q3.e eVar = o3.m.f8514j;
        Q3.c cVarG = eVar.b(Q3.f.e("name")).g();
        d3.i.d("child(Name.identifier(name)).toSafe()", cVarG);
        Q2.e eVar2 = new Q2.e(cVarG, Q3.f.e("name"));
        Q3.c cVarG2 = eVar.b(Q3.f.e("ordinal")).g();
        d3.i.d("child(Name.identifier(name)).toSafe()", cVarG2);
        Q2.e eVar3 = new Q2.e(cVarG2, Q3.f.e("ordinal"));
        Q2.e eVar4 = new Q2.e(o3.m.f8479B.c(Q3.f.e(IDMDDConstants.tagSize)), Q3.f.e(IDMDDConstants.tagSize));
        Q3.c cVar = o3.m.f8482F;
        Q2.e eVar5 = new Q2.e(cVar.c(Q3.f.e(IDMDDConstants.tagSize)), Q3.f.e(IDMDDConstants.tagSize));
        Q3.c cVarG3 = o3.m.f8510e.b(Q3.f.e("length")).g();
        d3.i.d("child(Name.identifier(name)).toSafe()", cVarG3);
        Map mapA1 = R2.z.A1(eVar2, eVar3, eVar4, eVar5, new Q2.e(cVarG3, Q3.f.e("length")), new Q2.e(cVar.c(Q3.f.e("keys")), Q3.f.e("keySet")), new Q2.e(cVar.c(Q3.f.e("values")), Q3.f.e("values")), new Q2.e(cVar.c(Q3.f.e(EternalContract.EXTRA_ENTRIES)), Q3.f.e("entrySet")));
        f129a = mapA1;
        Set<Map.Entry> setEntrySet = mapA1.entrySet();
        ArrayList arrayList = new ArrayList(R2.o.C0(setEntrySet));
        for (Map.Entry entry : setEntrySet) {
            arrayList.add(new Q2.e(((Q3.c) entry.getKey()).f(), entry.getValue()));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Q2.e eVar6 = (Q2.e) it.next();
            Q3.f fVar = (Q3.f) eVar6.f2213d;
            Object arrayList2 = linkedHashMap.get(fVar);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap.put(fVar, arrayList2);
            }
            ((List) arrayList2).add((Q3.f) eVar6.f2212c);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(R2.z.y1(linkedHashMap.size()));
        for (Map.Entry entry2 : linkedHashMap.entrySet()) {
            Object key = entry2.getKey();
            Iterable iterable = (Iterable) entry2.getValue();
            d3.i.e("<this>", iterable);
            linkedHashMap2.put(key, R2.m.g1(R2.m.i1(iterable)));
        }
        f130b = linkedHashMap2;
        Set setKeySet = f129a.keySet();
        f131c = setKeySet;
        ArrayList arrayList3 = new ArrayList(R2.o.C0(setKeySet));
        Iterator it2 = setKeySet.iterator();
        while (it2.hasNext()) {
            arrayList3.add(((Q3.c) it2.next()).f());
        }
        f132d = R2.m.j1(arrayList3);
    }
}
