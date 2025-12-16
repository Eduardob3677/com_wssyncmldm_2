package x3;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Collection;

/* renamed from: x3.E, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0913E extends AbstractC0910B implements H3.d {

    /* renamed from: a, reason: collision with root package name */
    public final WildcardType f9642a;

    public C0913E(WildcardType wildcardType) {
        this.f9642a = wildcardType;
    }

    @Override // x3.AbstractC0910B
    public final Type a() {
        return this.f9642a;
    }

    public final AbstractC0910B b() {
        AbstractC0910B iVar;
        WildcardType wildcardType = this.f9642a;
        Type[] upperBounds = wildcardType.getUpperBounds();
        Type[] lowerBounds = wildcardType.getLowerBounds();
        if (upperBounds.length > 1 || lowerBounds.length > 1) {
            throw new UnsupportedOperationException("Wildcard types with many bounds are not yet supported: " + wildcardType);
        }
        if (lowerBounds.length != 1) {
            if (upperBounds.length == 1) {
                Type type = (Type) R2.i.u0(upperBounds);
                if (!d3.i.a(type, Object.class)) {
                    d3.i.d("ub", type);
                    boolean z4 = type instanceof Class;
                    if (z4) {
                        Class cls = (Class) type;
                        if (cls.isPrimitive()) {
                            return new z(cls);
                        }
                    }
                    iVar = ((type instanceof GenericArrayType) || (z4 && ((Class) type).isArray())) ? new i(type) : type instanceof WildcardType ? new C0913E((WildcardType) type) : new q(type);
                }
            }
            return null;
        }
        Object objU0 = R2.i.u0(lowerBounds);
        d3.i.d("lowerBounds.single()", objU0);
        Type type2 = (Type) objU0;
        boolean z5 = type2 instanceof Class;
        if (z5) {
            Class cls2 = (Class) type2;
            if (cls2.isPrimitive()) {
                return new z(cls2);
            }
        }
        iVar = ((type2 instanceof GenericArrayType) || (z5 && ((Class) type2).isArray())) ? new i(type2) : type2 instanceof WildcardType ? new C0913E((WildcardType) type2) : new q(type2);
        return iVar;
    }

    @Override // H3.b
    public final Collection t() {
        return R2.u.f2325c;
    }
}
