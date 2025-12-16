package Q2;

import c3.InterfaceC0221a;
import java.io.Serializable;

/* loaded from: classes.dex */
public final class l implements c, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public InterfaceC0221a f2226c;

    /* renamed from: d, reason: collision with root package name */
    public Object f2227d;

    @Override // Q2.c
    public final Object getValue() {
        if (this.f2227d == j.f2224a) {
            InterfaceC0221a interfaceC0221a = this.f2226c;
            d3.i.b(interfaceC0221a);
            this.f2227d = interfaceC0221a.a();
            this.f2226c = null;
        }
        return this.f2227d;
    }

    public final String toString() {
        return this.f2227d != j.f2224a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
