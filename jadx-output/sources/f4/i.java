package f4;

import E3.C0025h;
import L3.A;
import L3.C0061j;
import L3.EnumC0060i;
import L3.Q;
import L3.X;
import L3.e0;
import L3.f0;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import h4.AbstractC0472z;
import h4.J;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import r3.AbstractC0790S;
import r3.C0784L;
import r3.C0787O;
import r3.InterfaceC0783K;
import r3.InterfaceC0786N;
import r3.InterfaceC0807j;
import s2.C0837c;
import s3.C0844g;
import s3.InterfaceC0845h;
import u3.AbstractC0870b;
import u3.C0879k;
import u3.C0890w;

/* loaded from: classes.dex */
public final class i extends AbstractC0870b implements InterfaceC0807j {

    /* renamed from: g, reason: collision with root package name */
    public final C0061j f6850g;

    /* renamed from: h, reason: collision with root package name */
    public final N3.a f6851h;

    /* renamed from: i, reason: collision with root package name */
    public final InterfaceC0786N f6852i;

    /* renamed from: j, reason: collision with root package name */
    public final Q3.b f6853j;

    /* renamed from: k, reason: collision with root package name */
    public final int f6854k;

    /* renamed from: l, reason: collision with root package name */
    public final A3.p f6855l;

    /* renamed from: m, reason: collision with root package name */
    public final int f6856m;
    public final G4 n;

    /* renamed from: o, reason: collision with root package name */
    public final a4.p f6857o;

    /* renamed from: p, reason: collision with root package name */
    public final C0025h f6858p;

    /* renamed from: q, reason: collision with root package name */
    public final C0784L f6859q;

    /* renamed from: r, reason: collision with root package name */
    public final com.google.firebase.messaging.p f6860r;

    /* renamed from: s, reason: collision with root package name */
    public final InterfaceC0807j f6861s;

    /* renamed from: t, reason: collision with root package name */
    public final g4.h f6862t;

    /* renamed from: u, reason: collision with root package name */
    public final g4.i f6863u;

    /* renamed from: v, reason: collision with root package name */
    public final g4.i f6864v;

    /* renamed from: w, reason: collision with root package name */
    public final g4.h f6865w;

    /* renamed from: x, reason: collision with root package name */
    public final d4.s f6866x;

    /* renamed from: y, reason: collision with root package name */
    public final InterfaceC0845h f6867y;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(G4 g42, C0061j c0061j, N3.f fVar, N3.a aVar, InterfaceC0786N interfaceC0786N) {
        int i5;
        N3.g gVar;
        super(((d4.i) g42.f5377c).f6529a, L2.b.l(fVar, c0061j.f1689g).j());
        d3.i.e("outerContext", g42);
        d3.i.e("classProto", c0061j);
        d3.i.e("nameResolver", fVar);
        d3.i.e("metadataVersion", aVar);
        d3.i.e("sourceElement", interfaceC0786N);
        this.f6850g = c0061j;
        this.f6851h = aVar;
        this.f6852i = interfaceC0786N;
        this.f6853j = L2.b.l(fVar, c0061j.f1689g);
        this.f6854k = d4.j.e((A) N3.e.f1889e.c(c0061j.f));
        this.f6855l = W1.a.x((f0) N3.e.f1888d.c(c0061j.f));
        EnumC0060i enumC0060i = (EnumC0060i) N3.e.f.c(c0061j.f);
        int i6 = 1;
        switch (enumC0060i == null ? -1 : d4.u.f6577b[enumC0060i.ordinal()]) {
            case 2:
                i5 = 2;
                break;
            case 3:
                i5 = 3;
                break;
            case 4:
                i5 = 4;
                break;
            case 5:
                i5 = 5;
                break;
            case 6:
            case 7:
                i5 = 6;
                break;
            default:
                i5 = 1;
                break;
        }
        this.f6856m = i5;
        List list = c0061j.f1691i;
        d3.i.d("classProto.typeParameterList", list);
        X x4 = c0061j.f1682G;
        d3.i.d("classProto.typeTable", x4);
        C0837c c0837c = new C0837c(x4);
        e0 e0Var = c0061j.f1684I;
        d3.i.d("classProto.versionRequirementTable", e0Var);
        if (e0Var.f1632d.size() == 0) {
            gVar = N3.g.f1909a;
        } else {
            d3.i.d("table.requirementList", e0Var.f1632d);
            gVar = new N3.g();
        }
        G4 g4B = g42.b(this, list, fVar, c0837c, gVar, aVar);
        this.n = g4B;
        d4.i iVar = (d4.i) g4B.f5377c;
        this.f6857o = i5 == 3 ? new a4.s(iVar.f6529a, this) : a4.n.f3128b;
        this.f6858p = new C0025h(this);
        C0787O c0787o = C0784L.f8785e;
        g4.o oVar = iVar.f6529a;
        ((i4.l) iVar.f6543q).getClass();
        E3.l lVar = new E3.l(i6, this, 2);
        c0787o.getClass();
        d3.i.e("storageManager", oVar);
        this.f6859q = new C0784L(this, oVar, lVar);
        this.f6860r = i5 == 3 ? new com.google.firebase.messaging.p(this) : null;
        InterfaceC0807j interfaceC0807j = (InterfaceC0807j) g42.f5379e;
        this.f6861s = interfaceC0807j;
        h hVar = new h(this, 4);
        g4.o oVar2 = iVar.f6529a;
        g4.l lVar2 = (g4.l) oVar2;
        lVar2.getClass();
        this.f6862t = new g4.h(lVar2, hVar);
        h hVar2 = new h(this, 3);
        g4.l lVar3 = (g4.l) oVar2;
        lVar3.getClass();
        this.f6863u = new g4.i(lVar3, hVar2);
        h hVar3 = new h(this, 2);
        g4.l lVar4 = (g4.l) oVar2;
        lVar4.getClass();
        new g4.h(lVar4, hVar3);
        h hVar4 = new h(this, 5);
        g4.l lVar5 = (g4.l) oVar2;
        lVar5.getClass();
        this.f6864v = new g4.i(lVar5, hVar4);
        h hVar5 = new h(this, 6);
        g4.l lVar6 = (g4.l) oVar2;
        lVar6.getClass();
        this.f6865w = new g4.h(lVar6, hVar5);
        i iVar2 = interfaceC0807j instanceof i ? (i) interfaceC0807j : null;
        this.f6866x = new d4.s(c0061j, (N3.f) g4B.f5378d, (C0837c) g4B.f, interfaceC0786N, iVar2 != null ? iVar2.f6866x : null);
        this.f6867y = !N3.e.f1887c.c(c0061j.f).booleanValue() ? C0844g.f9041a : new v(oVar2, new h(this, 1));
    }

    @Override // r3.InterfaceC0802e
    public final Collection A0() {
        return (Collection) this.f6864v.a();
    }

    @Override // r3.InterfaceC0820w
    public final boolean D() {
        return N3.e.f1892i.c(this.f6850g.f).booleanValue();
    }

    @Override // r3.InterfaceC0802e
    public final boolean D0() {
        return N3.e.f1891h.c(this.f6850g.f).booleanValue();
    }

    @Override // r3.InterfaceC0804g
    public final J H() {
        return this.f6858p;
    }

    public final AbstractC0472z I0(Q3.f fVar) {
        Iterator it = u0().g(fVar, z3.b.f9734i).iterator();
        boolean z4 = false;
        Object obj = null;
        while (true) {
            if (!it.hasNext()) {
                if (!z4) {
                    break;
                }
            } else {
                Object next = it.next();
                if (((InterfaceC0783K) next).d0() == null) {
                    if (z4) {
                        break;
                    }
                    z4 = true;
                    obj = next;
                }
            }
        }
        obj = null;
        InterfaceC0783K interfaceC0783K = (InterfaceC0783K) obj;
        return (AbstractC0472z) (interfaceC0783K != null ? interfaceC0783K.e() : null);
    }

    @Override // u3.AbstractC0865A
    public final a4.o J(i4.f fVar) {
        C0784L c0784l = this.f6859q;
        X3.f.j(c0784l.f8786a);
        return (a4.o) Z0.j.N(c0784l.f8789d, C0784L.f[0]);
    }

    @Override // r3.InterfaceC0802e
    public final int L() {
        return this.f6856m;
    }

    @Override // r3.InterfaceC0802e
    public final boolean N() {
        return N3.e.f.c(this.f6850g.f) == EnumC0060i.COMPANION_OBJECT;
    }

    @Override // r3.InterfaceC0802e
    public final AbstractC0790S S() {
        return (AbstractC0790S) this.f6865w.a();
    }

    @Override // r3.InterfaceC0802e
    public final C0879k W() {
        return (C0879k) this.f6862t.a();
    }

    @Override // r3.InterfaceC0802e
    public final a4.o X() {
        return this.f6857o;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0810m, r3.InterfaceC0820w
    public final A3.p c() {
        return this.f6855l;
    }

    @Override // r3.InterfaceC0802e
    public final boolean h0() {
        return N3.e.f1895l.c(this.f6850g.f).booleanValue();
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0820w
    public final int i() {
        return this.f6854k;
    }

    @Override // r3.InterfaceC0802e
    public final boolean j() {
        if (N3.e.f1894k.c(this.f6850g.f).booleanValue()) {
            N3.a aVar = this.f6851h;
            int i5 = aVar.f1866b;
            if (i5 < 1) {
                return true;
            }
            if (i5 <= 1) {
                int i6 = aVar.f1867c;
                if (i6 < 4) {
                    return true;
                }
                if (i6 <= 4 && aVar.f1868d <= 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // r3.InterfaceC0820w
    public final boolean j0() {
        return false;
    }

    @Override // r3.InterfaceC0802e
    public final Collection k() {
        return (Collection) this.f6863u.a();
    }

    @Override // r3.InterfaceC0807j
    public final InterfaceC0807j l() {
        return this.f6861s;
    }

    @Override // r3.InterfaceC0808k
    public final InterfaceC0786N m() {
        return this.f6852i;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0805h
    public final List s() {
        return R2.m.g1(((Map) ((J3.c) this.n.f5383j).f1143j).values());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v11, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Iterable] */
    @Override // u3.AbstractC0870b, r3.InterfaceC0802e
    public final List s0() {
        G4 g42 = this.n;
        C0837c c0837c = (C0837c) g42.f;
        C0061j c0061j = this.f6850g;
        d3.i.e("<this>", c0061j);
        d3.i.e("typeTable", c0837c);
        List list = c0061j.f1696o;
        boolean z4 = !list.isEmpty();
        ?? arrayList = list;
        if (!z4) {
            arrayList = 0;
        }
        if (arrayList == 0) {
            List<Integer> list2 = c0061j.f1697p;
            d3.i.d("contextReceiverTypeIdList", list2);
            arrayList = new ArrayList(R2.o.C0(list2));
            for (Integer num : list2) {
                d3.i.d("it", num);
                arrayList.add(c0837c.l(num.intValue()));
            }
        }
        ArrayList arrayList2 = new ArrayList(R2.o.C0(arrayList));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(new C0890w(H0(), new b4.a(this, ((J3.c) g42.f5383j).o((Q) it.next()), (Q3.f) null), C0844g.f9041a));
        }
        return arrayList2;
    }

    @Override // s3.InterfaceC0838a
    public final InterfaceC0845h t() {
        return this.f6867y;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("deserialized ");
        sb.append(y() ? "expect " : "");
        sb.append("class ");
        sb.append(getName());
        return sb.toString();
    }

    public final g u0() {
        ((i4.l) ((d4.i) this.n.f5377c).f6543q).getClass();
        C0784L c0784l = this.f6859q;
        X3.f.j(c0784l.f8786a);
        return (g) ((a4.o) Z0.j.N(c0784l.f8789d, C0784L.f[0]));
    }

    @Override // r3.InterfaceC0802e
    public final boolean v() {
        return N3.e.f1894k.c(this.f6850g.f).booleanValue() && this.f6851h.a(1, 4, 2);
    }

    @Override // r3.InterfaceC0820w
    public final boolean y() {
        return N3.e.f1893j.c(this.f6850g.f).booleanValue();
    }

    @Override // r3.InterfaceC0805h
    public final boolean z() {
        return N3.e.f1890g.c(this.f6850g.f).booleanValue();
    }
}
