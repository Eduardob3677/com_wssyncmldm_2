package androidx.lifecycle;

import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;

@Deprecated
/* loaded from: classes.dex */
class ReflectiveGenericLifecycleObserver implements InterfaceC0153u {

    /* renamed from: a, reason: collision with root package name */
    public final Object f4025a;

    /* renamed from: b, reason: collision with root package name */
    public final C0135b f4026b;

    public ReflectiveGenericLifecycleObserver(Object obj) {
        this.f4025a = obj;
        C0137d c0137d = C0137d.f4055c;
        Class<?> cls = obj.getClass();
        C0135b c0135b = (C0135b) c0137d.f4056a.get(cls);
        this.f4026b = c0135b == null ? c0137d.a(cls, null) : c0135b;
    }

    @Override // androidx.lifecycle.InterfaceC0153u
    public final void a(InterfaceC0155w interfaceC0155w, EnumC0149p enumC0149p) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        HashMap map = this.f4026b.f4050a;
        List list = (List) map.get(enumC0149p);
        Object obj = this.f4025a;
        C0135b.a(list, interfaceC0155w, enumC0149p, obj);
        C0135b.a((List) map.get(EnumC0149p.ON_ANY), interfaceC0155w, enumC0149p, obj);
    }
}
