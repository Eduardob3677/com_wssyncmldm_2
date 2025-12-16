package x3;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;

/* loaded from: classes.dex */
public final class i extends AbstractC0910B implements H3.d {

    /* renamed from: a, reason: collision with root package name */
    public final Type f9658a;

    /* renamed from: b, reason: collision with root package name */
    public final AbstractC0910B f9659b;

    /* renamed from: c, reason: collision with root package name */
    public final R2.u f9660c;

    /* JADX WARN: Multi-variable type inference failed */
    public i(Type type) {
        AbstractC0910B zVar;
        AbstractC0910B zVar2;
        this.f9658a = type;
        if (!(type instanceof GenericArrayType)) {
            if (type instanceof Class) {
                Class cls = (Class) type;
                if (cls.isArray()) {
                    Class<?> componentType = cls.getComponentType();
                    d3.i.d("getComponentType()", componentType);
                    zVar = componentType.isPrimitive() ? new z(componentType) : ((componentType instanceof GenericArrayType) || componentType.isArray()) ? new i(componentType) : componentType instanceof WildcardType ? new C0913E((WildcardType) componentType) : new q(componentType);
                }
            }
            throw new IllegalArgumentException("Not an array type (" + type.getClass() + "): " + type);
        }
        Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
        d3.i.d("genericComponentType", genericComponentType);
        boolean z4 = genericComponentType instanceof Class;
        if (z4) {
            Class cls2 = (Class) genericComponentType;
            if (cls2.isPrimitive()) {
                zVar2 = new z(cls2);
                this.f9659b = zVar2;
                this.f9660c = R2.u.f2325c;
            }
        }
        zVar = ((genericComponentType instanceof GenericArrayType) || (z4 && ((Class) genericComponentType).isArray())) ? new i(genericComponentType) : genericComponentType instanceof WildcardType ? new C0913E((WildcardType) genericComponentType) : new q(genericComponentType);
        zVar2 = zVar;
        this.f9659b = zVar2;
        this.f9660c = R2.u.f2325c;
    }

    @Override // x3.AbstractC0910B
    public final Type a() {
        return this.f9658a;
    }

    @Override // H3.b
    public final Collection t() {
        return this.f9660c;
    }
}
