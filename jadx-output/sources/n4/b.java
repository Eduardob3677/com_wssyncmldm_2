package n4;

import e3.InterfaceC0416a;
import java.util.Iterator;
import java.util.NoSuchElementException;
import k.Q0;

/* loaded from: classes.dex */
public final class b implements Iterator, InterfaceC0416a {

    /* renamed from: d, reason: collision with root package name */
    public Object f8337d;
    public final /* synthetic */ c f;

    /* renamed from: c, reason: collision with root package name */
    public int f8336c = 2;

    /* renamed from: e, reason: collision with root package name */
    public int f8338e = -1;

    public b(c cVar) {
        this.f = cVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i5;
        Object[] objArr;
        int i6 = this.f8336c;
        if (i6 == 4) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int iF = Q0.f(i6);
        if (iF == 0) {
            return true;
        }
        if (iF != 2) {
            this.f8336c = 4;
            do {
                i5 = this.f8338e + 1;
                this.f8338e = i5;
                objArr = this.f.f8339c;
                if (i5 >= objArr.length) {
                    break;
                }
            } while (objArr[i5] == null);
            if (i5 >= objArr.length) {
                this.f8336c = 3;
            } else {
                Object obj = objArr[i5];
                d3.i.c("null cannot be cast to non-null type T of org.jetbrains.kotlin.util.ArrayMapImpl", obj);
                this.f8337d = obj;
                this.f8336c = 1;
            }
            if (this.f8336c == 1) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f8336c = 2;
        return this.f8337d;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
