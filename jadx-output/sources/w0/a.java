package w0;

import java.util.Locale;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final String f9576a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9577b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9578c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f9579d;

    /* renamed from: e, reason: collision with root package name */
    public final int f9580e;

    public a(int i5, String str, String str2, boolean z4) {
        this.f9576a = str;
        this.f9577b = str2;
        this.f9579d = z4;
        this.f9580e = i5;
        int i6 = 5;
        if (str2 != null) {
            String upperCase = str2.toUpperCase(Locale.US);
            if (upperCase.contains("INT")) {
                i6 = 3;
            } else if (upperCase.contains("CHAR") || upperCase.contains("CLOB") || upperCase.contains("TEXT")) {
                i6 = 2;
            } else if (!upperCase.contains("BLOB")) {
                i6 = (upperCase.contains("REAL") || upperCase.contains("FLOA") || upperCase.contains("DOUB")) ? 4 : 1;
            }
        }
        this.f9578c = i6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f9580e == aVar.f9580e && this.f9576a.equals(aVar.f9576a) && this.f9579d == aVar.f9579d && this.f9578c == aVar.f9578c;
    }

    public final int hashCode() {
        return (((((this.f9576a.hashCode() * 31) + this.f9578c) * 31) + (this.f9579d ? 1231 : 1237)) * 31) + this.f9580e;
    }

    public final String toString() {
        return "Column{name='" + this.f9576a + "', type='" + this.f9577b + "', affinity='" + this.f9578c + "', notNull=" + this.f9579d + ", primaryKeyPosition=" + this.f9580e + '}';
    }
}
