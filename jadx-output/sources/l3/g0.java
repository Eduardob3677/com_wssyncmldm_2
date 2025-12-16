package l3;

import c3.InterfaceC0221a;
import s3.C0844g;

/* loaded from: classes.dex */
public final class g0 extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8169d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ h0 f8170e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ g0(h0 h0Var, int i5) {
        super(0);
        this.f8169d = i5;
        this.f8170e = h0Var;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f8169d) {
            case 0:
                return r0.c(this.f8170e, false);
            default:
                h0 h0Var = this.f8170e;
                u3.M mF = h0Var.p().k().f();
                return mF == null ? Z0.j.A(h0Var.p().k(), C0844g.f9041a) : mF;
        }
    }
}
