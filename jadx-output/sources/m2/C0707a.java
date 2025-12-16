package m2;

import B.f;
import h0.AbstractC0432c;
import k.Q0;

/* renamed from: m2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0707a {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f8265h = 0;

    /* renamed from: a, reason: collision with root package name */
    public final String f8266a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8267b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8268c;

    /* renamed from: d, reason: collision with root package name */
    public final String f8269d;

    /* renamed from: e, reason: collision with root package name */
    public final long f8270e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    public final String f8271g;

    static {
        K3.b bVar = new K3.b();
        bVar.f1291g = 0L;
        bVar.b(1);
        bVar.f = 0L;
        bVar.a();
    }

    public C0707a(String str, int i5, String str2, String str3, long j3, long j5, String str4) {
        this.f8266a = str;
        this.f8267b = i5;
        this.f8268c = str2;
        this.f8269d = str3;
        this.f8270e = j3;
        this.f = j5;
        this.f8271g = str4;
    }

    public final K3.b a() {
        K3.b bVar = new K3.b();
        bVar.f1287b = this.f8266a;
        bVar.f1288c = this.f8267b;
        bVar.f1289d = this.f8268c;
        bVar.f1290e = this.f8269d;
        bVar.f = Long.valueOf(this.f8270e);
        bVar.f1291g = Long.valueOf(this.f);
        bVar.f1292h = this.f8271g;
        return bVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0707a)) {
            return false;
        }
        C0707a c0707a = (C0707a) obj;
        String str = this.f8266a;
        if (str != null ? str.equals(c0707a.f8266a) : c0707a.f8266a == null) {
            if (Q0.b(this.f8267b, c0707a.f8267b)) {
                String str2 = c0707a.f8268c;
                String str3 = this.f8268c;
                if (str3 != null ? str3.equals(str2) : str2 == null) {
                    String str4 = c0707a.f8269d;
                    String str5 = this.f8269d;
                    if (str5 != null ? str5.equals(str4) : str4 == null) {
                        if (this.f8270e == c0707a.f8270e && this.f == c0707a.f) {
                            String str6 = c0707a.f8271g;
                            String str7 = this.f8271g;
                            if (str7 == null) {
                                if (str6 == null) {
                                    return true;
                                }
                            } else if (str7.equals(str6)) {
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
        String str = this.f8266a;
        int iHashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ Q0.f(this.f8267b)) * 1000003;
        String str2 = this.f8268c;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f8269d;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j3 = this.f8270e;
        int i5 = (iHashCode3 ^ ((int) (j3 ^ (j3 >>> 32)))) * 1000003;
        long j5 = this.f;
        int i6 = (i5 ^ ((int) (j5 ^ (j5 >>> 32)))) * 1000003;
        String str4 = this.f8271g;
        return i6 ^ (str4 != null ? str4.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PersistedInstallationEntry{firebaseInstallationId=");
        sb.append(this.f8266a);
        sb.append(", registrationStatus=");
        sb.append(AbstractC0432c.p(this.f8267b));
        sb.append(", authToken=");
        sb.append(this.f8268c);
        sb.append(", refreshToken=");
        sb.append(this.f8269d);
        sb.append(", expiresInSecs=");
        sb.append(this.f8270e);
        sb.append(", tokenCreationEpochInSecs=");
        sb.append(this.f);
        sb.append(", fisError=");
        return f.w(sb, this.f8271g, "}");
    }
}
