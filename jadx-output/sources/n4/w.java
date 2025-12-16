package n4;

import c3.InterfaceC0222b;
import r3.InterfaceC0816s;

/* loaded from: classes.dex */
public abstract class w implements e {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0222b f8396a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8397b;

    public w(String str, InterfaceC0222b interfaceC0222b) {
        this.f8396a = interfaceC0222b;
        this.f8397b = "must return ".concat(str);
    }

    @Override // n4.e
    public final String a(InterfaceC0816s interfaceC0816s) {
        return Z0.j.Q(this, interfaceC0816s);
    }

    @Override // n4.e
    public final String b() {
        return this.f8397b;
    }

    @Override // n4.e
    public final boolean c(InterfaceC0816s interfaceC0816s) {
        d3.i.e("functionDescriptor", interfaceC0816s);
        return d3.i.a(interfaceC0816s.n(), this.f8396a.e(X3.f.e(interfaceC0816s)));
    }
}
