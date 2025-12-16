package h4;

/* renamed from: h4.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0471y extends AbstractC0462o {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f7083e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0471y(AbstractC0472z abstractC0472z, int i5) {
        super(abstractC0472z);
        this.f7083e = i5;
    }

    @Override // h4.AbstractC0461n, h4.AbstractC0468v
    public final boolean K0() {
        switch (this.f7083e) {
            case 0:
                return false;
            default:
                return true;
        }
    }

    @Override // h4.AbstractC0461n
    public final AbstractC0461n U0(AbstractC0472z abstractC0472z) {
        switch (this.f7083e) {
            case 0:
                return new C0471y(abstractC0472z, 0);
            default:
                return new C0471y(abstractC0472z, 1);
        }
    }
}
