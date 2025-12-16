package I0;

import B.f;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final String f869a;

    public b(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f869a = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        return this.f869a.equals(((b) obj).f869a);
    }

    public final int hashCode() {
        return this.f869a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return f.w(new StringBuilder("Encoding{name=\""), this.f869a, "\"}");
    }
}
