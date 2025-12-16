package V2;

import U2.d;
import c3.InterfaceC0223c;
import d3.i;
import d3.t;
import i3.x;

/* loaded from: classes.dex */
public final class c extends W2.a {

    /* renamed from: d, reason: collision with root package name */
    public final d f2789d;

    /* renamed from: e, reason: collision with root package name */
    public transient U2.a f2790e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0223c f2791g;

    /* renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f2792h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(U2.a aVar, d dVar, InterfaceC0223c interfaceC0223c, Object obj) {
        super(aVar);
        this.f2791g = interfaceC0223c;
        this.f2792h = obj;
        i.c("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>", aVar);
        this.f2789d = dVar;
    }

    @Override // U2.a
    public final d a() {
        d dVar = this.f2789d;
        i.b(dVar);
        return dVar;
    }

    @Override // W2.a
    public final Object g(Object obj) throws Throwable {
        int i5 = this.f;
        if (i5 != 0) {
            if (i5 != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.f = 2;
            x.g1(obj);
            return obj;
        }
        this.f = 1;
        x.g1(obj);
        InterfaceC0223c interfaceC0223c = this.f2791g;
        i.c("null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>", interfaceC0223c);
        t.b(interfaceC0223c);
        return interfaceC0223c.d(this.f2792h, this);
    }

    @Override // W2.a
    public final void h() {
        U2.a aVar = this.f2790e;
        if (aVar != null && aVar != this) {
            d dVar = this.f2789d;
            i.b(dVar);
            i.b(dVar.a(U2.b.f2745a));
        }
        this.f2790e = W2.b.f2837c;
    }
}
