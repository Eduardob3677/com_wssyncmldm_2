package u3;

import r3.InterfaceC0775C;
import r3.InterfaceC0786N;
import r3.InterfaceC0807j;
import r3.InterfaceC0809l;
import r3.InterfaceC0821x;
import s3.C0844g;

/* loaded from: classes.dex */
public abstract class E extends AbstractC0884p implements InterfaceC0775C {

    /* renamed from: g, reason: collision with root package name */
    public final Q3.c f9353g;

    /* renamed from: h, reason: collision with root package name */
    public final String f9354h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E(InterfaceC0821x interfaceC0821x, Q3.c cVar) {
        super(interfaceC0821x, C0844g.f9041a, cVar.g(), InterfaceC0786N.f8790a);
        d3.i.e("module", interfaceC0821x);
        d3.i.e("fqName", cVar);
        this.f9353g = cVar;
        this.f9354h = "package " + cVar + " of " + interfaceC0821x;
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.s(this, obj);
    }

    @Override // u3.AbstractC0884p, r3.InterfaceC0807j
    /* renamed from: Q0, reason: merged with bridge method [inline-methods] */
    public final InterfaceC0821x l() {
        InterfaceC0807j interfaceC0807jL = super.l();
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ModuleDescriptor", interfaceC0807jL);
        return (InterfaceC0821x) interfaceC0807jL;
    }

    @Override // u3.AbstractC0884p, r3.InterfaceC0808k
    public InterfaceC0786N m() {
        return InterfaceC0786N.f8790a;
    }

    @Override // u3.AbstractC0883o
    public String toString() {
        return this.f9354h;
    }
}
