package S2;

import d3.i;
import e3.InterfaceC0416a;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class c implements Iterator, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final e f2589c;

    /* renamed from: d, reason: collision with root package name */
    public int f2590d;

    /* renamed from: e, reason: collision with root package name */
    public int f2591e;
    public final /* synthetic */ int f;

    public c(e eVar, int i5) {
        this.f = i5;
        i.e("map", eVar);
        this.f2589c = eVar;
        this.f2591e = -1;
        a();
    }

    public final void a() {
        while (true) {
            int i5 = this.f2590d;
            e eVar = this.f2589c;
            if (i5 >= eVar.f2598h || eVar.f2596e[i5] >= 0) {
                return;
            } else {
                this.f2590d = i5 + 1;
            }
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f2590d < this.f2589c.f2598h;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f) {
            case 0:
                int i5 = this.f2590d;
                e eVar = this.f2589c;
                if (i5 >= eVar.f2598h) {
                    throw new NoSuchElementException();
                }
                this.f2590d = i5 + 1;
                this.f2591e = i5;
                d dVar = new d(eVar, i5);
                a();
                return dVar;
            case 1:
                int i6 = this.f2590d;
                e eVar2 = this.f2589c;
                if (i6 >= eVar2.f2598h) {
                    throw new NoSuchElementException();
                }
                this.f2590d = i6 + 1;
                this.f2591e = i6;
                Object obj = eVar2.f2594c[i6];
                a();
                return obj;
            default:
                int i7 = this.f2590d;
                e eVar3 = this.f2589c;
                if (i7 >= eVar3.f2598h) {
                    throw new NoSuchElementException();
                }
                this.f2590d = i7 + 1;
                this.f2591e = i7;
                Object[] objArr = eVar3.f2595d;
                i.b(objArr);
                Object obj2 = objArr[this.f2591e];
                a();
                return obj2;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.f2591e == -1) {
            throw new IllegalStateException("Call next() before removing element from the iterator.".toString());
        }
        e eVar = this.f2589c;
        eVar.c();
        eVar.l(this.f2591e);
        this.f2591e = -1;
    }
}
