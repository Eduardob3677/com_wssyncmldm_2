package r4;

import e3.InterfaceC0416a;
import i3.x;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class l implements Iterator, U2.a, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public int f8858c;

    /* renamed from: d, reason: collision with root package name */
    public Object f8859d;

    /* renamed from: e, reason: collision with root package name */
    public Iterator f8860e;
    public U2.a f;

    @Override // U2.a
    public final U2.d a() {
        return U2.e.f2746c;
    }

    @Override // U2.a
    public final void c(Object obj) throws Throwable {
        x.g1(obj);
        this.f8858c = 4;
    }

    public final RuntimeException d() {
        int i5 = this.f8858c;
        if (i5 == 4) {
            return new NoSuchElementException();
        }
        if (i5 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f8858c);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int i5 = this.f8858c;
            if (i5 != 0) {
                if (i5 != 1) {
                    if (i5 == 2 || i5 == 3) {
                        return true;
                    }
                    if (i5 == 4) {
                        return false;
                    }
                    throw d();
                }
                Iterator it = this.f8860e;
                d3.i.b(it);
                if (it.hasNext()) {
                    this.f8858c = 2;
                    return true;
                }
                this.f8860e = null;
            }
            this.f8858c = 5;
            U2.a aVar = this.f;
            d3.i.b(aVar);
            this.f = null;
            aVar.c(Q2.k.f2225a);
        }
    }

    @Override // java.util.Iterator
    public final Object next() {
        int i5 = this.f8858c;
        if (i5 == 0 || i5 == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (i5 == 2) {
            this.f8858c = 1;
            Iterator it = this.f8860e;
            d3.i.b(it);
            return it.next();
        }
        if (i5 != 3) {
            throw d();
        }
        this.f8858c = 0;
        Object obj = this.f8859d;
        this.f8859d = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
