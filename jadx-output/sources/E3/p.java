package E3;

import A3.C0004c;
import A3.EnumC0002a;
import L3.C0070t;
import c3.InterfaceC0222b;
import f1.AbstractC0420a;
import h4.AbstractC0468v;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import o3.AbstractC0732i;
import p.AbstractC0735a;
import r3.InterfaceC0786N;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import s2.C0837c;
import s3.EnumC0851n;
import s3.InterfaceC0839b;
import u3.C0886s;
import u3.N;
import x3.AbstractC0917d;

/* loaded from: classes.dex */
public final class p extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f621d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f622e;
    public final /* synthetic */ Object f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public p(q qVar, D3.e eVar) {
        super(1);
        this.f621d = 1;
        this.f622e = qVar;
        this.f = eVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00f4  */
    @Override // c3.InterfaceC0222b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(Object obj) {
        C0837c c0837cM;
        w3.b bVarF;
        Map map;
        I3.e eVar;
        boolean z4 = true;
        Object obj2 = this.f622e;
        Object obj3 = this.f;
        switch (this.f621d) {
            case 0:
                Q3.f fVar = (Q3.f) obj;
                d3.i.e("accessorName", fVar);
                N n = (N) obj3;
                if (d3.i.a(n.getName(), fVar)) {
                    return AbstractC0420a.V(n);
                }
                q qVar = (q) obj2;
                return R2.m.Y0(q.v(qVar, fVar), q.w(qVar, fVar));
            case 1:
                Q3.f fVar2 = (Q3.f) obj;
                d3.i.e("name", fVar2);
                q qVar2 = (q) obj2;
                boolean zContains = ((Set) qVar2.f626r.a()).contains(fVar2);
                D3.e eVar2 = (D3.e) obj3;
                InterfaceC0802e interfaceC0802e = qVar2.n;
                if (zContains) {
                    c1.w wVar = ((D3.a) eVar2.f499d).f470b;
                    Q3.b bVarF2 = X3.f.f(interfaceC0802e);
                    d3.i.b(bVarF2);
                    Q3.b bVarD = bVarF2.d(fVar2);
                    wVar.getClass();
                    Q3.c cVarH = bVarD.h();
                    d3.i.d("classId.packageFqName", cVarH);
                    String strQ = s4.h.q(bVarD.i().b(), '.', '$');
                    if (!cVarH.d()) {
                        strQ = cVarH.b() + '.' + strQ;
                    }
                    Class clsR = o4.a.r((ClassLoader) wVar.f5265c, strQ);
                    x3.o oVar = clsR != null ? new x3.o(clsR) : null;
                    if (oVar == null) {
                        return null;
                    }
                    j jVar = new j(eVar2, interfaceC0802e, oVar, null);
                    ((D3.a) eVar2.f499d).f485s.getClass();
                    return jVar;
                }
                if (!((Set) qVar2.f627s.a()).contains(fVar2)) {
                    x3.u uVar = (x3.u) ((Map) qVar2.f628t.a()).get(fVar2);
                    if (uVar == null) {
                        return null;
                    }
                    g4.o oVar2 = ((D3.a) eVar2.f499d).f469a;
                    o oVar3 = new o(qVar2, 2);
                    g4.l lVar = (g4.l) oVar2;
                    lVar.getClass();
                    g4.i iVar = new g4.i(lVar, oVar3);
                    D3.a aVar = (D3.a) eVar2.f499d;
                    return C0886s.u0(aVar.f469a, qVar2.n, fVar2, iVar, W1.a.g0(eVar2, uVar), aVar.f477j.c(uVar));
                }
                S2.b bVar = new S2.b(new Object[10], 0, 0, false, null, null);
                ((Y3.a) ((D3.a) eVar2.f499d).f490x).c(eVar2, interfaceC0802e, fVar2, bVar);
                if (bVar.f2587g != null) {
                    throw new IllegalStateException();
                }
                bVar.p();
                bVar.f = true;
                int iL = bVar.l();
                if (iL == 0) {
                    return null;
                }
                if (iL == 1) {
                    return (InterfaceC0802e) R2.m.b1(bVar);
                }
                throw new IllegalStateException(("Multiple classes with same name are generated: " + bVar).toString());
            case 2:
                t tVar = (t) obj;
                d3.i.e("request", tVar);
                x xVar = (x) obj3;
                Q3.b bVar2 = new Q3.b(xVar.f643o.f9353g, tVar.f638a);
                D3.e eVar3 = (D3.e) obj2;
                D3.e eVar4 = xVar.f551b;
                x3.o oVar4 = tVar.f639b;
                if (oVar4 != null) {
                    e.v vVar = ((D3.a) eVar3.f499d).f471c;
                    d3.i.e("<this>", ((D3.a) eVar4.f499d).f472d.c().f6531c);
                    P3.f fVar3 = P3.f.f2161g;
                    vVar.getClass();
                    d3.i.e("jvmMetadataVersion", fVar3);
                    Class clsR2 = o4.a.r((ClassLoader) vVar.f6792c, oVar4.b().b());
                    c0837cM = (clsR2 == null || (bVarF = AbstractC0735a.f(clsR2)) == null) ? null : new C0837c(bVarF);
                } else {
                    e.v vVar2 = ((D3.a) eVar3.f499d).f471c;
                    d3.i.e("<this>", ((D3.a) eVar4.f499d).f472d.c().f6531c);
                    c0837cM = vVar2.m(bVar2, P3.f.f2161g);
                }
                w3.b bVar3 = c0837cM != null ? (w3.b) c0837cM.f9022c : null;
                Q3.b bVarA = bVar3 != null ? AbstractC0917d.a(bVar3.f9608a) : null;
                if (bVarA != null && ((true ^ bVarA.f2231b.e().d()) || bVarA.f2232c)) {
                    return null;
                }
                i3.x uVar2 = v.f641b;
                if (bVar3 != null) {
                    if (((K3.a) bVar3.f9609b.f1289d) == K3.a.CLASS) {
                        J3.f fVar4 = ((D3.a) eVar4.f499d).f472d;
                        fVar4.getClass();
                        d4.d dVarF = fVar4.f(bVar3);
                        InterfaceC0802e interfaceC0802eA = dVarF == null ? null : fVar4.c().f6546t.a(AbstractC0917d.a(bVar3.f9608a), dVarF);
                        if (interfaceC0802eA != null) {
                            uVar2 = new u(interfaceC0802eA);
                        }
                    } else {
                        uVar2 = w.f642b;
                    }
                }
                if (uVar2 instanceof u) {
                    return ((u) uVar2).f640b;
                }
                if (uVar2 instanceof w) {
                    return null;
                }
                if (!(uVar2 instanceof v)) {
                    throw new A0.c();
                }
                if (oVar4 == null) {
                    c1.w wVar2 = ((D3.a) eVar3.f499d).f470b;
                    wVar2.getClass();
                    Q3.c cVarH2 = bVar2.h();
                    d3.i.d("classId.packageFqName", cVarH2);
                    String strQ2 = s4.h.q(bVar2.i().b(), '.', '$');
                    if (!cVarH2.d()) {
                        strQ2 = cVarH2.b() + '.' + strQ2;
                    }
                    Class clsR3 = o4.a.r((ClassLoader) wVar2.f5265c, strQ2);
                    oVar4 = clsR3 != null ? new x3.o(clsR3) : null;
                }
                Q3.c cVarB = oVar4 != null ? oVar4.b() : null;
                if (cVarB == null || cVarB.d()) {
                    return null;
                }
                Q3.c cVarE = cVarB.e();
                s sVar = xVar.f643o;
                if (!d3.i.a(cVarE, sVar.f9353g)) {
                    return null;
                }
                j jVar2 = new j(eVar3, sVar, oVar4, null);
                ((D3.a) eVar3.f499d).f485s.getClass();
                return jVar2;
            case 3:
                int iIntValue = ((Number) obj).intValue();
                I3.q qVar3 = (I3.q) obj3;
                if (qVar3 != null && (map = qVar3.f923a) != null && (eVar = (I3.e) map.get(Integer.valueOf(iIntValue))) != null) {
                    return eVar;
                }
                if (iIntValue >= 0) {
                    I3.e[] eVarArr = (I3.e[]) obj2;
                    d3.i.e("<this>", eVarArr);
                    if (iIntValue <= eVarArr.length - 1) {
                        return eVarArr[iIntValue];
                    }
                }
                return I3.e.f887e;
            case 4:
                d3.i.e("$this$extractNullability", obj);
                k4.c cVar = ((I3.a) obj2).f880a;
                I3.p pVar = (I3.p) obj3;
                pVar.getClass();
                InterfaceC0839b interfaceC0839b = (InterfaceC0839b) obj;
                if (interfaceC0839b instanceof C3.h) {
                }
                boolean z5 = interfaceC0839b instanceof C0023f;
                D3.e eVar5 = (D3.e) pVar.f921d;
                if (z5) {
                    ((D3.a) eVar5.f499d).f486t.getClass();
                    if (!((C0023f) interfaceC0839b).f588g) {
                        if (((EnumC0002a) pVar.f922e) != EnumC0002a.TYPE_PARAMETER_BOUNDS) {
                            if (cVar != null) {
                                Q3.f fVar5 = AbstractC0732i.f8454e;
                                InterfaceC0804g interfaceC0804gI = ((AbstractC0468v) cVar).J0().i();
                                if (interfaceC0804gI == null || AbstractC0732i.r(interfaceC0804gI) == null) {
                                    z4 = false;
                                } else {
                                    ((D3.a) eVar5.f499d).f483q.getClass();
                                    Object objC = C0004c.c(interfaceC0839b, o3.m.f8523t);
                                    if (objC != null) {
                                        ArrayList arrayListA = C0004c.a(objC, false);
                                        if (!arrayListA.isEmpty()) {
                                            Iterator it = arrayListA.iterator();
                                            while (it.hasNext()) {
                                                String str = (String) it.next();
                                                HashMap map2 = EnumC0851n.f9054d;
                                                if (d3.i.a(str, "TYPE")) {
                                                    ((D3.a) eVar5.f499d).f486t.getClass();
                                                }
                                            }
                                            z4 = false;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                return Boolean.valueOf(z4);
            case 5:
                ((androidx.lifecycle.E) obj3).k(((InterfaceC0222b) obj2).e(obj));
                return Q2.k.f2225a;
            default:
                Q3.f fVar6 = (Q3.f) obj;
                d3.i.e("name", fVar6);
                com.google.firebase.messaging.p pVar2 = (com.google.firebase.messaging.p) obj3;
                C0070t c0070t = (C0070t) ((LinkedHashMap) pVar2.f6258d).get(fVar6);
                if (c0070t == null) {
                    return null;
                }
                f4.i iVar2 = (f4.i) obj2;
                return C0886s.u0(((d4.i) iVar2.n.f5377c).f6529a, iVar2, fVar6, (g4.i) pVar2.f, new f4.a(((d4.i) iVar2.n.f5377c).f6529a, new B3.c(iVar2, 6, c0070t)), InterfaceC0786N.f8790a);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ p(Object obj, int i5, Object obj2) {
        super(1);
        this.f621d = i5;
        this.f = obj;
        this.f622e = obj2;
    }
}
