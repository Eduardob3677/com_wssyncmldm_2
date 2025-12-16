package r4;

import e3.InterfaceC0416a;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class g implements Iterator, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f8846c;

    /* renamed from: d, reason: collision with root package name */
    public Iterator f8847d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h f8848e;

    public g(h hVar) {
        this.f8848e = hVar;
        this.f8846c = hVar.f8849a.iterator();
    }

    public final boolean a() {
        Iterator it = this.f8847d;
        if (it != null && !it.hasNext()) {
            this.f8847d = null;
        }
        while (true) {
            if (this.f8847d != null) {
                break;
            }
            Iterator it2 = this.f8846c;
            if (!it2.hasNext()) {
                return false;
            }
            Object next = it2.next();
            h hVar = this.f8848e;
            Iterator it3 = (Iterator) hVar.f8851c.e(hVar.f8850b.e(next));
            if (it3.hasNext()) {
                this.f8847d = it3;
                break;
            }
        }
        return true;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return a();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!a()) {
            throw new NoSuchElementException();
        }
        Iterator it = this.f8847d;
        d3.i.b(it);
        return it.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
