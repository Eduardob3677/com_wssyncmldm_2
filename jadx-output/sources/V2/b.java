package V2;

import W2.e;
import c3.InterfaceC0223c;
import d3.i;
import d3.t;
import i3.x;

/* loaded from: classes.dex */
public final class b extends e {

    /* renamed from: d, reason: collision with root package name */
    public int f2787d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ InterfaceC0223c f2788e;
    public final /* synthetic */ Object f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(U2.a aVar, InterfaceC0223c interfaceC0223c, Object obj) {
        super(aVar);
        this.f2788e = interfaceC0223c;
        this.f = obj;
        i.c("null cannot be cast to non-null type kotlin.coroutines.Continuation<kotlin.Any?>", aVar);
    }

    @Override // W2.a
    public final Object g(Object obj) throws Throwable {
        int i5 = this.f2787d;
        if (i5 != 0) {
            if (i5 != 1) {
                throw new IllegalStateException("This coroutine had already completed".toString());
            }
            this.f2787d = 2;
            x.g1(obj);
            return obj;
        }
        this.f2787d = 1;
        x.g1(obj);
        InterfaceC0223c interfaceC0223c = this.f2788e;
        i.c("null cannot be cast to non-null type kotlin.Function2<R of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1, kotlin.coroutines.Continuation<T of kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted$lambda$1>, kotlin.Any?>", interfaceC0223c);
        t.b(interfaceC0223c);
        return interfaceC0223c.d(this.f, this);
    }
}
