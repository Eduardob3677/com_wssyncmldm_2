package o;

import com.google.android.gms.internal.p000firebaseauthapi.X;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* renamed from: o.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0718g implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final int f8425c;

    /* renamed from: d, reason: collision with root package name */
    public int f8426d;

    /* renamed from: e, reason: collision with root package name */
    public int f8427e;
    public boolean f = false;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ X f8428g;

    public C0718g(X x4, int i5) {
        this.f8428g = x4;
        this.f8425c = i5;
        this.f8426d = x4.d();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8427e < this.f8426d;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object objB = this.f8428g.b(this.f8427e, this.f8425c);
        this.f8427e++;
        this.f = true;
        return objB;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f) {
            throw new IllegalStateException();
        }
        int i5 = this.f8427e - 1;
        this.f8427e = i5;
        this.f8426d--;
        this.f = false;
        this.f8428g.h(i5);
    }
}
