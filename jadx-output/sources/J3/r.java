package J3;

/* loaded from: classes.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final String f1173a;

    public r(String str) {
        this.f1173a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof r) && d3.i.a(this.f1173a, ((r) obj).f1173a);
    }

    public final int hashCode() {
        return this.f1173a.hashCode();
    }

    public final String toString() {
        return "MemberSignature(signature=" + this.f1173a + ')';
    }
}
