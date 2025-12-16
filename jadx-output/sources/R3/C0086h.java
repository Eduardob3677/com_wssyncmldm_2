package R3;

/* renamed from: R3.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0086h {

    /* renamed from: a, reason: collision with root package name */
    public final Object f2392a;

    /* renamed from: b, reason: collision with root package name */
    public final int f2393b;

    public C0086h(int i5, AbstractC0080b abstractC0080b) {
        this.f2392a = abstractC0080b;
        this.f2393b = i5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C0086h)) {
            return false;
        }
        C0086h c0086h = (C0086h) obj;
        return this.f2392a == c0086h.f2392a && this.f2393b == c0086h.f2393b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f2392a) * 65535) + this.f2393b;
    }
}
