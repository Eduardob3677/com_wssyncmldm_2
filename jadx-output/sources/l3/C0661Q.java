package l3;

import R3.C0094p;
import f1.AbstractC0420a;
import i3.InterfaceC0494o;
import java.util.Collection;
import r3.InterfaceC0783K;
import s2.C0837c;
import x3.AbstractC0917d;

/* renamed from: l3.Q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0661Q extends AbstractC0647C {

    /* renamed from: d, reason: collision with root package name */
    public final Class f8129d;

    /* renamed from: e, reason: collision with root package name */
    public final q0 f8130e;

    public C0661Q(Class cls) {
        d3.i.e("jClass", cls);
        this.f8129d = cls;
        this.f8130e = r0.i(new C0656L(this, 1));
    }

    @Override // d3.InterfaceC0391c
    public final Class a() {
        return this.f8129d;
    }

    @Override // l3.AbstractC0647C
    public final Collection d() {
        return R2.u.f2325c;
    }

    @Override // l3.AbstractC0647C
    public final Collection e(Q3.f fVar) {
        C0659O c0659o = (C0659O) this.f8130e.a();
        c0659o.getClass();
        InterfaceC0494o interfaceC0494o = C0659O.f8124g[1];
        Object objA = c0659o.f8126d.a();
        d3.i.d("<get-scope>(...)", objA);
        return ((a4.o) objA).d(fVar, z3.b.f9730d);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C0661Q) {
            if (d3.i.a(this.f8129d, ((C0661Q) obj).f8129d)) {
                return true;
            }
        }
        return false;
    }

    @Override // l3.AbstractC0647C
    public final InterfaceC0783K f(int i5) {
        C0659O c0659o = (C0659O) this.f8130e.a();
        c0659o.getClass();
        InterfaceC0494o interfaceC0494o = C0659O.f8124g[3];
        Q2.i iVar = (Q2.i) c0659o.f.a();
        if (iVar == null) {
            return null;
        }
        P3.g gVar = (P3.g) iVar.f2221c;
        L3.C c2 = (L3.C) iVar.f2222d;
        P3.f fVar = (P3.f) iVar.f2223e;
        C0094p c0094p = O3.k.n;
        d3.i.d("packageLocalVariable", c0094p);
        L3.G g5 = (L3.G) AbstractC0420a.D(c2, c0094p, i5);
        if (g5 == null) {
            return null;
        }
        L3.X x4 = c2.f1373i;
        d3.i.d("packageProto.typeTable", x4);
        return (InterfaceC0783K) w0.f(this.f8129d, g5, gVar, new C0837c(x4), fVar, C0660P.f8128l);
    }

    @Override // l3.AbstractC0647C
    public final Class h() {
        C0659O c0659o = (C0659O) this.f8130e.a();
        c0659o.getClass();
        InterfaceC0494o interfaceC0494o = C0659O.f8124g[2];
        Class cls = (Class) c0659o.f8127e.a();
        return cls == null ? this.f8129d : cls;
    }

    public final int hashCode() {
        return this.f8129d.hashCode();
    }

    @Override // l3.AbstractC0647C
    public final Collection i(Q3.f fVar) {
        C0659O c0659o = (C0659O) this.f8130e.a();
        c0659o.getClass();
        InterfaceC0494o interfaceC0494o = C0659O.f8124g[1];
        Object objA = c0659o.f8126d.a();
        d3.i.d("<get-scope>(...)", objA);
        return ((a4.o) objA).g(fVar, z3.b.f9730d);
    }

    public final String toString() {
        return "file class " + AbstractC0917d.a(this.f8129d).b();
    }
}
