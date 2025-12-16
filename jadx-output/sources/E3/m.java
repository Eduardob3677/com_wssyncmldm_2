package E3;

import c3.InterfaceC0222b;

/* loaded from: classes.dex */
public final class m extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f615d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ q f616e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m(q qVar, int i5) {
        super(1);
        this.f615d = i5;
        this.f616e = qVar;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f615d) {
            case 0:
                Q3.f fVar = (Q3.f) obj;
                d3.i.e("it", fVar);
                return q.v(this.f616e, fVar);
            default:
                Q3.f fVar2 = (Q3.f) obj;
                d3.i.e("it", fVar2);
                return q.w(this.f616e, fVar2);
        }
    }
}
