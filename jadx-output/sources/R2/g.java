package R2;

import e3.InterfaceC0416a;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class g implements Collection, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f2314c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f2315d;

    public g(Object[] objArr, boolean z4) {
        d3.i.e("values", objArr);
        this.f2314c = objArr;
        this.f2315d = z4;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return i.i0(obj, this.f2314c);
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        d3.i.e("elements", collection);
        if (collection.isEmpty()) {
            return true;
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!i.i0(it.next(), this.f2314c)) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f2314c.length == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return d3.t.c(this.f2314c);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f2314c.length;
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        Object[] objArr = this.f2314c;
        d3.i.e("<this>", objArr);
        if (this.f2315d && d3.i.a(objArr.getClass(), Object[].class)) {
            return objArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length, Object[].class);
        d3.i.d("copyOf(this, this.size, Array<Any?>::class.java)", objArrCopyOf);
        return objArrCopyOf;
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        d3.i.e("array", objArr);
        return d3.i.i(this, objArr);
    }
}
