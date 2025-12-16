package R2;

import e3.InterfaceC0416a;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: R2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0077a implements Iterator, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2308c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f2309d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f2310e;

    public C0077a(Object[] objArr) {
        d3.i.e("array", objArr);
        this.f2310e = objArr;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f2308c) {
            case 0:
                if (this.f2309d < ((d) this.f2310e).l()) {
                }
                break;
            default:
                if (this.f2309d < ((Object[]) this.f2310e).length) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f2308c) {
            case 0:
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                int i5 = this.f2309d;
                this.f2309d = i5 + 1;
                return ((d) this.f2310e).get(i5);
            default:
                try {
                    Object[] objArr = (Object[]) this.f2310e;
                    int i6 = this.f2309d;
                    this.f2309d = i6 + 1;
                    return objArr[i6];
                } catch (ArrayIndexOutOfBoundsException e5) {
                    this.f2309d--;
                    throw new NoSuchElementException(e5.getMessage());
                }
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f2308c) {
            case 0:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
            default:
                throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public C0077a(d dVar) {
        this.f2310e = dVar;
    }
}
