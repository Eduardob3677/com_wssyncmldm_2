package h4;

/* renamed from: h4.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0462o extends AbstractC0461n {

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0472z f7066d;

    public AbstractC0462o(AbstractC0472z abstractC0472z) {
        d3.i.e("delegate", abstractC0472z);
        this.f7066d = abstractC0472z;
    }

    @Override // h4.AbstractC0472z
    /* renamed from: Q0 */
    public final AbstractC0472z N0(boolean z4) {
        return z4 == K0() ? this : this.f7066d.N0(z4).P0(I0());
    }

    @Override // h4.AbstractC0472z
    /* renamed from: R0 */
    public final AbstractC0472z P0(G g5) {
        d3.i.e("newAttributes", g5);
        return g5 != I0() ? new B(this, g5) : this;
    }

    @Override // h4.AbstractC0461n
    public final AbstractC0472z S0() {
        return this.f7066d;
    }
}
