package R3;

import java.util.ListIterator;

/* loaded from: classes.dex */
public final class M implements ListIterator {

    /* renamed from: c, reason: collision with root package name */
    public final ListIterator f2358c;

    public M(N n, int i5) {
        this.f2358c = n.f2359c.listIterator(i5);
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f2358c.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f2358c.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        return (String) this.f2358c.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f2358c.nextIndex();
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        return (String) this.f2358c.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f2358c.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
