package f4;

import L3.C0063l;
import R3.AbstractC0080b;
import r3.InterfaceC0786N;
import r3.InterfaceC0802e;
import r3.InterfaceC0806i;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import s2.C0837c;
import s3.InterfaceC0845h;
import u3.AbstractC0889v;
import u3.C0879k;

/* loaded from: classes.dex */
public final class c extends C0879k implements b {

    /* renamed from: H, reason: collision with root package name */
    public final C0063l f6834H;

    /* renamed from: I, reason: collision with root package name */
    public final N3.f f6835I;

    /* renamed from: J, reason: collision with root package name */
    public final C0837c f6836J;

    /* renamed from: K, reason: collision with root package name */
    public final N3.g f6837K;

    /* renamed from: L, reason: collision with root package name */
    public final j f6838L;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(InterfaceC0802e interfaceC0802e, InterfaceC0806i interfaceC0806i, InterfaceC0845h interfaceC0845h, boolean z4, int i5, C0063l c0063l, N3.f fVar, C0837c c0837c, N3.g gVar, j jVar, InterfaceC0786N interfaceC0786N) {
        super(interfaceC0802e, interfaceC0806i, interfaceC0845h, z4, i5, interfaceC0786N == null ? InterfaceC0786N.f8790a : interfaceC0786N);
        d3.i.e("containingDeclaration", interfaceC0802e);
        d3.i.e("annotations", interfaceC0845h);
        B.f.x(i5, "kind");
        d3.i.e("proto", c0063l);
        d3.i.e("nameResolver", fVar);
        d3.i.e("typeTable", c0837c);
        d3.i.e("versionRequirementTable", gVar);
        this.f6834H = c0063l;
        this.f6835I = fVar;
        this.f6836J = c0837c;
        this.f6837K = gVar;
        this.f6838L = jVar;
    }

    @Override // f4.k
    public final N3.f B0() {
        return this.f6835I;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0820w
    public final boolean D() {
        return false;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0816s
    public final boolean O() {
        return false;
    }

    @Override // u3.C0879k, u3.AbstractC0889v
    public final /* bridge */ /* synthetic */ AbstractC0889v S0(int i5, Q3.f fVar, InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, InterfaceC0786N interfaceC0786N, InterfaceC0845h interfaceC0845h) {
        return h1(interfaceC0807j, interfaceC0816s, i5, interfaceC0845h, interfaceC0786N);
    }

    @Override // f4.k
    public final C0837c Z() {
        return this.f6836J;
    }

    @Override // u3.C0879k
    /* renamed from: b1 */
    public final /* bridge */ /* synthetic */ C0879k S0(int i5, Q3.f fVar, InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, InterfaceC0786N interfaceC0786N, InterfaceC0845h interfaceC0845h) {
        return h1(interfaceC0807j, interfaceC0816s, i5, interfaceC0845h, interfaceC0786N);
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0816s
    public final boolean h() {
        return false;
    }

    public final c h1(InterfaceC0807j interfaceC0807j, InterfaceC0816s interfaceC0816s, int i5, InterfaceC0845h interfaceC0845h, InterfaceC0786N interfaceC0786N) {
        d3.i.e("newOwner", interfaceC0807j);
        B.f.x(i5, "kind");
        d3.i.e("annotations", interfaceC0845h);
        c cVar = new c((InterfaceC0802e) interfaceC0807j, (InterfaceC0806i) interfaceC0816s, interfaceC0845h, this.f9439G, i5, this.f6834H, this.f6835I, this.f6836J, this.f6837K, this.f6838L, interfaceC0786N);
        cVar.f9506y = this.f9506y;
        return cVar;
    }

    @Override // u3.AbstractC0889v, r3.InterfaceC0816s
    public final boolean j() {
        return false;
    }

    @Override // f4.k
    public final AbstractC0080b l0() {
        return this.f6834H;
    }

    @Override // f4.k
    public final j x() {
        return this.f6838L;
    }
}
