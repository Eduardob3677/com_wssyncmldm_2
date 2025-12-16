package E3;

import A3.EnumC0002a;
import L3.C0061j;
import L3.Q;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import f1.AbstractC0420a;
import h3.C0446b;
import h3.C0447c;
import h4.AbstractC0449b;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.O;
import h4.V;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import k.Q0;
import o3.AbstractC0732i;
import p0.AbstractC0739a;
import r3.C0773A;
import r3.C0787O;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0821x;
import s2.C0837c;
import s3.InterfaceC0839b;
import u3.AbstractC0870b;
import u3.AbstractC0878j;

/* renamed from: E3.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0025h extends AbstractC0449b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f591c = 0;

    /* renamed from: d, reason: collision with root package name */
    public final g4.i f592d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractC0870b f593e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0025h(j jVar) {
        super(((D3.a) jVar.f597m.f499d).f469a);
        this.f593e = jVar;
        g4.o oVar = ((D3.a) jVar.f597m.f499d).f469a;
        C0024g c0024g = new C0024g(jVar, 0);
        g4.l lVar = (g4.l) oVar;
        lVar.getClass();
        this.f592d = new g4.i(lVar, c0024g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x02d0  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0355  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0363  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0202  */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16, types: [java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r2v25, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v26 */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r5v7, types: [java.util.Collection] */
    @Override // h4.AbstractC0454g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Collection b() {
        Class cls;
        ?? arrayList;
        String str;
        Q3.c cVar;
        Q3.c cVar2;
        ArrayList arrayList2;
        AbstractC0472z abstractC0472zQ;
        Q3.c cVarB;
        AbstractC0878j abstractC0878j = null;
        AbstractC0870b abstractC0870b = this.f593e;
        switch (this.f591c) {
            case 0:
                j jVar = (j) abstractC0870b;
                Class cls2 = jVar.f595k.f9666a;
                cls = Object.class;
                boolean zA = d3.i.a(cls2, cls);
                R2.u uVar = R2.u.f2325c;
                if (zA) {
                    arrayList = uVar;
                } else {
                    c1.w wVar = new c1.w(2);
                    Type genericSuperclass = cls2.getGenericSuperclass();
                    wVar.Q(genericSuperclass != null ? genericSuperclass : Object.class);
                    Type[] genericInterfaces = cls2.getGenericInterfaces();
                    d3.i.d("klass.genericInterfaces", genericInterfaces);
                    wVar.R(genericInterfaces);
                    ArrayList arrayList3 = (ArrayList) wVar.f5265c;
                    List listY0 = R2.n.y0(arrayList3.toArray(new Type[arrayList3.size()]));
                    arrayList = new ArrayList(R2.o.C0(listY0));
                    Iterator it = listY0.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new x3.q((Type) it.next()));
                    }
                }
                ArrayList arrayList4 = new ArrayList(arrayList.size());
                boolean z4 = false;
                ArrayList arrayList5 = new ArrayList(0);
                Q3.c cVar3 = A3.z.n;
                d3.i.d("PURELY_IMPLEMENTS_ANNOTATION", cVar3);
                InterfaceC0839b interfaceC0839bF = jVar.f607x.f(cVar3);
                if (interfaceC0839bF == null) {
                    cVar = null;
                } else {
                    Object objC1 = R2.m.c1(interfaceC0839bF.b().values());
                    V3.v vVar = objC1 instanceof V3.v ? (V3.v) objC1 : null;
                    if (vVar != null && (str = (String) vVar.f2797a) != null) {
                        int i5 = 1;
                        int i6 = 0;
                        while (true) {
                            if (i6 < str.length()) {
                                char cCharAt = str.charAt(i6);
                                int iF = Q0.f(i5);
                                if (iF != 0) {
                                    if (iF != 1) {
                                        if (iF != 2) {
                                            continue;
                                        }
                                    } else if (cCharAt == '.') {
                                        i5 = 3;
                                    } else if (!Character.isJavaIdentifierPart(cCharAt)) {
                                    }
                                    i6++;
                                } else if (Character.isJavaIdentifierStart(cCharAt)) {
                                    i5 = 2;
                                    i6++;
                                }
                            } else if (i5 != 3) {
                                cVar = new Q3.c(str);
                            }
                        }
                        cVar = null;
                    }
                }
                if (cVar == null || cVar.d() || !cVar.h(o3.n.f8537i)) {
                    cVar = null;
                }
                D3.e eVar = jVar.f597m;
                if (cVar == null) {
                    LinkedHashMap linkedHashMap = A3.l.f134a;
                    cVar2 = (Q3.c) A3.l.f135b.get(X3.f.g(jVar));
                    if (cVar2 == null) {
                        abstractC0472zQ = null;
                    }
                    for (x3.q qVar : arrayList) {
                        AbstractC0468v abstractC0468vK = ((com.google.firebase.messaging.p) eVar.f502h).K(qVar, L2.b.N(1, z4, z4, abstractC0878j, 7));
                        C0837c c0837c = ((D3.a) eVar.f499d).f484r;
                        c0837c.getClass();
                        D3.e eVar2 = eVar;
                        AbstractC0468v abstractC0468vI = c0837c.i(new I3.p(null, false, eVar, EnumC0002a.TYPE_USE, true), abstractC0468vK, uVar, null, false);
                        if (abstractC0468vI == null) {
                            abstractC0468vI = abstractC0468vK;
                        }
                        if (abstractC0468vI.J0().i() instanceof C0773A) {
                            arrayList5.add(qVar);
                        }
                        if (!d3.i.a(abstractC0468vI.J0(), abstractC0472zQ != null ? abstractC0472zQ.J0() : null) && !AbstractC0732i.x(abstractC0468vI)) {
                            arrayList4.add(abstractC0468vI);
                        }
                        eVar = eVar2;
                        abstractC0878j = null;
                        z4 = false;
                    }
                    D3.e eVar3 = eVar;
                    InterfaceC0802e interfaceC0802e = jVar.f596l;
                    q4.k.b(arrayList4, interfaceC0802e == null ? V.e(AbstractC0739a.g(interfaceC0802e, jVar)).j(1, interfaceC0802e.q()) : null);
                    q4.k.b(arrayList4, abstractC0472zQ);
                    if (!arrayList5.isEmpty()) {
                        d4.k kVar = ((D3.a) eVar3.f499d).f;
                        ArrayList arrayList6 = new ArrayList(R2.o.C0(arrayList5));
                        Iterator it2 = arrayList5.iterator();
                        while (it2.hasNext()) {
                            H3.d dVar = (H3.d) it2.next();
                            d3.i.c("null cannot be cast to non-null type org.jetbrains.kotlin.load.java.structure.JavaClassifierType", dVar);
                            arrayList6.add(((x3.q) dVar).f9668a.toString());
                        }
                        kVar.b(jVar, arrayList6);
                    }
                    return !(arrayList4.isEmpty() ^ true) ? R2.m.g1(arrayList4) : AbstractC0420a.V(((D3.a) eVar3.f499d).f481o.g().e());
                }
                cVar2 = cVar;
                InterfaceC0821x interfaceC0821x = ((D3.a) eVar.f499d).f481o;
                z3.b bVar = z3.b.f9735j;
                int i7 = X3.f.f2874a;
                d3.i.e("<this>", interfaceC0821x);
                cVar2.d();
                Q3.c cVarE = cVar2.e();
                d3.i.d("topLevelClassFqName.parent()", cVarE);
                a4.k kVar2 = ((u3.y) interfaceC0821x.a0(cVarE)).f9516i;
                Q3.f fVarF = cVar2.f();
                d3.i.d("topLevelClassFqName.shortName()", fVarF);
                InterfaceC0804g interfaceC0804gC = kVar2.c(fVarF, bVar);
                InterfaceC0802e interfaceC0802e2 = interfaceC0804gC instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gC : null;
                if (interfaceC0802e2 != null) {
                    int size = interfaceC0802e2.H().k().size();
                    List listK = jVar.f602s.k();
                    d3.i.d("getTypeConstructor().parameters", listK);
                    int size2 = listK.size();
                    if (size2 == size) {
                        arrayList2 = new ArrayList(R2.o.C0(listK));
                        Iterator it3 = listK.iterator();
                        while (it3.hasNext()) {
                            arrayList2.add(new O(1, ((InterfaceC0789Q) it3.next()).q()));
                        }
                    } else {
                        if (size2 == 1 && size > 1 && cVar == null) {
                            O o2 = new O(1, ((InterfaceC0789Q) R2.m.b1(listK)).q());
                            C0447c c0447c = new C0447c(1, size, 1);
                            ArrayList arrayList7 = new ArrayList(R2.o.C0(c0447c));
                            Iterator it4 = c0447c.iterator();
                            while (((C0446b) it4).f7007e) {
                                ((C0446b) it4).a();
                                arrayList7.add(o2);
                            }
                            arrayList2 = arrayList7;
                        }
                        abstractC0472zQ = null;
                    }
                    h4.G.f7019d.getClass();
                    abstractC0472zQ = C0451d.q(h4.G.f7020e, interfaceC0802e2, arrayList2);
                }
                while (r5.hasNext()) {
                }
                D3.e eVar32 = eVar;
                InterfaceC0802e interfaceC0802e3 = jVar.f596l;
                q4.k.b(arrayList4, interfaceC0802e3 == null ? V.e(AbstractC0739a.g(interfaceC0802e3, jVar)).j(1, interfaceC0802e3.q()) : null);
                q4.k.b(arrayList4, abstractC0472zQ);
                if (!arrayList5.isEmpty()) {
                }
                if (!(arrayList4.isEmpty() ^ true)) {
                }
                break;
            default:
                f4.i iVar = (f4.i) abstractC0870b;
                C0061j c0061j = iVar.f6850g;
                G4 g42 = iVar.n;
                C0837c c0837c2 = (C0837c) g42.f;
                d3.i.e("<this>", c0061j);
                d3.i.e("typeTable", c0837c2);
                List list = c0061j.f1692j;
                boolean z5 = !list.isEmpty();
                ?? arrayList8 = list;
                if (!z5) {
                    arrayList8 = 0;
                }
                if (arrayList8 == 0) {
                    List<Integer> list2 = c0061j.f1693k;
                    d3.i.d("supertypeIdList", list2);
                    arrayList8 = new ArrayList(R2.o.C0(list2));
                    for (Integer num : list2) {
                        d3.i.d("it", num);
                        arrayList8.add(c0837c2.l(num.intValue()));
                    }
                }
                ArrayList arrayList9 = new ArrayList(R2.o.C0(arrayList8));
                Iterator it5 = arrayList8.iterator();
                while (it5.hasNext()) {
                    arrayList9.add(((J3.c) g42.f5383j).o((Q) it5.next()));
                }
                ArrayList arrayListY0 = R2.m.Y0(arrayList9, ((d4.i) g42.f5377c).n.a(iVar));
                ArrayList arrayList10 = new ArrayList();
                Iterator it6 = arrayListY0.iterator();
                while (it6.hasNext()) {
                    InterfaceC0804g interfaceC0804gI = ((AbstractC0468v) it6.next()).J0().i();
                    C0773A c0773a = interfaceC0804gI instanceof C0773A ? (C0773A) interfaceC0804gI : null;
                    if (c0773a != null) {
                        arrayList10.add(c0773a);
                    }
                }
                if (!arrayList10.isEmpty()) {
                    d4.k kVar3 = ((d4.i) g42.f5377c).f6535h;
                    ArrayList arrayList11 = new ArrayList(R2.o.C0(arrayList10));
                    Iterator it7 = arrayList10.iterator();
                    while (it7.hasNext()) {
                        C0773A c0773a2 = (C0773A) it7.next();
                        Q3.b bVarF = X3.f.f(c0773a2);
                        arrayList11.add((bVarF == null || (cVarB = bVarF.b()) == null) ? c0773a2.getName().b() : cVarB.b());
                    }
                    kVar3.b(iVar, arrayList11);
                }
                return R2.m.g1(arrayListY0);
        }
    }

    @Override // h4.AbstractC0454g
    public final C0787O d() {
        switch (this.f591c) {
            case 0:
                return ((D3.a) ((j) this.f593e).f597m.f499d).f480m;
            default:
                return C0787O.f8792e;
        }
    }

    @Override // h4.J
    public final boolean h() {
        switch (this.f591c) {
        }
        return true;
    }

    @Override // h4.AbstractC0449b, h4.J
    public final InterfaceC0804g i() {
        switch (this.f591c) {
            case 0:
                return (j) this.f593e;
            default:
                return (f4.i) this.f593e;
        }
    }

    @Override // h4.J
    public final List k() {
        switch (this.f591c) {
        }
        return (List) this.f592d.a();
    }

    @Override // h4.AbstractC0449b
    /* renamed from: n */
    public final InterfaceC0802e i() {
        switch (this.f591c) {
            case 0:
                return (j) this.f593e;
            default:
                return (f4.i) this.f593e;
        }
    }

    public final String toString() {
        switch (this.f591c) {
            case 0:
                String strB = ((j) this.f593e).getName().b();
                d3.i.d("name.asString()", strB);
                return strB;
            default:
                String str = ((f4.i) this.f593e).getName().f2242c;
                d3.i.d("name.toString()", str);
                return str;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0025h(f4.i iVar) {
        super(((d4.i) iVar.n.f5377c).f6529a);
        this.f593e = iVar;
        g4.o oVar = ((d4.i) iVar.n.f5377c).f6529a;
        f4.h hVar = new f4.h(iVar, 0);
        g4.l lVar = (g4.l) oVar;
        lVar.getClass();
        this.f592d = new g4.i(lVar, hVar);
    }
}
