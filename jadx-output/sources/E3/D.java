package E3;

import java.util.Collection;
import r3.InterfaceC0802e;

/* loaded from: classes.dex */
public final class D implements q4.a {

    /* renamed from: c, reason: collision with root package name */
    public static final D f561c = new D();

    @Override // q4.a
    public final Iterable r(Object obj) {
        int i5 = G.f567p;
        Collection collectionJ = ((InterfaceC0802e) obj).H().j();
        d3.i.d("it.typeConstructor.supertypes", collectionJ);
        return new R2.k(2, r4.m.m(R2.m.G0(collectionJ), k.f612i));
    }
}
