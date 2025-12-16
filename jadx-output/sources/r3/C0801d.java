package r3;

import h4.AbstractC0472z;
import java.util.List;
import s3.InterfaceC0845h;

/* renamed from: r3.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0801d implements InterfaceC0789Q {

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0789Q f8802c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC0807j f8803d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8804e;

    public C0801d(InterfaceC0789Q interfaceC0789Q, InterfaceC0807j interfaceC0807j, int i5) {
        d3.i.e("declarationDescriptor", interfaceC0807j);
        this.f8802c = interfaceC0789Q;
        this.f8803d = interfaceC0807j;
        this.f8804e = i5;
    }

    @Override // r3.InterfaceC0789Q
    public final int A() {
        return this.f8802c.A();
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return this.f8802c.F0(interfaceC0809l, obj);
    }

    @Override // r3.InterfaceC0804g
    public final h4.J H() {
        return this.f8802c.H();
    }

    @Override // r3.InterfaceC0789Q
    public final g4.o K() {
        return this.f8802c.K();
    }

    @Override // r3.InterfaceC0807j
    public final Q3.f getName() {
        return this.f8802c.getName();
    }

    @Override // r3.InterfaceC0789Q
    public final List getUpperBounds() {
        return this.f8802c.getUpperBounds();
    }

    @Override // r3.InterfaceC0807j
    public final InterfaceC0807j l() {
        return this.f8803d;
    }

    @Override // r3.InterfaceC0808k
    public final InterfaceC0786N m() {
        return this.f8802c.m();
    }

    @Override // r3.InterfaceC0789Q
    public final boolean m0() {
        return true;
    }

    @Override // r3.InterfaceC0789Q
    public final boolean n0() {
        return this.f8802c.n0();
    }

    @Override // r3.InterfaceC0804g
    public final AbstractC0472z q() {
        return this.f8802c.q();
    }

    @Override // s3.InterfaceC0838a
    public final InterfaceC0845h t() {
        return this.f8802c.t();
    }

    public final String toString() {
        return this.f8802c + "[inner-copy]";
    }

    @Override // r3.InterfaceC0789Q
    public final int z0() {
        return this.f8802c.z0() + this.f8804e;
    }

    @Override // r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0789Q a() {
        return this.f8802c.a();
    }
}
