package T3;

import h4.AbstractC0468v;
import h4.AbstractC0472z;
import r3.AbstractC0790S;
import r3.C0817t;
import r3.C0822y;
import r3.InterfaceC0783K;
import r3.InterfaceC0792U;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import r3.InterfaceC0816s;
import u3.L;

/* loaded from: classes.dex */
public abstract class i {
    static {
        Q3.b.k(new Q3.c("kotlin.jvm.JvmInline"));
    }

    public static final boolean a(InterfaceC0816s interfaceC0816s) {
        d3.i.e("<this>", interfaceC0816s);
        if (interfaceC0816s instanceof L) {
            InterfaceC0783K interfaceC0783KQ0 = ((L) interfaceC0816s).Q0();
            d3.i.d("correspondingProperty", interfaceC0783KQ0);
            if (d(interfaceC0783KQ0)) {
                return true;
            }
        }
        return false;
    }

    public static final boolean b(InterfaceC0807j interfaceC0807j) {
        d3.i.e("<this>", interfaceC0807j);
        return (interfaceC0807j instanceof InterfaceC0802e) && (((InterfaceC0802e) interfaceC0807j).S() instanceof C0817t);
    }

    public static final boolean c(AbstractC0468v abstractC0468v) {
        InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
        if (interfaceC0804gI != null) {
            return b(interfaceC0804gI);
        }
        return false;
    }

    public static final boolean d(InterfaceC0792U interfaceC0792U) {
        if (interfaceC0792U.d0() == null) {
            InterfaceC0807j interfaceC0807jL = interfaceC0792U.l();
            Q3.f fVar = null;
            InterfaceC0802e interfaceC0802e = interfaceC0807jL instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0807jL : null;
            if (interfaceC0802e != null) {
                int i5 = X3.f.f2874a;
                AbstractC0790S abstractC0790SS = interfaceC0802e.S();
                C0817t c0817t = abstractC0790SS instanceof C0817t ? (C0817t) abstractC0790SS : null;
                if (c0817t != null) {
                    fVar = c0817t.f8829a;
                }
            }
            if (d3.i.a(fVar, interfaceC0792U.getName())) {
                return true;
            }
        }
        return false;
    }

    public static final boolean e(InterfaceC0807j interfaceC0807j) {
        return b(interfaceC0807j) || ((interfaceC0807j instanceof InterfaceC0802e) && (((InterfaceC0802e) interfaceC0807j).S() instanceof C0822y));
    }

    public static final AbstractC0472z f(AbstractC0468v abstractC0468v) {
        d3.i.e("<this>", abstractC0468v);
        InterfaceC0804g interfaceC0804gI = abstractC0468v.J0().i();
        InterfaceC0802e interfaceC0802e = interfaceC0804gI instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gI : null;
        if (interfaceC0802e == null) {
            return null;
        }
        int i5 = X3.f.f2874a;
        AbstractC0790S abstractC0790SS = interfaceC0802e.S();
        C0817t c0817t = abstractC0790SS instanceof C0817t ? (C0817t) abstractC0790SS : null;
        if (c0817t != null) {
            return (AbstractC0472z) c0817t.f8830b;
        }
        return null;
    }
}
