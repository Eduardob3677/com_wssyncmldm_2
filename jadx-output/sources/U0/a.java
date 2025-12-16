package U0;

import B.f;
import I0.c;
import android.util.SparseArray;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract class a {

    /* renamed from: a, reason: collision with root package name */
    public static final SparseArray f2741a = new SparseArray();

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f2742b;

    static {
        HashMap map = new HashMap();
        f2742b = map;
        map.put(c.f870c, 0);
        map.put(c.f871d, 1);
        map.put(c.f872e, 2);
        for (c cVar : map.keySet()) {
            f2741a.append(((Integer) f2742b.get(cVar)).intValue(), cVar);
        }
    }

    public static int a(c cVar) {
        Integer num = (Integer) f2742b.get(cVar);
        if (num != null) {
            return num.intValue();
        }
        throw new IllegalStateException("PriorityMapping is missing known Priority value " + cVar);
    }

    public static c b(int i5) {
        c cVar = (c) f2741a.get(i5);
        if (cVar != null) {
            return cVar;
        }
        throw new IllegalArgumentException(f.t(i5, "Unknown Priority for value "));
    }
}
