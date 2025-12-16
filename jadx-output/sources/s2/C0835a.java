package s2;

import B.f;

/* renamed from: s2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0835a {

    /* renamed from: a, reason: collision with root package name */
    public final String f9017a;

    /* renamed from: b, reason: collision with root package name */
    public final String f9018b;

    public C0835a(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null libraryName");
        }
        this.f9017a = str;
        if (str2 == null) {
            throw new NullPointerException("Null version");
        }
        this.f9018b = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C0835a)) {
            return false;
        }
        C0835a c0835a = (C0835a) obj;
        return this.f9017a.equals(c0835a.f9017a) && this.f9018b.equals(c0835a.f9018b);
    }

    public final int hashCode() {
        return this.f9018b.hashCode() ^ ((this.f9017a.hashCode() ^ 1000003) * 1000003);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LibraryVersion{libraryName=");
        sb.append(this.f9017a);
        sb.append(", version=");
        return f.w(sb, this.f9018b, "}");
    }
}
