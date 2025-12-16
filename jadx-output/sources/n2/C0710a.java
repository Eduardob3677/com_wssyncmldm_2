package n2;

import h0.AbstractC0432c;
import k.Q0;

/* renamed from: n2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0710a {

    /* renamed from: a, reason: collision with root package name */
    public final String f8316a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8317b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8318c;

    /* renamed from: d, reason: collision with root package name */
    public final b f8319d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8320e;

    public C0710a(String str, String str2, String str3, b bVar, int i5) {
        this.f8316a = str;
        this.f8317b = str2;
        this.f8318c = str3;
        this.f8319d = bVar;
        this.f8320e = i5;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0710a)) {
            return false;
        }
        C0710a c0710a = (C0710a) obj;
        String str = this.f8316a;
        if (str != null ? str.equals(c0710a.f8316a) : c0710a.f8316a == null) {
            String str2 = this.f8317b;
            if (str2 != null ? str2.equals(c0710a.f8317b) : c0710a.f8317b == null) {
                String str3 = this.f8318c;
                if (str3 != null ? str3.equals(c0710a.f8318c) : c0710a.f8318c == null) {
                    b bVar = this.f8319d;
                    if (bVar != null ? bVar.equals(c0710a.f8319d) : c0710a.f8319d == null) {
                        int i5 = this.f8320e;
                        if (i5 == 0) {
                            if (c0710a.f8320e == 0) {
                                return true;
                            }
                        } else if (Q0.b(i5, c0710a.f8320e)) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f8316a;
        int iHashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.f8317b;
        int iHashCode2 = (iHashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f8318c;
        int iHashCode3 = (iHashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        b bVar = this.f8319d;
        int iHashCode4 = (iHashCode3 ^ (bVar == null ? 0 : bVar.hashCode())) * 1000003;
        int i5 = this.f8320e;
        return iHashCode4 ^ (i5 != 0 ? Q0.f(i5) : 0);
    }

    public final String toString() {
        return "InstallationResponse{uri=" + this.f8316a + ", fid=" + this.f8317b + ", refreshToken=" + this.f8318c + ", authToken=" + this.f8319d + ", responseCode=" + AbstractC0432c.q(this.f8320e) + "}";
    }
}
