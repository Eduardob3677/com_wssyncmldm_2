package x3;

import java.util.Collection;

/* loaded from: classes.dex */
public final class y extends s implements H3.b {

    /* renamed from: a, reason: collision with root package name */
    public final Q3.c f9675a;

    public y(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        this.f9675a = cVar;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof y) {
            if (d3.i.a(this.f9675a, ((y) obj).f9675a)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f9675a.hashCode();
    }

    @Override // H3.b
    public final /* bridge */ /* synthetic */ Collection t() {
        return R2.u.f2325c;
    }

    public final String toString() {
        return y.class.getName() + ": " + this.f9675a;
    }

    @Override // H3.b
    public final C0918e v(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        return null;
    }
}
