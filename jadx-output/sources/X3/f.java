package X3;

import c3.InterfaceC0222b;
import d3.i;
import f1.AbstractC0420a;
import i4.g;
import o3.AbstractC0732i;
import q4.k;
import r3.InterfaceC0775C;
import r3.InterfaceC0782J;
import r3.InterfaceC0783K;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0805h;
import r3.InterfaceC0807j;
import r3.InterfaceC0821x;
import s3.InterfaceC0839b;
import u3.E;
import u3.I;
import u3.V;

/* loaded from: classes.dex */
public abstract class f {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f2874a = 0;

    static {
        Q3.f.e("value");
    }

    public static final boolean a(V v4) {
        i.e("<this>", v4);
        Boolean boolH = k.h(AbstractC0420a.V(v4), a.f2867c, c.f2869l);
        i.d("ifAny(\n        listOf(th…eclaresDefaultValue\n    )", boolH);
        return boolH.booleanValue();
    }

    public static InterfaceC0800c b(InterfaceC0800c interfaceC0800c, InterfaceC0222b interfaceC0222b) {
        i.e("<this>", interfaceC0800c);
        return (InterfaceC0800c) k.f(AbstractC0420a.V(interfaceC0800c), new b(false), new d(new Q2.a(1), interfaceC0222b));
    }

    public static final Q3.c c(InterfaceC0807j interfaceC0807j) {
        i.e("<this>", interfaceC0807j);
        Q3.e eVarH = h(interfaceC0807j);
        if (!eVarH.d()) {
            eVarH = null;
        }
        if (eVarH != null) {
            return eVarH.g();
        }
        return null;
    }

    public static final InterfaceC0802e d(InterfaceC0839b interfaceC0839b) {
        i.e("<this>", interfaceC0839b);
        InterfaceC0804g interfaceC0804gI = interfaceC0839b.e().J0().i();
        if (interfaceC0804gI instanceof InterfaceC0802e) {
            return (InterfaceC0802e) interfaceC0804gI;
        }
        return null;
    }

    public static final AbstractC0732i e(InterfaceC0807j interfaceC0807j) {
        i.e("<this>", interfaceC0807j);
        return j(interfaceC0807j).g();
    }

    public static final Q3.b f(InterfaceC0804g interfaceC0804g) {
        InterfaceC0807j interfaceC0807jL;
        Q3.b bVarF;
        if (interfaceC0804g == null || (interfaceC0807jL = interfaceC0804g.l()) == null) {
            return null;
        }
        if (interfaceC0807jL instanceof InterfaceC0775C) {
            return new Q3.b(((E) ((InterfaceC0775C) interfaceC0807jL)).f9353g, interfaceC0804g.getName());
        }
        if (!(interfaceC0807jL instanceof InterfaceC0805h) || (bVarF = f((InterfaceC0804g) interfaceC0807jL)) == null) {
            return null;
        }
        return bVarF.d(interfaceC0804g.getName());
    }

    public static final Q3.c g(InterfaceC0807j interfaceC0807j) {
        i.e("<this>", interfaceC0807j);
        Q3.c cVarH = T3.e.h(interfaceC0807j);
        if (cVarH == null) {
            cVarH = T3.e.i(interfaceC0807j).g();
        }
        if (cVarH != null) {
            return cVarH;
        }
        T3.e.a(4);
        throw null;
    }

    public static final Q3.e h(InterfaceC0807j interfaceC0807j) {
        i.e("<this>", interfaceC0807j);
        Q3.e eVarG = T3.e.g(interfaceC0807j);
        i.d("getFqName(this)", eVarG);
        return eVarG;
    }

    public static final void i(InterfaceC0821x interfaceC0821x) {
        i.e("<this>", interfaceC0821x);
        B.f.F(interfaceC0821x.U(g.f7173a));
    }

    public static final InterfaceC0821x j(InterfaceC0807j interfaceC0807j) {
        i.e("<this>", interfaceC0807j);
        InterfaceC0821x interfaceC0821xD = T3.e.d(interfaceC0807j);
        i.d("getContainingModule(this)", interfaceC0821xD);
        return interfaceC0821xD;
    }

    public static final InterfaceC0800c k(InterfaceC0800c interfaceC0800c) {
        i.e("<this>", interfaceC0800c);
        if (!(interfaceC0800c instanceof InterfaceC0782J)) {
            return interfaceC0800c;
        }
        InterfaceC0783K interfaceC0783KQ0 = ((I) ((InterfaceC0782J) interfaceC0800c)).Q0();
        i.d("correspondingProperty", interfaceC0783KQ0);
        return interfaceC0783KQ0;
    }
}
