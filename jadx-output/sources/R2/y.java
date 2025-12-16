package R2;

import e3.InterfaceC0416a;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class y implements Iterator, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2330c = 0;

    /* renamed from: d, reason: collision with root package name */
    public final Iterator f2331d;

    /* renamed from: e, reason: collision with root package name */
    public int f2332e;

    public y(Iterator it) {
        d3.i.e("iterator", it);
        this.f2331d = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Iterator it;
        switch (this.f2330c) {
            case 0:
                return this.f2331d.hasNext();
        }
        while (true) {
            int i5 = this.f2332e;
            it = this.f2331d;
            if (i5 > 0 && it.hasNext()) {
                it.next();
                this.f2332e--;
            }
        }
        return it.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Iterator it;
        switch (this.f2330c) {
            case 0:
                int i5 = this.f2332e;
                this.f2332e = i5 + 1;
                if (i5 >= 0) {
                    return new x(i5, this.f2331d.next());
                }
                n.B0();
                throw null;
        }
        while (true) {
            int i6 = this.f2332e;
            it = this.f2331d;
            if (i6 > 0 && it.hasNext()) {
                it.next();
                this.f2332e--;
            }
        }
        return it.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f2330c) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public y(r4.b bVar) {
        this.f2331d = bVar.f8836a.iterator();
        this.f2332e = bVar.f8837b;
    }
}
