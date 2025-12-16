package q4;

import java.util.AbstractList;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class e implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public boolean f8698c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8699d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f8700e;

    public e(f fVar) {
        this.f8700e = fVar;
        this.f8699d = ((AbstractList) fVar).modCount;
    }

    public final void a() {
        f fVar = this.f8700e;
        int i5 = ((AbstractList) fVar).modCount;
        int i6 = this.f8699d;
        if (i5 == i6) {
            return;
        }
        throw new ConcurrentModificationException("ModCount: " + ((AbstractList) fVar).modCount + "; expected: " + i6);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f8698c;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f8698c) {
            throw new NoSuchElementException();
        }
        this.f8698c = true;
        a();
        return this.f8700e.f8702d;
    }

    @Override // java.util.Iterator
    public final void remove() {
        a();
        this.f8700e.clear();
    }
}
