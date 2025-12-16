package l3;

import c3.InterfaceC0221a;
import f1.AbstractC0420a;
import i3.InterfaceC0491l;
import r3.InterfaceC0783K;

/* renamed from: l3.W, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0666W extends j0 implements InterfaceC0221a {

    /* renamed from: k, reason: collision with root package name */
    public final Q2.c f8141k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0666W(AbstractC0647C abstractC0647C, InterfaceC0783K interfaceC0783K) {
        super(abstractC0647C, interfaceC0783K);
        d3.i.e("container", abstractC0647C);
        d3.i.e("descriptor", interfaceC0783K);
        this.f8141k = AbstractC0420a.U(2, new C0665V(this, 0));
        AbstractC0420a.U(2, new C0665V(this, 1));
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        return ((C0664U) this.f8141k.getValue()).i(new Object[0]);
    }

    @Override // l3.j0
    public final AbstractC0681f0 q() {
        return (C0664U) this.f8141k.getValue();
    }

    public final InterfaceC0491l s() {
        return (C0664U) this.f8141k.getValue();
    }
}
