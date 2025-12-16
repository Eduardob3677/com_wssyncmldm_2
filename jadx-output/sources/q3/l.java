package q3;

import r3.InterfaceC0821x;
import u3.E;

/* loaded from: classes.dex */
public final class l extends E {

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ int f8676i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(InterfaceC0821x interfaceC0821x, Q3.c cVar, int i5) {
        super(interfaceC0821x, cVar);
        this.f8676i = i5;
        switch (i5) {
            case 1:
                d3.i.e("module", interfaceC0821x);
                d3.i.e("fqName", cVar);
                super(interfaceC0821x, cVar);
                break;
            default:
                break;
        }
    }

    @Override // r3.InterfaceC0775C
    public final /* bridge */ /* synthetic */ a4.o q0() {
        switch (this.f8676i) {
        }
        return a4.n.f3128b;
    }
}
