package h4;

/* renamed from: h4.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0465s extends AbstractC0464q implements Y {
    public final AbstractC0464q f;

    /* renamed from: g, reason: collision with root package name */
    public final AbstractC0468v f7071g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0465s(AbstractC0464q abstractC0464q, AbstractC0468v abstractC0468v) {
        super(abstractC0464q.f7069d, abstractC0464q.f7070e);
        d3.i.e("origin", abstractC0464q);
        d3.i.e("enhancement", abstractC0468v);
        this.f = abstractC0464q;
        this.f7071g = abstractC0468v;
    }

    @Override // h4.AbstractC0468v
    public final AbstractC0468v L0(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        AbstractC0464q abstractC0464q = this.f;
        d3.i.e("type", abstractC0464q);
        AbstractC0468v abstractC0468v = this.f7071g;
        d3.i.e("type", abstractC0468v);
        return new C0465s(abstractC0464q, abstractC0468v);
    }

    @Override // h4.Z
    public final Z N0(boolean z4) {
        return AbstractC0450c.A(this.f.N0(z4), this.f7071g.M0().N0(z4));
    }

    @Override // h4.Z
    /* renamed from: O0 */
    public final Z L0(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        AbstractC0464q abstractC0464q = this.f;
        d3.i.e("type", abstractC0464q);
        AbstractC0468v abstractC0468v = this.f7071g;
        d3.i.e("type", abstractC0468v);
        return new C0465s(abstractC0464q, abstractC0468v);
    }

    @Override // h4.Z
    public final Z P0(G g5) {
        d3.i.e("newAttributes", g5);
        return AbstractC0450c.A(this.f.P0(g5), this.f7071g);
    }

    @Override // h4.AbstractC0464q
    public final AbstractC0472z Q0() {
        return this.f.Q0();
    }

    @Override // h4.AbstractC0464q
    public final String R0(S3.g gVar, S3.i iVar) {
        d3.i.e("renderer", gVar);
        d3.i.e("options", iVar);
        return iVar.f() ? gVar.Y(this.f7071g) : this.f.R0(gVar, iVar);
    }

    @Override // h4.Y
    public final Z c0() {
        return this.f;
    }

    @Override // h4.Y
    public final AbstractC0468v p0() {
        return this.f7071g;
    }

    @Override // h4.AbstractC0464q
    public final String toString() {
        return "[@EnhancedForWarnings(" + this.f7071g + ")] " + this.f;
    }
}
