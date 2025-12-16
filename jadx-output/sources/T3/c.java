package T3;

import R3.C0091m;
import c3.InterfaceC0223c;
import h4.J;
import java.util.Collection;
import r3.InterfaceC0775C;
import r3.InterfaceC0786N;
import r3.InterfaceC0789Q;
import r3.InterfaceC0799b;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0807j;
import r3.InterfaceC0820w;
import u3.E;

/* loaded from: classes.dex */
public final class c implements i4.c {

    /* renamed from: a, reason: collision with root package name */
    public static final c f2719a = new c();

    public static /* synthetic */ void b(int i5) {
        Object[] objArr = new Object[3];
        if (i5 != 1) {
            objArr[0] = "a";
        } else {
            objArr[0] = "b";
        }
        objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/OverridingUtil$1";
        objArr[2] = "equals";
        throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
    }

    public static InterfaceC0786N f(InterfaceC0799b interfaceC0799b) {
        while (interfaceC0799b instanceof InterfaceC0800c) {
            InterfaceC0800c interfaceC0800c = (InterfaceC0800c) interfaceC0799b;
            if (interfaceC0800c.k0() != 2) {
                break;
            }
            Collection collectionP = interfaceC0800c.p();
            d3.i.d("overriddenDescriptors", collectionP);
            interfaceC0799b = (InterfaceC0800c) R2.m.c1(collectionP);
            if (interfaceC0799b == null) {
                return null;
            }
        }
        return interfaceC0799b.m();
    }

    @Override // i4.c
    public boolean a(J j3, J j5) {
        if (j3 == null) {
            b(0);
            throw null;
        }
        if (j5 != null) {
            return j3.equals(j5);
        }
        b(1);
        throw null;
    }

    public boolean c(InterfaceC0807j interfaceC0807j, InterfaceC0807j interfaceC0807j2, boolean z4, boolean z5) {
        if ((interfaceC0807j instanceof InterfaceC0802e) && (interfaceC0807j2 instanceof InterfaceC0802e)) {
            return d3.i.a(((InterfaceC0802e) interfaceC0807j).H(), ((InterfaceC0802e) interfaceC0807j2).H());
        }
        if ((interfaceC0807j instanceof InterfaceC0789Q) && (interfaceC0807j2 instanceof InterfaceC0789Q)) {
            return d((InterfaceC0789Q) interfaceC0807j, (InterfaceC0789Q) interfaceC0807j2, z4, b.f2718d);
        }
        if (!(interfaceC0807j instanceof InterfaceC0799b) || !(interfaceC0807j2 instanceof InterfaceC0799b)) {
            return ((interfaceC0807j instanceof InterfaceC0775C) && (interfaceC0807j2 instanceof InterfaceC0775C)) ? d3.i.a(((E) ((InterfaceC0775C) interfaceC0807j)).f9353g, ((E) ((InterfaceC0775C) interfaceC0807j2)).f9353g) : d3.i.a(interfaceC0807j, interfaceC0807j2);
        }
        InterfaceC0799b interfaceC0799b = (InterfaceC0799b) interfaceC0807j;
        InterfaceC0799b interfaceC0799b2 = (InterfaceC0799b) interfaceC0807j2;
        d3.i.e("a", interfaceC0799b);
        d3.i.e("b", interfaceC0799b2);
        boolean z6 = true;
        if (!d3.i.a(interfaceC0799b, interfaceC0799b2)) {
            if (d3.i.a(interfaceC0799b.getName(), interfaceC0799b2.getName()) && ((!z5 || !(interfaceC0799b instanceof InterfaceC0820w) || !(interfaceC0799b2 instanceof InterfaceC0820w) || ((InterfaceC0820w) interfaceC0799b).y() == ((InterfaceC0820w) interfaceC0799b2).y()) && ((!d3.i.a(interfaceC0799b.l(), interfaceC0799b2.l()) || (z4 && d3.i.a(f(interfaceC0799b), f(interfaceC0799b2)))) && !e.p(interfaceC0799b) && !e.p(interfaceC0799b2)))) {
                InterfaceC0807j interfaceC0807jL = interfaceC0799b.l();
                InterfaceC0807j interfaceC0807jL2 = interfaceC0799b2.l();
                if (((interfaceC0807jL instanceof InterfaceC0800c) || (interfaceC0807jL2 instanceof InterfaceC0800c)) ? Boolean.FALSE.booleanValue() : c(interfaceC0807jL, interfaceC0807jL2, z4, true)) {
                    C0091m c0091m = new C0091m();
                    c0091m.f2403a = z4;
                    c0091m.f2404b = interfaceC0799b;
                    c0091m.f2405c = interfaceC0799b2;
                    n nVar = new n(c0091m);
                    if (nVar.m(interfaceC0799b, interfaceC0799b2, null, true).c() != 1 || nVar.m(interfaceC0799b2, interfaceC0799b, null, true).c() != 1) {
                        z6 = false;
                    }
                }
            }
            return false;
        }
        return z6;
    }

    public boolean d(InterfaceC0789Q interfaceC0789Q, InterfaceC0789Q interfaceC0789Q2, boolean z4, InterfaceC0223c interfaceC0223c) {
        d3.i.e("a", interfaceC0789Q);
        d3.i.e("b", interfaceC0789Q2);
        d3.i.e("equivalentCallables", interfaceC0223c);
        if (d3.i.a(interfaceC0789Q, interfaceC0789Q2)) {
            return true;
        }
        return !d3.i.a(interfaceC0789Q.l(), interfaceC0789Q2.l()) && e(interfaceC0789Q, interfaceC0789Q2, interfaceC0223c, z4) && interfaceC0789Q.z0() == interfaceC0789Q2.z0();
    }

    public boolean e(InterfaceC0807j interfaceC0807j, InterfaceC0807j interfaceC0807j2, InterfaceC0223c interfaceC0223c, boolean z4) {
        InterfaceC0807j interfaceC0807jL = interfaceC0807j.l();
        InterfaceC0807j interfaceC0807jL2 = interfaceC0807j2.l();
        return ((interfaceC0807jL instanceof InterfaceC0800c) || (interfaceC0807jL2 instanceof InterfaceC0800c)) ? ((Boolean) interfaceC0223c.d(interfaceC0807jL, interfaceC0807jL2)).booleanValue() : c(interfaceC0807jL, interfaceC0807jL2, z4, true);
    }
}
