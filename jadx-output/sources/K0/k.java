package K0;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class k extends r {

    /* renamed from: a, reason: collision with root package name */
    public final long f1255a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f1256b;

    /* renamed from: c, reason: collision with root package name */
    public final long f1257c;

    /* renamed from: d, reason: collision with root package name */
    public final byte[] f1258d;

    /* renamed from: e, reason: collision with root package name */
    public final String f1259e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public final v f1260g;

    public k(long j3, Integer num, long j5, byte[] bArr, String str, long j6, v vVar) {
        this.f1255a = j3;
        this.f1256b = num;
        this.f1257c = j5;
        this.f1258d = bArr;
        this.f1259e = str;
        this.f = j6;
        this.f1260g = vVar;
    }

    public final boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        if (this.f1255a == ((k) rVar).f1255a && ((num = this.f1256b) != null ? num.equals(((k) rVar).f1256b) : ((k) rVar).f1256b == null)) {
            k kVar = (k) rVar;
            if (this.f1257c == kVar.f1257c) {
                if (Arrays.equals(this.f1258d, rVar instanceof k ? ((k) rVar).f1258d : kVar.f1258d)) {
                    String str = kVar.f1259e;
                    String str2 = this.f1259e;
                    if (str2 != null ? str2.equals(str) : str == null) {
                        if (this.f == kVar.f) {
                            v vVar = kVar.f1260g;
                            v vVar2 = this.f1260g;
                            if (vVar2 == null) {
                                if (vVar == null) {
                                    return true;
                                }
                            } else if (vVar2.equals(vVar)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j3 = this.f1255a;
        int i5 = (((int) (j3 ^ (j3 >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.f1256b;
        int iHashCode = (i5 ^ (num == null ? 0 : num.hashCode())) * 1000003;
        long j5 = this.f1257c;
        int iHashCode2 = (((iHashCode ^ ((int) (j5 ^ (j5 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.f1258d)) * 1000003;
        String str = this.f1259e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        long j6 = this.f;
        int i6 = (iHashCode3 ^ ((int) (j6 ^ (j6 >>> 32)))) * 1000003;
        v vVar = this.f1260g;
        return i6 ^ (vVar != null ? vVar.hashCode() : 0);
    }

    public final String toString() {
        return "LogEvent{eventTimeMs=" + this.f1255a + ", eventCode=" + this.f1256b + ", eventUptimeMs=" + this.f1257c + ", sourceExtension=" + Arrays.toString(this.f1258d) + ", sourceExtensionJsonProto3=" + this.f1259e + ", timezoneOffsetSeconds=" + this.f + ", networkConnectionInfo=" + this.f1260g + "}";
    }
}
