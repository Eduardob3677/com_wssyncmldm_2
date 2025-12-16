package f4;

import L3.G;
import R3.AbstractC0080b;
import r3.InterfaceC0783K;
import r3.InterfaceC0786N;
import r3.InterfaceC0807j;
import s2.C0837c;
import s3.InterfaceC0845h;
import u3.K;

/* loaded from: classes.dex */
public final class r extends K implements b {

    /* renamed from: D, reason: collision with root package name */
    public final G f6891D;
    public final N3.f E;

    /* renamed from: F, reason: collision with root package name */
    public final C0837c f6892F;

    /* renamed from: G, reason: collision with root package name */
    public final N3.g f6893G;

    /* renamed from: H, reason: collision with root package name */
    public final j f6894H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public r(InterfaceC0807j interfaceC0807j, InterfaceC0783K interfaceC0783K, InterfaceC0845h interfaceC0845h, int i5, A3.p pVar, boolean z4, Q3.f fVar, int i6, boolean z5, boolean z6, boolean z7, boolean z8, boolean z9, G g5, N3.f fVar2, C0837c c0837c, N3.g gVar, j jVar) {
        super(interfaceC0807j, interfaceC0783K, interfaceC0845h, i5, pVar, z4, fVar, i6, InterfaceC0786N.f8790a, z5, z6, z9, false, z7, z8);
        d3.i.e("containingDeclaration", interfaceC0807j);
        d3.i.e("annotations", interfaceC0845h);
        B.f.x(i5, "modality");
        d3.i.e("visibility", pVar);
        d3.i.e("name", fVar);
        B.f.x(i6, "kind");
        d3.i.e("proto", g5);
        d3.i.e("nameResolver", fVar2);
        d3.i.e("typeTable", c0837c);
        d3.i.e("versionRequirementTable", gVar);
        this.f6891D = g5;
        this.E = fVar2;
        this.f6892F = c0837c;
        this.f6893G = gVar;
        this.f6894H = jVar;
    }

    @Override // f4.k
    public final N3.f B0() {
        return this.E;
    }

    @Override // u3.K, r3.InterfaceC0820w
    public final boolean D() {
        return N3.e.f1876D.c(this.f6891D.f).booleanValue();
    }

    @Override // u3.K
    public final K T0(InterfaceC0807j interfaceC0807j, int i5, A3.p pVar, InterfaceC0783K interfaceC0783K, int i6, Q3.f fVar) {
        d3.i.e("newOwner", interfaceC0807j);
        B.f.x(i5, "newModality");
        d3.i.e("newVisibility", pVar);
        B.f.x(i6, "kind");
        d3.i.e("newName", fVar);
        return new r(interfaceC0807j, interfaceC0783K, t(), i5, pVar, this.f9379h, fVar, i6, this.f9386p, this.f9387q, D(), this.f9391u, this.f9388r, this.f6891D, this.E, this.f6892F, this.f6893G, this.f6894H);
    }

    @Override // f4.k
    public final C0837c Z() {
        return this.f6892F;
    }

    @Override // f4.k
    public final AbstractC0080b l0() {
        return this.f6891D;
    }

    @Override // f4.k
    public final j x() {
        return this.f6894H;
    }
}
