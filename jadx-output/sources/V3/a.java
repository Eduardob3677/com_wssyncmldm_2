package V3;

import h4.AbstractC0468v;
import r3.InterfaceC0821x;
import s3.InterfaceC0839b;

/* loaded from: classes.dex */
public final class a extends g {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(InterfaceC0839b interfaceC0839b) {
        super(interfaceC0839b);
        d3.i.e("value", interfaceC0839b);
    }

    @Override // V3.g
    public final AbstractC0468v a(InterfaceC0821x interfaceC0821x) {
        d3.i.e("module", interfaceC0821x);
        return ((InterfaceC0839b) this.f2797a).e();
    }
}
