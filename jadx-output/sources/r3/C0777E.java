package r3;

import c3.InterfaceC0222b;
import s3.InterfaceC0845h;

/* renamed from: r3.E, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0777E extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8782d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Q3.c f8783e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0777E(Q3.c cVar, int i5) {
        super(1);
        this.f8782d = i5;
        this.f8783e = cVar;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f8782d) {
            case 0:
                Q3.c cVar = (Q3.c) obj;
                d3.i.e("it", cVar);
                return Boolean.valueOf(!cVar.d() && d3.i.a(cVar.e(), this.f8783e));
            default:
                InterfaceC0845h interfaceC0845h = (InterfaceC0845h) obj;
                d3.i.e("it", interfaceC0845h);
                return interfaceC0845h.f(this.f8783e);
        }
    }
}
