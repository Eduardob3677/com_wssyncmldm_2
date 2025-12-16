package m3;

import java.lang.reflect.Field;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public abstract class k extends t {
    /* JADX WARN: Illegal instructions before constructor call */
    public k(Field field, boolean z4) {
        Type genericType = field.getGenericType();
        d3.i.d("field.genericType", genericType);
        super(field, genericType, z4 ? field.getDeclaringClass() : null, new Type[0]);
    }

    @Override // m3.e
    public Object i(Object[] objArr) {
        a(objArr);
        return ((Field) this.f8297a).get(this.f8299c != null ? R2.i.n0(objArr) : null);
    }
}
