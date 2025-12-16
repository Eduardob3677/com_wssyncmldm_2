package R2;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class B extends L2.b {
    public static LinkedHashSet R(Set set, Object obj) {
        d3.i.e("<this>", set);
        LinkedHashSet linkedHashSet = new LinkedHashSet(z.y1(set.size() + 1));
        linkedHashSet.addAll(set);
        linkedHashSet.add(obj);
        return linkedHashSet;
    }

    public static LinkedHashSet S(Set set, Collection collection) {
        d3.i.e("<this>", set);
        d3.i.e("elements", collection);
        LinkedHashSet linkedHashSet = new LinkedHashSet(z.y1(set.size() + Integer.valueOf(collection.size()).intValue()));
        linkedHashSet.addAll(set);
        s.E0(linkedHashSet, collection);
        return linkedHashSet;
    }

    public static Set T(Object... objArr) {
        return objArr.length > 0 ? i.x0(objArr) : w.f2327c;
    }
}
