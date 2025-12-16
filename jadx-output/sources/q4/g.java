package q4;

import R2.C0077a;
import d3.t;
import e3.InterfaceC0416a;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class g implements Iterator, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final C0077a f8703c;

    public g(Object[] objArr) {
        this.f8703c = t.c(objArr);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8703c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return this.f8703c.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
