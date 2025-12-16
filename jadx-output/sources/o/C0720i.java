package o;

import com.google.android.gms.internal.p000firebaseauthapi.X;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;

/* renamed from: o.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0720i implements Iterator, Map.Entry {

    /* renamed from: c, reason: collision with root package name */
    public int f8431c;
    public final /* synthetic */ X f;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8433e = false;

    /* renamed from: d, reason: collision with root package name */
    public int f8432d = -1;

    public C0720i(X x4) {
        this.f = x4;
        this.f8431c = x4.d() - 1;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (!this.f8433e) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        int i5 = this.f8432d;
        X x4 = this.f;
        Object objB = x4.b(i5, 0);
        if (key != objB && (key == null || !key.equals(objB))) {
            return false;
        }
        Object value = entry.getValue();
        Object objB2 = x4.b(this.f8432d, 1);
        return value == objB2 || (value != null && value.equals(objB2));
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        if (!this.f8433e) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        return this.f.b(this.f8432d, 0);
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (!this.f8433e) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        return this.f.b(this.f8432d, 1);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f8432d < this.f8431c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        if (!this.f8433e) {
            throw new IllegalStateException("This container does not support retaining Map.Entry objects");
        }
        int i5 = this.f8432d;
        X x4 = this.f;
        Object objB = x4.b(i5, 0);
        Object objB2 = x4.b(this.f8432d, 1);
        return (objB == null ? 0 : objB.hashCode()) ^ (objB2 != null ? objB2.hashCode() : 0);
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f8432d++;
        this.f8433e = true;
        return this;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (!this.f8433e) {
            throw new IllegalStateException();
        }
        this.f.h(this.f8432d);
        this.f8432d--;
        this.f8431c--;
        this.f8433e = false;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (this.f8433e) {
            return this.f.i(this.f8432d, obj);
        }
        throw new IllegalStateException("This container does not support retaining Map.Entry objects");
    }

    public final String toString() {
        return getKey() + "=" + getValue();
    }
}
