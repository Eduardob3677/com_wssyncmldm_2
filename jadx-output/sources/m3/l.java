package m3;

import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class l extends o implements d {

    /* renamed from: g, reason: collision with root package name */
    public final Object f8291g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(Field field, boolean z4, Object obj) {
        super(field, z4, false);
        d3.i.e("field", field);
        this.f8291g = obj;
    }

    @Override // m3.o, m3.e
    public final Object i(Object[] objArr) throws IllegalAccessException, IllegalArgumentException {
        a(objArr);
        ((Field) this.f8297a).set(this.f8291g, R2.i.n0(objArr));
        return Q2.k.f2225a;
    }
}
