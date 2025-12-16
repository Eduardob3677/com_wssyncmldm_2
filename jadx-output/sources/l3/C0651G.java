package l3;

import f1.AbstractC0420a;
import i3.InterfaceC0486g;
import i3.InterfaceC0489j;
import r3.InterfaceC0783K;

/* renamed from: l3.G, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0651G extends C0666W implements InterfaceC0489j {

    /* renamed from: l, reason: collision with root package name */
    public final Q2.c f8113l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0651G(AbstractC0647C abstractC0647C, InterfaceC0783K interfaceC0783K) {
        super(abstractC0647C, interfaceC0783K);
        d3.i.e("container", abstractC0647C);
        d3.i.e("descriptor", interfaceC0783K);
        this.f8113l = AbstractC0420a.U(2, new B3.k(20, this));
    }

    @Override // i3.InterfaceC0489j
    public final InterfaceC0486g f() {
        return (C0650F) this.f8113l.getValue();
    }
}
