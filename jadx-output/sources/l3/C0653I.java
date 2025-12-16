package l3;

import f1.AbstractC0420a;
import i3.InterfaceC0486g;
import i3.InterfaceC0487h;
import i3.InterfaceC0488i;
import r3.InterfaceC0783K;

/* renamed from: l3.I, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0653I extends C0669Z implements InterfaceC0488i {

    /* renamed from: l, reason: collision with root package name */
    public final Q2.c f8115l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0653I(AbstractC0647C abstractC0647C, String str, String str2, Object obj) {
        super(abstractC0647C, str, str2, obj);
        d3.i.e("container", abstractC0647C);
        d3.i.e("name", str);
        d3.i.e("signature", str2);
        this.f8115l = AbstractC0420a.U(2, new B3.k(21, this));
    }

    @Override // i3.InterfaceC0489j
    public final InterfaceC0486g f() {
        return (C0652H) this.f8115l.getValue();
    }

    @Override // i3.InterfaceC0488i, i3.InterfaceC0489j
    public final InterfaceC0487h f() {
        return (C0652H) this.f8115l.getValue();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0653I(AbstractC0647C abstractC0647C, InterfaceC0783K interfaceC0783K) {
        super(abstractC0647C, interfaceC0783K);
        d3.i.e("container", abstractC0647C);
        d3.i.e("descriptor", interfaceC0783K);
        this.f8115l = AbstractC0420a.U(2, new B3.k(21, this));
    }
}
