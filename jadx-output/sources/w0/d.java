package w0;

import java.util.List;

/* loaded from: classes.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final String f9589a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f9590b;

    /* renamed from: c, reason: collision with root package name */
    public final List f9591c;

    public d(String str, List list, boolean z4) {
        this.f9589a = str;
        this.f9590b = z4;
        this.f9591c = list;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (this.f9590b != dVar.f9590b || !this.f9591c.equals(dVar.f9591c)) {
            return false;
        }
        String str = this.f9589a;
        boolean zStartsWith = str.startsWith("index_");
        String str2 = dVar.f9589a;
        return zStartsWith ? str2.startsWith("index_") : str.equals(str2);
    }

    public final int hashCode() {
        String str = this.f9589a;
        return this.f9591c.hashCode() + ((((str.startsWith("index_") ? -1184239155 : str.hashCode()) * 31) + (this.f9590b ? 1 : 0)) * 31);
    }

    public final String toString() {
        return "Index{name='" + this.f9589a + "', unique=" + this.f9590b + ", columns=" + this.f9591c + '}';
    }
}
