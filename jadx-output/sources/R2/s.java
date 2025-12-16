package R2;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class s extends r {
    public static void E0(Collection collection, Iterable iterable) {
        d3.i.e("elements", iterable);
        if (iterable instanceof Collection) {
            collection.addAll((Collection) iterable);
            return;
        }
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            collection.add(it.next());
        }
    }
}
