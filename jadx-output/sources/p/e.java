package p;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
public final class e extends AbstractC0735a {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f8561a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f8562b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f8563c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f8564d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f8565e;

    public e(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f8561a = atomicReferenceFieldUpdater;
        this.f8562b = atomicReferenceFieldUpdater2;
        this.f8563c = atomicReferenceFieldUpdater3;
        this.f8564d = atomicReferenceFieldUpdater4;
        this.f8565e = atomicReferenceFieldUpdater5;
    }

    @Override // p.AbstractC0735a
    public final boolean a(h hVar, C0738d c0738d) {
        return this.f8564d.compareAndSet(hVar, c0738d, C0738d.f8559b);
    }

    @Override // p.AbstractC0735a
    public final boolean b(h hVar, Object obj, Object obj2) {
        return this.f8565e.compareAndSet(hVar, obj, obj2);
    }

    @Override // p.AbstractC0735a
    public final boolean c(h hVar, g gVar, g gVar2) {
        return this.f8563c.compareAndSet(hVar, gVar, gVar2);
    }

    @Override // p.AbstractC0735a
    public final void n(g gVar, g gVar2) {
        this.f8562b.lazySet(gVar, gVar2);
    }

    @Override // p.AbstractC0735a
    public final void o(g gVar, Thread thread) {
        this.f8561a.lazySet(gVar, thread);
    }
}
