package S2;

import d3.i;
import e3.InterfaceC0416a;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class g extends AbstractCollection implements Collection, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final e f2606c;

    public g(e eVar) {
        i.e("backing", eVar);
        this.f2606c = eVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        i.e("elements", collection);
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f2606c.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f2606c.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return this.f2606c.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        e eVar = this.f2606c;
        eVar.getClass();
        return new c(eVar, 2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        e eVar = this.f2606c;
        eVar.c();
        int i5 = eVar.i(obj);
        if (i5 < 0) {
            return false;
        }
        eVar.l(i5);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        i.e("elements", collection);
        this.f2606c.c();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        i.e("elements", collection);
        this.f2606c.c();
        return super.retainAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f2606c.f2600j;
    }
}
