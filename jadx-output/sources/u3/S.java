package u3;

import h4.AbstractC0468v;
import r3.InterfaceC0786N;
import r3.InterfaceC0799b;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0805h;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class S extends AbstractC0889v implements P {

    /* renamed from: J, reason: collision with root package name */
    public static final Q f9403J;

    /* renamed from: G, reason: collision with root package name */
    public final g4.o f9404G;

    /* renamed from: H, reason: collision with root package name */
    public final f4.t f9405H;

    /* renamed from: I, reason: collision with root package name */
    public C0879k f9406I;

    static {
        d3.r rVar = d3.q.f6516a;
        rVar.e(new d3.n(rVar.b(S.class), "withDispatchReceiver", "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"));
        f9403J = new Q();
    }

    public S(g4.o oVar, f4.t tVar, C0879k c0879k, P p4, InterfaceC0845h interfaceC0845h, int i5, InterfaceC0786N interfaceC0786N) {
        super(i5, Q3.h.f2249e, tVar, p4, interfaceC0786N, interfaceC0845h);
        this.f9404G = oVar;
        this.f9405H = tVar;
        this.f9502u = false;
        ((g4.l) oVar).d(new B3.c(this, 16, c0879k));
        this.f9406I = c0879k;
    }

    @Override // u3.AbstractC0889v
    public final AbstractC0889v S0(int i5, Q3.f fVar, InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, InterfaceC0786N interfaceC0786N, InterfaceC0845h interfaceC0845h) {
        d3.i.e("newOwner", interfaceC0807j);
        B.f.x(i5, "kind");
        d3.i.e("annotations", interfaceC0845h);
        if (i5 != 1) {
        }
        return new S(this.f9404G, this.f9405H, this.f9406I, this, interfaceC0845h, 1, interfaceC0786N);
    }

    @Override // r3.InterfaceC0806i
    public final boolean V() {
        return this.f9406I.f9439G;
    }

    @Override // r3.InterfaceC0806i
    public final InterfaceC0802e Y() {
        InterfaceC0802e interfaceC0802eY = this.f9406I.Y();
        d3.i.d("underlyingConstructorDescriptor.constructedClass", interfaceC0802eY);
        return interfaceC0802eY;
    }

    @Override // u3.AbstractC0889v, u3.AbstractC0884p, u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    /* renamed from: b1, reason: merged with bridge method [inline-methods] */
    public final P a() {
        InterfaceC0816s interfaceC0816sA = super.a();
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor", interfaceC0816sA);
        return (P) interfaceC0816sA;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0816s, r3.InterfaceC0788P
    /* renamed from: c1, reason: merged with bridge method [inline-methods] */
    public final S b(h4.V v4) {
        d3.i.e("substitutor", v4);
        InterfaceC0816s interfaceC0816sB = super.b(v4);
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl", interfaceC0816sB);
        S s5 = (S) interfaceC0816sB;
        AbstractC0468v abstractC0468v = s5.f9491i;
        d3.i.b(abstractC0468v);
        C0879k c0879kB = this.f9406I.P0().b(h4.V.d(abstractC0468v));
        if (c0879kB == null) {
            return null;
        }
        s5.f9406I = c0879kB;
        return s5;
    }

    @Override // u3.AbstractC0884p, r3.InterfaceC0807j
    public final InterfaceC0805h l() {
        return this.f9405H;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0799b
    public final AbstractC0468v n() {
        AbstractC0468v abstractC0468v = this.f9491i;
        d3.i.b(abstractC0468v);
        return abstractC0468v;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0800c
    public final InterfaceC0800c x0(InterfaceC0807j interfaceC0807j, int i5, A3.p pVar) {
        d3.i.e("newOwner", interfaceC0807j);
        B.f.x(i5, "modality");
        d3.i.e("visibility", pVar);
        B.f.x(2, "kind");
        C0888u c0888uW0 = W0(h4.V.f7041b);
        c0888uW0.u(interfaceC0807j);
        c0888uW0.z(i5);
        c0888uW0.B(pVar);
        c0888uW0.a(2);
        c0888uW0.f9472o = false;
        InterfaceC0799b interfaceC0799bT0 = c0888uW0.f9483z.T0(c0888uW0);
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor", interfaceC0799bT0);
        return (P) interfaceC0799bT0;
    }

    @Override // u3.AbstractC0884p, r3.InterfaceC0807j
    public final InterfaceC0807j l() {
        return this.f9405H;
    }
}
