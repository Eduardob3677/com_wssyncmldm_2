package Q2;

import c3.InterfaceC0221a;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class g implements c, Serializable {

    /* renamed from: e, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f2215e = AtomicReferenceFieldUpdater.newUpdater(g.class, Object.class, "d");

    /* renamed from: c, reason: collision with root package name */
    public volatile InterfaceC0221a f2216c;

    /* renamed from: d, reason: collision with root package name */
    public volatile Object f2217d;

    @Override // Q2.c
    public final Object getValue() {
        Object obj = this.f2217d;
        j jVar = j.f2224a;
        if (obj != jVar) {
            return obj;
        }
        InterfaceC0221a interfaceC0221a = this.f2216c;
        if (interfaceC0221a != null) {
            Object objA = interfaceC0221a.a();
            if (f2215e.compareAndSet(this, jVar, objA)) {
                this.f2216c = null;
                return objA;
            }
        }
        return this.f2217d;
    }

    public final String toString() {
        return this.f2217d != j.f2224a ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }
}
