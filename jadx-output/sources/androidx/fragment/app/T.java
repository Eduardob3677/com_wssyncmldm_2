package androidx.fragment.app;

import o.C0722k;

/* loaded from: classes.dex */
public final class T {

    /* renamed from: b, reason: collision with root package name */
    public static final C0722k f3765b = new C0722k();

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Z f3766a;

    public T(Z z4) {
        this.f3766a = z4;
    }

    public static Class b(ClassLoader classLoader, String str) throws ClassNotFoundException {
        C0722k c0722k = f3765b;
        C0722k c0722k2 = (C0722k) c0722k.getOrDefault(classLoader, null);
        if (c0722k2 == null) {
            c0722k2 = new C0722k();
            c0722k.put(classLoader, c0722k2);
        }
        Class cls = (Class) c0722k2.getOrDefault(str, null);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        c0722k2.put(str, cls2);
        return cls2;
    }

    public static Class c(ClassLoader classLoader, String str) {
        try {
            return b(classLoader, str);
        } catch (ClassCastException e5) {
            throw new A0.c(B.f.v("Unable to instantiate fragment ", str, ": make sure class is a valid subclass of Fragment"), e5);
        } catch (ClassNotFoundException e6) {
            throw new A0.c(B.f.v("Unable to instantiate fragment ", str, ": make sure class name exists"), e6);
        }
    }

    public final Fragment a(String str) {
        return Fragment.instantiate(this.f3766a.f3803t.f3751d, str, null);
    }
}
