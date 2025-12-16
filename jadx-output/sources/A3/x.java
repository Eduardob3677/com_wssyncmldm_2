package A3;

import java.util.Map;

/* loaded from: classes.dex */
public final class x {

    /* renamed from: a, reason: collision with root package name */
    public final E f159a;

    /* renamed from: b, reason: collision with root package name */
    public final E f160b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f161c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f162d;

    public x(E e5, E e6) {
        R2.v vVar = R2.v.f2326c;
        this.f159a = e5;
        this.f160b = e6;
        this.f161c = vVar;
        E e7 = E.IGNORE;
        this.f162d = e5 == e7 && e6 == e7;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof x)) {
            return false;
        }
        x xVar = (x) obj;
        return this.f159a == xVar.f159a && this.f160b == xVar.f160b && d3.i.a(this.f161c, xVar.f161c);
    }

    public final int hashCode() {
        int iHashCode = this.f159a.hashCode() * 31;
        E e5 = this.f160b;
        return this.f161c.hashCode() + ((iHashCode + (e5 == null ? 0 : e5.hashCode())) * 31);
    }

    public final String toString() {
        return "Jsr305Settings(globalLevel=" + this.f159a + ", migrationLevel=" + this.f160b + ", userDefinedLevelForSpecificAnnotation=" + this.f161c + ')';
    }
}
