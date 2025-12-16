package p3;

/* renamed from: p3.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0746d {

    /* renamed from: a, reason: collision with root package name */
    public final EnumC0747e f8590a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8591b;

    public C0746d(EnumC0747e enumC0747e, int i5) {
        this.f8590a = enumC0747e;
        this.f8591b = i5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0746d)) {
            return false;
        }
        C0746d c0746d = (C0746d) obj;
        return this.f8590a == c0746d.f8590a && this.f8591b == c0746d.f8591b;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f8591b) + (this.f8590a.hashCode() * 31);
    }

    public final String toString() {
        return "KindWithArity(kind=" + this.f8590a + ", arity=" + this.f8591b + ')';
    }
}
