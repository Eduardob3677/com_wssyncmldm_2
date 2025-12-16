package x3;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* loaded from: classes.dex */
public final class q extends AbstractC0910B implements H3.d {

    /* renamed from: a, reason: collision with root package name */
    public final Type f9668a;

    /* renamed from: b, reason: collision with root package name */
    public final s f9669b;

    public q(Type type) {
        s oVar;
        d3.i.e("reflectType", type);
        this.f9668a = type;
        if (type instanceof Class) {
            oVar = new o((Class) type);
        } else if (type instanceof TypeVariable) {
            oVar = new C0911C((TypeVariable) type);
        } else {
            if (!(type instanceof ParameterizedType)) {
                throw new IllegalStateException("Not a classifier type (" + type.getClass() + "): " + type);
            }
            Type rawType = ((ParameterizedType) type).getRawType();
            d3.i.c("null cannot be cast to non-null type java.lang.Class<*>", rawType);
            oVar = new o((Class) rawType);
        }
        this.f9669b = oVar;
    }

    @Override // x3.AbstractC0910B
    public final Type a() {
        return this.f9668a;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ArrayList b() {
        H3.d zVar;
        List<Type> listC = AbstractC0917d.c(this.f9668a);
        ArrayList arrayList = new ArrayList(R2.o.C0(listC));
        for (Type type : listC) {
            d3.i.e("type", type);
            boolean z4 = type instanceof Class;
            if (z4) {
                Class cls = (Class) type;
                zVar = cls.isPrimitive() ? new z(cls) : ((type instanceof GenericArrayType) || (z4 && ((Class) type).isArray())) ? new i(type) : type instanceof WildcardType ? new C0913E((WildcardType) type) : new q(type);
            }
            arrayList.add(zVar);
        }
        return arrayList;
    }

    public final boolean c() {
        Type type = this.f9668a;
        if (!(type instanceof Class)) {
            return false;
        }
        TypeVariable[] typeParameters = ((Class) type).getTypeParameters();
        d3.i.d("getTypeParameters()", typeParameters);
        return (typeParameters.length == 0) ^ true;
    }

    @Override // H3.b
    public final Collection t() {
        return R2.u.f2325c;
    }

    @Override // x3.AbstractC0910B, H3.b
    public final C0918e v(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        return null;
    }
}
