package n4;

import e3.InterfaceC0416a;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class p implements Iterator, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8369c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8370d = true;

    /* renamed from: e, reason: collision with root package name */
    public final Object f8371e;

    public /* synthetic */ p(int i5, Object obj) {
        this.f8369c = i5;
        this.f8371e = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f8369c) {
        }
        return this.f8370d;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f8369c) {
            case 0:
                if (!this.f8370d) {
                    throw new NoSuchElementException();
                }
                this.f8370d = false;
                return ((q) this.f8371e).f8372c;
            default:
                if (!this.f8370d) {
                    throw new NoSuchElementException();
                }
                this.f8370d = false;
                return this.f8371e;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f8369c) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException();
        }
    }
}
