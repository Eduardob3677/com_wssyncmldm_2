package i4;

import R2.u;
import c3.InterfaceC0221a;
import f1.AbstractC0420a;
import h4.AbstractC0468v;
import h4.N;
import java.util.Collection;
import java.util.List;
import o3.AbstractC0732i;
import r3.InterfaceC0789Q;
import r3.InterfaceC0804g;

/* loaded from: classes.dex */
public final class i implements U3.b {

    /* renamed from: a, reason: collision with root package name */
    public final N f7179a;

    /* renamed from: b, reason: collision with root package name */
    public InterfaceC0221a f7180b;

    /* renamed from: c, reason: collision with root package name */
    public final i f7181c;

    /* renamed from: d, reason: collision with root package name */
    public final InterfaceC0789Q f7182d;

    /* renamed from: e, reason: collision with root package name */
    public final Q2.c f7183e;

    public i(N n, InterfaceC0221a interfaceC0221a, i iVar, InterfaceC0789Q interfaceC0789Q) {
        this.f7179a = n;
        this.f7180b = interfaceC0221a;
        this.f7181c = iVar;
        this.f7182d = interfaceC0789Q;
        this.f7183e = AbstractC0420a.U(2, new B3.k(18, this));
    }

    @Override // U3.b
    public final N a() {
        return this.f7179a;
    }

    public final i b(f fVar) {
        d3.i.e("kotlinTypeRefiner", fVar);
        N nD = this.f7179a.d(fVar);
        B3.c cVar = this.f7180b != null ? new B3.c(this, 8, fVar) : null;
        i iVar = this.f7181c;
        if (iVar == null) {
            iVar = this;
        }
        return new i(nD, cVar, iVar, this.f7182d);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!d3.i.a(i.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor", obj);
        i iVar = (i) obj;
        i iVar2 = this.f7181c;
        if (iVar2 != null) {
            this = iVar2;
        }
        i iVar3 = iVar.f7181c;
        if (iVar3 != null) {
            iVar = iVar3;
        }
        return this == iVar;
    }

    @Override // h4.J
    public final AbstractC0732i g() {
        AbstractC0468v abstractC0468vB = this.f7179a.b();
        d3.i.d("projection.type", abstractC0468vB);
        return AbstractC0420a.y(abstractC0468vB);
    }

    @Override // h4.J
    public final boolean h() {
        return false;
    }

    public final int hashCode() {
        i iVar = this.f7181c;
        return iVar != null ? iVar.hashCode() : super.hashCode();
    }

    @Override // h4.J
    public final InterfaceC0804g i() {
        return null;
    }

    @Override // h4.J
    public final Collection j() {
        List list = (List) this.f7183e.getValue();
        return list == null ? u.f2325c : list;
    }

    @Override // h4.J
    public final List k() {
        return u.f2325c;
    }

    public final String toString() {
        return "CapturedType(" + this.f7179a + ')';
    }

    public /* synthetic */ i(N n, f4.d dVar, i iVar, InterfaceC0789Q interfaceC0789Q, int i5) {
        this(n, (i5 & 2) != 0 ? null : dVar, (i5 & 4) != 0 ? null : iVar, (i5 & 8) != 0 ? null : interfaceC0789Q);
    }
}
