package M0;

import R0.j;
import Z0.h;
import android.content.Context;

/* loaded from: classes.dex */
public final class e implements N0.b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f1819c = 0;

    /* renamed from: d, reason: collision with root package name */
    public final P2.a f1820d;

    /* renamed from: e, reason: collision with root package name */
    public final P2.a f1821e;
    public final P2.a f;

    public e(P2.a aVar) {
        h hVar = R0.d.f2279a;
        e4.d dVar = R0.d.f2280b;
        this.f1820d = aVar;
        this.f1821e = hVar;
        this.f = dVar;
    }

    @Override // P2.a
    public final Object get() {
        switch (this.f1819c) {
            case 0:
                return new d((Context) this.f1820d.get(), (T0.b) this.f1821e.get(), (T0.b) this.f.get());
            default:
                return new j((Context) this.f1820d.get(), ((Integer) this.f.get()).intValue(), (String) this.f1821e.get());
        }
    }

    public e(K.j jVar) {
        e4.d dVar = T0.a.f2713a;
        P1.e eVar = T0.a.f2714b;
        this.f1820d = jVar;
        this.f1821e = dVar;
        this.f = eVar;
    }
}
