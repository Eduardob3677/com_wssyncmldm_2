package l2;

/* renamed from: l2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0642a {

    /* renamed from: a, reason: collision with root package name */
    public final String f8075a;

    /* renamed from: b, reason: collision with root package name */
    public final long f8076b;

    /* renamed from: c, reason: collision with root package name */
    public final long f8077c;

    public C0642a(String str, long j3, long j5) {
        this.f8075a = str;
        this.f8076b = j3;
        this.f8077c = j5;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0642a)) {
            return false;
        }
        C0642a c0642a = (C0642a) obj;
        return this.f8075a.equals(c0642a.f8075a) && this.f8076b == c0642a.f8076b && this.f8077c == c0642a.f8077c;
    }

    public final int hashCode() {
        int iHashCode = (this.f8075a.hashCode() ^ 1000003) * 1000003;
        long j3 = this.f8076b;
        long j5 = this.f8077c;
        return ((int) (j5 ^ (j5 >>> 32))) ^ ((iHashCode ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003);
    }

    public final String toString() {
        return "InstallationTokenResult{token=" + this.f8075a + ", tokenExpirationTimestamp=" + this.f8076b + ", tokenCreationTimestamp=" + this.f8077c + "}";
    }
}
