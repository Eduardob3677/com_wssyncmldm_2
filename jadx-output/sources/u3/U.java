package u3;

import c3.InterfaceC0221a;
import h4.AbstractC0468v;
import p3.C0749g;
import r3.C0785M;
import r3.InterfaceC0786N;
import r3.InterfaceC0799b;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class U extends V {
    public final Q2.h n;

    public U(InterfaceC0799b interfaceC0799b, V v4, int i5, InterfaceC0845h interfaceC0845h, Q3.f fVar, AbstractC0468v abstractC0468v, boolean z4, boolean z5, boolean z6, AbstractC0468v abstractC0468v2, InterfaceC0786N interfaceC0786N, InterfaceC0221a interfaceC0221a) {
        super(interfaceC0799b, v4, i5, interfaceC0845h, fVar, abstractC0468v, z4, z5, z6, abstractC0468v2, interfaceC0786N);
        this.n = new Q2.h(interfaceC0221a);
    }

    @Override // u3.V
    public final V Q0(C0749g c0749g, Q3.f fVar, int i5) {
        InterfaceC0845h interfaceC0845hT = t();
        d3.i.d("annotations", interfaceC0845hT);
        AbstractC0468v abstractC0468vE = e();
        d3.i.d("type", abstractC0468vE);
        boolean zR0 = R0();
        C0785M c0785m = InterfaceC0786N.f8790a;
        C0866B c0866b = new C0866B(this, 1);
        return new U(c0749g, null, i5, interfaceC0845hT, fVar, abstractC0468vE, zR0, this.f9410j, this.f9411k, this.f9412l, c0785m, c0866b);
    }
}
