package x3;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/* renamed from: x3.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0918e extends s {

    /* renamed from: a, reason: collision with root package name */
    public final Annotation f9654a;

    public C0918e(Annotation annotation) {
        d3.i.e("annotation", annotation);
        this.f9654a = annotation;
    }

    public final ArrayList a() throws IllegalAccessException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Annotation annotation = this.f9654a;
        Method[] declaredMethods = L2.b.q(L2.b.k(annotation)).getDeclaredMethods();
        d3.i.d("annotation.annotationClass.java.declaredMethods", declaredMethods);
        ArrayList arrayList = new ArrayList(declaredMethods.length);
        for (Method method : declaredMethods) {
            Object objInvoke = method.invoke(annotation, null);
            d3.i.d("method.invoke(annotation)", objInvoke);
            Q3.f fVarE = Q3.f.e(method.getName());
            Class<?> cls = objInvoke.getClass();
            List list = AbstractC0917d.f9651a;
            arrayList.add(Enum.class.isAssignableFrom(cls) ? new t(fVarE, (Enum) objInvoke) : objInvoke instanceof Annotation ? new g(fVarE, (Annotation) objInvoke) : objInvoke instanceof Object[] ? new h(fVarE, (Object[]) objInvoke) : objInvoke instanceof Class ? new p(fVarE, (Class) objInvoke) : new v(fVarE, objInvoke));
        }
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0918e) {
            if (this.f9654a == ((C0918e) obj).f9654a) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f9654a);
    }

    public final String toString() {
        return C0918e.class.getName() + ": " + this.f9654a;
    }
}
