package R3;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class K implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public int f2354c = -1;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2355d;

    /* renamed from: e, reason: collision with root package name */
    public Iterator f2356e;
    public final /* synthetic */ F f;

    public K(F f) {
        this.f = f;
    }

    public final Iterator a() {
        if (this.f2356e == null) {
            this.f2356e = this.f.f2347e.entrySet().iterator();
        }
        return this.f2356e;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f2354c + 1 < this.f.f2346d.size() || a().hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        this.f2355d = true;
        int i5 = this.f2354c + 1;
        this.f2354c = i5;
        F f = this.f;
        return i5 < f.f2346d.size() ? (Map.Entry) f.f2346d.get(this.f2354c) : (Map.Entry) a().next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f2355d) {
            throw new IllegalStateException("remove() was called before next()");
        }
        this.f2355d = false;
        int i5 = F.f2344h;
        F f = this.f;
        f.b();
        if (this.f2354c >= f.f2346d.size()) {
            a().remove();
            return;
        }
        int i6 = this.f2354c;
        this.f2354c = i6 - 1;
        f.f(i6);
    }
}
