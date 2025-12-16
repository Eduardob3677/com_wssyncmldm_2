package r4;

import e3.InterfaceC0416a;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class e implements Iterator, InterfaceC0416a {

    /* renamed from: d, reason: collision with root package name */
    public final Iterator f8840d;
    public Object f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ k f8842g;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8839c = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f8841e = -1;

    public e(f fVar) {
        this.f8842g = fVar;
        this.f8840d = fVar.f8843a.iterator();
    }

    public void a() {
        Object next;
        f fVar;
        do {
            Iterator it = this.f8840d;
            if (!it.hasNext()) {
                this.f8841e = 0;
                return;
            } else {
                next = it.next();
                fVar = (f) this.f8842g;
            }
        } while (((Boolean) fVar.f8845c.e(next)).booleanValue() != fVar.f8844b);
        this.f = next;
        this.f8841e = 1;
    }

    public void c() {
        Iterator it = this.f8840d;
        if (it.hasNext()) {
            Object next = it.next();
            if (((Boolean) ((j) this.f8842g).f8856b.e(next)).booleanValue()) {
                this.f8841e = 1;
                this.f = next;
                return;
            }
        }
        this.f8841e = 0;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f8839c) {
            case 0:
                if (this.f8841e == -1) {
                    a();
                }
                if (this.f8841e == 1) {
                }
                break;
            default:
                if (this.f8841e == -1) {
                    c();
                }
                if (this.f8841e == 1) {
                }
                break;
        }
        return true;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f8839c) {
            case 0:
                if (this.f8841e == -1) {
                    a();
                }
                if (this.f8841e == 0) {
                    throw new NoSuchElementException();
                }
                Object obj = this.f;
                this.f = null;
                this.f8841e = -1;
                return obj;
            default:
                if (this.f8841e == -1) {
                    c();
                }
                if (this.f8841e == 0) {
                    throw new NoSuchElementException();
                }
                Object obj2 = this.f;
                this.f = null;
                this.f8841e = -1;
                return obj2;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f8839c) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public e(j jVar) {
        this.f8842g = jVar;
        this.f8840d = ((k) jVar.f8857c).iterator();
    }
}
