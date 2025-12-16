package S2;

import com.idm.core.syncml.Constants;
import d3.i;
import e3.InterfaceC0416a;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class a implements ListIterator, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final b f2581c;

    /* renamed from: d, reason: collision with root package name */
    public int f2582d;

    /* renamed from: e, reason: collision with root package name */
    public int f2583e;

    public a(b bVar, int i5) {
        i.e(Constants.SYNCML_PROPERTY_LIST, bVar);
        this.f2581c = bVar;
        this.f2582d = i5;
        this.f2583e = -1;
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        int i5 = this.f2582d;
        this.f2582d = i5 + 1;
        this.f2581c.add(i5, obj);
        this.f2583e = -1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f2582d < this.f2581c.f2586e;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f2582d > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        int i5 = this.f2582d;
        b bVar = this.f2581c;
        if (i5 >= bVar.f2586e) {
            throw new NoSuchElementException();
        }
        this.f2582d = i5 + 1;
        this.f2583e = i5;
        return bVar.f2584c[bVar.f2585d + i5];
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f2582d;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        int i5 = this.f2582d;
        if (i5 <= 0) {
            throw new NoSuchElementException();
        }
        int i6 = i5 - 1;
        this.f2582d = i6;
        this.f2583e = i6;
        b bVar = this.f2581c;
        return bVar.f2584c[bVar.f2585d + i6];
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f2582d - 1;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        int i5 = this.f2583e;
        if (i5 == -1) {
            throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
        }
        this.f2581c.m(i5);
        this.f2582d = this.f2583e;
        this.f2583e = -1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        int i5 = this.f2583e;
        if (i5 == -1) {
            throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
        }
        this.f2581c.set(i5, obj);
    }
}
