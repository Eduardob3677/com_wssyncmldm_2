package V3;

/* loaded from: classes.dex */
public final class p extends q {

    /* renamed from: a, reason: collision with root package name */
    public final f f2809a;

    public p(f fVar) {
        this.f2809a = fVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof p) && d3.i.a(this.f2809a, ((p) obj).f2809a);
    }

    public final int hashCode() {
        return this.f2809a.hashCode();
    }

    public final String toString() {
        return "NormalClass(value=" + this.f2809a + ')';
    }
}
