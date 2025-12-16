package l3;

import c3.InterfaceC0223c;
import f1.AbstractC0420a;
import r3.InterfaceC0783K;

/* renamed from: l3.c0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0675c0 extends j0 implements InterfaceC0223c {

    /* renamed from: k, reason: collision with root package name */
    public final Q2.c f8161k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0675c0(AbstractC0647C abstractC0647C, InterfaceC0783K interfaceC0783K) {
        super(abstractC0647C, interfaceC0783K);
        d3.i.e("container", abstractC0647C);
        d3.i.e("descriptor", interfaceC0783K);
        this.f8161k = AbstractC0420a.U(2, new C0673b0(this, 0));
        AbstractC0420a.U(2, new C0673b0(this, 1));
    }

    @Override // c3.InterfaceC0223c
    public final Object d(Object obj, Object obj2) {
        return ((C0671a0) this.f8161k.getValue()).i(obj, obj2);
    }

    @Override // l3.j0
    public final AbstractC0681f0 q() {
        return (C0671a0) this.f8161k.getValue();
    }
}
