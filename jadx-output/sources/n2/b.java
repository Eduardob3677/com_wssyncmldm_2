package n2;

import h0.AbstractC0432c;
import k.Q0;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f8321a;

    /* renamed from: b, reason: collision with root package name */
    public final long f8322b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8323c;

    public b(long j3, int i5, String str) {
        this.f8321a = str;
        this.f8322b = j3;
        this.f8323c = i5;
    }

    public static A.d a() {
        A.d dVar = new A.d();
        dVar.f12c = 0L;
        return dVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        String str = this.f8321a;
        if (str != null ? str.equals(bVar.f8321a) : bVar.f8321a == null) {
            if (this.f8322b == bVar.f8322b) {
                int i5 = bVar.f8323c;
                int i6 = this.f8323c;
                if (i6 == 0) {
                    if (i5 == 0) {
                        return true;
                    }
                } else if (Q0.b(i6, i5)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f8321a;
        int iHashCode = str == null ? 0 : str.hashCode();
        long j3 = this.f8322b;
        int i5 = (((iHashCode ^ 1000003) * 1000003) ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        int i6 = this.f8323c;
        return i5 ^ (i6 != 0 ? Q0.f(i6) : 0);
    }

    public final String toString() {
        return "TokenResult{token=" + this.f8321a + ", tokenExpirationTimestamp=" + this.f8322b + ", responseCode=" + AbstractC0432c.r(this.f8323c) + "}";
    }
}
