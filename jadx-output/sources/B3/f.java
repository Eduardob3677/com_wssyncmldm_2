package B3;

import c3.InterfaceC0222b;
import h4.AbstractC0468v;
import i3.x;
import r3.InterfaceC0821x;
import u3.V;

/* loaded from: classes.dex */
public final class f extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public static final f f235d = new f(1);

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        InterfaceC0821x interfaceC0821x = (InterfaceC0821x) obj;
        d3.i.e("module", interfaceC0821x);
        V vB = x.B(e.f232b, interfaceC0821x.g().i(o3.m.f8523t));
        AbstractC0468v abstractC0468vE = vB != null ? vB.e() : null;
        return abstractC0468vE == null ? j4.i.c(j4.h.E, new String[0]) : abstractC0468vE;
    }
}
