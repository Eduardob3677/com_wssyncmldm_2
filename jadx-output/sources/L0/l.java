package L0;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class l implements N0.b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1337c = 0;

    /* renamed from: d, reason: collision with root package name */
    public final P2.a f1338d;

    /* renamed from: e, reason: collision with root package name */
    public final P2.a f1339e;
    public final P2.a f;

    /* renamed from: g, reason: collision with root package name */
    public final P2.a f1340g;

    /* renamed from: h, reason: collision with root package name */
    public final P2.a f1341h;

    public l(l lVar, J3.c cVar, P0.e eVar) {
        e4.d dVar = T0.a.f2713a;
        P1.e eVar2 = T0.a.f2714b;
        this.f1338d = dVar;
        this.f1339e = eVar2;
        this.f = lVar;
        this.f1340g = cVar;
        this.f1341h = eVar;
    }

    @Override // P2.a
    public final Object get() {
        switch (this.f1337c) {
            case 0:
                return new k((T0.b) this.f1338d.get(), (T0.b) this.f1339e.get(), (P0.d) this.f.get(), (Q0.j) this.f1340g.get(), (Q0.k) this.f1341h.get());
            default:
                return new P0.c((Executor) this.f1338d.get(), (M0.f) this.f1339e.get(), (Q0.d) this.f.get(), (R0.c) this.f1340g.get(), (S0.c) this.f1341h.get());
        }
    }

    public l(P2.a aVar, P2.a aVar2, P0.e eVar, P2.a aVar3, P2.a aVar4) {
        this.f1338d = aVar;
        this.f1339e = aVar2;
        this.f = eVar;
        this.f1340g = aVar3;
        this.f1341h = aVar4;
    }
}
