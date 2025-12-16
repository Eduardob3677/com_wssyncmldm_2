package a4;

import c3.InterfaceC0221a;

/* loaded from: classes.dex */
public final class r extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3130d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ s f3131e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ r(s sVar, int i5) {
        super(0);
        this.f3130d = i5;
        this.f3131e = sVar;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f3130d) {
            case 0:
                s sVar = this.f3131e;
                return R2.n.y0(Z0.j.C(sVar.f3133b), Z0.j.D(sVar.f3133b));
            default:
                return R2.n.z0(Z0.j.B(this.f3131e.f3133b));
        }
    }
}
