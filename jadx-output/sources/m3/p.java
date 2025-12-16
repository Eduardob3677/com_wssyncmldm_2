package m3;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class p extends o implements d {

    /* renamed from: g, reason: collision with root package name */
    public final Object f8294g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(Method method, Object obj) {
        super(method, false, 4);
        d3.i.e("method", method);
        this.f8294g = obj;
    }

    @Override // m3.o, m3.e
    public final Object i(Object[] objArr) {
        W1.a.j(this, objArr);
        return c(this.f8294g, objArr);
    }
}
