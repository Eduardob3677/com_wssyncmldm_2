package m3;

import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class g extends t {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f8288e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g(Member member, Type type, Class cls, Type[] typeArr, int i5) {
        super(member, type, cls, typeArr);
        this.f8288e = i5;
    }

    @Override // m3.e
    public final Object i(Object[] objArr) {
        switch (this.f8288e) {
            case 0:
                W1.a.j(this, objArr);
                Constructor constructor = (Constructor) this.f8297a;
                c1.w wVar = new c1.w(2);
                wVar.R(objArr);
                wVar.Q(null);
                ArrayList arrayList = (ArrayList) wVar.f5265c;
                return constructor.newInstance(arrayList.toArray(new Object[arrayList.size()]));
            default:
                W1.a.j(this, objArr);
                return ((Constructor) this.f8297a).newInstance(Arrays.copyOf(objArr, objArr.length));
        }
    }
}
