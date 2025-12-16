package h4;

/* loaded from: classes.dex */
public final class B extends AbstractC0462o {

    /* renamed from: e, reason: collision with root package name */
    public final G f7012e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B(AbstractC0472z abstractC0472z, G g5) {
        super(abstractC0472z);
        d3.i.e("delegate", abstractC0472z);
        d3.i.e("attributes", g5);
        this.f7012e = g5;
    }

    @Override // h4.AbstractC0461n, h4.AbstractC0468v
    public final G I0() {
        return this.f7012e;
    }

    @Override // h4.AbstractC0461n
    public final AbstractC0461n U0(AbstractC0472z abstractC0472z) {
        return new B(abstractC0472z, this.f7012e);
    }
}
