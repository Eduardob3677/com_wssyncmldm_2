package b2;

/* loaded from: classes.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public final Class f5134a;

    /* renamed from: b, reason: collision with root package name */
    public final int f5135b;

    /* renamed from: c, reason: collision with root package name */
    public final int f5136c;

    public l(int i5, int i6, Class cls) {
        this.f5134a = cls;
        this.f5135b = i5;
        this.f5136c = i6;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return this.f5134a == lVar.f5134a && this.f5135b == lVar.f5135b && this.f5136c == lVar.f5136c;
    }

    public final int hashCode() {
        return this.f5136c ^ ((((this.f5134a.hashCode() ^ 1000003) * 1000003) ^ this.f5135b) * 1000003);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f5134a);
        sb.append(", type=");
        int i5 = this.f5135b;
        sb.append(i5 == 1 ? "required" : i5 == 0 ? "optional" : "set");
        sb.append(", injection=");
        int i6 = this.f5136c;
        if (i6 == 0) {
            str = "direct";
        } else if (i6 == 1) {
            str = "provider";
        } else {
            if (i6 != 2) {
                throw new AssertionError(B.f.t(i6, "Unsupported injection: "));
            }
            str = "deferred";
        }
        return B.f.w(sb, str, "}");
    }
}
