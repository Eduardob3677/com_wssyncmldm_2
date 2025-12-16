package h4;

import h0.AbstractC0432c;
import k.Q0;

/* loaded from: classes.dex */
public abstract class N {
    public abstract int a();

    public abstract AbstractC0468v b();

    public abstract boolean c();

    public abstract N d(i4.f fVar);

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof N)) {
            return false;
        }
        N n = (N) obj;
        return c() == n.c() && a() == n.a() && b().equals(n.b());
    }

    public final int hashCode() {
        int iF = Q0.f(a());
        if (X.m(b())) {
            return (iF * 31) + 19;
        }
        return (iF * 31) + (c() ? 17 : b().hashCode());
    }

    public final String toString() {
        if (c()) {
            return "*";
        }
        if (a() == 1) {
            return b().toString();
        }
        return AbstractC0432c.n(a()) + " " + b();
    }
}
