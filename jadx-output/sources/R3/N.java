package R3;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class N extends AbstractList implements RandomAccess, x {

    /* renamed from: c, reason: collision with root package name */
    public final x f2359c;

    public N(x xVar) {
        this.f2359c = xVar;
    }

    @Override // R3.x
    public final N c() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i5) {
        return (String) this.f2359c.get(i5);
    }

    @Override // R3.x
    public final List h() {
        return this.f2359c.h();
    }

    @Override // R3.x
    public final void i(z zVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new v(this);
    }

    @Override // R3.x
    public final AbstractC0083e j(int i5) {
        return this.f2359c.j(i5);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i5) {
        return new M(this, i5);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2359c.size();
    }
}
