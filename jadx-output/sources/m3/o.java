package m3;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class o extends t {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f8293e = 0;
    public final boolean f;

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ o(Method method, boolean z4, int i5) {
        z4 = (i5 & 2) != 0 ? !Modifier.isStatic(method.getModifiers()) : z4;
        Type[] genericParameterTypes = method.getGenericParameterTypes();
        d3.i.d("method.genericParameterTypes", genericParameterTypes);
        this(method, z4, genericParameterTypes);
    }

    @Override // m3.t
    public void a(Object[] objArr) {
        switch (this.f8293e) {
            case 0:
                W1.a.j(this, objArr);
                if (this.f && R2.i.t0(objArr) == null) {
                    throw new IllegalArgumentException("null is not allowed as a value for this property.");
                }
                return;
            default:
                super.a(objArr);
                return;
        }
    }

    public Object c(Object obj, Object[] objArr) {
        d3.i.e("args", objArr);
        return this.f ? Q2.k.f2225a : ((Method) this.f8297a).invoke(obj, Arrays.copyOf(objArr, objArr.length));
    }

    @Override // m3.e
    public Object i(Object[] objArr) throws IllegalAccessException, IllegalArgumentException {
        a(objArr);
        ((Field) this.f8297a).set(this.f8299c != null ? R2.i.n0(objArr) : null, R2.i.t0(objArr));
        return Q2.k.f2225a;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public o(Method method, boolean z4, Type[] typeArr) {
        Type genericReturnType = method.getGenericReturnType();
        d3.i.d("method.genericReturnType", genericReturnType);
        super(method, genericReturnType, z4 ? method.getDeclaringClass() : null, typeArr);
        this.f = d3.i.a(genericReturnType, Void.TYPE);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public o(Field field, boolean z4, boolean z5) {
        Class cls = Void.TYPE;
        d3.i.d("TYPE", cls);
        Class<?> declaringClass = z5 ? field.getDeclaringClass() : null;
        Type genericType = field.getGenericType();
        d3.i.d("field.genericType", genericType);
        super(field, cls, declaringClass, new Type[]{genericType});
        this.f = z4;
    }
}
