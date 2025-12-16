package R0;

import com.idm.adapter.callback.IDMCallbackStatusInterface;

/* loaded from: classes.dex */
public final class a {
    public static final a f = new a(10485760, 200, IDMCallbackStatusInterface.IDM_RESULTS, 604800000, 81920);

    /* renamed from: a, reason: collision with root package name */
    public final long f2271a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2272b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2273c;

    /* renamed from: d, reason: collision with root package name */
    public final long f2274d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2275e;

    public a(long j3, int i5, int i6, long j5, int i7) {
        this.f2271a = j3;
        this.f2272b = i5;
        this.f2273c = i6;
        this.f2274d = j5;
        this.f2275e = i7;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f2271a == aVar.f2271a && this.f2272b == aVar.f2272b && this.f2273c == aVar.f2273c && this.f2274d == aVar.f2274d && this.f2275e == aVar.f2275e;
    }

    public final int hashCode() {
        long j3 = this.f2271a;
        int i5 = (((((((int) (j3 ^ (j3 >>> 32))) ^ 1000003) * 1000003) ^ this.f2272b) * 1000003) ^ this.f2273c) * 1000003;
        long j5 = this.f2274d;
        return this.f2275e ^ ((i5 ^ ((int) ((j5 >>> 32) ^ j5))) * 1000003);
    }

    public final String toString() {
        return "EventStoreConfig{maxStorageSizeInBytes=" + this.f2271a + ", loadBatchSize=" + this.f2272b + ", criticalSectionEnterTimeoutMs=" + this.f2273c + ", eventCleanUpAge=" + this.f2274d + ", maxBlobByteSizePerRow=" + this.f2275e + "}";
    }
}
