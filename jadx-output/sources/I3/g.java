package I3;

import h4.AbstractC0450c;
import h4.AbstractC0461n;
import h4.AbstractC0464q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.G;
import h4.InterfaceC0458k;
import h4.X;
import h4.Z;

/* loaded from: classes.dex */
public final class g extends AbstractC0461n implements InterfaceC0458k {

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0472z f895d;

    public g(AbstractC0472z abstractC0472z) {
        d3.i.e("delegate", abstractC0472z);
        this.f895d = abstractC0472z;
    }

    @Override // h4.InterfaceC0458k
    public final boolean J() {
        return true;
    }

    @Override // h4.AbstractC0461n, h4.AbstractC0468v
    public final boolean K0() {
        return false;
    }

    @Override // h4.AbstractC0472z, h4.Z
    public final Z P0(G g5) {
        d3.i.e("newAttributes", g5);
        return new g(this.f895d.P0(g5));
    }

    @Override // h4.AbstractC0472z
    /* renamed from: Q0 */
    public final AbstractC0472z N0(boolean z4) {
        return z4 ? this.f895d.N0(true) : this;
    }

    @Override // h4.AbstractC0472z
    /* renamed from: R0 */
    public final AbstractC0472z P0(G g5) {
        d3.i.e("newAttributes", g5);
        return new g(this.f895d.P0(g5));
    }

    @Override // h4.AbstractC0461n
    public final AbstractC0472z S0() {
        return this.f895d;
    }

    @Override // h4.AbstractC0461n
    public final AbstractC0461n U0(AbstractC0472z abstractC0472z) {
        return new g(abstractC0472z);
    }

    @Override // h4.InterfaceC0458k
    public final Z d(AbstractC0468v abstractC0468v) {
        d3.i.e("replacement", abstractC0468v);
        Z zM0 = abstractC0468v.M0();
        if (!X.g(zM0) && !X.f(zM0)) {
            return zM0;
        }
        if (zM0 instanceof AbstractC0472z) {
            AbstractC0472z abstractC0472z = (AbstractC0472z) zM0;
            AbstractC0472z abstractC0472zN0 = abstractC0472z.N0(false);
            return !X.g(abstractC0472z) ? abstractC0472zN0 : new g(abstractC0472zN0);
        }
        if (!(zM0 instanceof AbstractC0464q)) {
            throw new IllegalStateException(("Incorrect type: " + zM0).toString());
        }
        AbstractC0464q abstractC0464q = (AbstractC0464q) zM0;
        AbstractC0472z abstractC0472z2 = abstractC0464q.f7069d;
        AbstractC0472z abstractC0472zN02 = abstractC0472z2.N0(false);
        if (X.g(abstractC0472z2)) {
            abstractC0472zN02 = new g(abstractC0472zN02);
        }
        AbstractC0472z abstractC0472z3 = abstractC0464q.f7070e;
        AbstractC0472z abstractC0472zN03 = abstractC0472z3.N0(false);
        if (X.g(abstractC0472z3)) {
            abstractC0472zN03 = new g(abstractC0472zN03);
        }
        return AbstractC0450c.A(C0451d.j(abstractC0472zN02, abstractC0472zN03), AbstractC0450c.e(zM0));
    }
}
