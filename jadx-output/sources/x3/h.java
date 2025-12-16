package x3;

import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class h extends AbstractC0919f implements H3.a {

    /* renamed from: b, reason: collision with root package name */
    public final Object[] f9657b;

    public h(Q3.f fVar, Object[] objArr) {
        super(fVar);
        this.f9657b = objArr;
    }

    public final ArrayList a() {
        Object[] objArr = this.f9657b;
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            d3.i.b(obj);
            Class<?> cls = obj.getClass();
            List list = AbstractC0917d.f9651a;
            arrayList.add(Enum.class.isAssignableFrom(cls) ? new t(null, (Enum) obj) : obj instanceof Annotation ? new g(null, (Annotation) obj) : obj instanceof Object[] ? new h(null, (Object[]) obj) : obj instanceof Class ? new p(null, (Class) obj) : new v(null, obj));
        }
        return arrayList;
    }
}
