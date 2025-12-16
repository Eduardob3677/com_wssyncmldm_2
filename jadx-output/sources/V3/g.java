package V3;

import h4.AbstractC0468v;
import r3.InterfaceC0821x;

/* loaded from: classes.dex */
public abstract class g {

    /* renamed from: a, reason: collision with root package name */
    public final Object f2797a;

    public g(Object obj) {
        this.f2797a = obj;
    }

    public abstract AbstractC0468v a(InterfaceC0821x interfaceC0821x);

    public Object b() {
        return this.f2797a;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            Object objB = b();
            g gVar = obj instanceof g ? (g) obj : null;
            if (!d3.i.a(objB, gVar != null ? gVar.b() : null)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        Object objB = b();
        if (objB != null) {
            return objB.hashCode();
        }
        return 0;
    }

    public String toString() {
        return String.valueOf(b());
    }
}
