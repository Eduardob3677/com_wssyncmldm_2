package S2;

import d3.i;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class h extends R2.f implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final e f2607c = new e();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        return this.f2607c.a(obj) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        i.e("elements", collection);
        this.f2607c.c();
        return super.addAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f2607c.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f2607c.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f2607c.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        e eVar = this.f2607c;
        eVar.getClass();
        return new c(eVar, 1);
    }

    @Override // R2.f
    public final int l() {
        return this.f2607c.f2600j;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        e eVar = this.f2607c;
        eVar.c();
        int iH = eVar.h(obj);
        if (iH < 0) {
            iH = -1;
        } else {
            eVar.l(iH);
        }
        return iH >= 0;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        i.e("elements", collection);
        this.f2607c.c();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        i.e("elements", collection);
        this.f2607c.c();
        return super.retainAll(collection);
    }
}
