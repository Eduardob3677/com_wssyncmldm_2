package h4;

/* loaded from: classes.dex */
public final class C extends AbstractC0461n implements Y {

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0472z f7013d;

    /* renamed from: e, reason: collision with root package name */
    public final AbstractC0468v f7014e;

    public C(AbstractC0472z abstractC0472z, AbstractC0468v abstractC0468v) {
        d3.i.e("delegate", abstractC0472z);
        d3.i.e("enhancement", abstractC0468v);
        this.f7013d = abstractC0472z;
        this.f7014e = abstractC0468v;
    }

    @Override // h4.AbstractC0472z
    /* renamed from: Q0 */
    public final AbstractC0472z N0(boolean z4) {
        Z zA = AbstractC0450c.A(this.f7013d.N0(z4), this.f7014e.M0().N0(z4));
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType", zA);
        return (AbstractC0472z) zA;
    }

    @Override // h4.AbstractC0472z
    /* renamed from: R0 */
    public final AbstractC0472z P0(G g5) {
        d3.i.e("newAttributes", g5);
        Z zA = AbstractC0450c.A(this.f7013d.P0(g5), this.f7014e);
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType", zA);
        return (AbstractC0472z) zA;
    }

    @Override // h4.AbstractC0461n
    public final AbstractC0472z S0() {
        return this.f7013d;
    }

    @Override // h4.AbstractC0461n
    public final AbstractC0461n U0(AbstractC0472z abstractC0472z) {
        return new C(abstractC0472z, this.f7014e);
    }

    @Override // h4.AbstractC0461n
    /* renamed from: V0, reason: merged with bridge method [inline-methods] */
    public final C L0(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        AbstractC0472z abstractC0472z = this.f7013d;
        d3.i.e("type", abstractC0472z);
        AbstractC0468v abstractC0468v = this.f7014e;
        d3.i.e("type", abstractC0468v);
        return new C(abstractC0472z, abstractC0468v);
    }

    @Override // h4.Y
    public final Z c0() {
        return this.f7013d;
    }

    @Override // h4.Y
    public final AbstractC0468v p0() {
        return this.f7014e;
    }

    @Override // h4.AbstractC0472z
    public final String toString() {
        return "[@EnhancedForWarnings(" + this.f7014e + ")] " + this.f7013d;
    }
}
