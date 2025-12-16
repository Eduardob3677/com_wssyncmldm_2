package m3;

import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public abstract class t implements e {

    /* renamed from: a, reason: collision with root package name */
    public final Member f8297a;

    /* renamed from: b, reason: collision with root package name */
    public final Type f8298b;

    /* renamed from: c, reason: collision with root package name */
    public final Class f8299c;

    /* renamed from: d, reason: collision with root package name */
    public final List f8300d;

    public t(Member member, Type type, Class cls, Type[] typeArr) {
        List listW0;
        this.f8297a = member;
        this.f8298b = type;
        this.f8299c = cls;
        if (cls != null) {
            c1.w wVar = new c1.w(2);
            wVar.Q(cls);
            wVar.R(typeArr);
            ArrayList arrayList = (ArrayList) wVar.f5265c;
            listW0 = R2.n.y0(arrayList.toArray(new Type[arrayList.size()]));
        } else {
            listW0 = R2.i.w0(typeArr);
        }
        this.f8300d = listW0;
    }

    public void a(Object[] objArr) {
        W1.a.j(this, objArr);
    }

    public final void b(Object obj) {
        if (obj == null || !this.f8297a.getDeclaringClass().isInstance(obj)) {
            throw new IllegalArgumentException("An object member requires the object instance passed as the first argument.");
        }
    }

    @Override // m3.e
    public final Type n() {
        return this.f8298b;
    }

    @Override // m3.e
    public final List o() {
        return this.f8300d;
    }

    @Override // m3.e
    public final Member p() {
        return this.f8297a;
    }
}
