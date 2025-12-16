package m3;

import java.lang.reflect.Constructor;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class f extends t implements d {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f8287e;
    public final Object f;

    /* JADX WARN: Illegal instructions before constructor call */
    public f(Constructor constructor, Object obj, int i5) {
        this.f8287e = i5;
        switch (i5) {
            case 1:
                d3.i.e("constructor", constructor);
                Class declaringClass = constructor.getDeclaringClass();
                d3.i.d("constructor.declaringClass", declaringClass);
                Type[] genericParameterTypes = constructor.getGenericParameterTypes();
                d3.i.d("constructor.genericParameterTypes", genericParameterTypes);
                super(constructor, declaringClass, null, genericParameterTypes);
                this.f = obj;
                break;
            default:
                d3.i.e("constructor", constructor);
                Class declaringClass2 = constructor.getDeclaringClass();
                d3.i.d("constructor.declaringClass", declaringClass2);
                Type[] genericParameterTypes2 = constructor.getGenericParameterTypes();
                d3.i.d("constructor.genericParameterTypes", genericParameterTypes2);
                super(constructor, declaringClass2, null, (Type[]) (genericParameterTypes2.length <= 2 ? new Type[0] : R2.i.l0(genericParameterTypes2, 1, genericParameterTypes2.length - 1)));
                this.f = obj;
                break;
        }
    }

    @Override // m3.e
    public final Object i(Object[] objArr) {
        switch (this.f8287e) {
            case 0:
                W1.a.j(this, objArr);
                Constructor constructor = (Constructor) this.f8297a;
                c1.w wVar = new c1.w(3);
                wVar.Q(this.f);
                wVar.R(objArr);
                wVar.Q(null);
                ArrayList arrayList = (ArrayList) wVar.f5265c;
                return constructor.newInstance(arrayList.toArray(new Object[arrayList.size()]));
            default:
                W1.a.j(this, objArr);
                Constructor constructor2 = (Constructor) this.f8297a;
                c1.w wVar2 = new c1.w(2);
                wVar2.Q(this.f);
                wVar2.R(objArr);
                ArrayList arrayList2 = (ArrayList) wVar2.f5265c;
                return constructor2.newInstance(arrayList2.toArray(new Object[arrayList2.size()]));
        }
    }
}
