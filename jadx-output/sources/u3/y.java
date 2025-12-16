package u3;

import i3.InterfaceC0494o;
import r3.InterfaceC0780H;
import r3.InterfaceC0807j;
import r3.InterfaceC0809l;
import s3.C0844g;

/* loaded from: classes.dex */
public final class y extends AbstractC0883o implements InterfaceC0780H {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f9512j;

    /* renamed from: e, reason: collision with root package name */
    public final C0867C f9513e;
    public final Q3.c f;

    /* renamed from: g, reason: collision with root package name */
    public final g4.i f9514g;

    /* renamed from: h, reason: collision with root package name */
    public final g4.i f9515h;

    /* renamed from: i, reason: collision with root package name */
    public final a4.k f9516i;

    static {
        d3.r rVar = d3.q.f6516a;
        f9512j = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(y.class), "fragments", "getFragments()Ljava/util/List;")), rVar.e(new d3.n(rVar.b(y.class), "empty", "getEmpty()Z"))};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(C0867C c0867c, Q3.c cVar, g4.o oVar) {
        super(C0844g.f9041a, cVar.g());
        d3.i.e("fqName", cVar);
        this.f9513e = c0867c;
        this.f = cVar;
        g4.l lVar = (g4.l) oVar;
        this.f9514g = new g4.i(lVar, new x(this, 1));
        this.f9515h = new g4.i(lVar, new x(this, 0));
        this.f9516i = new a4.k(oVar, new x(this, 2));
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.K(this, obj);
    }

    public final boolean equals(Object obj) {
        InterfaceC0780H interfaceC0780H = obj instanceof InterfaceC0780H ? (InterfaceC0780H) obj : null;
        if (interfaceC0780H == null) {
            return false;
        }
        y yVar = (y) interfaceC0780H;
        return d3.i.a(this.f, yVar.f) && d3.i.a(this.f9513e, yVar.f9513e);
    }

    public final int hashCode() {
        return this.f.hashCode() + (this.f9513e.hashCode() * 31);
    }

    @Override // r3.InterfaceC0807j
    public final InterfaceC0807j l() {
        Q3.c cVar = this.f;
        if (cVar.d()) {
            return null;
        }
        Q3.c cVarE = cVar.e();
        d3.i.d("fqName.parent()", cVarE);
        return this.f9513e.a0(cVarE);
    }
}
