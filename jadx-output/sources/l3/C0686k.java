package l3;

import java.lang.reflect.Field;
import x3.AbstractC0917d;

/* renamed from: l3.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0686k extends r0 {

    /* renamed from: d, reason: collision with root package name */
    public final Field f8186d;

    public C0686k(Field field) {
        d3.i.e("field", field);
        this.f8186d = field;
    }

    @Override // l3.r0
    public final String e() {
        StringBuilder sb = new StringBuilder();
        Field field = this.f8186d;
        String name = field.getName();
        d3.i.d("field.name", name);
        sb.append(A3.y.a(name));
        sb.append("()");
        Class<?> type = field.getType();
        d3.i.d("field.type", type);
        sb.append(AbstractC0917d.b(type));
        return sb.toString();
    }
}
