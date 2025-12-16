package a4;

import c3.InterfaceC0221a;

/* loaded from: classes.dex */
public final class j extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f3119d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0221a f3120e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ j(int i5, InterfaceC0221a interfaceC0221a) {
        super(0);
        this.f3119d = i5;
        this.f3120e = interfaceC0221a;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f3119d) {
            case 0:
                o oVar = (o) this.f3120e.a();
                return oVar instanceof k ? ((k) oVar).h() : oVar;
            default:
                return R2.m.j1((Iterable) this.f3120e.a());
        }
    }
}
