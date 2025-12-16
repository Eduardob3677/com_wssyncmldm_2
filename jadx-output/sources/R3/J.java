package R3;

import java.util.Map;

/* loaded from: classes.dex */
public final class J implements Comparable, Map.Entry {

    /* renamed from: c, reason: collision with root package name */
    public final Comparable f2351c;

    /* renamed from: d, reason: collision with root package name */
    public Object f2352d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ F f2353e;

    public J(F f, Comparable comparable, Object obj) {
        this.f2353e = f;
        this.f2351c = comparable;
        this.f2352d = obj;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f2351c.compareTo(((J) obj).f2351c);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry entry = (Map.Entry) obj;
        Object key = entry.getKey();
        Comparable comparable = this.f2351c;
        if (comparable == null ? key == null : comparable.equals(key)) {
            Object obj2 = this.f2352d;
            Object value = entry.getValue();
            if (obj2 == null ? value == null : obj2.equals(value)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f2351c;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f2352d;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f2351c;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f2352d;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        int i5 = F.f2344h;
        this.f2353e.b();
        Object obj2 = this.f2352d;
        this.f2352d = obj;
        return obj2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f2351c);
        String strValueOf2 = String.valueOf(this.f2352d);
        StringBuilder sb = new StringBuilder(strValueOf2.length() + strValueOf.length() + 1);
        sb.append(strValueOf);
        sb.append("=");
        sb.append(strValueOf2);
        return sb.toString();
    }
}
