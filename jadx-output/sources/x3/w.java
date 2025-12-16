package x3;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import r3.C0797Z;
import r3.c0;
import r3.f0;
import v3.C0894a;
import v3.C0895b;
import v3.C0896c;

/* loaded from: classes.dex */
public abstract class w extends s implements H3.b, H3.c {
    public abstract Member a();

    public final Q3.f b() {
        String name = a().getName();
        Q3.f fVarE = name != null ? Q3.f.e(name) : null;
        return fVarE == null ? Q3.h.f2245a : fVarE;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0121  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ArrayList c(Type[] typeArr, Annotation[][] annotationArr, boolean z4) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        Method method;
        ArrayList arrayList;
        AbstractC0910B zVar;
        String str;
        boolean z5;
        C0914a c0914a;
        ArrayList arrayList2 = new ArrayList(typeArr.length);
        C0915b c0915b = C0915b.f9645a;
        Member memberA = a();
        d3.i.e("member", memberA);
        C0914a c0914a2 = C0915b.f9646b;
        if (c0914a2 == null) {
            synchronized (c0915b) {
                c0914a2 = C0915b.f9646b;
                if (c0914a2 == null) {
                    Class<?> cls = memberA.getClass();
                    try {
                        c0914a = new C0914a(cls.getMethod("getParameters", null), AbstractC0917d.d(cls).loadClass("java.lang.reflect.Parameter").getMethod("getName", null));
                    } catch (NoSuchMethodException unused) {
                        c0914a = new C0914a(null, null);
                    }
                    C0915b.f9646b = c0914a;
                    c0914a2 = c0914a;
                }
            }
        }
        Method method2 = c0914a2.f9643a;
        if (method2 == null || (method = c0914a2.f9644b) == null) {
            arrayList = null;
        } else {
            Object objInvoke = method2.invoke(memberA, null);
            d3.i.c("null cannot be cast to non-null type kotlin.Array<*>", objInvoke);
            Object[] objArr = (Object[]) objInvoke;
            arrayList = new ArrayList(objArr.length);
            for (Object obj : objArr) {
                Object objInvoke2 = method.invoke(obj, null);
                d3.i.c("null cannot be cast to non-null type kotlin.String", objInvoke2);
                arrayList.add((String) objInvoke2);
            }
        }
        int size = arrayList != null ? arrayList.size() - typeArr.length : 0;
        int length = typeArr.length;
        for (int i5 = 0; i5 < length; i5++) {
            Type type = typeArr[i5];
            d3.i.e("type", type);
            boolean z6 = type instanceof Class;
            if (z6) {
                Class cls2 = (Class) type;
                zVar = cls2.isPrimitive() ? new z(cls2) : ((type instanceof GenericArrayType) || (z6 && ((Class) type).isArray())) ? new i(type) : type instanceof WildcardType ? new C0913E((WildcardType) type) : new q(type);
            }
            if (arrayList != null) {
                str = (String) R2.m.P0(i5 + size, arrayList);
                if (str == null) {
                    throw new IllegalStateException(("No parameter with index " + i5 + '+' + size + " (name=" + b() + " type=" + zVar + ") in " + this).toString());
                }
            } else {
                str = null;
            }
            if (z4) {
                z5 = true;
                if (i5 != typeArr.length - 1) {
                    z5 = false;
                }
            }
            arrayList2.add(new C0912D(zVar, annotationArr[i5], str, z5));
        }
        return arrayList2;
    }

    public final f0 d() {
        int modifiers = a().getModifiers();
        return Modifier.isPublic(modifiers) ? c0.f8801c : Modifier.isPrivate(modifiers) ? C0797Z.f8798c : Modifier.isProtected(modifiers) ? Modifier.isStatic(modifiers) ? C0896c.f9556c : C0895b.f9555c : C0894a.f9554c;
    }

    public final boolean equals(Object obj) {
        return (obj instanceof w) && d3.i.a(a(), ((w) obj).a());
    }

    public final int hashCode() {
        return a().hashCode();
    }

    @Override // H3.b
    public final Collection t() {
        Member memberA = a();
        d3.i.c("null cannot be cast to non-null type java.lang.reflect.AnnotatedElement", memberA);
        Annotation[] declaredAnnotations = ((AnnotatedElement) memberA).getDeclaredAnnotations();
        return declaredAnnotations != null ? o4.a.h(declaredAnnotations) : R2.u.f2325c;
    }

    public final String toString() {
        return getClass().getName() + ": " + a();
    }

    @Override // H3.b
    public final C0918e v(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        Member memberA = a();
        d3.i.c("null cannot be cast to non-null type java.lang.reflect.AnnotatedElement", memberA);
        Annotation[] declaredAnnotations = ((AnnotatedElement) memberA).getDeclaredAnnotations();
        if (declaredAnnotations != null) {
            return o4.a.d(declaredAnnotations, cVar);
        }
        return null;
    }
}
