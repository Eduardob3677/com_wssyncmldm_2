package d3;

import i3.InterfaceC0481b;
import i3.InterfaceC0482c;
import i3.InterfaceC0487h;
import i3.InterfaceC0488i;
import i3.InterfaceC0489j;
import i3.InterfaceC0492m;
import l3.AbstractC0693r;

/* loaded from: classes.dex */
public final class l extends o implements InterfaceC0488i, InterfaceC0489j {
    public l(InterfaceC0482c interfaceC0482c, String str, String str2) {
        super(C0389a.f6499c, ((InterfaceC0391c) interfaceC0482c).a(), str, str2, !(interfaceC0482c instanceof InterfaceC0482c) ? 1 : 0);
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        return ((AbstractC0693r) r()).i(obj);
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0481b g() {
        return q.f6516a.d(this);
    }

    @Override // i3.InterfaceC0493n
    public final InterfaceC0492m r() {
        return ((InterfaceC0488i) k()).r();
    }

    @Override // i3.InterfaceC0489j
    public final InterfaceC0487h f() {
        return ((InterfaceC0488i) k()).f();
    }
}
