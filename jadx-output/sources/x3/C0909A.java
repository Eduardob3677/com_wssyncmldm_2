package x3;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import p0.AbstractC0740b;

/* renamed from: x3.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0909A extends w {

    /* renamed from: a, reason: collision with root package name */
    public final Object f9636a;

    public C0909A(Object obj) {
        d3.i.e("recordComponent", obj);
        this.f9636a = obj;
    }

    @Override // x3.w
    public final Member a() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object obj = this.f9636a;
        d3.i.e("recordComponent", obj);
        C0914a c0914a = AbstractC0740b.f8575a;
        Method method = null;
        if (c0914a == null) {
            Class<?> cls = obj.getClass();
            try {
                c0914a = new C0914a(cls.getMethod("getType", null), cls.getMethod("getAccessor", null));
            } catch (NoSuchMethodException unused) {
                c0914a = new C0914a(null, null);
            }
            AbstractC0740b.f8575a = c0914a;
        }
        Method method2 = c0914a.f9644b;
        if (method2 != null) {
            Object objInvoke = method2.invoke(obj, null);
            d3.i.c("null cannot be cast to non-null type java.lang.reflect.Method", objInvoke);
            method = (Method) objInvoke;
        }
        if (method != null) {
            return method;
        }
        throw new NoSuchMethodError("Can't find `getAccessor` method");
    }

    public final H3.d e() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Object obj = this.f9636a;
        d3.i.e("recordComponent", obj);
        C0914a c0914a = AbstractC0740b.f8575a;
        Class cls = null;
        if (c0914a == null) {
            Class<?> cls2 = obj.getClass();
            try {
                c0914a = new C0914a(cls2.getMethod("getType", null), cls2.getMethod("getAccessor", null));
            } catch (NoSuchMethodException unused) {
                c0914a = new C0914a(null, null);
            }
            AbstractC0740b.f8575a = c0914a;
        }
        Method method = c0914a.f9643a;
        if (method != null) {
            Object objInvoke = method.invoke(obj, null);
            d3.i.c("null cannot be cast to non-null type java.lang.Class<*>", objInvoke);
            cls = (Class) objInvoke;
        }
        if (cls != null) {
            return new q(cls);
        }
        throw new NoSuchMethodError("Can't find `getType` method");
    }
}
