package o;

import com.google.android.gms.internal.p000firebaseauthapi.X;
import java.util.Collection;
import java.util.Iterator;

/* renamed from: o.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0721j implements Collection {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ X f8434c;

    public C0721j(X x4) {
        this.f8434c = x4;
    }

    @Override // java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Collection
    public final void clear() {
        this.f8434c.a();
    }

    @Override // java.util.Collection
    public final boolean contains(Object obj) {
        return this.f8434c.f(obj) >= 0;
    }

    @Override // java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public final boolean isEmpty() {
        return this.f8434c.d() == 0;
    }

    @Override // java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return new C0718g(this.f8434c, 1);
    }

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        X x4 = this.f8434c;
        int iF = x4.f(obj);
        if (iF < 0) {
            return false;
        }
        x4.h(iF);
        return true;
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection collection) {
        X x4 = this.f8434c;
        int iD = x4.d();
        int i5 = 0;
        boolean z4 = false;
        while (i5 < iD) {
            if (collection.contains(x4.b(i5, 1))) {
                x4.h(i5);
                i5--;
                iD--;
                z4 = true;
            }
            i5++;
        }
        return z4;
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection collection) {
        X x4 = this.f8434c;
        int iD = x4.d();
        int i5 = 0;
        boolean z4 = false;
        while (i5 < iD) {
            if (!collection.contains(x4.b(i5, 1))) {
                x4.h(i5);
                i5--;
                iD--;
                z4 = true;
            }
            i5++;
        }
        return z4;
    }

    @Override // java.util.Collection
    public final int size() {
        return this.f8434c.d();
    }

    @Override // java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return this.f8434c.m(objArr, 1);
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        X x4 = this.f8434c;
        int iD = x4.d();
        Object[] objArr = new Object[iD];
        for (int i5 = 0; i5 < iD; i5++) {
            objArr[i5] = x4.b(i5, 1);
        }
        return objArr;
    }
}
