package U3;

import R2.u;
import f1.AbstractC0420a;
import h4.AbstractC0468v;
import h4.N;
import i4.i;
import java.util.Collection;
import java.util.List;
import o3.AbstractC0732i;
import r3.InterfaceC0804g;

/* loaded from: classes.dex */
public final class c implements b {

    /* renamed from: a, reason: collision with root package name */
    public final N f2750a;

    /* renamed from: b, reason: collision with root package name */
    public i f2751b;

    public c(N n) {
        d3.i.e("projection", n);
        this.f2750a = n;
        n.a();
    }

    @Override // U3.b
    public final N a() {
        return this.f2750a;
    }

    @Override // h4.J
    public final AbstractC0732i g() {
        AbstractC0732i abstractC0732iG = this.f2750a.b().J0().g();
        d3.i.d("projection.type.constructor.builtIns", abstractC0732iG);
        return abstractC0732iG;
    }

    @Override // h4.J
    public final boolean h() {
        return false;
    }

    @Override // h4.J
    public final /* bridge */ /* synthetic */ InterfaceC0804g i() {
        return null;
    }

    @Override // h4.J
    public final Collection j() {
        N n = this.f2750a;
        AbstractC0468v abstractC0468vB = n.a() == 3 ? n.b() : g().o();
        d3.i.d("if (projection.projectio… builtIns.nullableAnyType", abstractC0468vB);
        return AbstractC0420a.V(abstractC0468vB);
    }

    @Override // h4.J
    public final List k() {
        return u.f2325c;
    }

    public final String toString() {
        return "CapturedTypeConstructor(" + this.f2750a + ')';
    }
}
