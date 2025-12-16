package u3;

import f1.AbstractC0420a;
import h4.AbstractC0450c;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.C0455h;
import h4.C0457j;
import h4.X;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import r3.AbstractC0790S;
import r3.C0817t;
import r3.C0822y;
import r3.InterfaceC0786N;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0807j;
import r3.InterfaceC0808k;
import r3.InterfaceC0809l;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class z extends AbstractC0865A {

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0865A f9517c;

    /* renamed from: d, reason: collision with root package name */
    public final h4.V f9518d;

    /* renamed from: e, reason: collision with root package name */
    public h4.V f9519e;
    public ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public ArrayList f9520g;

    /* renamed from: h, reason: collision with root package name */
    public C0457j f9521h;

    public z(AbstractC0865A abstractC0865A, h4.V v4) {
        this.f9517c = abstractC0865A;
        this.f9518d = v4;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static /* synthetic */ void c0(int i5) {
        String str = (i5 == 2 || i5 == 3 || i5 == 5 || i5 == 6 || i5 == 8 || i5 == 10 || i5 == 13 || i5 == 23) ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[(i5 == 2 || i5 == 3 || i5 == 5 || i5 == 6 || i5 == 8 || i5 == 10 || i5 == 13 || i5 == 23) ? 3 : 2];
        if (i5 == 2) {
            objArr[0] = "typeArguments";
        } else if (i5 == 3) {
            objArr[0] = "kotlinTypeRefiner";
        } else if (i5 == 5) {
            objArr[0] = "typeSubstitution";
        } else if (i5 != 6) {
            if (i5 != 8) {
                if (i5 != 10) {
                    if (i5 != 13) {
                        if (i5 != 23) {
                            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor";
                        } else {
                            objArr[0] = "substitutor";
                        }
                    }
                }
            }
        }
        switch (i5) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 10:
            case 13:
            case 23:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor";
                break;
            case 4:
            case 7:
            case 9:
            case 11:
                objArr[1] = "getMemberScope";
                break;
            case 12:
            case 14:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 15:
                objArr[1] = "getStaticScope";
                break;
            case 16:
                objArr[1] = "getDefaultType";
                break;
            case 17:
                objArr[1] = "getContextReceivers";
                break;
            case 18:
                objArr[1] = "getConstructors";
                break;
            case 19:
                objArr[1] = "getAnnotations";
                break;
            case 20:
                objArr[1] = "getName";
                break;
            case 21:
                objArr[1] = "getOriginal";
                break;
            case 22:
                objArr[1] = "getContainingDeclaration";
                break;
            case 24:
                objArr[1] = "substitute";
                break;
            case 25:
                objArr[1] = "getKind";
                break;
            case 26:
                objArr[1] = "getModality";
                break;
            case 27:
                objArr[1] = "getVisibility";
                break;
            case 28:
                objArr[1] = "getUnsubstitutedInnerClassesScope";
                break;
            case 29:
                objArr[1] = "getSource";
                break;
            case 30:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 31:
                objArr[1] = "getSealedSubclasses";
                break;
            default:
                objArr[1] = "getTypeConstructor";
                break;
        }
        if (i5 == 2 || i5 == 3 || i5 == 5 || i5 == 6 || i5 == 8 || i5 == 10) {
            objArr[2] = "getMemberScope";
        } else if (i5 == 13) {
            objArr[2] = "getUnsubstitutedMemberScope";
        } else if (i5 == 23) {
            objArr[2] = "substitute";
        }
        String str2 = String.format(str, objArr);
        if (i5 != 2 && i5 != 3 && i5 != 5 && i5 != 6 && i5 != 8 && i5 != 10 && i5 != 13 && i5 != 23) {
            throw new IllegalStateException(str2);
        }
        throw new IllegalArgumentException(str2);
    }

    @Override // r3.InterfaceC0802e
    public final Collection A0() {
        Collection collectionA0 = this.f9517c.A0();
        if (collectionA0 != null) {
            return collectionA0;
        }
        c0(31);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final a4.o C(h4.S s5) {
        if (s5 != null) {
            X3.f.i(T3.e.d(this));
            return d(s5, i4.f.f7172a);
        }
        c0(10);
        throw null;
    }

    @Override // r3.InterfaceC0820w
    public final boolean D() {
        return this.f9517c.D();
    }

    @Override // r3.InterfaceC0802e
    public final boolean D0() {
        return this.f9517c.D0();
    }

    @Override // r3.InterfaceC0807j
    public final Object F0(InterfaceC0809l interfaceC0809l, Object obj) {
        return interfaceC0809l.b(this, obj);
    }

    @Override // r3.InterfaceC0804g
    public final h4.J H() {
        h4.J jH = this.f9517c.H();
        if (this.f9518d.f7042a.e()) {
            if (jH != null) {
                return jH;
            }
            c0(0);
            throw null;
        }
        if (this.f9521h == null) {
            h4.V vP0 = p0();
            Collection collectionJ = jH.j();
            ArrayList arrayList = new ArrayList(collectionJ.size());
            Iterator it = collectionJ.iterator();
            while (it.hasNext()) {
                arrayList.add(vP0.j(1, (AbstractC0468v) it.next()));
            }
            this.f9521h = new C0457j(this, this.f, arrayList, g4.l.f6948e);
        }
        C0457j c0457j = this.f9521h;
        if (c0457j != null) {
            return c0457j;
        }
        c0(1);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final C0890w H0() {
        throw new UnsupportedOperationException();
    }

    @Override // u3.AbstractC0865A
    public final a4.o J(i4.f fVar) {
        a4.o oVarJ = this.f9517c.J(fVar);
        if (!this.f9518d.f7042a.e()) {
            return new a4.t(oVarJ, p0());
        }
        if (oVarJ != null) {
            return oVarJ;
        }
        c0(14);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final int L() {
        int iL = this.f9517c.L();
        if (iL != 0) {
            return iL;
        }
        c0(25);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final boolean N() {
        return this.f9517c.N();
    }

    @Override // r3.InterfaceC0802e
    public final a4.o R() {
        a4.o oVarR = this.f9517c.R();
        if (oVarR != null) {
            return oVarR;
        }
        c0(28);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final AbstractC0790S S() {
        AbstractC0790S abstractC0790SS = this.f9517c.S();
        if (abstractC0790SS == null) {
            return null;
        }
        boolean z4 = abstractC0790SS instanceof C0817t;
        h4.V v4 = this.f9518d;
        if (z4) {
            C0817t c0817t = (C0817t) abstractC0790SS;
            AbstractC0472z abstractC0472z = (AbstractC0472z) c0817t.f8830b;
            if (abstractC0472z != null && !v4.f7042a.e()) {
                abstractC0472z = (AbstractC0472z) p0().j(1, abstractC0472z);
            }
            return new C0817t(c0817t.f8829a, abstractC0472z);
        }
        if (!(abstractC0790SS instanceof C0822y)) {
            throw new A0.c();
        }
        List<Q2.e> list = ((C0822y) abstractC0790SS).f8832a;
        ArrayList arrayList = new ArrayList(R2.o.C0(list));
        for (Q2.e eVar : list) {
            Q3.f fVar = (Q3.f) eVar.f2212c;
            AbstractC0472z abstractC0472z2 = (AbstractC0472z) ((k4.d) eVar.f2213d);
            if (abstractC0472z2 != null && !v4.f7042a.e()) {
                abstractC0472z2 = (AbstractC0472z) p0().j(1, abstractC0472z2);
            }
            arrayList.add(new Q2.e(fVar, abstractC0472z2));
        }
        return new C0822y(arrayList);
    }

    @Override // r3.InterfaceC0802e
    public final C0879k W() {
        return this.f9517c.W();
    }

    @Override // r3.InterfaceC0802e
    public final a4.o X() {
        a4.o oVarX = this.f9517c.X();
        if (oVarX != null) {
            return oVarX;
        }
        c0(15);
        throw null;
    }

    @Override // u3.AbstractC0865A, r3.InterfaceC0807j, r3.InterfaceC0804g
    public final InterfaceC0802e a() {
        InterfaceC0802e interfaceC0802eA = this.f9517c.a();
        if (interfaceC0802eA != null) {
            return interfaceC0802eA;
        }
        c0(21);
        throw null;
    }

    @Override // r3.InterfaceC0788P
    public final InterfaceC0808k b(h4.V v4) {
        if (v4 != null) {
            return v4.f7042a.e() ? this : new z(this, h4.V.f(v4.g(), p0().g()));
        }
        c0(23);
        throw null;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0810m, r3.InterfaceC0820w
    public final A3.p c() {
        A3.p pVarC = this.f9517c.c();
        if (pVarC != null) {
            return pVarC;
        }
        c0(27);
        throw null;
    }

    @Override // u3.AbstractC0865A
    public final a4.o d(h4.S s5, i4.f fVar) {
        if (s5 == null) {
            c0(5);
            throw null;
        }
        a4.o oVarD = this.f9517c.d(s5, fVar);
        if (!this.f9518d.f7042a.e()) {
            return new a4.t(oVarD, p0());
        }
        if (oVarD != null) {
            return oVarD;
        }
        c0(7);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final a4.o f0() {
        X3.f.i(T3.e.d(this.f9517c));
        return J(i4.f.f7172a);
    }

    @Override // r3.InterfaceC0807j
    public final Q3.f getName() {
        Q3.f name = this.f9517c.getName();
        if (name != null) {
            return name;
        }
        c0(20);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final boolean h0() {
        return this.f9517c.h0();
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0820w
    public final int i() {
        int i5 = this.f9517c.i();
        if (i5 != 0) {
            return i5;
        }
        c0(26);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final boolean j() {
        return this.f9517c.j();
    }

    @Override // r3.InterfaceC0820w
    public final boolean j0() {
        return this.f9517c.j0();
    }

    @Override // r3.InterfaceC0802e
    public final Collection k() {
        Collection<C0879k> collectionK = this.f9517c.k();
        ArrayList arrayList = new ArrayList(collectionK.size());
        for (C0879k c0879k : collectionK) {
            C0879k c0879k2 = c0879k;
            c0879k2.getClass();
            C0888u c0888uW0 = c0879k2.W0(h4.V.f7041b);
            c0888uW0.f9465g = c0879k.P0();
            c0888uW0.z(c0879k2.i());
            c0888uW0.B(c0879k2.c());
            c0888uW0.a(c0879k2.k0());
            c0888uW0.f9472o = false;
            arrayList.add(((C0879k) c0888uW0.f9483z.T0(c0888uW0)).b(p0()));
        }
        return arrayList;
    }

    @Override // r3.InterfaceC0807j
    public final InterfaceC0807j l() {
        InterfaceC0807j interfaceC0807jL = this.f9517c.l();
        if (interfaceC0807jL != null) {
            return interfaceC0807jL;
        }
        c0(22);
        throw null;
    }

    @Override // r3.InterfaceC0808k
    public final InterfaceC0786N m() {
        return InterfaceC0786N.f8790a;
    }

    public final h4.V p0() {
        if (this.f9519e == null) {
            h4.V v4 = this.f9518d;
            if (v4.f7042a.e()) {
                this.f9519e = v4;
            } else {
                List listK = this.f9517c.H().k();
                this.f = new ArrayList(listK.size());
                this.f9519e = AbstractC0450c.u(listK, v4.g(), this, this.f);
                ArrayList arrayList = this.f;
                d3.i.e("<this>", arrayList);
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (Boolean.valueOf(!((InterfaceC0789Q) obj).m0()).booleanValue()) {
                        arrayList2.add(obj);
                    }
                }
                this.f9520g = arrayList2;
            }
        }
        return this.f9519e;
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0804g
    public final AbstractC0472z q() {
        h4.G gJ;
        List listE = X.e(H().k());
        InterfaceC0845h interfaceC0845hT = t();
        d3.i.e("annotations", interfaceC0845hT);
        if (interfaceC0845hT.isEmpty()) {
            h4.G.f7019d.getClass();
            gJ = h4.G.f7020e;
        } else {
            e.v vVar = h4.G.f7019d;
            List listV = AbstractC0420a.V(new C0455h(interfaceC0845hT));
            vVar.getClass();
            gJ = e.v.j(listV);
        }
        return C0451d.s(f0(), gJ, H(), listE, false);
    }

    @Override // r3.InterfaceC0802e, r3.InterfaceC0805h
    public final List s() {
        p0();
        ArrayList arrayList = this.f9520g;
        if (arrayList != null) {
            return arrayList;
        }
        c0(30);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final List s0() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        c0(17);
        throw null;
    }

    @Override // s3.InterfaceC0838a
    public final InterfaceC0845h t() {
        InterfaceC0845h interfaceC0845hT = this.f9517c.t();
        if (interfaceC0845hT != null) {
            return interfaceC0845hT;
        }
        c0(19);
        throw null;
    }

    @Override // r3.InterfaceC0802e
    public final boolean v() {
        return this.f9517c.v();
    }

    @Override // r3.InterfaceC0820w
    public final boolean y() {
        return this.f9517c.y();
    }

    @Override // r3.InterfaceC0805h
    public final boolean z() {
        return this.f9517c.z();
    }
}
