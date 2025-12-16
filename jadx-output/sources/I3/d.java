package I3;

import f1.AbstractC0420a;
import h4.AbstractC0450c;
import h4.AbstractC0464q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.G;
import h4.J;
import h4.N;
import h4.X;
import h4.Z;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import q3.C0757d;
import q3.C0758e;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import s3.C0846i;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class d {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d7  */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static c a(AbstractC0472z abstractC0472z, E3.p pVar, int i5, int i6, boolean z4, boolean z5) {
        InterfaceC0804g interfaceC0804gI;
        InterfaceC0802e interfaceC0802eA;
        Boolean bool;
        J jJ0;
        B1.e eVar;
        Object objK;
        ?? r5 = 0;
        int i7 = 1;
        B.f.x(i6, "<this>");
        boolean z6 = i6 != 3;
        boolean z7 = (z5 && z4) ? false : true;
        Object obj = null;
        if ((z6 || !abstractC0472z.u0().isEmpty()) && (interfaceC0804gI = abstractC0472z.J0().i()) != null) {
            e eVar2 = (e) pVar.e(Integer.valueOf(i5));
            C0846i c0846i = s.f925a;
            B.f.x(i6, "<this>");
            if (i6 == 3 || !(interfaceC0804gI instanceof InterfaceC0802e)) {
                interfaceC0802eA = null;
            } else if (eVar2.f889b == f.f892c && i6 == 1) {
                InterfaceC0802e interfaceC0802e = (InterfaceC0802e) interfaceC0804gI;
                String str = C0757d.f8645a;
                Q3.e eVarG = T3.e.g(interfaceC0802e);
                HashMap map = C0757d.f8653j;
                if (map.containsKey(eVarG)) {
                    Q3.c cVar = (Q3.c) map.get(T3.e.g(interfaceC0802e));
                    if (cVar == null) {
                        throw new IllegalArgumentException("Given class " + interfaceC0802e + " is not a mutable collection");
                    }
                    interfaceC0802eA = X3.f.e(interfaceC0802e).i(cVar);
                }
            } else if (eVar2.f889b == f.f893d && i6 == 2) {
                InterfaceC0802e interfaceC0802e2 = (InterfaceC0802e) interfaceC0804gI;
                String str2 = C0757d.f8645a;
                if (C0757d.f8654k.containsKey(T3.e.g(interfaceC0802e2))) {
                    interfaceC0802eA = C0758e.a(interfaceC0802e2);
                }
            }
            B.f.x(i6, "<this>");
            if (i6 == 3) {
                bool = null;
            } else {
                h hVar = eVar2.f888a;
                int i8 = hVar == null ? -1 : r.f924a[hVar.ordinal()];
                if (i8 == 1) {
                    bool = Boolean.TRUE;
                } else if (i8 == 2) {
                    bool = Boolean.FALSE;
                }
            }
            if (interfaceC0802eA == null || (jJ0 = interfaceC0802eA.H()) == null) {
                jJ0 = abstractC0472z.J0();
            }
            d3.i.d("enhancedClassifier?.typeConstructor ?: constructor", jJ0);
            int i9 = i5 + 1;
            List listU0 = abstractC0472z.u0();
            List listK = jJ0.k();
            d3.i.d("typeConstructor.parameters", listK);
            Iterator it = listU0.iterator();
            Iterator it2 = listK.iterator();
            ArrayList arrayList = new ArrayList(Math.min(R2.o.C0(listU0), R2.o.C0(listK)));
            while (it.hasNext() && it2.hasNext()) {
                Object next = it.next();
                InterfaceC0789Q interfaceC0789Q = (InterfaceC0789Q) it2.next();
                N n = (N) next;
                if (!z7) {
                    eVar = new B1.e((int) r5, obj);
                } else if (!n.c()) {
                    eVar = b(n.b().M0(), pVar, i9, z5);
                } else if (((e) pVar.e(Integer.valueOf(i9))).f888a == h.f896c) {
                    Z zM0 = n.b().M0();
                    eVar = new B1.e(1, C0451d.j(AbstractC0450c.k(zM0).N0(r5), AbstractC0450c.y(zM0).N0(true)));
                } else {
                    eVar = new B1.e(i7, (Object) null);
                }
                i9 += eVar.f201c;
                AbstractC0468v abstractC0468v = (AbstractC0468v) eVar.f202d;
                if (abstractC0468v != null) {
                    int iA = n.a();
                    B.f.E(iA, "arg.projectionKind");
                    objK = AbstractC0420a.m(abstractC0468v, iA, interfaceC0789Q);
                } else if (interfaceC0802eA == null || n.c()) {
                    objK = interfaceC0802eA != null ? X.k(interfaceC0789Q) : null;
                } else {
                    AbstractC0468v abstractC0468vB = n.b();
                    d3.i.d("arg.type", abstractC0468vB);
                    int iA2 = n.a();
                    B.f.E(iA2, "arg.projectionKind");
                    objK = AbstractC0420a.m(abstractC0468vB, iA2, interfaceC0789Q);
                }
                arrayList.add(objK);
                r5 = 0;
                i7 = 1;
                obj = null;
            }
            int i10 = i9 - i5;
            if (interfaceC0802eA == null && bool == null) {
                if (!arrayList.isEmpty()) {
                    Iterator it3 = arrayList.iterator();
                    while (it3.hasNext()) {
                        if (((N) it3.next()) == null) {
                        }
                    }
                }
                return new c(null, i10, false);
            }
            InterfaceC0845h interfaceC0845hT = abstractC0472z.t();
            C0846i c0846i2 = s.f926b;
            if (interfaceC0802eA == null) {
                c0846i2 = null;
            }
            boolean z8 = false;
            ArrayList arrayListM0 = R2.i.m0(new InterfaceC0845h[]{interfaceC0845hT, c0846i2, bool != null ? s.f925a : null});
            int size = arrayListM0.size();
            if (size == 0) {
                throw new IllegalStateException("At least one Annotations object expected".toString());
            }
            G gW = AbstractC0450c.w(size != 1 ? new C0846i(1, R2.m.g1(arrayListM0)) : (InterfaceC0845h) R2.m.b1(arrayListM0));
            List listU02 = abstractC0472z.u0();
            Iterator it4 = arrayList.iterator();
            Iterator it5 = listU02.iterator();
            ArrayList arrayList2 = new ArrayList(Math.min(R2.o.C0(arrayList), R2.o.C0(listU02)));
            while (it4.hasNext() && it5.hasNext()) {
                Object next2 = it4.next();
                N n5 = (N) it5.next();
                N n6 = (N) next2;
                if (n6 != null) {
                    n5 = n6;
                }
                arrayList2.add(n5);
            }
            AbstractC0472z abstractC0472zR = C0451d.r(gW, jJ0, arrayList2, bool != null ? bool.booleanValue() : abstractC0472z.K0());
            if (eVar2.f890c) {
                abstractC0472zR = new g(abstractC0472zR);
            }
            if (bool != null && eVar2.f891d) {
                z8 = true;
            }
            return new c(abstractC0472zR, i10, z8);
        }
        return new c(null, 1, false);
    }

    public static B1.e b(Z z4, E3.p pVar, int i5, boolean z5) {
        AbstractC0468v abstractC0468vJ;
        Object objA = null;
        if (AbstractC0450c.i(z4)) {
            return new B1.e(1, (Object) null);
        }
        if (!(z4 instanceof AbstractC0464q)) {
            if (!(z4 instanceof AbstractC0472z)) {
                throw new A0.c();
            }
            c cVarA = a((AbstractC0472z) z4, pVar, i5, 3, false, z5);
            boolean z6 = cVarA.f884a;
            AbstractC0468v abstractC0468vA = (AbstractC0472z) cVarA.f886c;
            if (z6) {
                abstractC0468vA = AbstractC0450c.A(z4, abstractC0468vA);
            }
            return new B1.e(cVarA.f885b, abstractC0468vA);
        }
        boolean z7 = z4 instanceof F3.f;
        AbstractC0464q abstractC0464q = (AbstractC0464q) z4;
        c cVarA2 = a(abstractC0464q.f7069d, pVar, i5, 1, z7, z5);
        c cVarA3 = a(abstractC0464q.f7070e, pVar, i5, 2, z7, z5);
        AbstractC0472z abstractC0472z = (AbstractC0472z) cVarA3.f886c;
        AbstractC0472z abstractC0472z2 = (AbstractC0472z) cVarA2.f886c;
        if (abstractC0472z2 != null || abstractC0472z != null) {
            if (cVarA2.f884a || cVarA3.f884a) {
                if (abstractC0472z != null) {
                    if (abstractC0472z2 == null) {
                        abstractC0472z2 = abstractC0472z;
                    }
                    abstractC0468vJ = C0451d.j(abstractC0472z2, abstractC0472z);
                } else {
                    d3.i.b(abstractC0472z2);
                    abstractC0468vJ = abstractC0472z2;
                }
                objA = AbstractC0450c.A(z4, abstractC0468vJ);
            } else {
                AbstractC0472z abstractC0472z3 = abstractC0464q.f7070e;
                AbstractC0472z abstractC0472z4 = abstractC0464q.f7069d;
                AbstractC0472z abstractC0472z5 = abstractC0472z2;
                if (z7) {
                    AbstractC0472z abstractC0472z6 = abstractC0472z2;
                    if (abstractC0472z2 == null) {
                        abstractC0472z6 = abstractC0472z4;
                    }
                    if (abstractC0472z == null) {
                        abstractC0472z = abstractC0472z3;
                    }
                    objA = new F3.f(abstractC0472z6, abstractC0472z);
                } else {
                    if (abstractC0472z2 == null) {
                        abstractC0472z5 = abstractC0472z4;
                    }
                    if (abstractC0472z == null) {
                        abstractC0472z = abstractC0472z3;
                    }
                    objA = C0451d.j(abstractC0472z5, abstractC0472z);
                }
            }
        }
        return new B1.e(cVarA2.f885b, objA);
    }
}
