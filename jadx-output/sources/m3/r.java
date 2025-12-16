package m3;

import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class r extends o implements d {

    /* renamed from: g, reason: collision with root package name */
    public final Object f8295g;

    /* JADX WARN: Illegal instructions before constructor call */
    public r(Method method, Object obj) {
        d3.i.e("method", method);
        Type[] genericParameterTypes = method.getGenericParameterTypes();
        d3.i.d("method.genericParameterTypes", genericParameterTypes);
        super(method, false, (Type[]) (genericParameterTypes.length <= 1 ? new Type[0] : R2.i.l0(genericParameterTypes, 1, genericParameterTypes.length)));
        this.f8295g = obj;
    }

    @Override // m3.o, m3.e
    public final Object i(Object[] objArr) {
        W1.a.j(this, objArr);
        c1.w wVar = new c1.w(2);
        wVar.Q(this.f8295g);
        wVar.R(objArr);
        ArrayList arrayList = (ArrayList) wVar.f5265c;
        return c(null, arrayList.toArray(new Object[arrayList.size()]));
    }
}
