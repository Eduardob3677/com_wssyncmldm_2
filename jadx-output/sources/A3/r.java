package A3;

import o3.AbstractC0732i;
import r3.InterfaceC0799b;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0816s;
import u3.AbstractC0883o;

/* loaded from: classes.dex */
public final class r implements T3.h {
    @Override // T3.h
    public T3.f a() {
        return T3.f.f2721c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ad, code lost:
    
        if (d3.i.a(r7, W1.a.n(r1, 2)) != false) goto L47;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0046  */
    @Override // T3.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public T3.g b(InterfaceC0799b interfaceC0799b, InterfaceC0799b interfaceC0799b2, InterfaceC0802e interfaceC0802e) {
        d3.i.e("superDescriptor", interfaceC0799b);
        d3.i.e("subDescriptor", interfaceC0799b2);
        boolean z4 = interfaceC0799b instanceof InterfaceC0800c;
        T3.g gVar = T3.g.f2725d;
        if (z4 && (interfaceC0799b2 instanceof InterfaceC0816s) && !AbstractC0732i.z(interfaceC0799b2)) {
            int i5 = C0008g.f128m;
            InterfaceC0816s interfaceC0816s = (InterfaceC0816s) interfaceC0799b2;
            AbstractC0883o abstractC0883o = (AbstractC0883o) interfaceC0816s;
            Q3.f name = abstractC0883o.getName();
            d3.i.d("subDescriptor.name", name);
            if (!C0008g.b(name)) {
                n nVar = I.f92a;
                Q3.f name2 = abstractC0883o.getName();
                d3.i.d("subDescriptor.name", name2);
                if (I.f101k.contains(name2)) {
                    InterfaceC0800c interfaceC0800cS = i3.x.S((InterfaceC0800c) interfaceC0799b);
                    boolean z5 = interfaceC0799b instanceof InterfaceC0816s;
                    InterfaceC0816s interfaceC0816s2 = z5 ? (InterfaceC0816s) interfaceC0799b : null;
                    boolean z6 = false;
                    if (interfaceC0816s2 != null && interfaceC0816s.I() == interfaceC0816s2.I()) {
                        z6 = true;
                    }
                    if (!(!z6) || (interfaceC0800cS != null && interfaceC0816s.I())) {
                        if ((interfaceC0802e instanceof C3.c) && interfaceC0816s.B() == null && interfaceC0800cS != null && !i3.x.g0(interfaceC0802e, interfaceC0800cS)) {
                            if ((interfaceC0800cS instanceof InterfaceC0816s) && z5 && C0008g.a((InterfaceC0816s) interfaceC0800cS) != null) {
                                String strN = W1.a.n(interfaceC0816s, 2);
                                InterfaceC0816s interfaceC0816sA = ((InterfaceC0816s) interfaceC0799b).a();
                                d3.i.d("superDescriptor.original", interfaceC0816sA);
                            }
                        }
                    }
                    return gVar;
                }
            }
        }
        return Z0.j.H(interfaceC0799b, interfaceC0799b2) ? gVar : T3.g.f2726e;
    }
}
