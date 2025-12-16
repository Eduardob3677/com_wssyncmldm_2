package x3;

import java.lang.annotation.Annotation;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class x extends w implements H3.e {

    /* renamed from: a, reason: collision with root package name */
    public final Method f9674a;

    public x(Method method) {
        d3.i.e("member", method);
        this.f9674a = method;
    }

    @Override // x3.w
    public final Member a() {
        return this.f9674a;
    }

    public final AbstractC0910B e() {
        Type genericReturnType = this.f9674a.getGenericReturnType();
        d3.i.d("member.genericReturnType", genericReturnType);
        boolean z4 = genericReturnType instanceof Class;
        if (z4) {
            Class cls = (Class) genericReturnType;
            if (cls.isPrimitive()) {
                return new z(cls);
            }
        }
        return ((genericReturnType instanceof GenericArrayType) || (z4 && ((Class) genericReturnType).isArray())) ? new i(genericReturnType) : genericReturnType instanceof WildcardType ? new C0913E((WildcardType) genericReturnType) : new q(genericReturnType);
    }

    public final List f() {
        Method method = this.f9674a;
        Type[] genericParameterTypes = method.getGenericParameterTypes();
        d3.i.d("member.genericParameterTypes", genericParameterTypes);
        Annotation[][] parameterAnnotations = method.getParameterAnnotations();
        d3.i.d("member.parameterAnnotations", parameterAnnotations);
        return c(genericParameterTypes, parameterAnnotations, method.isVarArgs());
    }

    @Override // H3.e
    public final ArrayList u() {
        TypeVariable<Method>[] typeParameters = this.f9674a.getTypeParameters();
        d3.i.d("member.typeParameters", typeParameters);
        ArrayList arrayList = new ArrayList(typeParameters.length);
        for (TypeVariable<Method> typeVariable : typeParameters) {
            arrayList.add(new C0911C(typeVariable));
        }
        return arrayList;
    }
}
