package S2;

import d3.i;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class f extends R2.f {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2604c;

    /* renamed from: d, reason: collision with root package name */
    public final e f2605d;

    public f(e eVar, int i5) {
        this.f2604c = i5;
        switch (i5) {
            case 1:
                i.e("backing", eVar);
                this.f2605d = eVar;
                break;
            default:
                i.e("backing", eVar);
                this.f2605d = eVar;
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        switch (this.f2604c) {
            case 0:
                i.e("element", (Map.Entry) obj);
                throw new UnsupportedOperationException();
            default:
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        switch (this.f2604c) {
            case 0:
                i.e("elements", collection);
                throw new UnsupportedOperationException();
            default:
                i.e("elements", collection);
                throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.f2604c) {
            case 0:
                this.f2605d.clear();
                break;
            default:
                this.f2605d.clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        switch (this.f2604c) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                i.e("element", entry);
                return this.f2605d.e(entry);
            default:
                return this.f2605d.containsKey(obj);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean containsAll(Collection collection) {
        switch (this.f2604c) {
            case 0:
                i.e("elements", collection);
                return this.f2605d.d(collection);
            default:
                return super.containsAll(collection);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        switch (this.f2604c) {
        }
        return this.f2605d.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f2604c) {
            case 0:
                e eVar = this.f2605d;
                eVar.getClass();
                return new c(eVar, 0);
            default:
                e eVar2 = this.f2605d;
                eVar2.getClass();
                return new c(eVar2, 1);
        }
    }

    @Override // R2.f
    public final int l() {
        switch (this.f2604c) {
        }
        return this.f2605d.f2600j;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        switch (this.f2604c) {
            case 0:
                if (!(obj instanceof Map.Entry)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                i.e("element", entry);
                e eVar = this.f2605d;
                eVar.getClass();
                eVar.c();
                int iH = eVar.h(entry.getKey());
                if (iH < 0) {
                    return false;
                }
                Object[] objArr = eVar.f2595d;
                i.b(objArr);
                if (!i.a(objArr[iH], entry.getValue())) {
                    return false;
                }
                eVar.l(iH);
                return true;
            default:
                e eVar2 = this.f2605d;
                eVar2.c();
                int iH2 = eVar2.h(obj);
                if (iH2 < 0) {
                    iH2 = -1;
                } else {
                    eVar2.l(iH2);
                }
                return iH2 >= 0;
        }
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        switch (this.f2604c) {
            case 0:
                i.e("elements", collection);
                this.f2605d.c();
                break;
            default:
                i.e("elements", collection);
                this.f2605d.c();
                break;
        }
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        switch (this.f2604c) {
            case 0:
                i.e("elements", collection);
                this.f2605d.c();
                break;
            default:
                i.e("elements", collection);
                this.f2605d.c();
                break;
        }
        return super.retainAll(collection);
    }
}
