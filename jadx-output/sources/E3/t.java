package E3;

/* loaded from: classes.dex */
public final class t {

    /* renamed from: a, reason: collision with root package name */
    public final Q3.f f638a;

    /* renamed from: b, reason: collision with root package name */
    public final x3.o f639b;

    public t(Q3.f fVar, x3.o oVar) {
        d3.i.e("name", fVar);
        this.f638a = fVar;
        this.f639b = oVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof t) {
            if (d3.i.a(this.f638a, ((t) obj).f638a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f638a.hashCode();
    }
}
