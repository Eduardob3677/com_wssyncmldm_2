package g4;

import c3.InterfaceC0221a;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final Object f6936a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0221a f6937b;

    public g(Object obj, InterfaceC0221a interfaceC0221a) {
        this.f6936a = obj;
        this.f6937b = interfaceC0221a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return obj != null && g.class == obj.getClass() && this.f6936a.equals(((g) obj).f6936a);
    }

    public final int hashCode() {
        return this.f6936a.hashCode();
    }
}
