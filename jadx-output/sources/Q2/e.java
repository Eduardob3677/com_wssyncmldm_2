package Q2;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class e implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Object f2212c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f2213d;

    public e(Object obj, Object obj2) {
        this.f2212c = obj;
        this.f2213d = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e)) {
            return false;
        }
        e eVar = (e) obj;
        return d3.i.a(this.f2212c, eVar.f2212c) && d3.i.a(this.f2213d, eVar.f2213d);
    }

    public final int hashCode() {
        Object obj = this.f2212c;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f2213d;
        return iHashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f2212c + ", " + this.f2213d + ')';
    }
}
