package V3;

import h4.AbstractC0468v;

/* loaded from: classes.dex */
public final class o extends q {

    /* renamed from: a, reason: collision with root package name */
    public final AbstractC0468v f2808a;

    public o(AbstractC0468v abstractC0468v) {
        this.f2808a = abstractC0468v;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof o) && d3.i.a(this.f2808a, ((o) obj).f2808a);
    }

    public final int hashCode() {
        return this.f2808a.hashCode();
    }

    public final String toString() {
        return "LocalClass(type=" + this.f2808a + ')';
    }
}
