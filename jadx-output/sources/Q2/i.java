package Q2;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class i implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Object f2221c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f2222d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f2223e;

    public i(Object obj, Serializable serializable, Object obj2) {
        this.f2221c = obj;
        this.f2222d = serializable;
        this.f2223e = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return d3.i.a(this.f2221c, iVar.f2221c) && d3.i.a(this.f2222d, iVar.f2222d) && d3.i.a(this.f2223e, iVar.f2223e);
    }

    public final int hashCode() {
        Object obj = this.f2221c;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.f2222d;
        int iHashCode2 = (iHashCode + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Object obj3 = this.f2223e;
        return iHashCode2 + (obj3 != null ? obj3.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f2221c + ", " + this.f2222d + ", " + this.f2223e + ')';
    }
}
