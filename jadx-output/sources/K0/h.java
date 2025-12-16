package K0;

/* loaded from: classes.dex */
public final class h extends a {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f1241a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1242b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1243c;

    /* renamed from: d, reason: collision with root package name */
    public final String f1244d;

    /* renamed from: e, reason: collision with root package name */
    public final String f1245e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final String f1246g;

    /* renamed from: h, reason: collision with root package name */
    public final String f1247h;

    /* renamed from: i, reason: collision with root package name */
    public final String f1248i;

    /* renamed from: j, reason: collision with root package name */
    public final String f1249j;

    /* renamed from: k, reason: collision with root package name */
    public final String f1250k;

    /* renamed from: l, reason: collision with root package name */
    public final String f1251l;

    public h(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f1241a = num;
        this.f1242b = str;
        this.f1243c = str2;
        this.f1244d = str3;
        this.f1245e = str4;
        this.f = str5;
        this.f1246g = str6;
        this.f1247h = str7;
        this.f1248i = str8;
        this.f1249j = str9;
        this.f1250k = str10;
        this.f1251l = str11;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        Integer num = this.f1241a;
        if (num != null ? num.equals(((h) aVar).f1241a) : ((h) aVar).f1241a == null) {
            String str = this.f1242b;
            if (str != null ? str.equals(((h) aVar).f1242b) : ((h) aVar).f1242b == null) {
                String str2 = this.f1243c;
                if (str2 != null ? str2.equals(((h) aVar).f1243c) : ((h) aVar).f1243c == null) {
                    String str3 = this.f1244d;
                    if (str3 != null ? str3.equals(((h) aVar).f1244d) : ((h) aVar).f1244d == null) {
                        String str4 = this.f1245e;
                        if (str4 != null ? str4.equals(((h) aVar).f1245e) : ((h) aVar).f1245e == null) {
                            String str5 = this.f;
                            if (str5 != null ? str5.equals(((h) aVar).f) : ((h) aVar).f == null) {
                                String str6 = this.f1246g;
                                if (str6 != null ? str6.equals(((h) aVar).f1246g) : ((h) aVar).f1246g == null) {
                                    String str7 = this.f1247h;
                                    if (str7 != null ? str7.equals(((h) aVar).f1247h) : ((h) aVar).f1247h == null) {
                                        String str8 = this.f1248i;
                                        if (str8 != null ? str8.equals(((h) aVar).f1248i) : ((h) aVar).f1248i == null) {
                                            String str9 = this.f1249j;
                                            if (str9 != null ? str9.equals(((h) aVar).f1249j) : ((h) aVar).f1249j == null) {
                                                String str10 = this.f1250k;
                                                if (str10 != null ? str10.equals(((h) aVar).f1250k) : ((h) aVar).f1250k == null) {
                                                    String str11 = this.f1251l;
                                                    if (str11 == null) {
                                                        if (((h) aVar).f1251l == null) {
                                                            return true;
                                                        }
                                                    } else if (str11.equals(((h) aVar).f1251l)) {
                                                        return true;
                                                    }
                                                }
                                            }
                                        }
                                    }
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
        Integer num = this.f1241a;
        int iHashCode = ((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003;
        String str = this.f1242b;
        int iHashCode2 = (iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f1243c;
        int iHashCode3 = (iHashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f1244d;
        int iHashCode4 = (iHashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        String str4 = this.f1245e;
        int iHashCode5 = (iHashCode4 ^ (str4 == null ? 0 : str4.hashCode())) * 1000003;
        String str5 = this.f;
        int iHashCode6 = (iHashCode5 ^ (str5 == null ? 0 : str5.hashCode())) * 1000003;
        String str6 = this.f1246g;
        int iHashCode7 = (iHashCode6 ^ (str6 == null ? 0 : str6.hashCode())) * 1000003;
        String str7 = this.f1247h;
        int iHashCode8 = (iHashCode7 ^ (str7 == null ? 0 : str7.hashCode())) * 1000003;
        String str8 = this.f1248i;
        int iHashCode9 = (iHashCode8 ^ (str8 == null ? 0 : str8.hashCode())) * 1000003;
        String str9 = this.f1249j;
        int iHashCode10 = (iHashCode9 ^ (str9 == null ? 0 : str9.hashCode())) * 1000003;
        String str10 = this.f1250k;
        int iHashCode11 = (iHashCode10 ^ (str10 == null ? 0 : str10.hashCode())) * 1000003;
        String str11 = this.f1251l;
        return iHashCode11 ^ (str11 != null ? str11.hashCode() : 0);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb.append(this.f1241a);
        sb.append(", model=");
        sb.append(this.f1242b);
        sb.append(", hardware=");
        sb.append(this.f1243c);
        sb.append(", device=");
        sb.append(this.f1244d);
        sb.append(", product=");
        sb.append(this.f1245e);
        sb.append(", osBuild=");
        sb.append(this.f);
        sb.append(", manufacturer=");
        sb.append(this.f1246g);
        sb.append(", fingerprint=");
        sb.append(this.f1247h);
        sb.append(", locale=");
        sb.append(this.f1248i);
        sb.append(", country=");
        sb.append(this.f1249j);
        sb.append(", mccMnc=");
        sb.append(this.f1250k);
        sb.append(", applicationBuild=");
        return B.f.w(sb, this.f1251l, "}");
    }
}
