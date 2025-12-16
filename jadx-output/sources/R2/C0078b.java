package R2;

import java.util.ListIterator;
import java.util.NoSuchElementException;

/* renamed from: R2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0078b extends C0077a implements ListIterator {
    public final /* synthetic */ d f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0078b(d dVar, int i5) {
        super(dVar);
        this.f = dVar;
        int iL = dVar.l();
        if (i5 >= 0 && i5 <= iL) {
            this.f2309d = i5;
            return;
        }
        throw new IndexOutOfBoundsException("index: " + i5 + ", size: " + iL);
    }

    @Override // java.util.ListIterator
    public final void add(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f2309d > 0;
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f2309d;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i5 = this.f2309d - 1;
        this.f2309d = i5;
        return this.f.get(i5);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f2309d - 1;
    }

    @Override // java.util.ListIterator
    public final void set(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
