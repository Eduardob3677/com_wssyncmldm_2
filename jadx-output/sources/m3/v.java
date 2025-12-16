package m3;

import java.lang.reflect.Method;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class v extends x implements d {

    /* renamed from: d, reason: collision with root package name */
    public final Object f8304d;

    public v(Method method, Object obj) {
        super(method, R2.u.f2325c);
        this.f8304d = obj;
    }

    @Override // m3.e
    public final Object i(Object[] objArr) {
        W1.a.j(this, objArr);
        return this.f8305a.invoke(this.f8304d, Arrays.copyOf(objArr, objArr.length));
    }
}
