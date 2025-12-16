package E3;

import i3.InterfaceC0494o;
import r3.InterfaceC0786N;
import s3.C0844g;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class s extends u3.E {

    /* renamed from: o, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f632o;

    /* renamed from: i, reason: collision with root package name */
    public final x3.y f633i;

    /* renamed from: j, reason: collision with root package name */
    public final D3.e f634j;

    /* renamed from: k, reason: collision with root package name */
    public final g4.i f635k;

    /* renamed from: l, reason: collision with root package name */
    public final C0021d f636l;

    /* renamed from: m, reason: collision with root package name */
    public final g4.c f637m;
    public final InterfaceC0845h n;

    static {
        d3.r rVar = d3.q.f6516a;
        f632o = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(s.class), "binaryClasses", "getBinaryClasses$descriptors_jvm()Ljava/util/Map;")), rVar.e(new d3.n(rVar.b(s.class), "partToFacade", "getPartToFacade()Ljava/util/HashMap;"))};
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public s(D3.e eVar, x3.y yVar) {
        d3.i.e("outerContext", eVar);
        d3.i.e("jPackage", yVar);
        D3.a aVar = (D3.a) eVar.f499d;
        super(aVar.f481o, yVar.f9675a);
        this.f633i = yVar;
        D3.e eVarD = L2.b.d(eVar, this, null, 6);
        this.f634j = eVarD;
        d3.i.e("<this>", aVar.f472d.c().f6531c);
        P3.f fVar = P3.f.f2161g;
        D3.a aVar2 = (D3.a) eVarD.f499d;
        g4.o oVar = aVar2.f469a;
        r rVar = new r(this, 0);
        g4.l lVar = (g4.l) oVar;
        lVar.getClass();
        this.f635k = new g4.i(lVar, rVar);
        this.f636l = new C0021d(eVarD, yVar, this);
        r rVar2 = new r(this, 2);
        g4.o oVar2 = aVar2.f469a;
        g4.l lVar2 = (g4.l) oVar2;
        lVar2.getClass();
        this.f637m = new g4.c(lVar2, rVar2);
        this.n = aVar2.f488v.f157b ? C0844g.f9041a : W1.a.g0(eVarD, yVar);
        ((g4.l) oVar2).a(new r(this, 1));
    }

    @Override // u3.E, u3.AbstractC0884p, r3.InterfaceC0808k
    public final InterfaceC0786N m() {
        return new J3.p(this);
    }

    @Override // r3.InterfaceC0775C
    public final a4.o q0() {
        return this.f636l;
    }

    @Override // K3.c, s3.InterfaceC0838a
    public final InterfaceC0845h t() {
        return this.n;
    }

    @Override // u3.E, u3.AbstractC0883o
    public final String toString() {
        return "Lazy Java package fragment: " + this.f9353g + " of module " + ((D3.a) this.f634j.f499d).f481o;
    }
}
