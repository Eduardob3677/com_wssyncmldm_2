package A3;

import f1.AbstractC0420a;
import r3.InterfaceC0783K;
import r3.InterfaceC0799b;
import r3.InterfaceC0802e;

/* loaded from: classes.dex */
public final class m implements T3.h {
    @Override // T3.h
    public T3.f a() {
        return T3.f.f2723e;
    }

    @Override // T3.h
    public T3.g b(InterfaceC0799b interfaceC0799b, InterfaceC0799b interfaceC0799b2, InterfaceC0802e interfaceC0802e) {
        d3.i.e("superDescriptor", interfaceC0799b);
        d3.i.e("subDescriptor", interfaceC0799b2);
        boolean z4 = interfaceC0799b2 instanceof InterfaceC0783K;
        T3.g gVar = T3.g.f2726e;
        if (!z4 || !(interfaceC0799b instanceof InterfaceC0783K)) {
            return gVar;
        }
        InterfaceC0783K interfaceC0783K = (InterfaceC0783K) interfaceC0799b2;
        InterfaceC0783K interfaceC0783K2 = (InterfaceC0783K) interfaceC0799b;
        return !d3.i.a(interfaceC0783K.getName(), interfaceC0783K2.getName()) ? gVar : (AbstractC0420a.S(interfaceC0783K) && AbstractC0420a.S(interfaceC0783K2)) ? T3.g.f2724c : (AbstractC0420a.S(interfaceC0783K) || AbstractC0420a.S(interfaceC0783K2)) ? T3.g.f2725d : gVar;
    }
}
