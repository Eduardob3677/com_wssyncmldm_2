package A3;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class l {

    /* renamed from: a, reason: collision with root package name */
    public static final LinkedHashMap f134a;

    /* renamed from: b, reason: collision with root package name */
    public static final Map f135b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        f134a = linkedHashMap;
        b(Q3.i.f2265q, a("java.util.ArrayList", "java.util.LinkedList"));
        b(Q3.i.f2266r, a("java.util.HashSet", "java.util.TreeSet", "java.util.LinkedHashSet"));
        b(Q3.i.f2267s, a("java.util.HashMap", "java.util.TreeMap", "java.util.LinkedHashMap", "java.util.concurrent.ConcurrentHashMap", "java.util.concurrent.ConcurrentSkipListMap"));
        b(Q3.b.k(new Q3.c("java.util.function.Function")), a("java.util.function.UnaryOperator"));
        b(Q3.b.k(new Q3.c("java.util.function.BiFunction")), a("java.util.function.BinaryOperator"));
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            arrayList.add(new Q2.e(((Q3.b) entry.getKey()).b(), ((Q3.b) entry.getValue()).b()));
        }
        f135b = R2.z.C1(arrayList);
    }

    public static ArrayList a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(Q3.b.k(new Q3.c(str)));
        }
        return arrayList;
    }

    public static void b(Q3.b bVar, ArrayList arrayList) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            f134a.put(next, bVar);
        }
    }
}
