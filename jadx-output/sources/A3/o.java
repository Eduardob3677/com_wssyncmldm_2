package A3;

import java.util.Collection;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final I3.i f137a;

    /* renamed from: b, reason: collision with root package name */
    public final Collection f138b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f139c;

    public o(I3.i iVar, Collection collection, boolean z4) {
        d3.i.e("qualifierApplicabilityTypes", collection);
        this.f137a = iVar;
        this.f138b = collection;
        this.f139c = z4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return d3.i.a(this.f137a, oVar.f137a) && d3.i.a(this.f138b, oVar.f138b) && this.f139c == oVar.f139c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final int hashCode() {
        int iHashCode = (this.f138b.hashCode() + (this.f137a.hashCode() * 31)) * 31;
        boolean z4 = this.f139c;
        int i5 = z4;
        if (z4 != 0) {
            i5 = 1;
        }
        return iHashCode + i5;
    }

    public final String toString() {
        return "JavaDefaultQualifiers(nullabilityQualifier=" + this.f137a + ", qualifierApplicabilityTypes=" + this.f138b + ", definitelyNotNull=" + this.f139c + ')';
    }

    public o(I3.i iVar, Collection collection) {
        this(iVar, collection, iVar.f899a == I3.h.f898e);
    }
}
