package Q0;

import java.util.Map;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final T0.b f2169a;

    /* renamed from: b, reason: collision with root package name */
    public final Map f2170b;

    public b(T0.b bVar, Map map) {
        if (bVar == null) {
            throw new NullPointerException("Null clock");
        }
        this.f2169a = bVar;
        if (map == null) {
            throw new NullPointerException("Null values");
        }
        this.f2170b = map;
    }

    public final long a(I0.c cVar, long j3, int i5) {
        long jA = j3 - this.f2169a.a();
        c cVar2 = (c) this.f2170b.get(cVar);
        long j5 = cVar2.f2171a;
        return Math.min(Math.max((long) (Math.pow(3.0d, i5 - 1) * j5 * Math.max(1.0d, Math.log(10000.0d) / Math.log((j5 > 1 ? j5 : 2L) * r12))), jA), cVar2.f2172b);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return this.f2169a.equals(bVar.f2169a) && this.f2170b.equals(bVar.f2170b);
    }

    public final int hashCode() {
        return this.f2170b.hashCode() ^ ((this.f2169a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        return "SchedulerConfig{clock=" + this.f2169a + ", values=" + this.f2170b + "}";
    }
}
