package j0;

/* renamed from: j0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0529a {

    /* renamed from: a, reason: collision with root package name */
    public int f7390a;

    /* renamed from: b, reason: collision with root package name */
    public int f7391b;

    /* renamed from: c, reason: collision with root package name */
    public Object f7392c;

    /* renamed from: d, reason: collision with root package name */
    public int f7393d;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0529a)) {
            return false;
        }
        C0529a c0529a = (C0529a) obj;
        int i5 = this.f7390a;
        if (i5 != c0529a.f7390a) {
            return false;
        }
        if (i5 == 8 && Math.abs(this.f7393d - this.f7391b) == 1 && this.f7393d == c0529a.f7391b && this.f7391b == c0529a.f7393d) {
            return true;
        }
        if (this.f7393d != c0529a.f7393d || this.f7391b != c0529a.f7391b) {
            return false;
        }
        Object obj2 = this.f7392c;
        if (obj2 != null) {
            if (!obj2.equals(c0529a.f7392c)) {
                return false;
            }
        } else if (c0529a.f7392c != null) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((this.f7390a * 31) + this.f7391b) * 31) + this.f7393d;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i5 = this.f7390a;
        sb.append(i5 != 1 ? i5 != 2 ? i5 != 4 ? i5 != 8 ? "??" : "mv" : "up" : "rm" : "add");
        sb.append(",s:");
        sb.append(this.f7391b);
        sb.append("c:");
        sb.append(this.f7393d);
        sb.append(",p:");
        sb.append(this.f7392c);
        sb.append("]");
        return sb.toString();
    }
}
