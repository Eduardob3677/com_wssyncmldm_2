package P0;

import Q0.k;
import R0.h;
import R0.j;
import android.content.Context;
import java.util.concurrent.Executor;
import s2.C0837c;

/* loaded from: classes.dex */
public final class e implements N0.b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f2047c = 2;

    /* renamed from: d, reason: collision with root package name */
    public final P2.a f2048d;

    /* renamed from: e, reason: collision with root package name */
    public final P2.a f2049e;
    public final P2.a f;

    /* renamed from: g, reason: collision with root package name */
    public final P2.a f2050g;

    public e(M0.e eVar) {
        e4.d dVar = T0.a.f2713a;
        P1.e eVar2 = T0.a.f2714b;
        P1.e eVar3 = R0.d.f2281c;
        this.f2048d = dVar;
        this.f2049e = eVar2;
        this.f = eVar3;
        this.f2050g = eVar;
    }

    @Override // P2.a
    public final Object get() {
        switch (this.f2047c) {
            case 0:
                Context context = (Context) this.f2048d.get();
                R0.c cVar = (R0.c) this.f2049e.get();
                Q0.b bVar = (Q0.b) this.f.get();
                return new Q0.d(context, cVar, bVar);
            case 1:
                return new k((Executor) this.f2048d.get(), (R0.c) this.f2049e.get(), (Q0.d) this.f.get(), (S0.c) this.f2050g.get());
            default:
                return new h((T0.b) this.f2048d.get(), (T0.b) this.f2049e.get(), (R0.a) this.f.get(), (j) this.f2050g.get());
        }
    }

    public e(P2.a aVar, P2.a aVar2, e eVar, P2.a aVar3) {
        this.f2048d = aVar;
        this.f2049e = aVar2;
        this.f = eVar;
        this.f2050g = aVar3;
    }

    public e(P2.a aVar, P2.a aVar2, C0837c c0837c) {
        P1.e eVar = T0.a.f2714b;
        this.f2048d = aVar;
        this.f2049e = aVar2;
        this.f = c0837c;
        this.f2050g = eVar;
    }
}
