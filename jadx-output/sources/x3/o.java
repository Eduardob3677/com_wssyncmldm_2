package x3;

import A3.C0005d;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import o3.AbstractC0729f;

/* loaded from: classes.dex */
public final class o extends s implements H3.b, H3.e {

    /* renamed from: a, reason: collision with root package name */
    public final Class f9666a;

    public o(Class cls) {
        d3.i.e("klass", cls);
        this.f9666a = cls;
    }

    public final List a() {
        Field[] declaredFields = this.f9666a.getDeclaredFields();
        d3.i.d("klass.declaredFields", declaredFields);
        return r4.m.n(r4.m.l(new r4.f(R2.i.h0(declaredFields), false, l.f9663l), m.f9664l));
    }

    public final Q3.c b() {
        Q3.c cVarB = AbstractC0917d.a(this.f9666a).b();
        d3.i.d("klass.classId.asSingleFqName()", cVarB);
        return cVarB;
    }

    public final List c() throws SecurityException {
        Method[] declaredMethods = this.f9666a.getDeclaredMethods();
        d3.i.d("klass.declaredMethods", declaredMethods);
        return r4.m.n(r4.m.l(r4.m.i(R2.i.h0(declaredMethods), new C0005d(25, this)), n.f9665l));
    }

    public final ArrayList d() {
        Class cls = this.f9666a;
        d3.i.e("clazz", cls);
        com.google.firebase.messaging.p pVar = AbstractC0729f.f8449a;
        if (pVar == null) {
            try {
                pVar = new com.google.firebase.messaging.p(Class.class.getMethod("isSealed", null), Class.class.getMethod("getPermittedSubclasses", null), Class.class.getMethod("isRecord", null), Class.class.getMethod("getRecordComponents", null), 20);
            } catch (NoSuchMethodException unused) {
                pVar = new com.google.firebase.messaging.p(objArr, objArr, objArr, objArr, 20);
            }
            AbstractC0729f.f8449a = pVar;
        }
        Method method = (Method) pVar.f6260g;
        objArr = method != null ? (Object[]) method.invoke(cls, null) : null;
        if (objArr == null) {
            objArr = new Object[0];
        }
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            arrayList.add(new C0909A(obj));
        }
        return arrayList;
    }

    public final boolean e() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class cls = this.f9666a;
        d3.i.e("clazz", cls);
        com.google.firebase.messaging.p pVar = AbstractC0729f.f8449a;
        Boolean bool = null;
        if (pVar == null) {
            try {
                pVar = new com.google.firebase.messaging.p(Class.class.getMethod("isSealed", null), Class.class.getMethod("getPermittedSubclasses", null), Class.class.getMethod("isRecord", null), Class.class.getMethod("getRecordComponents", null), 20);
            } catch (NoSuchMethodException unused) {
                pVar = new com.google.firebase.messaging.p(bool, bool, bool, bool, 20);
            }
            AbstractC0729f.f8449a = pVar;
        }
        Method method = (Method) pVar.f;
        if (method != null) {
            Object objInvoke = method.invoke(cls, null);
            d3.i.c("null cannot be cast to non-null type kotlin.Boolean", objInvoke);
            bool = (Boolean) objInvoke;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof o) {
            if (d3.i.a(this.f9666a, ((o) obj).f9666a)) {
                return true;
            }
        }
        return false;
    }

    public final boolean f() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Class cls = this.f9666a;
        d3.i.e("clazz", cls);
        com.google.firebase.messaging.p pVar = AbstractC0729f.f8449a;
        Boolean bool = null;
        if (pVar == null) {
            try {
                pVar = new com.google.firebase.messaging.p(Class.class.getMethod("isSealed", null), Class.class.getMethod("getPermittedSubclasses", null), Class.class.getMethod("isRecord", null), Class.class.getMethod("getRecordComponents", null), 20);
            } catch (NoSuchMethodException unused) {
                pVar = new com.google.firebase.messaging.p(bool, bool, bool, bool, 20);
            }
            AbstractC0729f.f8449a = pVar;
        }
        Method method = (Method) pVar.f6258d;
        if (method != null) {
            Object objInvoke = method.invoke(cls, null);
            d3.i.c("null cannot be cast to non-null type kotlin.Boolean", objInvoke);
            bool = (Boolean) objInvoke;
        }
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public final int hashCode() {
        return this.f9666a.hashCode();
    }

    @Override // H3.b
    public final Collection t() {
        Annotation[] declaredAnnotations;
        Class cls = this.f9666a;
        return (cls == null || (declaredAnnotations = cls.getDeclaredAnnotations()) == null) ? R2.u.f2325c : o4.a.h(declaredAnnotations);
    }

    public final String toString() {
        return o.class.getName() + ": " + this.f9666a;
    }

    @Override // H3.e
    public final ArrayList u() {
        TypeVariable[] typeParameters = this.f9666a.getTypeParameters();
        d3.i.d("klass.typeParameters", typeParameters);
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable typeVariable : typeParameters) {
            arrayList.add(new C0911C(typeVariable));
        }
        return arrayList;
    }

    @Override // H3.b
    public final C0918e v(Q3.c cVar) {
        Annotation[] declaredAnnotations;
        d3.i.e("fqName", cVar);
        Class cls = this.f9666a;
        if (cls == null || (declaredAnnotations = cls.getDeclaredAnnotations()) == null) {
            return null;
        }
        return o4.a.d(declaredAnnotations, cVar);
    }
}
