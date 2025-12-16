package l3;

import c3.InterfaceC0222b;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: l3.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0674c {

    /* renamed from: a, reason: collision with root package name */
    public static final e.v f8159a;

    /* renamed from: b, reason: collision with root package name */
    public static final e.v f8160b;

    static {
        C0672b c0672b = C0672b.f8148e;
        int i5 = AbstractC0670a.f8146a;
        f8159a = new e.v(c0672b);
        f8160b = new e.v(C0672b.f);
        new ConcurrentHashMap();
        new ConcurrentHashMap();
        new ConcurrentHashMap();
    }

    public static final C0701z a(Class cls) {
        d3.i.e("jClass", cls);
        e.v vVar = f8159a;
        vVar.getClass();
        ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) vVar.f6793d;
        Object obj = concurrentHashMap.get(cls);
        if (obj == null) {
            Object objE = ((InterfaceC0222b) vVar.f6792c).e(cls);
            Object objPutIfAbsent = concurrentHashMap.putIfAbsent(cls, objE);
            obj = objPutIfAbsent == null ? objE : objPutIfAbsent;
        }
        d3.i.c("null cannot be cast to non-null type kotlin.reflect.jvm.internal.KClassImpl<T of kotlin.reflect.jvm.internal.CachesKt.getOrCreateKotlinClass>", obj);
        return (C0701z) obj;
    }
}
