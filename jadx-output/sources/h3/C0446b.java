package h3;

import e3.InterfaceC0416a;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: h3.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0446b implements Iterator, InterfaceC0416a {

    /* renamed from: c, reason: collision with root package name */
    public final int f7005c;

    /* renamed from: d, reason: collision with root package name */
    public final int f7006d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f7007e;
    public int f;

    public C0446b(int i5, int i6, int i7) {
        this.f7005c = i7;
        this.f7006d = i6;
        boolean z4 = false;
        if (i7 <= 0 ? i5 >= i6 : i5 <= i6) {
            z4 = true;
        }
        this.f7007e = z4;
        this.f = z4 ? i5 : i6;
    }

    public final int a() {
        int i5 = this.f;
        if (i5 != this.f7006d) {
            this.f = this.f7005c + i5;
        } else {
            if (!this.f7007e) {
                throw new NoSuchElementException();
            }
            this.f7007e = false;
        }
        return i5;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f7007e;
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return Integer.valueOf(a());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
