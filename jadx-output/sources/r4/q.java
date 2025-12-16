package r4;

import e3.InterfaceC0416a;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class q implements Iterator, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f8865c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ r f8866d;

    public q(r rVar) {
        this.f8866d = rVar;
        this.f8865c = rVar.f8867a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8865c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return this.f8866d.f8868b.e(this.f8865c.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
