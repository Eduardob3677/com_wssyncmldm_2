package E3;

import c3.InterfaceC0221a;
import u3.K;

/* loaded from: classes.dex */
public final class B extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f547d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C f548e;
    public final /* synthetic */ x3.u f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ K f549g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ B(C c2, x3.u uVar, K k5, int i5) {
        super(0);
        this.f547d = i5;
        this.f548e = c2;
        this.f = uVar;
        this.f549g = k5;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f547d) {
            case 0:
                ((D3.a) this.f548e.f551b.f499d).f475h.getClass();
                d3.i.e("field", this.f);
                d3.i.e("descriptor", this.f549g);
                return null;
            default:
                C c2 = this.f548e;
                return ((g4.l) ((D3.a) c2.f551b.f499d).f469a).d(new B(c2, this.f, this.f549g, 0));
        }
    }
}
