package f4;

import R2.B;
import c3.InterfaceC0221a;

/* loaded from: classes.dex */
public final class m extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f6871d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ o f6872e;
    public final /* synthetic */ p f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m(o oVar, p pVar, int i5) {
        super(0);
        this.f6871d = i5;
        this.f6872e = oVar;
        this.f = pVar;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f6871d) {
            case 0:
                return B.S(this.f6872e.f6876a.keySet(), this.f.o());
            default:
                return B.S(this.f6872e.f6877b.keySet(), this.f.p());
        }
    }
}
