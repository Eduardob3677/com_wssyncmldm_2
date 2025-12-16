package R3;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class v implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2417c = 0;

    /* renamed from: d, reason: collision with root package name */
    public Iterator f2418d;

    public /* synthetic */ v() {
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        switch (this.f2417c) {
        }
        return this.f2418d.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        switch (this.f2417c) {
            case 0:
                Map.Entry entry = (Map.Entry) this.f2418d.next();
                entry.getValue();
                return entry;
            default:
                return (String) this.f2418d.next();
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        switch (this.f2417c) {
            case 0:
                this.f2418d.remove();
                return;
            default:
                throw new UnsupportedOperationException();
        }
    }

    public v(N n) {
        this.f2418d = n.f2359c.iterator();
    }
}
