package q3;

/* renamed from: q3.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0756c {

    /* renamed from: a, reason: collision with root package name */
    public final Q3.b f8642a;

    /* renamed from: b, reason: collision with root package name */
    public final Q3.b f8643b;

    /* renamed from: c, reason: collision with root package name */
    public final Q3.b f8644c;

    public C0756c(Q3.b bVar, Q3.b bVar2, Q3.b bVar3) {
        this.f8642a = bVar;
        this.f8643b = bVar2;
        this.f8644c = bVar3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0756c)) {
            return false;
        }
        C0756c c0756c = (C0756c) obj;
        return d3.i.a(this.f8642a, c0756c.f8642a) && d3.i.a(this.f8643b, c0756c.f8643b) && d3.i.a(this.f8644c, c0756c.f8644c);
    }

    public final int hashCode() {
        return this.f8644c.hashCode() + ((this.f8643b.hashCode() + (this.f8642a.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "PlatformMutabilityMapping(javaClass=" + this.f8642a + ", kotlinReadOnly=" + this.f8643b + ", kotlinMutable=" + this.f8644c + ')';
    }
}
