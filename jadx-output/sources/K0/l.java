package K0;

import java.util.List;

/* loaded from: classes.dex */
public final class l extends s {

    /* renamed from: a, reason: collision with root package name */
    public final long f1261a;

    /* renamed from: b, reason: collision with root package name */
    public final long f1262b;

    /* renamed from: c, reason: collision with root package name */
    public final q f1263c;

    /* renamed from: d, reason: collision with root package name */
    public final Integer f1264d;

    /* renamed from: e, reason: collision with root package name */
    public final String f1265e;
    public final List f;

    /* renamed from: g, reason: collision with root package name */
    public final w f1266g;

    public l(long j3, long j5, q qVar, Integer num, String str, List list, w wVar) {
        this.f1261a = j3;
        this.f1262b = j5;
        this.f1263c = qVar;
        this.f1264d = num;
        this.f1265e = str;
        this.f = list;
        this.f1266g = wVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof s)) {
            return false;
        }
        s sVar = (s) obj;
        if (this.f1261a == ((l) sVar).f1261a) {
            l lVar = (l) sVar;
            if (this.f1262b == lVar.f1262b) {
                q qVar = lVar.f1263c;
                q qVar2 = this.f1263c;
                if (qVar2 != null ? qVar2.equals(qVar) : qVar == null) {
                    Integer num = lVar.f1264d;
                    Integer num2 = this.f1264d;
                    if (num2 != null ? num2.equals(num) : num == null) {
                        String str = lVar.f1265e;
                        String str2 = this.f1265e;
                        if (str2 != null ? str2.equals(str) : str == null) {
                            List list = lVar.f;
                            List list2 = this.f;
                            if (list2 != null ? list2.equals(list) : list == null) {
                                w wVar = lVar.f1266g;
                                w wVar2 = this.f1266g;
                                if (wVar2 == null) {
                                    if (wVar == null) {
                                        return true;
                                    }
                                } else if (wVar2.equals(wVar)) {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        long j3 = this.f1261a;
        long j5 = this.f1262b;
        int i5 = (((((int) (j3 ^ (j3 >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j5 >>> 32) ^ j5))) * 1000003;
        q qVar = this.f1263c;
        int iHashCode = (i5 ^ (qVar == null ? 0 : qVar.hashCode())) * 1000003;
        Integer num = this.f1264d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f1265e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List list = this.f;
        int iHashCode4 = (iHashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        w wVar = this.f1266g;
        return iHashCode4 ^ (wVar != null ? wVar.hashCode() : 0);
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f1261a + ", requestUptimeMs=" + this.f1262b + ", clientInfo=" + this.f1263c + ", logSource=" + this.f1264d + ", logSourceName=" + this.f1265e + ", logEvents=" + this.f + ", qosTier=" + this.f1266g + "}";
    }
}
