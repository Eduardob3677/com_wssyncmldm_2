package R2;

import h3.C0447c;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class A extends e {

    /* renamed from: c, reason: collision with root package name */
    public final List f2307c;

    public A(ArrayList arrayList) {
        this.f2307c = arrayList;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i5, Object obj) {
        if (new C0447c(0, size(), 1).l(i5)) {
            this.f2307c.add(size() - i5, obj);
            return;
        }
        throw new IndexOutOfBoundsException("Position index " + i5 + " must be in range [" + new C0447c(0, size(), 1) + "].");
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f2307c.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i5) {
        return this.f2307c.get(m.F0(i5, this));
    }

    @Override // R2.e
    public final int l() {
        return this.f2307c.size();
    }

    @Override // R2.e
    public final Object m(int i5) {
        return this.f2307c.remove(m.F0(i5, this));
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i5, Object obj) {
        return this.f2307c.set(m.F0(i5, this), obj);
    }
}
