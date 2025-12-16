package f4;

import L3.C0075y;
import R3.AbstractC0080b;
import r3.InterfaceC0786N;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import s2.C0837c;
import s3.InterfaceC0845h;
import u3.AbstractC0889v;
import u3.N;

/* loaded from: classes.dex */
public final class s extends N implements b {

    /* renamed from: G, reason: collision with root package name */
    public final C0075y f6895G;

    /* renamed from: H, reason: collision with root package name */
    public final N3.f f6896H;

    /* renamed from: I, reason: collision with root package name */
    public final C0837c f6897I;

    /* renamed from: J, reason: collision with root package name */
    public final N3.g f6898J;

    /* renamed from: K, reason: collision with root package name */
    public final j f6899K;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(InterfaceC0807j interfaceC0807j, N n, InterfaceC0845h interfaceC0845h, Q3.f fVar, int i5, C0075y c0075y, N3.f fVar2, C0837c c0837c, N3.g gVar, j jVar, InterfaceC0786N interfaceC0786N) {
        super(interfaceC0807j, n, interfaceC0845h, fVar, i5, interfaceC0786N == null ? InterfaceC0786N.f8790a : interfaceC0786N);
        d3.i.e("containingDeclaration", interfaceC0807j);
        d3.i.e("annotations", interfaceC0845h);
        B.f.x(i5, "kind");
        d3.i.e("proto", c0075y);
        d3.i.e("nameResolver", fVar2);
        d3.i.e("typeTable", c0837c);
        d3.i.e("versionRequirementTable", gVar);
        this.f6895G = c0075y;
        this.f6896H = fVar2;
        this.f6897I = c0837c;
        this.f6898J = gVar;
        this.f6899K = jVar;
    }

    @Override // f4.k
    public final N3.f B0() {
        return this.f6896H;
    }

    @Override // u3.N, u3.AbstractC0889v
    public final AbstractC0889v S0(int i5, Q3.f fVar, InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, InterfaceC0786N interfaceC0786N, InterfaceC0845h interfaceC0845h) {
        Q3.f fVar2;
        d3.i.e("newOwner", interfaceC0807j);
        B.f.x(i5, "kind");
        d3.i.e("annotations", interfaceC0845h);
        N n = (N) interfaceC0816s;
        if (fVar == null) {
            Q3.f name = getName();
            d3.i.d("name", name);
            fVar2 = name;
        } else {
            fVar2 = fVar;
        }
        s sVar = new s(interfaceC0807j, n, interfaceC0845h, fVar2, i5, this.f6895G, this.f6896H, this.f6897I, this.f6898J, this.f6899K, interfaceC0786N);
        sVar.f9506y = this.f9506y;
        return sVar;
    }

    @Override // f4.k
    public final C0837c Z() {
        return this.f6897I;
    }

    @Override // f4.k
    public final AbstractC0080b l0() {
        return this.f6895G;
    }

    @Override // f4.k
    public final j x() {
        return this.f6899K;
    }
}
