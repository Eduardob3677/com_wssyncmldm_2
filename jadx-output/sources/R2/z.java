package R2;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public abstract class z extends i3.x {
    public static Map A1(Q2.e... eVarArr) {
        if (eVarArr.length <= 0) {
            return v.f2326c;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(y1(eVarArr.length));
        B1(linkedHashMap, eVarArr);
        return linkedHashMap;
    }

    public static final void B1(HashMap map, Q2.e[] eVarArr) {
        for (Q2.e eVar : eVarArr) {
            map.put(eVar.f2212c, eVar.f2213d);
        }
    }

    public static Map C1(ArrayList arrayList) {
        v vVar = v.f2326c;
        int size = arrayList.size();
        if (size == 0) {
            return vVar;
        }
        if (size == 1) {
            return z1((Q2.e) arrayList.get(0));
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(y1(arrayList.size()));
        D1(arrayList, linkedHashMap);
        return linkedHashMap;
    }

    public static final void D1(ArrayList arrayList, LinkedHashMap linkedHashMap) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Q2.e eVar = (Q2.e) it.next();
            linkedHashMap.put(eVar.f2212c, eVar.f2213d);
        }
    }

    public static final Map E1(LinkedHashMap linkedHashMap) {
        Map.Entry entry = (Map.Entry) linkedHashMap.entrySet().iterator().next();
        Map mapSingletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        d3.i.d("with(entries.iterator().…ingletonMap(key, value) }", mapSingletonMap);
        return mapSingletonMap;
    }

    public static Object x1(Map map, Comparable comparable) {
        d3.i.e("<this>", map);
        Object obj = map.get(comparable);
        if (obj != null || map.containsKey(comparable)) {
            return obj;
        }
        throw new NoSuchElementException("Key " + comparable + " is missing in the map.");
    }

    public static int y1(int i5) {
        if (i5 < 0) {
            return i5;
        }
        if (i5 < 3) {
            return i5 + 1;
        }
        if (i5 < 1073741824) {
            return (int) ((i5 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static Map z1(Q2.e eVar) {
        d3.i.e("pair", eVar);
        Map mapSingletonMap = Collections.singletonMap(eVar.f2212c, eVar.f2213d);
        d3.i.d("singletonMap(pair.first, pair.second)", mapSingletonMap);
        return mapSingletonMap;
    }
}
