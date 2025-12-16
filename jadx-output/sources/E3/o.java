package E3;

import c3.InterfaceC0221a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import x3.C0916c;

/* loaded from: classes.dex */
public final class o extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f619d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ q f620e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ o(q qVar, int i5) {
        super(0);
        this.f619d = i5;
        this.f620e = qVar;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f619d) {
            case 0:
                List listA = this.f620e.f623o.a();
                ArrayList arrayList = new ArrayList();
                for (Object obj : listA) {
                    if (((x3.u) obj).f9672a.isEnumConstant()) {
                        arrayList.add(obj);
                    }
                }
                int iY1 = R2.z.y1(R2.o.C0(arrayList));
                if (iY1 < 16) {
                    iY1 = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(iY1);
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    linkedHashMap.put(((x3.u) next).b(), next);
                }
                return linkedHashMap;
            case 1:
                Class<?>[] declaredClasses = this.f620e.f623o.f9666a.getDeclaredClasses();
                d3.i.d("klass.declaredClasses", declaredClasses);
                return R2.m.j1(r4.m.n(r4.m.m(new r4.f(R2.i.h0(declaredClasses), false, C0916c.f9648g), C0916c.f9649h)));
            default:
                q qVar = this.f620e;
                return R2.B.S(qVar.a(), qVar.b());
        }
    }
}
