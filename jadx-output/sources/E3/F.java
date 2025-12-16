package E3;

import c3.InterfaceC0222b;
import java.util.Collection;
import java.util.Set;
import r3.InterfaceC0802e;

/* loaded from: classes.dex */
public final class F extends q4.k {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0802e f564b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Set f565c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0222b f566d;

    public F(C3.c cVar, Set set, InterfaceC0222b interfaceC0222b) {
        this.f564b = cVar;
        this.f565c = set;
        this.f566d = interfaceC0222b;
    }

    @Override // q4.k
    public final boolean d(Object obj) {
        InterfaceC0802e interfaceC0802e = (InterfaceC0802e) obj;
        d3.i.e("current", interfaceC0802e);
        if (interfaceC0802e == this.f564b) {
            return true;
        }
        a4.o oVarX = interfaceC0802e.X();
        d3.i.d("current.staticScope", oVarX);
        if (!(oVarX instanceof H)) {
            return true;
        }
        this.f565c.addAll((Collection) this.f566d.e(oVarX));
        return false;
    }

    @Override // q4.k
    public final /* bridge */ /* synthetic */ Object j() {
        return Q2.k.f2225a;
    }
}
