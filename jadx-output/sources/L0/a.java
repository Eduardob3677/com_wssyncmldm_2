package L0;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f1309a;

    /* renamed from: b, reason: collision with root package name */
    public final Integer f1310b;

    /* renamed from: c, reason: collision with root package name */
    public final f f1311c;

    /* renamed from: d, reason: collision with root package name */
    public final long f1312d;

    /* renamed from: e, reason: collision with root package name */
    public final long f1313e;
    public final Map f;

    public a(String str, Integer num, f fVar, long j3, long j5, Map map) {
        this.f1309a = str;
        this.f1310b = num;
        this.f1311c = fVar;
        this.f1312d = j3;
        this.f1313e = j5;
        this.f = map;
    }

    public final String a(String str) {
        String str2 = (String) this.f.get(str);
        return str2 == null ? "" : str2;
    }

    public final int b(String str) {
        String str2 = (String) this.f.get(str);
        if (str2 == null) {
            return 0;
        }
        return Integer.valueOf(str2).intValue();
    }

    public final J3.d c() {
        J3.d dVar = new J3.d();
        String str = this.f1309a;
        if (str == null) {
            throw new NullPointerException("Null transportName");
        }
        dVar.f1144c = str;
        dVar.f1145d = this.f1310b;
        f fVar = this.f1311c;
        if (fVar == null) {
            throw new NullPointerException("Null encodedPayload");
        }
        dVar.f1146e = fVar;
        dVar.f = Long.valueOf(this.f1312d);
        dVar.f1147g = Long.valueOf(this.f1313e);
        dVar.f1148h = new HashMap(this.f);
        return dVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f1309a.equals(aVar.f1309a)) {
            Integer num = aVar.f1310b;
            Integer num2 = this.f1310b;
            if (num2 != null ? num2.equals(num) : num == null) {
                if (this.f1311c.equals(aVar.f1311c) && this.f1312d == aVar.f1312d && this.f1313e == aVar.f1313e && this.f.equals(aVar.f)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = (this.f1309a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f1310b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f1311c.hashCode()) * 1000003;
        long j3 = this.f1312d;
        int i5 = (iHashCode2 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        long j5 = this.f1313e;
        return this.f.hashCode() ^ ((i5 ^ ((int) (j5 ^ (j5 >>> 32)))) * 1000003);
    }

    public final String toString() {
        return "EventInternal{transportName=" + this.f1309a + ", code=" + this.f1310b + ", encodedPayload=" + this.f1311c + ", eventMillis=" + this.f1312d + ", uptimeMillis=" + this.f1313e + ", autoMetadata=" + this.f + "}";
    }
}
