package R0;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final long f2276a;

    /* renamed from: b, reason: collision with root package name */
    public final L0.b f2277b;

    /* renamed from: c, reason: collision with root package name */
    public final L0.a f2278c;

    public b(long j3, L0.b bVar, L0.a aVar) {
        this.f2276a = j3;
        if (bVar == null) {
            throw new NullPointerException("Null transportContext");
        }
        this.f2277b = bVar;
        this.f2278c = aVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f2276a == bVar.f2276a && this.f2277b.equals(bVar.f2277b) && this.f2278c.equals(bVar.f2278c);
    }

    public final int hashCode() {
        long j3 = this.f2276a;
        return this.f2278c.hashCode() ^ ((((((int) ((j3 >>> 32) ^ j3)) ^ 1000003) * 1000003) ^ this.f2277b.hashCode()) * 1000003);
    }

    public final String toString() {
        return "PersistedEvent{id=" + this.f2276a + ", transportContext=" + this.f2277b + ", event=" + this.f2278c + "}";
    }
}
