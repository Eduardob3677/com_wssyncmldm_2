package u1;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class k implements m, b, d, e {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f9323c;

    /* renamed from: d, reason: collision with root package name */
    public final Executor f9324d;

    /* renamed from: e, reason: collision with root package name */
    public final InterfaceC0863a f9325e;
    public final n f;

    public /* synthetic */ k(Executor executor, InterfaceC0863a interfaceC0863a, n nVar, int i5) {
        this.f9323c = i5;
        this.f9324d = executor;
        this.f9325e = interfaceC0863a;
        this.f = nVar;
    }

    @Override // u1.b
    public void H() {
        this.f.l();
    }

    @Override // u1.d
    public void J(Exception exc) {
        this.f.j(exc);
    }

    @Override // u1.e
    public void L(Object obj) {
        this.f.k(obj);
    }

    @Override // u1.m
    public final void onComplete(h hVar) {
        switch (this.f9323c) {
            case 0:
                this.f9324d.execute(new G.a(this, hVar, 9, false));
                break;
            default:
                this.f9324d.execute(new G.a(this, hVar, 10, false));
                break;
        }
    }
}
