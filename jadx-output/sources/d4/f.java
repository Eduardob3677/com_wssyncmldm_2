package d4;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final Q3.b f6523a;

    /* renamed from: b, reason: collision with root package name */
    public final d f6524b;

    public f(Q3.b bVar, d dVar) {
        d3.i.e("classId", bVar);
        this.f6523a = bVar;
        this.f6524b = dVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            if (d3.i.a(this.f6523a, ((f) obj).f6523a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f6523a.hashCode();
    }
}
