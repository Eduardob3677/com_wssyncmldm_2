package s2;

import A3.A;
import A3.C0004c;
import A3.C0005d;
import A3.C0010i;
import A3.EnumC0002a;
import A3.p;
import A3.s;
import E3.C0023f;
import E3.j;
import F.e;
import I3.n;
import I3.q;
import J.C0051z;
import J1.f;
import L3.P;
import L3.Q;
import Q2.k;
import R2.m;
import R2.o;
import R2.u;
import R3.AbstractC0083e;
import R3.E;
import S3.g;
import S3.h;
import W1.i;
import a2.C0107c;
import android.view.View;
import android.view.WindowInsetsAnimation;
import androidx.lifecycle.Y;
import androidx.lifecycle.b0;
import c1.InterfaceC0216b;
import c1.w;
import c3.InterfaceC0222b;
import com.idm.fotaagent.restapi.restclient.push.campaign.button.Action;
import f1.AbstractC0420a;
import f4.t;
import h0.AbstractC0432c;
import h4.AbstractC0450c;
import h4.AbstractC0468v;
import h4.J;
import h4.X;
import i3.InterfaceC0494o;
import i3.x;
import i4.l;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import java.util.Stack;
import k.Q0;
import o3.AbstractC0729f;
import o3.AbstractC0732i;
import q3.C0757d;
import r3.InterfaceC0775C;
import r3.InterfaceC0780H;
import r3.InterfaceC0782J;
import r3.InterfaceC0783K;
import r3.InterfaceC0789Q;
import r3.InterfaceC0800c;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0805h;
import r3.InterfaceC0806i;
import r3.InterfaceC0807j;
import r3.InterfaceC0809l;
import r3.InterfaceC0816s;
import r3.InterfaceC0821x;
import s3.C0844g;
import s3.C0846i;
import s3.InterfaceC0838a;
import s3.InterfaceC0845h;
import u1.d;
import u3.AbstractC0889v;
import u3.C0879k;
import u3.C0890w;
import u3.I;
import u3.L;
import u3.M;
import u3.V;
import u3.y;
import x3.C0918e;

/* renamed from: s2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0837c implements e, C1.a, f, N0.b, InterfaceC0809l, d, b0, InterfaceC0216b {

    /* renamed from: d, reason: collision with root package name */
    public static volatile C0837c f9021d;

    /* renamed from: c, reason: collision with root package name */
    public Object f9022c;

    public /* synthetic */ C0837c(Object obj) {
        this.f9022c = obj;
    }

    @Override // u1.d
    public void J(Exception exc) {
        long j3;
        if (exc instanceof i) {
            A.d dVar = C0107c.f3042e;
            dVar.i("Failure to refresh token; scheduling refresh after failure", new Object[0]);
            C0107c c0107c = (C0107c) ((G.a) this.f9022c).f775e;
            int i5 = (int) c0107c.f3044b;
            if (i5 == 30 || i5 == 60 || i5 == 120 || i5 == 240 || i5 == 480) {
                long j5 = c0107c.f3044b;
                j3 = j5 + j5;
            } else {
                j3 = i5 != 960 ? 30L : 960L;
            }
            c0107c.f3044b = j3;
            c0107c.f3043a = (c0107c.f3044b * 1000) + System.currentTimeMillis();
            long j6 = c0107c.f3043a;
            StringBuilder sb = new StringBuilder(43);
            sb.append("Scheduling refresh for ");
            sb.append(j6);
            dVar.i(sb.toString(), new Object[0]);
            c0107c.f3045c.postDelayed(c0107c.f3046d, c0107c.f3044b * 1000);
        }
    }

    @Override // r3.InterfaceC0809l
    public Object K(InterfaceC0780H interfaceC0780H, Object obj) {
        StringBuilder sb = (StringBuilder) obj;
        d3.i.e("descriptor", interfaceC0780H);
        g gVar = (g) this.f9022c;
        gVar.getClass();
        y yVar = (y) interfaceC0780H;
        gVar.T(yVar.f, Action.KEY_PACKAGENAME, sb);
        if (gVar.f2625a.g()) {
            sb.append(" in context of ");
            gVar.P(yVar.f9513e, sb, false);
        }
        return k.f2225a;
    }

    @Override // r3.InterfaceC0809l
    public Object P(V v4, Object obj) {
        d3.i.e("descriptor", v4);
        ((g) this.f9022c).f0(v4, true, (StringBuilder) obj, true);
        return k.f2225a;
    }

    @Override // r3.InterfaceC0809l
    public Object b(InterfaceC0802e interfaceC0802e, Object obj) throws IOException {
        C0879k c0879kW;
        String str;
        StringBuilder sb = (StringBuilder) obj;
        d3.i.e("descriptor", interfaceC0802e);
        g gVar = (g) this.f9022c;
        gVar.getClass();
        boolean z4 = interfaceC0802e.L() == 4;
        if (!gVar.r()) {
            gVar.z(sb, interfaceC0802e, null);
            List listS0 = interfaceC0802e.s0();
            d3.i.d("klass.contextReceivers", listS0);
            gVar.C(sb, listS0);
            if (!z4) {
                p pVarC = interfaceC0802e.c();
                d3.i.d("klass.visibility", pVarC);
                gVar.h0(pVarC, sb);
            }
            if ((interfaceC0802e.L() != 2 || interfaceC0802e.i() != 4) && (!AbstractC0432c.a(interfaceC0802e.L()) || interfaceC0802e.i() != 1)) {
                int i5 = interfaceC0802e.i();
                B.f.E(i5, "klass.modality");
                gVar.L(i5, sb, g.v(interfaceC0802e));
            }
            gVar.K(interfaceC0802e, sb);
            gVar.N(sb, gVar.q().contains(h.INNER) && interfaceC0802e.z(), "inner");
            gVar.N(sb, gVar.q().contains(h.DATA) && interfaceC0802e.D0(), "data");
            gVar.N(sb, gVar.q().contains(h.INLINE) && interfaceC0802e.j(), "inline");
            gVar.N(sb, gVar.q().contains(h.VALUE) && interfaceC0802e.v(), "value");
            gVar.N(sb, gVar.q().contains(h.FUN) && interfaceC0802e.h0(), "fun");
            if (interfaceC0802e instanceof t) {
                str = "typealias";
            } else if (interfaceC0802e.N()) {
                str = "companion object";
            } else {
                int iF = Q0.f(interfaceC0802e.L());
                if (iF == 0) {
                    str = "class";
                } else if (iF == 1) {
                    str = "interface";
                } else if (iF == 2) {
                    str = "enum class";
                } else if (iF == 3) {
                    str = "enum entry";
                } else if (iF == 4) {
                    str = "annotation class";
                } else {
                    if (iF != 5) {
                        throw new A0.c();
                    }
                    str = "object";
                }
            }
            sb.append(gVar.I(str));
        }
        boolean zM = T3.e.m(interfaceC0802e);
        S3.k kVar = gVar.f2625a;
        if (zM) {
            if (((Boolean) kVar.f2650F.a(S3.k.f2645W[30], kVar)).booleanValue()) {
                if (gVar.r()) {
                    sb.append("companion object");
                }
                g.X(sb);
                InterfaceC0807j interfaceC0807jL = interfaceC0802e.l();
                if (interfaceC0807jL != null) {
                    sb.append("of ");
                    Q3.f name = interfaceC0807jL.getName();
                    d3.i.d("containingDeclaration.name", name);
                    sb.append(gVar.O(name, false));
                }
            }
            if (gVar.u() || !d3.i.a(interfaceC0802e.getName(), Q3.h.f2246b)) {
                if (!gVar.r()) {
                    g.X(sb);
                }
                Q3.f name2 = interfaceC0802e.getName();
                d3.i.d("descriptor.name", name2);
                sb.append(gVar.O(name2, true));
            }
        } else {
            if (!gVar.r()) {
                g.X(sb);
            }
            gVar.P(interfaceC0802e, sb, true);
        }
        if (!z4) {
            List listS = interfaceC0802e.s();
            d3.i.d("klass.declaredTypeParameters", listS);
            gVar.d0(sb, listS, false);
            gVar.A(interfaceC0802e, sb);
            if (!AbstractC0432c.a(interfaceC0802e.L()) && ((Boolean) kVar.f2674i.a(S3.k.f2645W[7], kVar)).booleanValue() && (c0879kW = interfaceC0802e.W()) != null) {
                sb.append(" ");
                gVar.z(sb, c0879kW, null);
                C0879k c0879k = c0879kW;
                p pVarC2 = c0879k.c();
                d3.i.d("primaryConstructor.visibility", pVarC2);
                gVar.h0(pVarC2, sb);
                sb.append(gVar.I("constructor"));
                List listW0 = c0879k.w0();
                d3.i.d("primaryConstructor.valueParameters", listW0);
                gVar.g0(sb, listW0, c0879kW.o0());
            }
            if (!((Boolean) kVar.f2687w.a(S3.k.f2645W[21], kVar)).booleanValue() && !AbstractC0732i.E(interfaceC0802e.q())) {
                Collection collectionJ = interfaceC0802e.H().j();
                d3.i.d("klass.typeConstructor.supertypes", collectionJ);
                if (!collectionJ.isEmpty() && (collectionJ.size() != 1 || !AbstractC0732i.x((AbstractC0468v) collectionJ.iterator().next()))) {
                    g.X(sb);
                    sb.append(": ");
                    m.R0(collectionJ, sb, null, null, new S3.e(gVar, 2), 60);
                }
            }
            gVar.i0(sb, listS);
        }
        return k.f2225a;
    }

    @Override // r3.InterfaceC0809l
    public Object c(L l5, Object obj) throws IOException {
        d3.i.e("descriptor", l5);
        r(l5, (StringBuilder) obj, "getter");
        return k.f2225a;
    }

    @Override // c1.InterfaceC0216b
    public void d(Z0.a aVar) {
        boolean z4 = aVar.f2995d == 0;
        c1.k kVar = (c1.k) this.f9022c;
        if (z4) {
            kVar.g(null, kVar.f5242u);
            return;
        }
        w wVar = kVar.n;
        if (wVar != null) {
            ((a1.f) wVar.f5265c).s(aVar);
        }
    }

    @Override // androidx.lifecycle.b0
    public Y e(Class cls, b0.c cVar) {
        Y y3 = null;
        for (b0.d dVar : (b0.d[]) this.f9022c) {
            if (d3.i.a(dVar.f5053a, cls)) {
                Object objE = dVar.f5054b.e(cVar);
                y3 = objE instanceof Y ? (Y) objE : null;
            }
        }
        if (y3 != null) {
            return y3;
        }
        throw new IllegalArgumentException("No initializer set for given class ".concat(cls.getName()));
    }

    public void f(AbstractC0083e abstractC0083e) {
        if (!abstractC0083e.q()) {
            if (!(abstractC0083e instanceof E)) {
                String strValueOf = String.valueOf(abstractC0083e.getClass());
                throw new IllegalArgumentException(B.f.w(new StringBuilder(strValueOf.length() + 49), "Has a new type of ByteString been created? Found ", strValueOf));
            }
            E e5 = (E) abstractC0083e;
            f(e5.f2340e);
            f(e5.f);
            return;
        }
        int size = abstractC0083e.size();
        int[] iArr = E.f2338j;
        int iBinarySearch = Arrays.binarySearch(iArr, size);
        if (iBinarySearch < 0) {
            iBinarySearch = (-(iBinarySearch + 1)) - 1;
        }
        int i5 = iArr[iBinarySearch + 1];
        Stack stack = (Stack) this.f9022c;
        if (stack.isEmpty() || ((AbstractC0083e) stack.peek()).size() >= i5) {
            stack.push(abstractC0083e);
            return;
        }
        int i6 = iArr[iBinarySearch];
        AbstractC0083e e6 = (AbstractC0083e) stack.pop();
        while (!stack.isEmpty() && ((AbstractC0083e) stack.peek()).size() < i6) {
            e6 = new E((AbstractC0083e) stack.pop(), e6);
        }
        E e7 = new E(e6, abstractC0083e);
        while (!stack.isEmpty()) {
            int[] iArr2 = E.f2338j;
            int iBinarySearch2 = Arrays.binarySearch(iArr2, e7.f2339d);
            if (iBinarySearch2 < 0) {
                iBinarySearch2 = (-(iBinarySearch2 + 1)) - 1;
            }
            if (((AbstractC0083e) stack.peek()).size() >= iArr2[iBinarySearch2 + 1]) {
                break;
            } else {
                e7 = new E((AbstractC0083e) stack.pop(), e7);
            }
        }
        stack.push(e7);
    }

    public AbstractC0468v g(C3.a aVar, InterfaceC0838a interfaceC0838a, boolean z4, D3.e eVar, EnumC0002a enumC0002a, q qVar, boolean z5, InterfaceC0222b interfaceC0222b) {
        I3.p pVar = new I3.p(interfaceC0838a, z4, eVar, enumC0002a, false);
        AbstractC0468v abstractC0468v = (AbstractC0468v) interfaceC0222b.e(aVar);
        Collection<InterfaceC0800c> collectionP = aVar.p();
        d3.i.d("overriddenDescriptors", collectionP);
        ArrayList arrayList = new ArrayList(o.C0(collectionP));
        for (InterfaceC0800c interfaceC0800c : collectionP) {
            d3.i.d("it", interfaceC0800c);
            arrayList.add((AbstractC0468v) interfaceC0222b.e(interfaceC0800c));
        }
        return i(pVar, abstractC0468v, arrayList, qVar, z5);
    }

    @Override // P2.a
    public Object get() {
        T0.b bVar = (T0.b) ((P2.a) this.f9022c).get();
        HashMap map = new HashMap();
        I0.c cVar = I0.c.f870c;
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet == null) {
            throw new NullPointerException("Null flags");
        }
        Long l5 = 30000L;
        Long l6 = 86400000L;
        map.put(cVar, new Q0.c(l5.longValue(), l6.longValue(), setEmptySet));
        I0.c cVar2 = I0.c.f872e;
        Set setEmptySet2 = Collections.emptySet();
        if (setEmptySet2 == null) {
            throw new NullPointerException("Null flags");
        }
        Long l7 = 1000L;
        Long l8 = 86400000L;
        map.put(cVar2, new Q0.c(l7.longValue(), l8.longValue(), setEmptySet2));
        I0.c cVar3 = I0.c.f871d;
        if (Collections.emptySet() == null) {
            throw new NullPointerException("Null flags");
        }
        Long l9 = 86400000L;
        Long l10 = 86400000L;
        Set setUnmodifiableSet = Collections.unmodifiableSet(new HashSet(Arrays.asList(Q0.e.f2177c, Q0.e.f2178d)));
        if (setUnmodifiableSet == null) {
            throw new NullPointerException("Null flags");
        }
        map.put(cVar3, new Q0.c(l9.longValue(), l10.longValue(), setUnmodifiableSet));
        if (bVar == null) {
            throw new NullPointerException("missing required property: clock");
        }
        if (map.keySet().size() < I0.c.values().length) {
            throw new IllegalStateException("Not all priorities have been configured");
        }
        new HashMap();
        return new Q0.b(bVar, map);
    }

    @Override // r3.InterfaceC0809l
    public Object h(InterfaceC0783K interfaceC0783K, Object obj) throws IOException {
        d3.i.e("descriptor", interfaceC0783K);
        g.n((g) this.f9022c, interfaceC0783K, (StringBuilder) obj);
        return k.f2225a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x02c5  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0350  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x0353  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0361  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x0371  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0391  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0394  */
    /* JADX WARN: Removed duplicated region for block: B:248:0x0396  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x039e  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x03c9  */
    /* JADX WARN: Removed duplicated region for block: B:264:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0424  */
    /* JADX WARN: Removed duplicated region for block: B:290:0x042b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AbstractC0468v i(I3.p pVar, AbstractC0468v abstractC0468v, List list, q qVar, boolean z4) {
        int size;
        I3.e[] eVarArr;
        I3.f fVar;
        Iterable iterableW0;
        I3.f fVar2;
        InterfaceC0789Q interfaceC0789QC0;
        boolean z5;
        EnumC0002a enumC0002a;
        Iterable iterableT;
        InterfaceC0838a interfaceC0838a;
        i4.e eVar;
        D3.e eVar2;
        int i5;
        I3.h hVar;
        I3.i iVar;
        I3.i iVarA;
        I3.e eVar3;
        I3.i iVarC;
        C0004c c0004c;
        I3.f fVar3;
        J jU0;
        Iterator it;
        int i6;
        boolean z6;
        Iterator it2;
        I3.h hVar2;
        Iterator it3;
        boolean z7;
        i4.e eVar4;
        Object eVar5;
        k4.c cVar;
        I3.h hVarF;
        int iU;
        I3.p pVar2 = pVar;
        d3.i.e("<this>", abstractC0468v);
        ArrayList arrayListJ = pVar.j(abstractC0468v);
        ArrayList arrayList = new ArrayList(o.C0(list));
        Iterator it4 = list.iterator();
        while (it4.hasNext()) {
            arrayList.add(pVar2.j((k4.c) it4.next()));
        }
        D3.e eVar6 = (D3.e) pVar2.f921d;
        boolean z8 = pVar2.f918a;
        if (!z8 || list.isEmpty()) {
            size = arrayListJ.size();
        } else {
            Iterator it5 = list.iterator();
            while (it5.hasNext()) {
                d3.i.e("other", (k4.c) it5.next());
                if (!((l) ((D3.a) eVar6.f499d).f487u).a(abstractC0468v, (AbstractC0468v) r8)) {
                    size = 1;
                    break;
                }
            }
            size = arrayListJ.size();
        }
        I3.e[] eVarArr2 = new I3.e[size];
        int i7 = 0;
        while (i7 < size) {
            I3.a aVar = (I3.a) arrayListJ.get(i7);
            k4.c cVar2 = aVar.f880a;
            I3.h hVar3 = I3.h.f897d;
            I3.h hVar4 = I3.h.f898e;
            i4.e eVar7 = i4.e.f7171d;
            I3.f fVar4 = I3.f.f893d;
            I3.f fVar5 = I3.f.f892c;
            I3.h hVar5 = I3.h.f896c;
            ArrayList arrayList2 = arrayListJ;
            InterfaceC0838a interfaceC0838a2 = (InterfaceC0838a) pVar2.f920c;
            int i8 = size;
            InterfaceC0789Q interfaceC0789Q = aVar.f882c;
            if (cVar2 == null) {
                if (interfaceC0789Q != null) {
                    int iA = interfaceC0789Q.A();
                    eVarArr = eVarArr2;
                    B.f.E(iA, "this.variance");
                    iU = x.u(iA);
                } else {
                    eVarArr = eVarArr2;
                    iU = 0;
                }
                if (iU == 1) {
                    eVar3 = I3.e.f887e;
                    fVar = fVar5;
                    interfaceC0838a = interfaceC0838a2;
                    eVar2 = eVar6;
                    z5 = z8;
                    fVar2 = fVar4;
                    i5 = i7;
                    eVar = eVar7;
                    hVar = null;
                }
                ArrayList arrayList3 = new ArrayList();
                it = arrayList.iterator();
                while (it.hasNext()) {
                    int i9 = i5;
                    I3.a aVar2 = (I3.a) m.P0(i9, (List) it.next());
                    if (aVar2 == null || (cVar = aVar2.f880a) == null) {
                        eVar4 = eVar;
                        eVar5 = hVar;
                    } else {
                        I3.h hVarF2 = I3.p.f(cVar);
                        if (hVarF2 == null) {
                            AbstractC0468v abstractC0468vE = AbstractC0450c.e((AbstractC0468v) cVar);
                            hVarF = abstractC0468vE != null ? I3.p.f(abstractC0468vE) : hVar;
                        } else {
                            hVarF = hVarF2;
                        }
                        String str = C0757d.f8645a;
                        eVar4 = eVar;
                        eVar5 = new I3.e(hVarF, C0757d.f8654k.containsKey(I3.p.e(eVar4.o(cVar))) ? fVar : C0757d.f8653j.containsKey(I3.p.e(eVar4.g(cVar))) ? fVar2 : hVar, eVar4.q0(cVar) || (((AbstractC0468v) cVar).M0() instanceof I3.g), hVarF != hVarF2);
                    }
                    if (eVar5 != null) {
                        arrayList3.add(eVar5);
                    }
                    eVar = eVar4;
                    i5 = i9;
                }
                i6 = i5;
                boolean z9 = i6 != 0 && z5;
                if (i6 != 0) {
                    InterfaceC0838a interfaceC0838a3 = interfaceC0838a;
                    z6 = (interfaceC0838a3 instanceof V) && ((V) interfaceC0838a3).f9412l != null;
                }
                ArrayList arrayList4 = new ArrayList();
                it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    I3.e eVar8 = (I3.e) it2.next();
                    I3.h hVar6 = eVar8.f891d ? hVar : eVar8.f888a;
                    if (hVar6 != null) {
                        arrayList4.add(hVar6);
                    }
                }
                Set setJ1 = m.j1(arrayList4);
                boolean z10 = eVar3.f891d;
                I3.h hVar7 = eVar3.f888a;
                I3.h hVar8 = !z10 ? hVar : hVar7;
                hVar2 = hVar8 != hVar5 ? hVar5 : (I3.h) x.Y0(setJ1, hVar4, hVar3, hVar8, z9);
                if (hVar2 != null) {
                    ArrayList arrayList5 = new ArrayList();
                    Iterator it6 = arrayList3.iterator();
                    while (it6.hasNext()) {
                        I3.h hVar9 = ((I3.e) it6.next()).f888a;
                        if (hVar9 != null) {
                            arrayList5.add(hVar9);
                        }
                    }
                    Set setJ12 = m.j1(arrayList5);
                    if (hVar7 != hVar5) {
                        hVar5 = (I3.h) x.Y0(setJ12, hVar4, hVar3, hVar7, z9);
                    }
                } else {
                    hVar5 = hVar2;
                }
                ArrayList arrayList6 = new ArrayList();
                it3 = arrayList3.iterator();
                while (it3.hasNext()) {
                    I3.f fVar6 = ((I3.e) it3.next()).f889b;
                    if (fVar6 != null) {
                        arrayList6.add(fVar6);
                    }
                }
                I3.f fVar7 = (I3.f) x.Y0(m.j1(arrayList6), fVar2, fVar, eVar3.f889b, z9);
                if (hVar5 != null && !z4 && (!z6 || hVar5 != hVar3)) {
                    hVar = hVar5;
                }
                if (hVar == hVar4) {
                    if (!eVar3.f890c) {
                        if (!arrayList3.isEmpty()) {
                            Iterator it7 = arrayList3.iterator();
                            while (it7.hasNext()) {
                                if (((I3.e) it7.next()).f890c) {
                                }
                            }
                        }
                        z7 = false;
                    }
                    z7 = true;
                    break;
                }
                z7 = false;
                eVarArr[i6] = new I3.e(hVar, fVar7, z7, hVar == null && hVar2 != hVar5);
                i7 = i6 + 1;
                arrayListJ = arrayList2;
                size = i8;
                eVarArr2 = eVarArr;
                z8 = z5;
                eVar6 = eVar2;
                pVar2 = pVar;
            } else {
                eVarArr = eVarArr2;
            }
            boolean z11 = interfaceC0789Q == null;
            Iterable iterable = u.f2325c;
            k4.c cVar3 = aVar.f880a;
            if (cVar3 != null) {
                fVar = fVar5;
                iterableW0 = ((AbstractC0468v) cVar3).t();
            } else {
                fVar = fVar5;
                iterableW0 = iterable;
            }
            if (cVar3 == null || (jU0 = eVar7.u0(cVar3)) == null) {
                fVar2 = fVar4;
                interfaceC0789QC0 = null;
            } else {
                interfaceC0789QC0 = x.c0(jU0);
                fVar2 = fVar4;
            }
            EnumC0002a enumC0002a2 = EnumC0002a.TYPE_PARAMETER_BOUNDS;
            z5 = z8;
            EnumC0002a enumC0002a3 = (EnumC0002a) pVar2.f922e;
            boolean z12 = enumC0002a3 == enumC0002a2;
            if (z11) {
                enumC0002a = enumC0002a3;
                if (!z12) {
                    ((D3.a) eVar6.f499d).f486t.getClass();
                }
                if (interfaceC0838a2 == null || (iterableT = interfaceC0838a2.t()) == null) {
                    iterableT = iterable;
                }
                iterableW0 = m.W0(iterableT, iterableW0);
            } else {
                enumC0002a = enumC0002a3;
            }
            ((D3.a) eVar6.f499d).f483q.getClass();
            Iterator it8 = iterableW0.iterator();
            interfaceC0838a = interfaceC0838a2;
            I3.f fVar8 = null;
            while (true) {
                if (!it8.hasNext()) {
                    eVar = eVar7;
                    break;
                }
                Iterator it9 = it8;
                Q3.c cVarD = C0004c.d(it8.next());
                eVar = eVar7;
                if (A.f74o.contains(cVarD)) {
                    fVar3 = fVar;
                } else if (A.f75p.contains(cVarD)) {
                    fVar3 = fVar2;
                } else {
                    continue;
                    eVar7 = eVar;
                    it8 = it9;
                }
                if (fVar8 != null && fVar8 != fVar3) {
                    fVar8 = null;
                    break;
                }
                fVar8 = fVar3;
                eVar7 = eVar;
                it8 = it9;
            }
            C0004c c0004c2 = ((D3.a) eVar6.f499d).f483q;
            eVar2 = eVar6;
            E3.p pVar3 = new E3.p(pVar2, 4, aVar);
            c0004c2.getClass();
            Iterator it10 = iterableW0.iterator();
            I3.i iVar2 = null;
            while (it10.hasNext()) {
                Object next = it10.next();
                Iterator it11 = it10;
                I3.i iVarG = c0004c2.g(next, ((Boolean) pVar3.e(next)).booleanValue());
                if (iVarG != null) {
                    c0004c = c0004c2;
                    i5 = i7;
                } else {
                    Object objI = c0004c2.i(next);
                    if (objI == null) {
                        c0004c = c0004c2;
                        i5 = i7;
                    } else {
                        A3.E eH = c0004c2.h(next);
                        if (eH == null) {
                            eH = c0004c2.f116a.f156a.f159a;
                        }
                        eH.getClass();
                        i5 = i7;
                        if (eH == A3.E.IGNORE) {
                            c0004c = c0004c2;
                        } else {
                            I3.i iVarG2 = c0004c2.g(objI, ((Boolean) pVar3.e(objI)).booleanValue());
                            if (iVarG2 != null) {
                                c0004c = c0004c2;
                                hVar = null;
                                iVarG = I3.i.a(iVarG2, null, eH == A3.E.WARN, 1);
                            } else {
                                c0004c = c0004c2;
                                hVar = null;
                                iVarG = null;
                            }
                            if (iVar2 == null) {
                                iVar2 = iVarG;
                            } else if (iVarG != null && !d3.i.a(iVarG, iVar2)) {
                                boolean z13 = iVar2.f900b;
                                boolean z14 = iVarG.f900b;
                                if (!z14 || z13) {
                                    if (z14 || !z13) {
                                        iVar = hVar;
                                        break;
                                    }
                                    iVar2 = iVarG;
                                }
                            }
                            c0004c2 = c0004c;
                            i7 = i5;
                            it10 = it11;
                            iVar2 = iVar2;
                        }
                    }
                    iVarG = null;
                }
                hVar = null;
                if (iVar2 == null) {
                }
                c0004c2 = c0004c;
                i7 = i5;
                it10 = it11;
                iVar2 = iVar2;
            }
            i5 = i7;
            hVar = null;
            iVar = iVar2;
            if (iVar != 0) {
                I3.h hVar10 = iVar.f899a;
                eVar3 = new I3.e(hVar10, fVar8, hVar10 == hVar4 && interfaceC0789QC0 != null, iVar.f900b);
            } else {
                EnumC0002a enumC0002a4 = (z11 || z12) ? enumC0002a : EnumC0002a.TYPE_USE;
                A3.w wVar = aVar.f881b;
                A3.o oVar = wVar != null ? (A3.o) wVar.f158a.get(enumC0002a4) : hVar;
                I3.i iVarC2 = interfaceC0789QC0 != null ? I3.p.c(interfaceC0789QC0) : hVar;
                I3.i iVarA2 = iVarC2 != 0 ? I3.i.a(iVarC2, hVar4, false, 2) : oVar != 0 ? oVar.f137a : hVar;
                boolean z15 = (iVarC2 != 0 ? iVarC2.f899a : hVar) == hVar4 || !(interfaceC0789QC0 == null || oVar == 0 || !oVar.f139c);
                if (interfaceC0789Q == null || (iVarC = I3.p.c(interfaceC0789Q)) == null) {
                    iVarA = hVar;
                } else {
                    I3.h hVar11 = iVarC.f899a;
                    iVarA = iVarC;
                    if (hVar11 == hVar3) {
                        iVarA = I3.i.a(iVarC, hVar5, false, 2);
                    }
                }
                if (iVarA != 0) {
                    if (iVarA2 == 0) {
                        iVarA2 = iVarA;
                    } else {
                        boolean z16 = iVarA2.f900b;
                        boolean z17 = iVarA.f900b;
                        if (!z17 || z16) {
                            if (z17 || !z16) {
                                I3.h hVar12 = iVarA.f899a;
                                I3.h hVar13 = iVarA2.f899a;
                                if (hVar12.compareTo(hVar13) >= 0 && hVar12.compareTo(hVar13) > 0) {
                                }
                            }
                        }
                    }
                }
                eVar3 = new I3.e(iVarA2 != 0 ? iVarA2.f899a : hVar, fVar8, z15, iVarA2 != 0 && iVarA2.f900b);
            }
            ArrayList arrayList32 = new ArrayList();
            it = arrayList.iterator();
            while (it.hasNext()) {
            }
            i6 = i5;
            if (i6 != 0) {
            }
            if (i6 != 0) {
            }
            ArrayList arrayList42 = new ArrayList();
            it2 = arrayList32.iterator();
            while (it2.hasNext()) {
            }
            Set setJ13 = m.j1(arrayList42);
            boolean z102 = eVar3.f891d;
            I3.h hVar72 = eVar3.f888a;
            if (!z102) {
            }
            if (hVar8 != hVar5) {
            }
            if (hVar2 != null) {
            }
            ArrayList arrayList62 = new ArrayList();
            it3 = arrayList32.iterator();
            while (it3.hasNext()) {
            }
            I3.f fVar72 = (I3.f) x.Y0(m.j1(arrayList62), fVar2, fVar, eVar3.f889b, z9);
            if (hVar5 != null) {
                hVar = hVar5;
            }
            if (hVar == hVar4) {
            }
            eVarArr[i6] = new I3.e(hVar, fVar72, z7, hVar == null && hVar2 != hVar5);
            i7 = i6 + 1;
            arrayListJ = arrayList2;
            size = i8;
            eVarArr2 = eVarArr;
            z8 = z5;
            eVar6 = eVar2;
            pVar2 = pVar;
        }
        E3.p pVar4 = new E3.p(qVar, 3, eVarArr2);
        ((I3.d) this.f9022c).getClass();
        return (AbstractC0468v) I3.d.b(abstractC0468v.M0(), pVar4, 0, pVar.f919b).f202d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0204  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x020a  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:109:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x027d  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0284  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0294 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:147:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x02df  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x0309 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x01f9  */
    /* JADX WARN: Type inference failed for: r24v0, types: [s2.c] */
    /* JADX WARN: Type inference failed for: r3v2, types: [r3.b, r3.c, r3.j] */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v5, types: [C3.a] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ArrayList j(D3.e eVar, Collection collection) {
        InterfaceC0845h interfaceC0845hT;
        AbstractC0468v abstractC0468vE;
        boolean z4;
        InterfaceC0783K interfaceC0783K;
        boolean z5;
        EnumC0002a enumC0002a;
        AbstractC0468v abstractC0468vN;
        n nVar;
        boolean z6;
        ArrayList arrayList;
        Iterator it;
        boolean z7;
        AbstractC0468v abstractC0468vE2;
        List list;
        L l5;
        d3.i.e("c", eVar);
        ArrayList arrayList2 = new ArrayList(o.C0(collection));
        Iterator it2 = collection.iterator();
        while (it2.hasNext()) {
            ?? G02 = (InterfaceC0800c) it2.next();
            if (G02 instanceof C3.a) {
                C3.a aVar = (C3.a) G02;
                if (aVar.k0() != 2 || aVar.a().p().size() != 1) {
                    InterfaceC0804g interfaceC0804gK = AbstractC0729f.k(G02);
                    if (interfaceC0804gK == null) {
                        interfaceC0845hT = ((K3.c) G02).t();
                    } else {
                        j jVar = interfaceC0804gK instanceof j ? (j) interfaceC0804gK : null;
                        List list2 = jVar != null ? (List) jVar.n.getValue() : null;
                        if (list2 == null || list2.isEmpty()) {
                            interfaceC0845hT = ((K3.c) G02).t();
                        } else {
                            ArrayList arrayList3 = new ArrayList(o.C0(list2));
                            Iterator it3 = list2.iterator();
                            while (it3.hasNext()) {
                                arrayList3.add(new C0023f(eVar, (C0918e) it3.next(), true));
                            }
                            ArrayList arrayListW0 = m.W0(((K3.c) G02).t(), arrayList3);
                            interfaceC0845hT = arrayListW0.isEmpty() ? C0844g.f9041a : new C0846i(0, arrayListW0);
                        }
                    }
                    D3.e eVarF = L2.b.f(eVar, interfaceC0845hT);
                    L l6 = (!(G02 instanceof C3.g) || (l5 = ((C3.g) G02).f9396z) == null || l5.f9359g) ? G02 : l5;
                    C0890w c0890wD0 = aVar.d0();
                    EnumC0002a enumC0002a2 = EnumC0002a.VALUE_PARAMETER;
                    if (c0890wD0 != null) {
                        L l7 = l6 instanceof InterfaceC0816s ? l6 : null;
                        V v4 = l7 != null ? (V) l7.E(C3.f.f373I) : null;
                        abstractC0468vE = g((C3.a) G02, v4, false, v4 != null ? L2.b.f(eVarF, v4.t()) : eVarF, enumC0002a2, null, false, n.f);
                    } else {
                        abstractC0468vE = null;
                    }
                    C3.f fVar = G02 instanceof C3.f ? (C3.f) G02 : null;
                    if (fVar != null) {
                        InterfaceC0807j interfaceC0807jL = fVar.l();
                        d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor", interfaceC0807jL);
                        String strK = L2.b.K((InterfaceC0802e) interfaceC0807jL, W1.a.n(fVar, 3));
                        I3.m mVar = strK != null ? (I3.m) I3.l.f908d.get(strK) : null;
                        if (mVar != null) {
                            mVar.f910b.size();
                            aVar.w0().size();
                        }
                        d3.i.e("javaTypeEnhancementState", ((D3.a) eVar.f499d).f488v);
                        int i5 = 0;
                        if (A3.u.f154l.e(s.f146a) == A3.E.STRICT) {
                            if ((G02 instanceof InterfaceC0816s) && d3.i.a(G02.E(C3.f.f374J), Boolean.TRUE)) {
                                z4 = true;
                            }
                            List<V> listW0 = l6.w0();
                            d3.i.d("annotationOwnerForMember.valueParameters", listW0);
                            ArrayList arrayList4 = new ArrayList(o.C0(listW0));
                            for (V v5 : listW0) {
                                ArrayList arrayList5 = arrayList4;
                                arrayList5.add(g((C3.a) G02, v5, false, v5 != null ? L2.b.f(eVarF, v5.t()) : eVarF, enumC0002a2, (mVar == null || (list = mVar.f910b) == null) ? null : (q) m.P0(v5.f9408h, list), z4, new C0005d(8, v5)));
                                arrayList4 = arrayList5;
                            }
                            ArrayList arrayList6 = arrayList4;
                            interfaceC0783K = !(G02 instanceof InterfaceC0783K) ? (InterfaceC0783K) G02 : null;
                            if (interfaceC0783K == null) {
                                z5 = true;
                                if (AbstractC0420a.S(interfaceC0783K)) {
                                    enumC0002a = EnumC0002a.FIELD;
                                }
                                boolean z8 = z5;
                                AbstractC0468v abstractC0468vG = g((C3.a) G02, l6, true, eVarF, enumC0002a, mVar != null ? mVar.f909a : null, false, n.f912g);
                                abstractC0468vN = aVar.n();
                                d3.i.b(abstractC0468vN);
                                nVar = n.f911e;
                                if (X.d(abstractC0468vN, nVar, null)) {
                                    z6 = z8;
                                    Q2.e eVar2 = z6 ? new Q2.e(W3.a.f2841a, new C0010i()) : null;
                                    if (abstractC0468vE != null || abstractC0468vG != null) {
                                        if (abstractC0468vE == null) {
                                            C0890w c0890wD02 = aVar.d0();
                                            abstractC0468vE = c0890wD02 != null ? c0890wD02.e() : null;
                                        }
                                        arrayList = new ArrayList(o.C0(arrayList6));
                                        it = arrayList6.iterator();
                                        while (true) {
                                            int i6 = i5;
                                            if (it.hasNext()) {
                                                Object next = it.next();
                                                i5 = i6 + 1;
                                                if (i6 < 0) {
                                                    R2.n.B0();
                                                    throw null;
                                                }
                                                AbstractC0468v abstractC0468vE3 = (AbstractC0468v) next;
                                                if (abstractC0468vE3 == null) {
                                                    abstractC0468vE3 = ((V) aVar.w0().get(i6)).e();
                                                    d3.i.d("valueParameters[index].type", abstractC0468vE3);
                                                }
                                                arrayList.add(abstractC0468vE3);
                                            } else {
                                                if (abstractC0468vG == null) {
                                                    abstractC0468vG = aVar.n();
                                                    d3.i.b(abstractC0468vG);
                                                }
                                                G02 = aVar.G0(abstractC0468vE, arrayList, abstractC0468vG, eVar2);
                                            }
                                        }
                                    } else if (arrayList6.isEmpty()) {
                                        z8 = false;
                                        if (!z8 || eVar2 != null) {
                                        }
                                    } else {
                                        Iterator it4 = arrayList6.iterator();
                                        while (it4.hasNext()) {
                                            if (((AbstractC0468v) it4.next()) != null ? z8 : false) {
                                                break;
                                            }
                                        }
                                        z8 = false;
                                        if (!z8) {
                                            if (abstractC0468vE == null) {
                                            }
                                            arrayList = new ArrayList(o.C0(arrayList6));
                                            it = arrayList6.iterator();
                                            while (true) {
                                                int i62 = i5;
                                                if (it.hasNext()) {
                                                }
                                                arrayList.add(abstractC0468vE3);
                                            }
                                        }
                                    }
                                } else {
                                    C0890w c0890wD03 = aVar.d0();
                                    if (!((c0890wD03 == null || (abstractC0468vE2 = c0890wD03.e()) == null) ? false : X.d(abstractC0468vE2, nVar, null))) {
                                        List listW02 = aVar.w0();
                                        d3.i.d("valueParameters", listW02);
                                        if (listW02.isEmpty()) {
                                            z7 = false;
                                            if (z7) {
                                                z6 = false;
                                            }
                                            if (z6) {
                                            }
                                            if (abstractC0468vE != null) {
                                                if (abstractC0468vE == null) {
                                                }
                                                arrayList = new ArrayList(o.C0(arrayList6));
                                                it = arrayList6.iterator();
                                                while (true) {
                                                    int i622 = i5;
                                                    if (it.hasNext()) {
                                                    }
                                                    arrayList.add(abstractC0468vE3);
                                                }
                                            }
                                        } else {
                                            Iterator it5 = listW02.iterator();
                                            while (it5.hasNext()) {
                                                AbstractC0468v abstractC0468vE4 = ((V) it5.next()).e();
                                                d3.i.d("it.type", abstractC0468vE4);
                                                if (X.d(abstractC0468vE4, nVar, null)) {
                                                    z7 = z8;
                                                    break;
                                                }
                                            }
                                            z7 = false;
                                            if (z7) {
                                            }
                                            if (z6) {
                                            }
                                            if (abstractC0468vE != null) {
                                            }
                                        }
                                    }
                                }
                            } else {
                                z5 = true;
                            }
                            enumC0002a = EnumC0002a.METHOD_RETURN_TYPE;
                            boolean z82 = z5;
                            AbstractC0468v abstractC0468vG2 = g((C3.a) G02, l6, true, eVarF, enumC0002a, mVar != null ? mVar.f909a : null, false, n.f912g);
                            abstractC0468vN = aVar.n();
                            d3.i.b(abstractC0468vN);
                            nVar = n.f911e;
                            if (X.d(abstractC0468vN, nVar, null)) {
                            }
                        } else {
                            ((D3.a) eVarF.f499d).f486t.getClass();
                        }
                        z4 = false;
                        List<V> listW03 = l6.w0();
                        d3.i.d("annotationOwnerForMember.valueParameters", listW03);
                        ArrayList arrayList42 = new ArrayList(o.C0(listW03));
                        while (r23.hasNext()) {
                        }
                        ArrayList arrayList62 = arrayList42;
                        if (!(G02 instanceof InterfaceC0783K)) {
                        }
                        if (interfaceC0783K == null) {
                        }
                        enumC0002a = EnumC0002a.METHOD_RETURN_TYPE;
                        boolean z822 = z5;
                        AbstractC0468v abstractC0468vG22 = g((C3.a) G02, l6, true, eVarF, enumC0002a, mVar != null ? mVar.f909a : null, false, n.f912g);
                        abstractC0468vN = aVar.n();
                        d3.i.b(abstractC0468vN);
                        nVar = n.f911e;
                        if (X.d(abstractC0468vN, nVar, null)) {
                        }
                    }
                }
            }
            arrayList2.add(G02);
        }
        return arrayList2;
    }

    @Override // r3.InterfaceC0809l
    public Object k(C0890w c0890w, Object obj) {
        d3.i.e("descriptor", c0890w);
        ((StringBuilder) obj).append(c0890w.getName());
        return k.f2225a;
    }

    public Q l(int i5) {
        return (Q) ((List) this.f9022c).get(i5);
    }

    @Override // r3.InterfaceC0809l
    public Object m(Object obj, InterfaceC0821x interfaceC0821x) {
        d3.i.e("descriptor", interfaceC0821x);
        ((g) this.f9022c).P(interfaceC0821x, (StringBuilder) obj, true);
        return k.f2225a;
    }

    public InterfaceC0802e n(x3.o oVar) {
        Q3.c cVarB = oVar.b();
        Class cls = oVar.f9666a;
        Class<?> declaringClass = cls.getDeclaringClass();
        x3.o oVar2 = declaringClass != null ? new x3.o(declaringClass) : null;
        if (oVar2 != null) {
            InterfaceC0802e interfaceC0802eN = n(oVar2);
            a4.o oVarR = interfaceC0802eN != null ? interfaceC0802eN.R() : null;
            InterfaceC0804g interfaceC0804gC = oVarR != null ? oVarR.c(Q3.f.e(cls.getSimpleName()), z3.b.f9735j) : null;
            if (interfaceC0804gC instanceof InterfaceC0802e) {
                return (InterfaceC0802e) interfaceC0804gC;
            }
            return null;
        }
        Q3.c cVarE = cVarB.e();
        d3.i.d("fqName.parent()", cVarE);
        E3.s sVar = (E3.s) m.O0(((D3.d) this.f9022c).b(cVarE));
        if (sVar == null) {
            return null;
        }
        E3.x xVar = sVar.f636l.f578d;
        xVar.getClass();
        return xVar.v(Q3.f.e(cls.getSimpleName()), oVar);
    }

    public void o(float f) {
        ((WindowInsetsAnimation) this.f9022c).setFraction(f);
    }

    @Override // F.e
    public void onCancel() {
        ((C0.t) this.f9022c).d();
    }

    @Override // r3.InterfaceC0809l
    public Object p(M m5, Object obj) throws IOException {
        d3.i.e("descriptor", m5);
        r(m5, (StringBuilder) obj, "setter");
        return k.f2225a;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x01a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void q(InterfaceC0816s interfaceC0816s, StringBuilder sb) throws IOException {
        boolean z4;
        d3.i.e("descriptor", interfaceC0816s);
        g gVar = (g) this.f9022c;
        boolean zR = gVar.r();
        S3.k kVar = gVar.f2625a;
        if (!zR) {
            S3.j jVar = kVar.f2672g;
            InterfaceC0494o[] interfaceC0494oArr = S3.k.f2645W;
            if (!((Boolean) jVar.a(interfaceC0494oArr[5], kVar)).booleanValue()) {
                gVar.z(sb, interfaceC0816s, null);
                List listV0 = interfaceC0816s.v0();
                d3.i.d("function.contextReceiverParameters", listV0);
                gVar.C(sb, listV0);
                p pVarC = interfaceC0816s.c();
                d3.i.d("function.visibility", pVarC);
                gVar.h0(pVarC, sb);
                gVar.M(interfaceC0816s, sb);
                if (((Boolean) kVar.f2662R.a(interfaceC0494oArr[42], kVar)).booleanValue()) {
                    gVar.K(interfaceC0816s, sb);
                }
                gVar.S(interfaceC0816s, sb);
                if (((Boolean) kVar.f2662R.a(interfaceC0494oArr[42], kVar)).booleanValue()) {
                    boolean z5 = false;
                    if (interfaceC0816s.Q()) {
                        Collection collectionP = interfaceC0816s.p();
                        d3.i.d("functionDescriptor.overriddenDescriptors", collectionP);
                        if (!collectionP.isEmpty()) {
                            Iterator it = collectionP.iterator();
                            while (true) {
                                if (!it.hasNext()) {
                                    break;
                                }
                                if (((InterfaceC0816s) it.next()).Q()) {
                                    if (((Boolean) kVar.f2658N.a(S3.k.f2645W[38], kVar)).booleanValue()) {
                                        break;
                                    }
                                    if (interfaceC0816s.y0()) {
                                        Collection collectionP2 = interfaceC0816s.p();
                                        d3.i.d("functionDescriptor.overriddenDescriptors", collectionP2);
                                        if (collectionP2.isEmpty()) {
                                            z5 = true;
                                        } else {
                                            Iterator it2 = collectionP2.iterator();
                                            while (true) {
                                                if (!it2.hasNext()) {
                                                    break;
                                                } else if (((InterfaceC0816s) it2.next()).y0()) {
                                                    if (((Boolean) kVar.f2658N.a(S3.k.f2645W[38], kVar)).booleanValue()) {
                                                        break;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    gVar.N(sb, interfaceC0816s.O(), "tailrec");
                                    gVar.N(sb, interfaceC0816s.h(), "suspend");
                                    gVar.N(sb, interfaceC0816s.j(), "inline");
                                    gVar.N(sb, z5, "infix");
                                    gVar.N(sb, z4, "operator");
                                }
                            }
                            z4 = false;
                            if (interfaceC0816s.y0()) {
                            }
                            gVar.N(sb, interfaceC0816s.O(), "tailrec");
                            gVar.N(sb, interfaceC0816s.h(), "suspend");
                            gVar.N(sb, interfaceC0816s.j(), "inline");
                            gVar.N(sb, z5, "infix");
                            gVar.N(sb, z4, "operator");
                        }
                        z4 = true;
                        if (interfaceC0816s.y0()) {
                        }
                        gVar.N(sb, interfaceC0816s.O(), "tailrec");
                        gVar.N(sb, interfaceC0816s.h(), "suspend");
                        gVar.N(sb, interfaceC0816s.j(), "inline");
                        gVar.N(sb, z5, "infix");
                        gVar.N(sb, z4, "operator");
                    } else {
                        z4 = false;
                        if (interfaceC0816s.y0()) {
                        }
                        gVar.N(sb, interfaceC0816s.O(), "tailrec");
                        gVar.N(sb, interfaceC0816s.h(), "suspend");
                        gVar.N(sb, interfaceC0816s.j(), "inline");
                        gVar.N(sb, z5, "infix");
                        gVar.N(sb, z4, "operator");
                    }
                } else {
                    gVar.N(sb, interfaceC0816s.h(), "suspend");
                }
                gVar.J(interfaceC0816s, sb);
                if (gVar.u()) {
                    if (interfaceC0816s.I()) {
                        sb.append("/*isHiddenToOvercomeSignatureClash*/ ");
                    }
                    if (interfaceC0816s.b0()) {
                        sb.append("/*isHiddenForResolutionEverywhereBesideSupercalls*/ ");
                    }
                }
            }
            sb.append(gVar.I("fun"));
            sb.append(" ");
            List listU = interfaceC0816s.u();
            d3.i.d("function.typeParameters", listU);
            gVar.d0(sb, listU, true);
            gVar.V(sb, interfaceC0816s);
        }
        gVar.P(interfaceC0816s, sb, true);
        List listW0 = interfaceC0816s.w0();
        d3.i.d("function.valueParameters", listW0);
        gVar.g0(sb, listW0, interfaceC0816s.o0());
        gVar.W(sb, interfaceC0816s);
        AbstractC0468v abstractC0468vN = interfaceC0816s.n();
        S3.j jVar2 = kVar.f2677l;
        InterfaceC0494o[] interfaceC0494oArr2 = S3.k.f2645W;
        if (!((Boolean) jVar2.a(interfaceC0494oArr2[10], kVar)).booleanValue()) {
            if (((Boolean) kVar.f2676k.a(interfaceC0494oArr2[9], kVar)).booleanValue() || abstractC0468vN == null) {
                sb.append(": ");
                sb.append(abstractC0468vN == null ? "[NULL]" : gVar.Y(abstractC0468vN));
            } else {
                Q3.f fVar = AbstractC0732i.f8454e;
                if (!AbstractC0732i.D(abstractC0468vN, o3.m.f8509d)) {
                }
            }
        }
        List listU2 = interfaceC0816s.u();
        d3.i.d("function.typeParameters", listU2);
        gVar.i0(sb, listU2);
    }

    public void r(InterfaceC0782J interfaceC0782J, StringBuilder sb, String str) throws IOException {
        g gVar = (g) this.f9022c;
        S3.k kVar = gVar.f2625a;
        int iOrdinal = ((S3.p) kVar.f2651G.a(S3.k.f2645W[31], kVar)).ordinal();
        if (iOrdinal != 0) {
            if (iOrdinal != 1) {
                return;
            }
            q(interfaceC0782J, sb);
        } else {
            gVar.K(interfaceC0782J, sb);
            sb.append(str.concat(" for "));
            InterfaceC0783K interfaceC0783KQ0 = ((I) interfaceC0782J).Q0();
            d3.i.d("descriptor.correspondingProperty", interfaceC0783KQ0);
            g.n(gVar, interfaceC0783KQ0, sb);
        }
    }

    @Override // r3.InterfaceC0809l
    public Object s(InterfaceC0775C interfaceC0775C, Object obj) {
        StringBuilder sb = (StringBuilder) obj;
        d3.i.e("descriptor", interfaceC0775C);
        g gVar = (g) this.f9022c;
        gVar.getClass();
        u3.E e5 = (u3.E) interfaceC0775C;
        gVar.T(e5.f9353g, "package-fragment", sb);
        if (gVar.f2625a.g()) {
            sb.append(" in ");
            gVar.P(e5.l(), sb, false);
        }
        return k.f2225a;
    }

    @Override // r3.InterfaceC0809l
    public Object t(InterfaceC0789Q interfaceC0789Q, Object obj) {
        d3.i.e("descriptor", interfaceC0789Q);
        ((g) this.f9022c).b0(interfaceC0789Q, (StringBuilder) obj, true);
        return k.f2225a;
    }

    @Override // r3.InterfaceC0809l
    public /* bridge */ /* synthetic */ Object v(InterfaceC0816s interfaceC0816s, Object obj) throws IOException {
        q(interfaceC0816s, (StringBuilder) obj);
        return k.f2225a;
    }

    @Override // r3.InterfaceC0809l
    public Object w(t tVar, Object obj) {
        StringBuilder sb = (StringBuilder) obj;
        d3.i.e("descriptor", tVar);
        g gVar = (g) this.f9022c;
        gVar.getClass();
        gVar.z(sb, tVar, null);
        p pVar = tVar.f6900g;
        d3.i.d("typeAlias.visibility", pVar);
        gVar.h0(pVar, sb);
        gVar.K(tVar, sb);
        sb.append(gVar.I("typealias"));
        sb.append(" ");
        gVar.P(tVar, sb, true);
        gVar.d0(sb, tVar.s(), false);
        gVar.A(tVar, sb);
        sb.append(" = ");
        sb.append(gVar.Y(tVar.S0()));
        return k.f2225a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0052  */
    @Override // r3.InterfaceC0809l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object x(InterfaceC0806i interfaceC0806i, Object obj) throws IOException {
        boolean z4;
        C0879k c0879kW;
        StringBuilder sb = (StringBuilder) obj;
        d3.i.e("constructorDescriptor", interfaceC0806i);
        g gVar = (g) this.f9022c;
        gVar.getClass();
        gVar.z(sb, interfaceC0806i, null);
        S3.k kVar = gVar.f2625a;
        kVar.getClass();
        InterfaceC0494o[] interfaceC0494oArr = S3.k.f2645W;
        if (((Boolean) kVar.f2679o.a(interfaceC0494oArr[13], kVar)).booleanValue() || interfaceC0806i.Y().i() != 2) {
            p pVarC = ((AbstractC0889v) interfaceC0806i).c();
            d3.i.d("constructor.visibility", pVarC);
            z4 = gVar.h0(pVarC, sb);
        }
        gVar.J(interfaceC0806i, sb);
        boolean z5 = ((Boolean) kVar.f2659O.a(interfaceC0494oArr[39], kVar)).booleanValue() || !interfaceC0806i.V() || z4;
        if (z5) {
            sb.append(gVar.I("constructor"));
        }
        InterfaceC0805h interfaceC0805hL = interfaceC0806i.l();
        d3.i.d("constructor.containingDeclaration", interfaceC0805hL);
        if (((Boolean) kVar.f2690z.a(interfaceC0494oArr[24], kVar)).booleanValue()) {
            if (z5) {
                sb.append(" ");
            }
            gVar.P(interfaceC0805hL, sb, true);
            gVar.d0(sb, ((AbstractC0889v) interfaceC0806i).u(), false);
        }
        AbstractC0889v abstractC0889v = (AbstractC0889v) interfaceC0806i;
        List listW0 = abstractC0889v.w0();
        d3.i.d("constructor.valueParameters", listW0);
        gVar.g0(sb, listW0, interfaceC0806i.o0());
        if (((Boolean) kVar.f2681q.a(interfaceC0494oArr[15], kVar)).booleanValue() && !interfaceC0806i.V() && (interfaceC0805hL instanceof InterfaceC0802e) && (c0879kW = ((InterfaceC0802e) interfaceC0805hL).W()) != null) {
            List listW02 = c0879kW.w0();
            d3.i.d("primaryConstructor.valueParameters", listW02);
            ArrayList arrayList = new ArrayList();
            for (Object obj2 : listW02) {
                V v4 = (V) obj2;
                if (!v4.R0() && v4.f9412l == null) {
                    arrayList.add(obj2);
                }
            }
            if (!arrayList.isEmpty()) {
                sb.append(" : ");
                sb.append(gVar.I("this"));
                sb.append(m.S0(arrayList, ", ", "(", ")", S3.f.f2618e, 24));
            }
        }
        if (((Boolean) kVar.f2690z.a(S3.k.f2645W[24], kVar)).booleanValue()) {
            gVar.i0(sb, abstractC0889v.u());
        }
        return k.f2225a;
    }

    public C0837c(L3.X x4) {
        List list = x4.f1540e;
        if ((x4.f1539d & 1) == 1) {
            int i5 = x4.f;
            d3.i.d("typeTable.typeList", list);
            ArrayList arrayList = new ArrayList(o.C0(list));
            int i6 = 0;
            for (Object obj : list) {
                int i7 = i6 + 1;
                if (i6 < 0) {
                    R2.n.B0();
                    throw null;
                }
                Q qG = (Q) obj;
                if (i6 >= i5) {
                    qG.getClass();
                    P pS = Q.s(qG);
                    pS.f |= 2;
                    pS.f1464h = true;
                    qG = pS.g();
                    if (!qG.b()) {
                        throw new A0.c();
                    }
                }
                arrayList.add(qG);
                i6 = i7;
            }
            list = arrayList;
        }
        d3.i.d("run {\n        val origin… else originalTypes\n    }", list);
        this.f9022c = list;
    }

    public C0837c(int i5) {
        switch (i5) {
            case 7:
                this.f9022c = new LinkedHashMap();
                break;
            case 9:
                break;
            case 15:
                this.f9022c = T0.a.f2713a;
                break;
            case 17:
                this.f9022c = new Stack();
                break;
            default:
                this.f9022c = new HashSet();
                break;
        }
    }

    public C0837c(View view) {
        C0051z c0051z = new C0051z(view);
        c0051z.f1026c = view;
        this.f9022c = c0051z;
    }

    public C0837c(WindowInsetsAnimation windowInsetsAnimation) {
        this(9);
        this.f9022c = windowInsetsAnimation;
    }
}
