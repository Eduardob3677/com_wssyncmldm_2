package m4;

import d3.i;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Object f8309a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f8310b;

    public a(Object obj, Object obj2) {
        this.f8309a = obj;
        this.f8310b = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return i.a(this.f8309a, aVar.f8309a) && i.a(this.f8310b, aVar.f8310b);
    }

    public final int hashCode() {
        Object obj = this.f8309a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f8310b;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "ApproximationBounds(lower=" + this.f8309a + ", upper=" + this.f8310b + ')';
    }
}
