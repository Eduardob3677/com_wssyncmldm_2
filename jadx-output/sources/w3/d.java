package w3;

import d3.i;
import d4.k;
import java.util.ArrayList;
import r3.InterfaceC0800c;
import u3.AbstractC0870b;
import x3.s;

/* loaded from: classes.dex */
public final class d implements k {

    /* renamed from: b, reason: collision with root package name */
    public static final d f9611b = new d();

    /* renamed from: c, reason: collision with root package name */
    public static final d f9612c = new d();

    @Override // d4.k
    public void a(InterfaceC0800c interfaceC0800c) {
        i.e("descriptor", interfaceC0800c);
        throw new IllegalStateException("Cannot infer visibility for " + interfaceC0800c);
    }

    @Override // d4.k
    public void b(AbstractC0870b abstractC0870b, ArrayList arrayList) {
        i.e("descriptor", abstractC0870b);
        throw new IllegalStateException("Incomplete hierarchy for class " + abstractC0870b.getName() + ", unresolved classes " + arrayList);
    }

    public f c(H3.c cVar) {
        i.e("javaElement", cVar);
        return new f((s) cVar);
    }
}
