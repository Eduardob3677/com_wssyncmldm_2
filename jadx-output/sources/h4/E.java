package h4;

import f1.AbstractC0420a;
import r3.InterfaceC0789Q;

/* loaded from: classes.dex */
public final class E extends N {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0789Q f7016a;

    /* renamed from: b, reason: collision with root package name */
    public final Q2.c f7017b;

    public E(InterfaceC0789Q interfaceC0789Q) {
        d3.i.e("typeParameter", interfaceC0789Q);
        this.f7016a = interfaceC0789Q;
        this.f7017b = AbstractC0420a.U(2, new B3.k(16, this));
    }

    @Override // h4.N
    public final int a() {
        return 3;
    }

    @Override // h4.N
    public final AbstractC0468v b() {
        return (AbstractC0468v) this.f7017b.getValue();
    }

    @Override // h4.N
    public final boolean c() {
        return true;
    }

    @Override // h4.N
    public final N d(i4.f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        return this;
    }
}
