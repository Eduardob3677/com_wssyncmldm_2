package E3;

import c3.InterfaceC0222b;

/* loaded from: classes.dex */
public final class E extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f562d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Q3.f f563e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ E(Q3.f fVar, int i5) {
        super(1);
        this.f562d = i5;
        this.f563e = fVar;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f562d) {
            case 0:
                a4.o oVar = (a4.o) obj;
                d3.i.e("it", oVar);
                return oVar.g(this.f563e, z3.b.f9732g);
            default:
                a4.o oVar2 = (a4.o) obj;
                d3.i.e("it", oVar2);
                return oVar2.d(this.f563e, z3.b.f9729c);
        }
    }
}
