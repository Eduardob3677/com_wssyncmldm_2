package M0;

import k.Q0;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final int f1810a;

    /* renamed from: b, reason: collision with root package name */
    public final long f1811b;

    public a(int i5, long j3) {
        if (i5 == 0) {
            throw new NullPointerException("Null status");
        }
        this.f1810a = i5;
        this.f1811b = j3;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return Q0.b(this.f1810a, aVar.f1810a) && this.f1811b == aVar.f1811b;
    }

    public final int hashCode() {
        int iF = (Q0.f(this.f1810a) ^ 1000003) * 1000003;
        long j3 = this.f1811b;
        return ((int) (j3 ^ (j3 >>> 32))) ^ iF;
    }

    public final String toString() {
        return "BackendResponse{status=" + B.f.J(this.f1810a) + ", nextRequestWaitMillis=" + this.f1811b + "}";
    }
}
