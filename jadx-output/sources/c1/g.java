package c1;

/* loaded from: classes.dex */
public final class g extends AbstractC0217c {

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ k f5209g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(k kVar, int i5) {
        super(kVar, i5, null);
        this.f5209g = kVar;
    }

    @Override // c1.AbstractC0217c
    public final void b(Z0.a aVar) {
        k kVar = this.f5209g;
        kVar.getClass();
        kVar.f5230h.d(aVar);
        System.currentTimeMillis();
    }

    @Override // c1.AbstractC0217c
    public final boolean d() {
        this.f5209g.f5230h.d(Z0.a.f2993g);
        return true;
    }
}
