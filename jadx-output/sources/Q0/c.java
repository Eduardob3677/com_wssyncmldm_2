package Q0;

import java.util.Set;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final long f2171a;

    /* renamed from: b, reason: collision with root package name */
    public final long f2172b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f2173c;

    public c(long j3, long j5, Set set) {
        this.f2171a = j3;
        this.f2172b = j5;
        this.f2173c = set;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f2171a == cVar.f2171a && this.f2172b == cVar.f2172b && this.f2173c.equals(cVar.f2173c);
    }

    public final int hashCode() {
        long j3 = this.f2171a;
        int i5 = (((int) (j3 ^ (j3 >>> 32))) ^ 1000003) * 1000003;
        long j5 = this.f2172b;
        return this.f2173c.hashCode() ^ ((i5 ^ ((int) ((j5 >>> 32) ^ j5))) * 1000003);
    }

    public final String toString() {
        return "ConfigValue{delta=" + this.f2171a + ", maxAllowedDelay=" + this.f2172b + ", flags=" + this.f2173c + "}";
    }
}
