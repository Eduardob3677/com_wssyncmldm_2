package h4;

/* renamed from: h4.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0448a extends AbstractC0461n {

    /* renamed from: d, reason: collision with root package name */
    public final AbstractC0472z f7048d;

    /* renamed from: e, reason: collision with root package name */
    public final AbstractC0472z f7049e;

    public C0448a(AbstractC0472z abstractC0472z, AbstractC0472z abstractC0472z2) {
        d3.i.e("delegate", abstractC0472z);
        d3.i.e("abbreviation", abstractC0472z2);
        this.f7048d = abstractC0472z;
        this.f7049e = abstractC0472z2;
    }

    @Override // h4.AbstractC0472z
    /* renamed from: R0 */
    public final AbstractC0472z P0(G g5) {
        d3.i.e("newAttributes", g5);
        return new C0448a(this.f7048d.P0(g5), this.f7049e);
    }

    @Override // h4.AbstractC0461n
    public final AbstractC0472z S0() {
        return this.f7048d;
    }

    @Override // h4.AbstractC0461n
    public final AbstractC0461n U0(AbstractC0472z abstractC0472z) {
        return new C0448a(abstractC0472z, this.f7049e);
    }

    @Override // h4.AbstractC0472z
    /* renamed from: V0, reason: merged with bridge method [inline-methods] */
    public final C0448a N0(boolean z4) {
        return new C0448a(this.f7048d.N0(z4), this.f7049e.N0(z4));
    }

    @Override // h4.AbstractC0461n
    /* renamed from: W0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final C0448a L0(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        AbstractC0472z abstractC0472z = this.f7048d;
        d3.i.e("type", abstractC0472z);
        AbstractC0472z abstractC0472z2 = this.f7049e;
        d3.i.e("type", abstractC0472z2);
        return new C0448a(abstractC0472z, abstractC0472z2);
    }
}
