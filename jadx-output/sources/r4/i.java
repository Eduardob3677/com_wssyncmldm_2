package r4;

import c3.InterfaceC0221a;
import c3.InterfaceC0222b;
import e3.InterfaceC0416a;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class i implements Iterator, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public Object f8852c;

    /* renamed from: d, reason: collision with root package name */
    public int f8853d = -2;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j f8854e;

    public i(j jVar) {
        this.f8854e = jVar;
    }

    public final void a() {
        Object objE;
        int i5 = this.f8853d;
        j jVar = this.f8854e;
        if (i5 == -2) {
            objE = ((InterfaceC0221a) jVar.f8857c).a();
        } else {
            InterfaceC0222b interfaceC0222b = jVar.f8856b;
            Object obj = this.f8852c;
            d3.i.b(obj);
            objE = interfaceC0222b.e(obj);
        }
        this.f8852c = objE;
        this.f8853d = objE == null ? 0 : 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f8853d < 0) {
            a();
        }
        return this.f8853d == 1;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f8853d < 0) {
            a();
        }
        if (this.f8853d == 0) {
            throw new NoSuchElementException();
        }
        Object obj = this.f8852c;
        d3.i.c("null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence", obj);
        this.f8853d = -1;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
