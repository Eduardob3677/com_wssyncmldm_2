package j4;

import A3.p;
import c1.w;
import java.util.Collection;
import r3.InterfaceC0786N;
import r3.InterfaceC0798a;
import r3.InterfaceC0800c;
import r3.InterfaceC0807j;
import r3.InterfaceC0815r;
import r3.InterfaceC0816s;
import s3.InterfaceC0845h;
import u3.AbstractC0889v;
import u3.N;

/* loaded from: classes.dex */
public final class b extends N {
    @Override // u3.AbstractC0889v, r3.InterfaceC0799b
    public final Object E(InterfaceC0798a interfaceC0798a) {
        return null;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0800c
    public final void M(Collection collection) {
        d3.i.e("overriddenDescriptors", collection);
    }

    @Override // u3.AbstractC0889v
    /* renamed from: R0 */
    public final N x0(InterfaceC0807j interfaceC0807j, int i5, p pVar) {
        d3.i.e("newOwner", interfaceC0807j);
        B.f.x(i5, "modality");
        d3.i.e("visibility", pVar);
        B.f.x(2, "kind");
        return this;
    }

    @Override // u3.N, u3.AbstractC0889v
    public final AbstractC0889v S0(int i5, Q3.f fVar, InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, InterfaceC0786N interfaceC0786N, InterfaceC0845h interfaceC0845h) {
        d3.i.e("newOwner", interfaceC0807j);
        B.f.x(i5, "kind");
        d3.i.e("annotations", interfaceC0845h);
        return this;
    }

    @Override // u3.N, u3.AbstractC0889v, r3.InterfaceC0816s
    public final InterfaceC0815r e0() {
        return new w(this);
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0816s
    public final boolean h() {
        return false;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0800c
    public final /* bridge */ /* synthetic */ InterfaceC0800c x0(InterfaceC0807j interfaceC0807j, int i5, p pVar) {
        x0(interfaceC0807j, i5, pVar);
        return this;
    }
}
