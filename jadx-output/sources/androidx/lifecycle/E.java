package androidx.lifecycle;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class E extends F {

    /* renamed from: l, reason: collision with root package name */
    public m.f f4007l;

    @Override // androidx.lifecycle.C
    public final void g() {
        Iterator it = this.f4007l.iterator();
        while (true) {
            m.b bVar = (m.b) it;
            if (!bVar.hasNext()) {
                return;
            }
            D d2 = (D) ((Map.Entry) bVar.next()).getValue();
            d2.f4002a.f(d2);
        }
    }

    @Override // androidx.lifecycle.C
    public final void h() {
        Iterator it = this.f4007l.iterator();
        while (true) {
            m.b bVar = (m.b) it;
            if (!bVar.hasNext()) {
                return;
            }
            D d2 = (D) ((Map.Entry) bVar.next()).getValue();
            d2.f4002a.j(d2);
        }
    }
}
