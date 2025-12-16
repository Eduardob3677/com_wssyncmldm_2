package R2;

/* loaded from: classes.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public final int f2328a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f2329b;

    public x(int i5, Object obj) {
        this.f2328a = i5;
        this.f2329b = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return this.f2328a == xVar.f2328a && d3.i.a(this.f2329b, xVar.f2329b);
    }

    public final int hashCode() {
        int iHashCode = Integer.hashCode(this.f2328a) * 31;
        Object obj = this.f2329b;
        return iHashCode + (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        return "IndexedValue(index=" + this.f2328a + ", value=" + this.f2329b + ')';
    }
}
