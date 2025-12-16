package m3;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* renamed from: m3.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0709b implements InvocationHandler {

    /* renamed from: a, reason: collision with root package name */
    public final Class f8281a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f8282b;

    /* renamed from: c, reason: collision with root package name */
    public final Q2.c f8283c;

    /* renamed from: d, reason: collision with root package name */
    public final Q2.c f8284d;

    /* renamed from: e, reason: collision with root package name */
    public final List f8285e;

    public C0709b(Class cls, Map map, Q2.h hVar, Q2.h hVar2, List list) {
        this.f8281a = cls;
        this.f8282b = map;
        this.f8283c = hVar;
        this.f8284d = hVar2;
        this.f8285e = list;
    }

    /* JADX WARN: Removed duplicated region for block: B:73:0x0173  */
    @Override // java.lang.reflect.InvocationHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object invoke(Object obj, Method method, Object[] objArr) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        boolean zA;
        boolean z4;
        Class cls = this.f8281a;
        d3.i.e("$annotationClass", cls);
        Map map = this.f8282b;
        d3.i.e("$values", map);
        Q2.c cVar = this.f8283c;
        d3.i.e("$toString$delegate", cVar);
        Q2.c cVar2 = this.f8284d;
        d3.i.e("$hashCode$delegate", cVar2);
        List<Method> list = this.f8285e;
        d3.i.e("$methods", list);
        String name = method.getName();
        if (name != null) {
            int iHashCode = name.hashCode();
            if (iHashCode != -1776922004) {
                if (iHashCode != 147696667) {
                    if (iHashCode == 1444986633 && name.equals("annotationType")) {
                        return cls;
                    }
                } else if (name.equals("hashCode")) {
                    return Integer.valueOf(((Number) cVar2.getValue()).intValue());
                }
            } else if (name.equals("toString")) {
                return (String) cVar.getValue();
            }
        }
        boolean z5 = false;
        if (!d3.i.a(name, "equals") || objArr == null || objArr.length != 1) {
            if (map.containsKey(name)) {
                return map.get(name);
            }
            StringBuilder sb = new StringBuilder("Method is not supported: ");
            sb.append(method);
            sb.append(" (args: ");
            if (objArr == null) {
                objArr = new Object[0];
            }
            sb.append(R2.i.w0(objArr));
            sb.append(')');
            throw new Q2.d(sb.toString(), 2);
        }
        Object objU0 = R2.i.u0(objArr);
        Annotation annotation = objU0 instanceof Annotation ? (Annotation) objU0 : null;
        if (d3.i.a(annotation != null ? L2.b.q(L2.b.k(annotation)) : null, cls)) {
            if (list.isEmpty()) {
                z4 = true;
                if (z4) {
                    z5 = true;
                }
            } else {
                for (Method method2 : list) {
                    Object obj2 = map.get(method2.getName());
                    Object objInvoke = method2.invoke(objU0, null);
                    if (obj2 instanceof boolean[]) {
                        d3.i.c("null cannot be cast to non-null type kotlin.BooleanArray", objInvoke);
                        zA = Arrays.equals((boolean[]) obj2, (boolean[]) objInvoke);
                    } else if (obj2 instanceof char[]) {
                        d3.i.c("null cannot be cast to non-null type kotlin.CharArray", objInvoke);
                        zA = Arrays.equals((char[]) obj2, (char[]) objInvoke);
                    } else if (obj2 instanceof byte[]) {
                        d3.i.c("null cannot be cast to non-null type kotlin.ByteArray", objInvoke);
                        zA = Arrays.equals((byte[]) obj2, (byte[]) objInvoke);
                    } else if (obj2 instanceof short[]) {
                        d3.i.c("null cannot be cast to non-null type kotlin.ShortArray", objInvoke);
                        zA = Arrays.equals((short[]) obj2, (short[]) objInvoke);
                    } else if (obj2 instanceof int[]) {
                        d3.i.c("null cannot be cast to non-null type kotlin.IntArray", objInvoke);
                        zA = Arrays.equals((int[]) obj2, (int[]) objInvoke);
                    } else if (obj2 instanceof float[]) {
                        d3.i.c("null cannot be cast to non-null type kotlin.FloatArray", objInvoke);
                        zA = Arrays.equals((float[]) obj2, (float[]) objInvoke);
                    } else if (obj2 instanceof long[]) {
                        d3.i.c("null cannot be cast to non-null type kotlin.LongArray", objInvoke);
                        zA = Arrays.equals((long[]) obj2, (long[]) objInvoke);
                    } else if (obj2 instanceof double[]) {
                        d3.i.c("null cannot be cast to non-null type kotlin.DoubleArray", objInvoke);
                        zA = Arrays.equals((double[]) obj2, (double[]) objInvoke);
                    } else if (obj2 instanceof Object[]) {
                        d3.i.c("null cannot be cast to non-null type kotlin.Array<*>", objInvoke);
                        zA = Arrays.equals((Object[]) obj2, (Object[]) objInvoke);
                    } else {
                        zA = d3.i.a(obj2, objInvoke);
                    }
                    if (!zA) {
                        z4 = false;
                        break;
                    }
                }
                z4 = true;
                if (z4) {
                }
            }
        }
        return Boolean.valueOf(z5);
    }
}
