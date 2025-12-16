package l3;

import f1.AbstractC0420a;
import i3.InterfaceC0492m;
import i3.InterfaceC0493n;
import r3.InterfaceC0783K;

/* renamed from: l3.Z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0669Z extends j0 implements InterfaceC0493n {

    /* renamed from: k, reason: collision with root package name */
    public final Q2.c f8145k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0669Z(AbstractC0647C abstractC0647C, String str, String str2, Object obj) {
        super(abstractC0647C, str, str2, null, obj);
        d3.i.e("container", abstractC0647C);
        d3.i.e("name", str);
        d3.i.e("signature", str2);
        d3.i.e("container", abstractC0647C);
        d3.i.e("name", str);
        d3.i.e("signature", str2);
        this.f8145k = AbstractC0420a.U(2, new C0668Y(this, 0));
        AbstractC0420a.U(2, new C0668Y(this, 1));
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        return ((C0667X) this.f8145k.getValue()).i(obj);
    }

    @Override // l3.j0
    public final AbstractC0681f0 q() {
        return (C0667X) this.f8145k.getValue();
    }

    @Override // i3.InterfaceC0493n
    public final InterfaceC0492m r() {
        return (C0667X) this.f8145k.getValue();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0669Z(AbstractC0647C abstractC0647C, InterfaceC0783K interfaceC0783K) {
        super(abstractC0647C, interfaceC0783K);
        d3.i.e("container", abstractC0647C);
        d3.i.e("descriptor", interfaceC0783K);
        this.f8145k = AbstractC0420a.U(2, new C0668Y(this, 0));
        AbstractC0420a.U(2, new C0668Y(this, 1));
    }
}
