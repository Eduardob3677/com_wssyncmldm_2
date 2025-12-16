package b2;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final Class f5132a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f5133b;

    public k(Class cls, boolean z4) {
        this.f5132a = cls;
        this.f5133b = z4;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return kVar.f5132a.equals(this.f5132a) && kVar.f5133b == this.f5133b;
    }

    public final int hashCode() {
        return Boolean.valueOf(this.f5133b).hashCode() ^ ((this.f5132a.hashCode() ^ 1000003) * 1000003);
    }
}
