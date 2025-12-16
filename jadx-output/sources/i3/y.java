package i3;

import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class y implements WildcardType, Type {

    /* renamed from: c, reason: collision with root package name */
    public static final y f7164c = new y(null, null);

    /* renamed from: a, reason: collision with root package name */
    public final Type f7165a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f7166b;

    public y(Type type, Type type2) {
        this.f7165a = type;
        this.f7166b = type2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) obj;
            if (Arrays.equals(getUpperBounds(), wildcardType.getUpperBounds()) && Arrays.equals(getLowerBounds(), wildcardType.getLowerBounds())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getLowerBounds() {
        Type type = this.f7166b;
        return type == null ? new Type[0] : new Type[]{type};
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        Type type = this.f7166b;
        if (type != null) {
            return "? super " + x.b(type);
        }
        Type type2 = this.f7165a;
        if (type2 == null || d3.i.a(type2, Object.class)) {
            return "?";
        }
        return "? extends " + x.b(type2);
    }

    @Override // java.lang.reflect.WildcardType
    public final Type[] getUpperBounds() {
        Type type = this.f7165a;
        if (type == null) {
            type = Object.class;
        }
        return new Type[]{type};
    }

    public final int hashCode() {
        return Arrays.hashCode(getLowerBounds()) ^ Arrays.hashCode(getUpperBounds());
    }

    public final String toString() {
        return getTypeName();
    }
}
