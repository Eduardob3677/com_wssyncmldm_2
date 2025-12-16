package Q2;

import c3.InterfaceC0221a;
import java.io.Serializable;

/* loaded from: classes.dex */
public final class h implements c, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public InterfaceC0221a f2218c;

    /* renamed from: d, reason: collision with root package name */
    public volatile Object f2219d = j.f2224a;

    /* renamed from: e, reason: collision with root package name */
    public final Object f2220e = this;

    public h(InterfaceC0221a interfaceC0221a) {
        this.f2218c = interfaceC0221a;
    }

    @Override // Q2.c
    public final Object getValue() {
        Object objA;
        Object obj = this.f2219d;
        j jVar = j.f2224a;
        if (obj != jVar) {
            return obj;
        }
        synchronized (this.f2220e) {
            objA = this.f2219d;
            if (objA == jVar) {
                InterfaceC0221a interfaceC0221a = this.f2218c;
                d3.i.b(interfaceC0221a);
                objA = interfaceC0221a.a();
                this.f2219d = objA;
                this.f2218c = null;
            }
        }
        return objA;
    }

    public final String toString() {
        return this.f2219d != j.f2224a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
