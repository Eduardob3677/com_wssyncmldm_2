package h4;

import r3.InterfaceC0789Q;

/* renamed from: h4.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0460m extends AbstractC0461n implements InterfaceC0458k, k4.d {

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0472z f7064d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f7065e;

    public C0460m(AbstractC0472z abstractC0472z, boolean z4) {
        this.f7064d = abstractC0472z;
        this.f7065e = z4;
    }

    @Override // h4.InterfaceC0458k
    public final boolean J() {
        AbstractC0472z abstractC0472z = this.f7064d;
        abstractC0472z.J0();
        return abstractC0472z.J0().i() instanceof InterfaceC0789Q;
    }

    @Override // h4.AbstractC0461n, h4.AbstractC0468v
    public final boolean K0() {
        return false;
    }

    @Override // h4.AbstractC0472z
    /* renamed from: Q0 */
    public final AbstractC0472z N0(boolean z4) {
        return z4 ? this.f7064d.N0(z4) : this;
    }

    @Override // h4.AbstractC0472z
    /* renamed from: R0 */
    public final AbstractC0472z P0(G g5) {
        d3.i.e("newAttributes", g5);
        return new C0460m(this.f7064d.P0(g5), this.f7065e);
    }

    @Override // h4.AbstractC0461n
    public final AbstractC0472z S0() {
        return this.f7064d;
    }

    @Override // h4.AbstractC0461n
    public final AbstractC0461n U0(AbstractC0472z abstractC0472z) {
        return new C0460m(abstractC0472z, this.f7065e);
    }

    @Override // h4.InterfaceC0458k
    public final Z d(AbstractC0468v abstractC0468v) {
        d3.i.e("replacement", abstractC0468v);
        return AbstractC0450c.l(abstractC0468v.M0(), this.f7065e);
    }

    @Override // h4.AbstractC0472z
    public final String toString() {
        return this.f7064d + " & Any";
    }
}
