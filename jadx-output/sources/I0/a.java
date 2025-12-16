package I0;

import r2.C0772e;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final Object f868a;

    public a(C0772e c0772e) {
        this.f868a = c0772e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        aVar.getClass();
        if (this.f868a.equals(aVar.f868a)) {
            Object obj2 = c.f871d;
            if (obj2.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f868a.hashCode() ^ (1000003 * 1000003)) * 1000003) ^ c.f871d.hashCode();
    }

    public final String toString() {
        return "Event{code=null, payload=" + this.f868a + ", priority=" + c.f871d + "}";
    }
}
