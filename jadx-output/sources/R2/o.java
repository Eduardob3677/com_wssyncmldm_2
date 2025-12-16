package R2;

import java.util.Collection;

/* loaded from: classes.dex */
public abstract class o extends n {
    public static int C0(Iterable iterable) {
        d3.i.e("<this>", iterable);
        if (iterable instanceof Collection) {
            return ((Collection) iterable).size();
        }
        return 10;
    }
}
