package J3;

import java.util.Map;
import r3.InterfaceC0786N;

/* loaded from: classes.dex */
public final class p implements InterfaceC0786N {

    /* renamed from: b, reason: collision with root package name */
    public final E3.s f1171b;

    public p(E3.s sVar) {
        d3.i.e("packageFragment", sVar);
        this.f1171b = sVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        E3.s sVar = this.f1171b;
        sb.append(sVar);
        sb.append(": ");
        sb.append(((Map) Z0.j.N(sVar.f635k, E3.s.f632o[0])).keySet());
        return sb.toString();
    }
}
