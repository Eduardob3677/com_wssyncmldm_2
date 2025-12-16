package d3;

/* loaded from: classes.dex */
public final class m implements InterfaceC0391c {

    /* renamed from: c, reason: collision with root package name */
    public final Class f6513c;

    public m(Class cls, String str) {
        i.e("jClass", cls);
        this.f6513c = cls;
    }

    @Override // d3.InterfaceC0391c
    public final Class a() {
        return this.f6513c;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof m) {
            if (i.a(this.f6513c, ((m) obj).f6513c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f6513c.hashCode();
    }

    public final String toString() {
        return this.f6513c.toString() + " (Kotlin reflection is not available)";
    }
}
