package l3;

import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class x0 {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f8240a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8241b;

    public x0(ClassLoader classLoader) {
        this.f8240a = new WeakReference(classLoader);
        this.f8241b = System.identityHashCode(classLoader);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof x0) && this.f8240a.get() == ((x0) obj).f8240a.get();
    }

    public final int hashCode() {
        return this.f8241b;
    }

    public final String toString() {
        String string;
        ClassLoader classLoader = (ClassLoader) this.f8240a.get();
        return (classLoader == null || (string = classLoader.toString()) == null) ? "<null>" : string;
    }
}
