package f4;

import L3.T;
import h4.AbstractC0450c;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.G;
import h4.J;
import h4.V;
import h4.X;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p0.AbstractC0739a;
import r3.InterfaceC0786N;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0805h;
import r3.InterfaceC0807j;
import r3.InterfaceC0808k;
import r3.InterfaceC0809l;
import s2.C0837c;
import s3.C0843f;
import s3.C0844g;
import s3.InterfaceC0845h;
import u3.AbstractC0884p;
import u3.AbstractC0889v;
import u3.C0872d;
import u3.C0873e;
import u3.C0879k;
import u3.C0890w;
import u3.Q;
import u3.S;

/* loaded from: classes.dex */
public final class t extends AbstractC0884p implements k, InterfaceC0805h {

    /* renamed from: g, reason: collision with root package name */
    public final A3.p f6900g;

    /* renamed from: h, reason: collision with root package name */
    public List f6901h;

    /* renamed from: i, reason: collision with root package name */
    public final C0873e f6902i;

    /* renamed from: j, reason: collision with root package name */
    public final g4.o f6903j;

    /* renamed from: k, reason: collision with root package name */
    public final T f6904k;

    /* renamed from: l, reason: collision with root package name */
    public final N3.f f6905l;

    /* renamed from: m, reason: collision with root package name */
    public final C0837c f6906m;
    public final N3.g n;

    /* renamed from: o, reason: collision with root package name */
    public final j f6907o;

    /* renamed from: p, reason: collision with root package name */
    public AbstractC0472z f6908p;

    /* renamed from: q, reason: collision with root package name */
    public AbstractC0472z f6909q;

    /* renamed from: r, reason: collision with root package name */
    public List f6910r;

    /* renamed from: s, reason: collision with root package name */
    public AbstractC0472z f6911s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(g4.o oVar, InterfaceC0807j interfaceC0807j, InterfaceC0845h interfaceC0845h, Q3.f fVar, A3.p pVar, T t2, N3.f fVar2, C0837c c0837c, N3.g gVar, j jVar) {
        super(interfaceC0807j, interfaceC0845h, fVar, InterfaceC0786N.f8790a);
        d3.i.e("storageManager", oVar);
        d3.i.e("containingDeclaration", interfaceC0807j);
        d3.i.e("visibility", pVar);
        d3.i.e("proto", t2);
        d3.i.e("nameResolver", fVar2);
        d3.i.e("typeTable", c0837c);
        d3.i.e("versionRequirementTable", gVar);
        this.f6900g = pVar;
        this.f6902i = new C0873e(this);
        this.f6903j = oVar;
        this.f6904k = t2;
        this.f6905l = fVar2;
        this.f6906m = c0837c;
        this.n = gVar;
        this.f6907o = jVar;
    }

    @Override // f4.k
    public final N3.f B0() {
        throw null;
    }

    @Override // r3.InterfaceC0820w
    public final boolean D() {
        return false;
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.w(this, obj);
    }

    @Override // r3.InterfaceC0804g
    public final J H() {
        return this.f6902i;
    }

    @Override // u3.AbstractC0884p
    /* renamed from: P0 */
    public final InterfaceC0808k a() {
        return this;
    }

    public final InterfaceC0802e Q0() {
        if (AbstractC0450c.i(R0())) {
            return null;
        }
        InterfaceC0804g interfaceC0804gI = R0().J0().i();
        if (interfaceC0804gI instanceof InterfaceC0802e) {
            return (InterfaceC0802e) interfaceC0804gI;
        }
        return null;
    }

    public final AbstractC0472z R0() {
        AbstractC0472z abstractC0472z = this.f6909q;
        if (abstractC0472z != null) {
            return abstractC0472z;
        }
        d3.i.g("expandedType");
        throw null;
    }

    public final AbstractC0472z S0() {
        AbstractC0472z abstractC0472z = this.f6908p;
        if (abstractC0472z != null) {
            return abstractC0472z;
        }
        d3.i.g("underlyingType");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void T0(List list, AbstractC0472z abstractC0472z, AbstractC0472z abstractC0472z2) {
        a4.o oVarF0;
        AbstractC0472z abstractC0472zT;
        C0879k c0879kB;
        S s5;
        C0890w c0890wE;
        R2.u uVar;
        S s6;
        int i5 = 1;
        int i6 = 0;
        d3.i.e("underlyingType", abstractC0472z);
        d3.i.e("expandedType", abstractC0472z2);
        this.f6901h = list;
        this.f6908p = abstractC0472z;
        this.f6909q = abstractC0472z2;
        this.f6910r = AbstractC0739a.f(this);
        InterfaceC0802e interfaceC0802eQ0 = Q0();
        if (interfaceC0802eQ0 == null || (oVarF0 = interfaceC0802eQ0.f0()) == null) {
            oVarF0 = a4.n.f3128b;
        }
        a4.o oVar = oVarF0;
        C0872d c0872d = new C0872d(this, i6);
        j4.f fVar = X.f7044a;
        if (j4.i.f(this)) {
            abstractC0472zT = j4.i.c(j4.h.f7632m, toString());
        } else {
            J jH = H();
            if (jH == null) {
                X.a(12);
                throw null;
            }
            List listE = X.e(((C0873e) jH).k());
            G.f7019d.getClass();
            abstractC0472zT = C0451d.t(G.f7020e, jH, listE, false, oVar, c0872d);
        }
        this.f6911s = abstractC0472zT;
        InterfaceC0802e interfaceC0802eQ02 = Q0();
        R2.u uVar2 = R2.u.f2325c;
        if (interfaceC0802eQ02 == null) {
            return;
        }
        Collection<C0879k> collectionK = interfaceC0802eQ02.k();
        d3.i.d("classDescriptor.constructors", collectionK);
        ArrayList arrayList = new ArrayList();
        for (C0879k c0879k : collectionK) {
            Q q2 = S.f9403J;
            d3.i.d("it", c0879k);
            q2.getClass();
            g4.o oVar2 = this.f6903j;
            d3.i.e("storageManager", oVar2);
            V vD = Q0() == null ? null : V.d(R0());
            if (vD != null && (c0879kB = c0879k.b(vD)) != null) {
                InterfaceC0845h interfaceC0845hT = c0879k.t();
                C0879k c0879k2 = c0879k;
                int iK0 = c0879k2.k0();
                B.f.E(iK0, "constructor.kind");
                InterfaceC0786N interfaceC0786NM = m();
                d3.i.d("typeAliasDescriptor.source", interfaceC0786NM);
                S s7 = new S(oVar2, this, c0879kB, null, interfaceC0845hT, iK0, interfaceC0786NM);
                List listW0 = c0879k2.w0();
                if (listW0 == null) {
                    AbstractC0889v.I0(28);
                    throw null;
                }
                V v4 = vD;
                ArrayList arrayListU0 = AbstractC0889v.U0(s7, listW0, v4, false, false, null);
                if (arrayListU0 == null) {
                    s6 = null;
                } else {
                    AbstractC0472z abstractC0472zZ = AbstractC0450c.z(AbstractC0450c.k(c0879kB.f9491i.M0()), q());
                    C0890w c0890w = c0879k2.f9494l;
                    C0843f c0843f = C0844g.f9041a;
                    if (c0890w != null) {
                        s5 = s7;
                        c0890wE = Z0.j.E(s5, v4.h(i5, c0890w.e()), c0843f);
                    } else {
                        s5 = s7;
                        c0890wE = null;
                    }
                    InterfaceC0802e interfaceC0802eQ03 = Q0();
                    if (interfaceC0802eQ03 != null) {
                        List listV0 = c0879k2.v0();
                        d3.i.d("constructor.contextReceiverParameters", listV0);
                        ArrayList arrayList2 = new ArrayList(R2.o.C0(listV0));
                        int i7 = i6;
                        for (Object obj : listV0) {
                            int i8 = i7 + 1;
                            if (i7 < 0) {
                                R2.n.B0();
                                throw null;
                            }
                            C0890w c0890w2 = (C0890w) obj;
                            AbstractC0468v abstractC0468vH = v4.h(i5, c0890w2.e());
                            b4.d dVarQ0 = c0890w2.Q0();
                            d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.receivers.ImplicitContextReceiver", dVarQ0);
                            b4.a aVar = new b4.a(interfaceC0802eQ03, abstractC0468vH, ((b4.a) dVarQ0).O0());
                            Q2.a aVar2 = Q3.g.f2244a;
                            arrayList2.add(new C0890w(interfaceC0802eQ03, aVar, c0843f, Q3.f.e("_context_receiver_" + i7)));
                            i7 = i8;
                            i5 = 1;
                        }
                        uVar = arrayList2;
                    } else {
                        uVar = uVar2;
                    }
                    s5.V0(c0890wE, null, uVar, s(), arrayListU0, abstractC0472zZ, 1, this.f6900g);
                    s6 = s5;
                }
            }
            if (s6 != null) {
                arrayList.add(s6);
            }
            i5 = 1;
            i6 = 0;
        }
    }

    @Override // f4.k
    public final C0837c Z() {
        throw null;
    }

    @Override // u3.AbstractC0884p, u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0804g a() {
        return this;
    }

    @Override // r3.InterfaceC0788P
    public final InterfaceC0808k b(V v4) {
        d3.i.e("substitutor", v4);
        if (v4.f7042a.e()) {
            return this;
        }
        InterfaceC0807j interfaceC0807jL = l();
        d3.i.d("containingDeclaration", interfaceC0807jL);
        InterfaceC0845h interfaceC0845hT = t();
        d3.i.d("annotations", interfaceC0845hT);
        Q3.f name = getName();
        d3.i.d("name", name);
        t tVar = new t(this.f6903j, interfaceC0807jL, interfaceC0845hT, name, this.f6900g, this.f6904k, this.f6905l, this.f6906m, this.n, this.f6907o);
        tVar.T0(s(), AbstractC0450c.b(v4.h(1, S0())), AbstractC0450c.b(v4.h(1, R0())));
        return tVar;
    }

    @Override // r3.InterfaceC0820w
    public final A3.p c() {
        return this.f6900g;
    }

    @Override // r3.InterfaceC0820w
    public final boolean j0() {
        return false;
    }

    @Override // r3.InterfaceC0804g
    public final AbstractC0472z q() {
        AbstractC0472z abstractC0472z = this.f6911s;
        if (abstractC0472z != null) {
            return abstractC0472z;
        }
        d3.i.g("defaultTypeImpl");
        throw null;
    }

    @Override // r3.InterfaceC0805h
    public final List s() {
        List list = this.f6901h;
        if (list != null) {
            return list;
        }
        d3.i.g("declaredTypeParametersImpl");
        throw null;
    }

    @Override // u3.AbstractC0883o
    public final String toString() {
        return "typealias " + getName().b();
    }

    @Override // f4.k
    public final j x() {
        return this.f6907o;
    }

    @Override // r3.InterfaceC0820w
    public final boolean y() {
        return false;
    }

    @Override // r3.InterfaceC0805h
    public final boolean z() {
        return X.c(S0(), new C0872d(this, 1));
    }

    @Override // u3.AbstractC0884p, u3.AbstractC0883o, r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0807j a() {
        return this;
    }
}
