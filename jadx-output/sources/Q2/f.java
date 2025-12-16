package Q2;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class f implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Throwable f2214c;

    public f(Throwable th) {
        d3.i.e("exception", th);
        this.f2214c = th;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof f) {
            if (d3.i.a(this.f2214c, ((f) obj).f2214c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f2214c.hashCode();
    }

    public final String toString() {
        return "Failure(" + this.f2214c + ')';
    }
}
