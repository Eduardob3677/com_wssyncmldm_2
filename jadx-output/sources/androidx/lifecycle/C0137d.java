package androidx.lifecycle;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;

/* renamed from: androidx.lifecycle.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0137d {

    /* renamed from: c, reason: collision with root package name */
    public static final C0137d f4055c = new C0137d();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f4056a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f4057b = new HashMap();

    public static void b(HashMap map, C0136c c0136c, EnumC0149p enumC0149p, Class cls) {
        EnumC0149p enumC0149p2 = (EnumC0149p) map.get(c0136c);
        if (enumC0149p2 == null || enumC0149p == enumC0149p2) {
            if (enumC0149p2 == null) {
                map.put(c0136c, enumC0149p);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + c0136c.f4053b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + enumC0149p2 + ", new value " + enumC0149p);
    }

    public final C0135b a(Class cls, Method[] methodArr) throws SecurityException {
        int i5;
        Class superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        HashMap map2 = this.f4056a;
        if (superclass != null) {
            C0135b c0135bA = (C0135b) map2.get(superclass);
            if (c0135bA == null) {
                c0135bA = a(superclass, null);
            }
            map.putAll(c0135bA.f4051b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            C0135b c0135bA2 = (C0135b) map2.get(cls2);
            if (c0135bA2 == null) {
                c0135bA2 = a(cls2, null);
            }
            for (Map.Entry entry : c0135bA2.f4051b.entrySet()) {
                b(map, (C0136c) entry.getKey(), (EnumC0149p) entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            try {
                methodArr = cls.getDeclaredMethods();
            } catch (NoClassDefFoundError e5) {
                throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e5);
            }
        }
        boolean z4 = false;
        for (Method method : methodArr) {
            H h5 = (H) method.getAnnotation(H.class);
            if (h5 != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i5 = 0;
                } else {
                    if (!InterfaceC0155w.class.isAssignableFrom(parameterTypes[0])) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i5 = 1;
                }
                EnumC0149p enumC0149pValue = h5.value();
                if (parameterTypes.length > 1) {
                    if (!EnumC0149p.class.isAssignableFrom(parameterTypes[1])) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (enumC0149pValue != EnumC0149p.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i5 = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                b(map, new C0136c(i5, method), enumC0149pValue, cls);
                z4 = true;
            }
        }
        C0135b c0135b = new C0135b(map);
        map2.put(cls, c0135b);
        this.f4057b.put(cls, Boolean.valueOf(z4));
        return c0135b;
    }
}
