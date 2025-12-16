package o;

import com.google.android.gms.internal.p000firebaseauthapi.X;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* renamed from: o.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0719h implements Set {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f8429c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ X f8430d;

    public /* synthetic */ C0719h(X x4, int i5) {
        this.f8429c = i5;
        this.f8430d = x4;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(Object obj) {
        switch (this.f8429c) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection collection) {
        switch (this.f8429c) {
            case 0:
                X x4 = this.f8430d;
                int iD = x4.d();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    Map.Entry entry = (Map.Entry) it.next();
                    x4.g(entry.getKey(), entry.getValue());
                }
                return iD != x4.d();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        switch (this.f8429c) {
            case 0:
                this.f8430d.a();
                break;
            default:
                this.f8430d.a();
                break;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        switch (this.f8429c) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                X x4 = this.f8430d;
                int iE = x4.e(key);
                if (iE < 0) {
                    return false;
                }
                Object objB = x4.b(iE, 1);
                Object value = entry.getValue();
                return objB == value || (objB != null && objB.equals(value));
            default:
                return this.f8430d.e(obj) >= 0;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection collection) {
        switch (this.f8429c) {
            case 0:
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    if (!contains(it.next())) {
                        break;
                    }
                }
                break;
            default:
                Map mapC = this.f8430d.c();
                Iterator it2 = collection.iterator();
                while (it2.hasNext()) {
                    if (!mapC.containsKey(it2.next())) {
                        break;
                    }
                }
                break;
        }
        return true;
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean equals(Object obj) {
        switch (this.f8429c) {
        }
        return X.k(this, obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final int hashCode() {
        switch (this.f8429c) {
            case 0:
                X x4 = this.f8430d;
                int iHashCode = 0;
                for (int iD = x4.d() - 1; iD >= 0; iD--) {
                    Object objB = x4.b(iD, 0);
                    Object objB2 = x4.b(iD, 1);
                    iHashCode += (objB == null ? 0 : objB.hashCode()) ^ (objB2 == null ? 0 : objB2.hashCode());
                }
                return iHashCode;
            default:
                X x5 = this.f8430d;
                int iHashCode2 = 0;
                for (int iD2 = x5.d() - 1; iD2 >= 0; iD2--) {
                    Object objB3 = x5.b(iD2, 0);
                    iHashCode2 += objB3 == null ? 0 : objB3.hashCode();
                }
                return iHashCode2;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        switch (this.f8429c) {
            case 0:
                if (this.f8430d.d() == 0) {
                }
                break;
            default:
                if (this.f8430d.d() == 0) {
                }
                break;
        }
        return false;
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        switch (this.f8429c) {
            case 0:
                return new C0720i(this.f8430d);
            default:
                return new C0718g(this.f8430d, 0);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        switch (this.f8429c) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                X x4 = this.f8430d;
                int iE = x4.e(obj);
                if (iE < 0) {
                    return false;
                }
                x4.h(iE);
                return true;
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection collection) {
        switch (this.f8429c) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                Map mapC = this.f8430d.c();
                int size = mapC.size();
                Iterator it = collection.iterator();
                while (it.hasNext()) {
                    mapC.remove(it.next());
                }
                return size != mapC.size();
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection collection) {
        switch (this.f8429c) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return X.l(this.f8430d.c(), collection);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        switch (this.f8429c) {
        }
        return this.f8430d.d();
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        switch (this.f8429c) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                return this.f8430d.m(objArr, 0);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        switch (this.f8429c) {
            case 0:
                throw new UnsupportedOperationException();
            default:
                X x4 = this.f8430d;
                int iD = x4.d();
                Object[] objArr = new Object[iD];
                for (int i5 = 0; i5 < iD; i5++) {
                    objArr[i5] = x4.b(i5, 0);
                }
                return objArr;
        }
    }
}
