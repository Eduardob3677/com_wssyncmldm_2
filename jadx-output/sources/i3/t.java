package i3;

import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class t implements ParameterizedType, Type {

    /* renamed from: a, reason: collision with root package name */
    public final Class f7157a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f7158b;

    /* renamed from: c, reason: collision with root package name */
    public final Type[] f7159c;

    public t(Class cls, Type type, ArrayList arrayList) {
        this.f7157a = cls;
        this.f7158b = type;
        this.f7159c = (Type[]) arrayList.toArray(new Type[0]);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) obj;
            if (d3.i.a(this.f7157a, parameterizedType.getRawType()) && d3.i.a(this.f7158b, parameterizedType.getOwnerType())) {
                if (Arrays.equals(this.f7159c, parameterizedType.getActualTypeArguments())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type[] getActualTypeArguments() {
        return this.f7159c;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getOwnerType() {
        return this.f7158b;
    }

    @Override // java.lang.reflect.ParameterizedType
    public final Type getRawType() {
        return this.f7157a;
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() throws IOException {
        StringBuilder sb = new StringBuilder();
        Class cls = this.f7157a;
        Type type = this.f7158b;
        if (type != null) {
            sb.append(x.b(type));
            sb.append("$");
            sb.append(cls.getSimpleName());
        } else {
            sb.append(x.b(cls));
        }
        Type[] typeArr = this.f7159c;
        if (!(typeArr.length == 0)) {
            R2.i.r0(typeArr, sb, ", ", "<", ">", -1, "...", C0498s.f7156l);
        }
        String string = sb.toString();
        d3.i.d("StringBuilder().apply(builderAction).toString()", string);
        return string;
    }

    public final int hashCode() {
        int iHashCode = this.f7157a.hashCode();
        Type type = this.f7158b;
        return Arrays.hashCode(this.f7159c) ^ (iHashCode ^ (type != null ? type.hashCode() : 0));
    }

    public final String toString() {
        return getTypeName();
    }
}
