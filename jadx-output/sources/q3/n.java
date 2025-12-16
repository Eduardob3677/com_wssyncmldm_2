package q3;

import A3.C0005d;
import E3.E;
import L3.C0075y;
import R2.u;
import R2.w;
import com.samsung.android.knox.ex.KnoxContract;
import d3.q;
import d3.r;
import f1.AbstractC0420a;
import f4.s;
import h4.AbstractC0472z;
import h4.C0470x;
import h4.S;
import h4.V;
import i3.InterfaceC0494o;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import o3.AbstractC0729f;
import o3.AbstractC0732i;
import p0.AbstractC0739a;
import r3.AbstractC0811n;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import r3.InterfaceC0815r;
import r3.InterfaceC0816s;
import r3.InterfaceC0821x;
import s3.InterfaceC0845h;
import t3.AbstractC0861e;
import t3.InterfaceC0858b;
import t3.InterfaceC0860d;
import u3.AbstractC0889v;
import u3.C0867C;
import u3.C0879k;
import u3.C0881m;
import u3.C0888u;
import u3.N;

/* loaded from: classes.dex */
public final class n implements InterfaceC0858b, InterfaceC0860d {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f8679g;

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0821x f8680a;

    /* renamed from: b, reason: collision with root package name */
    public final g4.i f8681b;

    /* renamed from: c, reason: collision with root package name */
    public final AbstractC0472z f8682c;

    /* renamed from: d, reason: collision with root package name */
    public final g4.i f8683d;

    /* renamed from: e, reason: collision with root package name */
    public final g4.e f8684e;
    public final g4.i f;

    static {
        r rVar = q.f6516a;
        f8679g = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(n.class), KnoxContract.Config.Settings.ID, "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;")), rVar.e(new d3.n(rVar.b(n.class), "cloneableType", "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;")), rVar.e(new d3.n(rVar.b(n.class), "notConsideredDeprecation", "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"))};
    }

    public n(C0867C c0867c, g4.o oVar, B3.k kVar) {
        d3.i.e("storageManager", oVar);
        this.f8680a = c0867c;
        g4.l lVar = (g4.l) oVar;
        this.f8681b = new g4.i(lVar, kVar);
        C0881m c0881m = new C0881m(new l(c0867c, new Q3.c("java.io"), 0), Q3.f.e("Serializable"), 4, 2, AbstractC0420a.V(new C0470x(oVar, new m(this, 0))), oVar);
        c0881m.u0(a4.n.f3128b, w.f2327c, null);
        this.f8682c = c0881m.q();
        this.f8683d = new g4.i(lVar, new B3.c(this, 14, oVar));
        this.f8684e = new g4.e(lVar, new ConcurrentHashMap(3, 1.0f, 2));
        this.f = new g4.i(lVar, new m(this, 1));
    }

    @Override // t3.InterfaceC0858b
    public final Collection a(f4.i iVar) {
        boolean zIsAssignableFrom = true;
        d3.i.e("classDescriptor", iVar);
        Q3.e eVarH = X3.f.h(iVar);
        LinkedHashSet linkedHashSet = p.f8690a;
        Q3.e eVar = o3.m.f8511g;
        boolean z4 = d3.i.a(eVarH, eVar) || o3.m.f8508c0.get(eVarH) != null;
        AbstractC0472z abstractC0472z = this.f8682c;
        if (z4) {
            AbstractC0472z abstractC0472z2 = (AbstractC0472z) Z0.j.N(this.f8683d, f8679g[1]);
            d3.i.d("cloneableType", abstractC0472z2);
            return R2.n.y0(abstractC0472z2, abstractC0472z);
        }
        if (!d3.i.a(eVarH, eVar) && o3.m.f8508c0.get(eVarH) == null) {
            String str = C0757d.f8645a;
            Q3.b bVarF = C0757d.f(eVarH);
            if (bVarF == null) {
                zIsAssignableFrom = false;
            } else {
                try {
                    zIsAssignableFrom = Serializable.class.isAssignableFrom(Class.forName(bVarF.b().b()));
                } catch (ClassNotFoundException unused) {
                }
            }
        }
        return zIsAssignableFrom ? AbstractC0420a.V(abstractC0472z) : u.f2325c;
    }

    @Override // t3.InterfaceC0858b
    public final Collection b(f4.i iVar) {
        E3.j jVarF;
        InterfaceC0802e interfaceC0802eB;
        u uVar = u.f2325c;
        if (iVar.f6856m != 1 || !g().f8667b || (jVarF = f(iVar)) == null || (interfaceC0802eB = C0758e.b(X3.f.g(jVarF), C0755b.f)) == null) {
            return uVar;
        }
        V vE = V.e(AbstractC0739a.g(interfaceC0802eB, jVarF));
        List list = (List) jVarF.f603t.f625q.a();
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            C0879k c0879k = (C0879k) next;
            C0879k c0879k2 = c0879k;
            if (c0879k2.c().f140a.f8808b) {
                Collection<C0879k> collectionK = interfaceC0802eB.k();
                d3.i.d("defaultKotlinVersion.constructors", collectionK);
                if (!collectionK.isEmpty()) {
                    for (C0879k c0879k3 : collectionK) {
                        d3.i.d("it", c0879k3);
                        if (T3.n.j(c0879k3, c0879k.b(vE)) == 1) {
                            break;
                        }
                    }
                }
                if (c0879k2.w0().size() == 1) {
                    List listW0 = c0879k2.w0();
                    d3.i.d("valueParameters", listW0);
                    InterfaceC0804g interfaceC0804gI = ((u3.V) R2.m.b1(listW0)).e().J0().i();
                    if (d3.i.a(interfaceC0804gI != null ? X3.f.h(interfaceC0804gI) : null, X3.f.h(iVar))) {
                    }
                }
                if (!AbstractC0732i.C(c0879k) && !p.f8694e.contains(L2.b.K(jVarF, W1.a.n(c0879k, 3)))) {
                    arrayList.add(next);
                }
            }
        }
        ArrayList arrayList2 = new ArrayList(R2.o.C0(arrayList));
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            C0879k c0879k4 = (C0879k) it2.next();
            C0879k c0879k5 = c0879k4;
            c0879k5.getClass();
            C0888u c0888uW0 = c0879k5.W0(V.f7041b);
            c0888uW0.u(iVar);
            c0888uW0.I(iVar.q());
            c0888uW0.f9474q = true;
            S sG = vE.g();
            if (sG == null) {
                C0888u.b(37);
                throw null;
            }
            c0888uW0.f9462c = sG;
            if (!p.f.contains(L2.b.K(jVarF, W1.a.n(c0879k4, 3)))) {
                c0888uW0.y((InterfaceC0845h) Z0.j.N(this.f, f8679g[2]));
            }
            AbstractC0889v abstractC0889vT0 = c0888uW0.f9483z.T0(c0888uW0);
            d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassConstructorDescriptor", abstractC0889vT0);
            arrayList2.add((C0879k) abstractC0889vT0);
        }
        return arrayList2;
    }

    @Override // t3.InterfaceC0858b
    public final Collection c(f4.i iVar) {
        E3.j jVarF;
        Set setA;
        d3.i.e("classDescriptor", iVar);
        boolean z4 = g().f8667b;
        w wVar = w.f2327c;
        return (!z4 || (jVarF = f(iVar)) == null || (setA = jVarF.f0().a()) == null) ? wVar : setA;
    }

    @Override // t3.InterfaceC0860d
    public final boolean d(f4.i iVar, s sVar) {
        d3.i.e("classDescriptor", iVar);
        E3.j jVarF = f(iVar);
        if (jVarF == null || !sVar.t().b(AbstractC0861e.f9142a)) {
            return true;
        }
        if (!g().f8667b) {
            return false;
        }
        String strN = W1.a.n(sVar, 3);
        E3.q qVarF0 = jVarF.f0();
        Q3.f name = sVar.getName();
        d3.i.d("functionDescriptor.name", name);
        Collection collectionD = qVarF0.d(name, z3.b.f9729c);
        if (!collectionD.isEmpty()) {
            Iterator it = collectionD.iterator();
            while (it.hasNext()) {
                if (d3.i.a(W1.a.n((N) it.next(), 3), strN)) {
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0118  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01af A[EDGE_INSN: B:120:0x01af->B:60:0x01af BREAK  A[LOOP:3: B:71:0x01d8->B:121:?]] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0230  */
    @Override // t3.InterfaceC0858b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Collection e(Q3.f fVar, f4.i iVar) throws Throwable {
        N n;
        Iterable iterableI;
        Object obj;
        InterfaceC0802e interfaceC0802e;
        InterfaceC0807j interfaceC0807jL;
        boolean zBooleanValue;
        boolean z4;
        d3.i.e("name", fVar);
        d3.i.e("classDescriptor", iVar);
        boolean zA = d3.i.a(fVar, C0754a.f8641e);
        u<N> uVar = u.f2325c;
        InterfaceC0494o[] interfaceC0494oArr = f8679g;
        if (zA) {
            Q3.f fVar2 = AbstractC0732i.f8454e;
            if (AbstractC0732i.b(iVar, o3.m.f8511g) || AbstractC0732i.r(iVar) != null) {
                List list = iVar.f6850g.f1700s;
                d3.i.d("classDescriptor.classProto.functionList", list);
                if (!list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        if (d3.i.a(L2.b.v((N3.f) iVar.n.f5378d, ((C0075y) it.next()).f1794h), C0754a.f8641e)) {
                            return uVar;
                        }
                    }
                }
                InterfaceC0815r interfaceC0815rE0 = ((N) R2.m.a1(((AbstractC0472z) Z0.j.N(this.f8683d, interfaceC0494oArr[1])).q0().d(fVar, z3.b.f9729c))).e0();
                interfaceC0815rE0.u(iVar);
                interfaceC0815rE0.B(AbstractC0811n.f8813e);
                interfaceC0815rE0.I(iVar.q());
                interfaceC0815rE0.f(iVar.H0());
                InterfaceC0816s interfaceC0816sJ = interfaceC0815rE0.j();
                d3.i.b(interfaceC0816sJ);
                return AbstractC0420a.V((N) interfaceC0816sJ);
            }
        }
        if (!g().f8667b) {
            return uVar;
        }
        E e5 = new E(fVar, 1);
        E3.j jVarF = f(iVar);
        if (jVarF != null) {
            Q3.c cVarG = X3.f.g(jVarF);
            C0755b c0755b = C0755b.f;
            d3.i.e("builtIns", c0755b);
            InterfaceC0802e interfaceC0802eB = C0758e.b(cVarG, c0755b);
            if (interfaceC0802eB == null) {
                iterableI = w.f2327c;
            } else {
                String str = C0757d.f8645a;
                Q3.c cVar = (Q3.c) C0757d.f8654k.get(X3.f.h(interfaceC0802eB));
                iterableI = cVar == null ? L2.b.I(interfaceC0802eB) : R2.n.y0(interfaceC0802eB, c0755b.i(cVar));
            }
            if (iterableI instanceof List) {
                List list2 = (List) iterableI;
                obj = list2.isEmpty() ? null : list2.get(list2.size() - 1);
                interfaceC0802e = (InterfaceC0802e) obj;
                if (interfaceC0802e != null) {
                    int i5 = q4.h.f8704e;
                    ArrayList arrayList = new ArrayList(R2.o.C0(iterableI));
                    Iterator it2 = iterableI.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(X3.f.g((InterfaceC0802e) it2.next()));
                    }
                    q4.h hVar = new q4.h();
                    hVar.addAll(arrayList);
                    String str2 = C0757d.f8645a;
                    boolean zContainsKey = C0757d.f8653j.containsKey(T3.e.g(iVar));
                    Q3.c cVarG2 = X3.f.g(jVarF);
                    B3.c cVar2 = new B3.c(jVarF, 15, interfaceC0802e);
                    g4.e eVar = this.f8684e;
                    eVar.getClass();
                    Object objE = eVar.e(new g4.g(cVarG2, cVar2));
                    if (objE == null) {
                        g4.e.a(3);
                        throw null;
                    }
                    a4.o oVarF0 = ((InterfaceC0802e) objE).f0();
                    d3.i.d("fakeJavaClassDescriptor.unsubstitutedMemberScope", oVarF0);
                    Iterable iterable = (Iterable) e5.e(oVarF0);
                    ArrayList arrayList2 = new ArrayList();
                    for (Object obj2 : iterable) {
                        N n5 = (N) obj2;
                        if (n5.k0() == 1 && n5.c().f140a.f8808b && !AbstractC0732i.C(n5)) {
                            Collection collectionP = n5.p();
                            d3.i.d("analogueMember.overriddenDescriptors", collectionP);
                            if (collectionP.isEmpty()) {
                                interfaceC0807jL = n5.l();
                                d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807jL);
                                if (p.f8693d.contains(L2.b.K((InterfaceC0802e) interfaceC0807jL, W1.a.n(n5, 3))) ^ zContainsKey) {
                                    Boolean boolH = q4.k.h(AbstractC0420a.V(n5), C0758e.f8657c, new C0005d(21, this));
                                    d3.i.d("private fun SimpleFuncti…scriptor)\n        }\n    }", boolH);
                                    zBooleanValue = boolH.booleanValue();
                                } else {
                                    zBooleanValue = true;
                                }
                                z4 = zBooleanValue;
                            } else {
                                Iterator it3 = collectionP.iterator();
                                while (it3.hasNext()) {
                                    InterfaceC0807j interfaceC0807jL2 = ((InterfaceC0816s) it3.next()).l();
                                    d3.i.d("it.containingDeclaration", interfaceC0807jL2);
                                    if (hVar.contains(X3.f.g(interfaceC0807jL2))) {
                                        break;
                                    }
                                }
                                interfaceC0807jL = n5.l();
                                d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807jL);
                                if (p.f8693d.contains(L2.b.K((InterfaceC0802e) interfaceC0807jL, W1.a.n(n5, 3))) ^ zContainsKey) {
                                }
                                if (zBooleanValue) {
                                }
                            }
                        }
                        if (z4) {
                            arrayList2.add(obj2);
                        }
                    }
                    uVar = arrayList2;
                }
            } else {
                Iterator it4 = iterableI.iterator();
                if (it4.hasNext()) {
                    Object next = it4.next();
                    while (it4.hasNext()) {
                        next = it4.next();
                    }
                    obj = next;
                }
                interfaceC0802e = (InterfaceC0802e) obj;
                if (interfaceC0802e != null) {
                }
            }
        }
        ArrayList arrayList3 = new ArrayList();
        for (N n6 : uVar) {
            InterfaceC0807j interfaceC0807jL3 = n6.l();
            d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807jL3);
            InterfaceC0816s interfaceC0816sB = n6.b(V.e(AbstractC0739a.g((InterfaceC0802e) interfaceC0807jL3, iVar)));
            d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.SimpleFunctionDescriptor", interfaceC0816sB);
            InterfaceC0815r interfaceC0815rE02 = ((N) interfaceC0816sB).e0();
            interfaceC0815rE02.u(iVar);
            interfaceC0815rE02.f(iVar.H0());
            interfaceC0815rE02.l();
            InterfaceC0807j interfaceC0807jL4 = n6.l();
            d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807jL4);
            Object objF = q4.k.f(AbstractC0420a.V((InterfaceC0802e) interfaceC0807jL4), new c1.w(this), new X3.d(W1.a.n(n6, 3), new Q2.a(1), 1));
            d3.i.d("jvmDescriptor = computeJ…CONSIDERED\n            })", objF);
            int iOrdinal = ((k) objF).ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal == 2) {
                    interfaceC0815rE02.y((InterfaceC0845h) Z0.j.N(this.f, interfaceC0494oArr[2]));
                } else if (iOrdinal == 3) {
                    n = null;
                }
                InterfaceC0816s interfaceC0816sJ2 = interfaceC0815rE02.j();
                d3.i.b(interfaceC0816sJ2);
                n = (N) interfaceC0816sJ2;
            } else {
                if (!(iVar.i() == 1 && iVar.L() != 3)) {
                    interfaceC0815rE02.E();
                    InterfaceC0816s interfaceC0816sJ22 = interfaceC0815rE02.j();
                    d3.i.b(interfaceC0816sJ22);
                    n = (N) interfaceC0816sJ22;
                }
                n = null;
            }
            if (n != null) {
                arrayList3.add(n);
            }
        }
        return arrayList3;
    }

    public final E3.j f(InterfaceC0802e interfaceC0802e) {
        Q3.c cVarB;
        if (interfaceC0802e == null) {
            AbstractC0732i.a(108);
            throw null;
        }
        Q3.f fVar = AbstractC0732i.f8454e;
        if (AbstractC0732i.b(interfaceC0802e, o3.m.f8503a) || !AbstractC0732i.H(interfaceC0802e)) {
            return null;
        }
        Q3.e eVarH = X3.f.h(interfaceC0802e);
        if (!eVarH.d()) {
            return null;
        }
        String str = C0757d.f8645a;
        Q3.b bVarF = C0757d.f(eVarH);
        if (bVarF == null || (cVarB = bVarF.b()) == null) {
            return null;
        }
        InterfaceC0802e interfaceC0802eR = AbstractC0729f.r(g().f8666a, cVarB);
        if (interfaceC0802eR instanceof E3.j) {
            return (E3.j) interfaceC0802eR;
        }
        return null;
    }

    public final C0761h g() {
        return (C0761h) Z0.j.N(this.f8681b, f8679g[0]);
    }
}
