package q3;

import i3.InterfaceC0494o;
import o3.AbstractC0732i;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;

/* renamed from: q3.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0758e implements q4.a {

    /* renamed from: c, reason: collision with root package name */
    public static final C0758e f8657c = new C0758e();

    public static InterfaceC0802e a(InterfaceC0802e interfaceC0802e) {
        Q3.e eVarG = T3.e.g(interfaceC0802e);
        String str = C0757d.f8645a;
        Q3.c cVar = (Q3.c) C0757d.f8654k.get(eVarG);
        if (cVar != null) {
            return X3.f.e(interfaceC0802e).i(cVar);
        }
        throw new IllegalArgumentException("Given class " + interfaceC0802e + " is not a read-only collection");
    }

    public static InterfaceC0802e b(Q3.c cVar, AbstractC0732i abstractC0732i) {
        d3.i.e("builtIns", abstractC0732i);
        String str = C0757d.f8645a;
        Q3.b bVar = (Q3.b) C0757d.f8651h.get(cVar.i());
        if (bVar != null) {
            return abstractC0732i.i(bVar.b());
        }
        return null;
    }

    @Override // q4.a
    public Iterable r(Object obj) {
        InterfaceC0494o[] interfaceC0494oArr = n.f8679g;
        return ((InterfaceC0800c) obj).a().p();
    }
}
