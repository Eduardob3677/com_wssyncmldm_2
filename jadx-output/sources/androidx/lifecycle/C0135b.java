package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* renamed from: androidx.lifecycle.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0135b {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f4050a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final Map f4051b;

    public C0135b(HashMap map) {
        this.f4051b = map;
        for (Map.Entry entry : map.entrySet()) {
            EnumC0149p enumC0149p = (EnumC0149p) entry.getValue();
            List arrayList = (List) this.f4050a.get(enumC0149p);
            if (arrayList == null) {
                arrayList = new ArrayList();
                this.f4050a.put(enumC0149p, arrayList);
            }
            arrayList.add((C0136c) entry.getKey());
        }
    }

    public static void a(List list, InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p, Object obj) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                C0136c c0136c = (C0136c) list.get(size);
                c0136c.getClass();
                try {
                    int i5 = c0136c.f4052a;
                    Method method = c0136c.f4053b;
                    if (i5 == 0) {
                        method.invoke(obj, null);
                    } else if (i5 == 1) {
                        method.invoke(obj, interfaceC0155w);
                    } else if (i5 == 2) {
                        method.invoke(obj, interfaceC0155w, enumC0149p);
                    }
                } catch (IllegalAccessException e5) {
                    throw new RuntimeException(e5);
                } catch (InvocationTargetException e6) {
                    throw new RuntimeException("Failed to call observer method", e6.getCause());
                }
            }
        }
    }
}
