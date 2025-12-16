package A3;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: d, reason: collision with root package name */
    public static final t f150d = new t(E.STRICT, 6);

    /* renamed from: a, reason: collision with root package name */
    public final E f151a;

    /* renamed from: b, reason: collision with root package name */
    public final Q2.b f152b;

    /* renamed from: c, reason: collision with root package name */
    public final E f153c;

    public t(E e5, Q2.b bVar, E e6) {
        d3.i.e("reportLevelAfter", e6);
        this.f151a = e5;
        this.f152b = bVar;
        this.f153c = e6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof t)) {
            return false;
        }
        t tVar = (t) obj;
        return this.f151a == tVar.f151a && d3.i.a(this.f152b, tVar.f152b) && this.f153c == tVar.f153c;
    }

    public final int hashCode() {
        int iHashCode = this.f151a.hashCode() * 31;
        Q2.b bVar = this.f152b;
        return this.f153c.hashCode() + ((iHashCode + (bVar == null ? 0 : bVar.f2211e)) * 31);
    }

    public final String toString() {
        return "JavaNullabilityAnnotationsStatus(reportLevelBefore=" + this.f151a + ", sinceVersion=" + this.f152b + ", reportLevelAfter=" + this.f153c + ')';
    }

    public t(E e5, int i5) {
        this(e5, (i5 & 2) != 0 ? new Q2.b(0, 0) : null, e5);
    }
}
