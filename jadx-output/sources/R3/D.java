package R3;

import java.util.Iterator;

/* loaded from: classes.dex */
public final class D implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final C f2335c;

    /* renamed from: d, reason: collision with root package name */
    public y f2336d;

    /* renamed from: e, reason: collision with root package name */
    public int f2337e;

    public D(E e5) {
        C c2 = new C(e5);
        this.f2335c = c2;
        this.f2336d = new y(c2.next());
        this.f2337e = e5.f2339d;
    }

    public final byte a() {
        if (!this.f2336d.hasNext()) {
            this.f2336d = new y(this.f2335c.next());
        }
        this.f2337e--;
        return this.f2336d.a();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f2337e > 0;
    }

    @Override // java.util.Iterator
    public final Object next() {
        return Byte.valueOf(a());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
