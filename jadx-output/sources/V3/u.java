package V3;

import h4.AbstractC0468v;
import h4.AbstractC0472z;
import o3.AbstractC0732i;
import o3.EnumC0734k;
import r3.InterfaceC0821x;

/* loaded from: classes.dex */
public final class u extends n {
    public u(short s5) {
        super(Short.valueOf(s5));
    }

    @Override // V3.g
    public final AbstractC0468v a(InterfaceC0821x interfaceC0821x) {
        d3.i.e("module", interfaceC0821x);
        AbstractC0732i abstractC0732iG = interfaceC0821x.g();
        abstractC0732iG.getClass();
        AbstractC0472z abstractC0472zS = abstractC0732iG.s(EnumC0734k.SHORT);
        if (abstractC0472zS != null) {
            return abstractC0472zS;
        }
        AbstractC0732i.a(57);
        throw null;
    }

    @Override // V3.g
    public final String toString() {
        return ((Number) this.f2797a).intValue() + ".toShort()";
    }
}
