package R3;

import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class F extends AbstractMap {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f2344h = 0;

    /* renamed from: c, reason: collision with root package name */
    public final int f2345c;

    /* renamed from: d, reason: collision with root package name */
    public List f2346d = Collections.emptyList();

    /* renamed from: e, reason: collision with root package name */
    public Map f2347e = Collections.emptyMap();
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public volatile L f2348g;

    public F(int i5) {
        this.f2345c = i5;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(Comparable comparable) {
        int i5;
        int i6;
        int size = this.f2346d.size();
        int i7 = size - 1;
        if (i7 < 0) {
            i5 = 0;
            while (i5 <= i7) {
                int i8 = (i5 + i7) / 2;
                int iCompareTo = comparable.compareTo(((J) this.f2346d.get(i8)).f2351c);
                if (iCompareTo < 0) {
                    i7 = i8 - 1;
                } else {
                    if (iCompareTo <= 0) {
                        return i8;
                    }
                    i5 = i8 + 1;
                }
            }
            i6 = i5 + 1;
        } else {
            int iCompareTo2 = comparable.compareTo(((J) this.f2346d.get(i7)).f2351c);
            if (iCompareTo2 > 0) {
                i6 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i7;
                }
                i5 = 0;
                while (i5 <= i7) {
                }
                i6 = i5 + 1;
            }
        }
        return -i6;
    }

    public final void b() {
        if (this.f) {
            throw new UnsupportedOperationException();
        }
    }

    public final Iterable c() {
        return this.f2347e.isEmpty() ? I.f2350b : this.f2347e.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        b();
        if (!this.f2346d.isEmpty()) {
            this.f2346d.clear();
        }
        if (this.f2347e.isEmpty()) {
            return;
        }
        this.f2347e.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f2347e.containsKey(comparable);
    }

    public final SortedMap d() {
        b();
        if (this.f2347e.isEmpty() && !(this.f2347e instanceof TreeMap)) {
            this.f2347e = new TreeMap();
        }
        return (SortedMap) this.f2347e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        b();
        int iA = a(comparable);
        if (iA >= 0) {
            return ((J) this.f2346d.get(iA)).setValue(obj);
        }
        b();
        boolean zIsEmpty = this.f2346d.isEmpty();
        int i5 = this.f2345c;
        if (zIsEmpty && !(this.f2346d instanceof ArrayList)) {
            this.f2346d = new ArrayList(i5);
        }
        int i6 = -(iA + 1);
        if (i6 >= i5) {
            return d().put(comparable, obj);
        }
        if (this.f2346d.size() == i5) {
            J j3 = (J) this.f2346d.remove(i5 - 1);
            d().put(j3.f2351c, j3.f2352d);
        }
        this.f2346d.add(i6, new J(this, comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f2348g == null) {
            this.f2348g = new L(this);
        }
        return this.f2348g;
    }

    public final Object f(int i5) {
        b();
        Object obj = ((J) this.f2346d.remove(i5)).f2352d;
        if (!this.f2347e.isEmpty()) {
            Iterator it = d().entrySet().iterator();
            List list = this.f2346d;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new J(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? ((J) this.f2346d.get(iA)).f2352d : this.f2347e.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        b();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return f(iA);
        }
        if (this.f2347e.isEmpty()) {
            return null;
        }
        return this.f2347e.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f2347e.size() + this.f2346d.size();
    }
}
