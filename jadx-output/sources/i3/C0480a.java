package i3;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;

/* renamed from: i3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0480a implements GenericArrayType, Type {

    /* renamed from: a, reason: collision with root package name */
    public final Type f7151a;

    public C0480a(Type type) {
        d3.i.e("elementType", type);
        this.f7151a = type;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof GenericArrayType) {
            if (d3.i.a(this.f7151a, ((GenericArrayType) obj).getGenericComponentType())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.reflect.GenericArrayType
    public final Type getGenericComponentType() {
        return this.f7151a;
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        return x.b(this.f7151a) + "[]";
    }

    public final int hashCode() {
        return this.f7151a.hashCode();
    }

    public final String toString() {
        return getTypeName();
    }
}
