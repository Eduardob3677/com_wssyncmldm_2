package R2;

import f1.AbstractC0420a;
import java.util.List;

/* loaded from: classes.dex */
public abstract class n extends AbstractC0420a {
    public static List A0(List list) {
        int size = list.size();
        return size != 0 ? size != 1 ? list : AbstractC0420a.V(list.get(0)) : u.f2325c;
    }

    public static void B0() {
        throw new ArithmeticException("Index overflow has happened.");
    }

    public static int x0(List list) {
        d3.i.e("<this>", list);
        return list.size() - 1;
    }

    public static List y0(Object... objArr) {
        d3.i.e("elements", objArr);
        return objArr.length > 0 ? i.g0(objArr) : u.f2325c;
    }

    public static List z0(Object obj) {
        return obj != null ? AbstractC0420a.V(obj) : u.f2325c;
    }
}
