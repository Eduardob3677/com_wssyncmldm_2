package A3;

/* loaded from: classes.dex */
public final class F {

    /* renamed from: a, reason: collision with root package name */
    public final Q3.f f85a;

    /* renamed from: b, reason: collision with root package name */
    public final String f86b;

    public F(Q3.f fVar, String str) {
        d3.i.e("signature", str);
        this.f85a = fVar;
        this.f86b = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof F)) {
            return false;
        }
        F f = (F) obj;
        return d3.i.a(this.f85a, f.f85a) && d3.i.a(this.f86b, f.f86b);
    }

    public final int hashCode() {
        return this.f86b.hashCode() + (this.f85a.hashCode() * 31);
    }

    public final String toString() {
        return "NameAndSignature(name=" + this.f85a + ", signature=" + this.f86b + ')';
    }
}
