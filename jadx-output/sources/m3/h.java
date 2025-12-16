package m3;

import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final class h extends k implements d {

    /* renamed from: e, reason: collision with root package name */
    public final Object f8289e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Object obj, Field field) {
        super(field, false);
        d3.i.e("field", field);
        this.f8289e = obj;
    }

    @Override // m3.k, m3.e
    public final Object i(Object[] objArr) {
        W1.a.j(this, objArr);
        return ((Field) this.f8297a).get(this.f8289e);
    }
}
