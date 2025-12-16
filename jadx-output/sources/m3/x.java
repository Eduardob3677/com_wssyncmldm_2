package m3;

import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.List;

/* loaded from: classes.dex */
public abstract class x implements e {

    /* renamed from: a, reason: collision with root package name */
    public final Method f8305a;

    /* renamed from: b, reason: collision with root package name */
    public final List f8306b;

    /* renamed from: c, reason: collision with root package name */
    public final Class f8307c;

    public x(Method method, List list) {
        this.f8305a = method;
        this.f8306b = list;
        Class<?> returnType = method.getReturnType();
        d3.i.d("unboxMethod.returnType", returnType);
        this.f8307c = returnType;
    }

    @Override // m3.e
    public final Type n() {
        return this.f8307c;
    }

    @Override // m3.e
    public final List o() {
        return this.f8306b;
    }

    @Override // m3.e
    public final /* bridge */ /* synthetic */ Member p() {
        return null;
    }
}
