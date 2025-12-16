package l3;

import R3.C0094p;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import com.idm.providers.mo.IDMMoInterface;
import f1.AbstractC0420a;
import i3.InterfaceC0482c;
import i3.InterfaceC0494o;
import java.util.Collection;
import o3.EnumC0734k;
import q3.C0757d;
import r3.InterfaceC0783K;
import r3.InterfaceC0802e;
import s2.C0837c;
import x3.AbstractC0917d;

/* renamed from: l3.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0701z extends AbstractC0647C implements InterfaceC0482c, n0 {
    public static final /* synthetic */ int f = 0;

    /* renamed from: d, reason: collision with root package name */
    public final Class f8243d;

    /* renamed from: e, reason: collision with root package name */
    public final q0 f8244e;

    public C0701z(Class cls) {
        d3.i.e("jClass", cls);
        this.f8243d = cls;
        this.f8244e = r0.i(new C0695t(this, 7));
    }

    @Override // d3.InterfaceC0391c
    public final Class a() {
        return this.f8243d;
    }

    @Override // l3.AbstractC0647C
    public final Collection d() {
        InterfaceC0802e interfaceC0802eR = r();
        if (interfaceC0802eR.L() == 2 || interfaceC0802eR.L() == 6) {
            return R2.u.f2325c;
        }
        Collection collectionK = interfaceC0802eR.k();
        d3.i.d("descriptor.constructors", collectionK);
        return collectionK;
    }

    @Override // l3.AbstractC0647C
    public final Collection e(Q3.f fVar) {
        a4.o oVarQ0 = r().q().q0();
        z3.b bVar = z3.b.f9730d;
        Collection collectionD = oVarQ0.d(fVar, bVar);
        a4.o oVarX = r().X();
        d3.i.d("descriptor.staticScope", oVarX);
        return R2.m.Y0(collectionD, oVarX.d(fVar, bVar));
    }

    public final boolean equals(Object obj) {
        return (obj instanceof C0701z) && d3.i.a(L2.b.r(this), L2.b.r((InterfaceC0482c) obj));
    }

    @Override // l3.AbstractC0647C
    public final InterfaceC0783K f(int i5) {
        Class<?> declaringClass;
        Class cls = this.f8243d;
        if (d3.i.a(cls.getSimpleName(), "DefaultImpls") && (declaringClass = cls.getDeclaringClass()) != null && declaringClass.isInterface()) {
            return ((C0701z) L2.b.t(declaringClass)).f(i5);
        }
        InterfaceC0802e interfaceC0802eR = r();
        f4.i iVar = interfaceC0802eR instanceof f4.i ? (f4.i) interfaceC0802eR : null;
        if (iVar == null) {
            return null;
        }
        C0094p c0094p = O3.k.f2024j;
        d3.i.d("classLocalVariable", c0094p);
        L3.G g5 = (L3.G) AbstractC0420a.D(iVar.f6850g, c0094p, i5);
        if (g5 == null) {
            return null;
        }
        G4 g42 = iVar.n;
        return (InterfaceC0783K) w0.f(this.f8243d, g5, (N3.f) g42.f5378d, (C0837c) g42.f, iVar.f6851h, C0700y.f8242l);
    }

    public final int hashCode() {
        return L2.b.r(this).hashCode();
    }

    @Override // l3.AbstractC0647C
    public final Collection i(Q3.f fVar) {
        a4.o oVarQ0 = r().q().q0();
        z3.b bVar = z3.b.f9730d;
        Collection collectionG = oVarQ0.g(fVar, bVar);
        a4.o oVarX = r().X();
        d3.i.d("descriptor.staticScope", oVarX);
        return R2.m.Y0(collectionG, oVarX.g(fVar, bVar));
    }

    @Override // i3.InterfaceC0482c
    public final Collection k() {
        C0698w c0698w = (C0698w) this.f8244e.a();
        c0698w.getClass();
        InterfaceC0494o interfaceC0494o = C0698w.f8229l[4];
        Object objA = c0698w.f8232e.a();
        d3.i.d("<get-constructors>(...)", objA);
        return (Collection) objA;
    }

    @Override // i3.InterfaceC0482c
    public final String l() {
        C0698w c0698w = (C0698w) this.f8244e.a();
        c0698w.getClass();
        InterfaceC0494o interfaceC0494o = C0698w.f8229l[3];
        return (String) c0698w.f8231d.a();
    }

    public final Q3.b q() {
        EnumC0734k enumC0734kD;
        Q3.b bVar = u0.f8226a;
        Class cls = this.f8243d;
        d3.i.e("klass", cls);
        if (cls.isArray()) {
            Class<?> componentType = cls.getComponentType();
            d3.i.d("klass.componentType", componentType);
            enumC0734kD = componentType.isPrimitive() ? Y3.c.b(componentType.getSimpleName()).d() : null;
            return enumC0734kD != null ? new Q3.b(o3.n.f8538j, enumC0734kD.f8471d) : Q3.b.k(o3.m.f8511g.g());
        }
        if (d3.i.a(cls, Void.TYPE)) {
            return u0.f8226a;
        }
        enumC0734kD = cls.isPrimitive() ? Y3.c.b(cls.getSimpleName()).d() : null;
        if (enumC0734kD != null) {
            return new Q3.b(o3.n.f8538j, enumC0734kD.f8470c);
        }
        Q3.b bVarA = AbstractC0917d.a(cls);
        if (bVarA.f2232c) {
            return bVarA;
        }
        String str = C0757d.f8645a;
        Q3.c cVarB = bVarA.b();
        d3.i.d("classId.asSingleFqName()", cVarB);
        Q3.b bVar2 = (Q3.b) C0757d.f8651h.get(cVarB.i());
        return bVar2 != null ? bVar2 : bVarA;
    }

    public final InterfaceC0802e r() {
        return ((C0698w) this.f8244e.a()).a();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("class ");
        Q3.b bVarQ = q();
        Q3.c cVarH = bVarQ.h();
        d3.i.d("classId.packageFqName", cVarH);
        String strConcat = cVarH.d() ? "" : cVarH.b().concat(IDMMoInterface.IDM_MO_ROOT_PATH);
        sb.append(strConcat + s4.h.q(bVarQ.i().b(), '.', '$'));
        return sb.toString();
    }
}
