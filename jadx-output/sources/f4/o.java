package f4;

import L3.C0075y;
import L3.G;
import L3.T;
import R2.z;
import R3.AbstractC0080b;
import i3.InterfaceC0494o;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f6875j;

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f6876a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashMap f6877b;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f6878c;

    /* renamed from: d, reason: collision with root package name */
    public final g4.e f6879d;

    /* renamed from: e, reason: collision with root package name */
    public final g4.e f6880e;
    public final g4.j f;

    /* renamed from: g, reason: collision with root package name */
    public final g4.i f6881g;

    /* renamed from: h, reason: collision with root package name */
    public final g4.i f6882h;

    /* renamed from: i, reason: collision with root package name */
    public final /* synthetic */ p f6883i;

    static {
        d3.r rVar = d3.q.f6516a;
        f6875j = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(o.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), rVar.e(new d3.n(rVar.b(o.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};
    }

    public o(p pVar, List list, List list2, List list3) {
        this.f6883i = pVar;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            Q3.f fVarV = L2.b.v((N3.f) pVar.f6884b.f5378d, ((C0075y) ((AbstractC0080b) obj)).f1794h);
            Object arrayList = linkedHashMap.get(fVarV);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(fVarV, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        this.f6876a = c(linkedHashMap);
        p pVar2 = this.f6883i;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        for (Object obj2 : list2) {
            Q3.f fVarV2 = L2.b.v((N3.f) pVar2.f6884b.f5378d, ((G) ((AbstractC0080b) obj2)).f1408h);
            Object arrayList2 = linkedHashMap2.get(fVarV2);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                linkedHashMap2.put(fVarV2, arrayList2);
            }
            ((List) arrayList2).add(obj2);
        }
        this.f6877b = c(linkedHashMap2);
        ((d4.i) this.f6883i.f6884b.f5377c).f6531c.getClass();
        p pVar3 = this.f6883i;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap();
        for (Object obj3 : list3) {
            Q3.f fVarV3 = L2.b.v((N3.f) pVar3.f6884b.f5378d, ((T) ((AbstractC0080b) obj3)).f1506g);
            Object arrayList3 = linkedHashMap3.get(fVarV3);
            if (arrayList3 == null) {
                arrayList3 = new ArrayList();
                linkedHashMap3.put(fVarV3, arrayList3);
            }
            ((List) arrayList3).add(obj3);
        }
        this.f6878c = c(linkedHashMap3);
        this.f6879d = ((g4.l) ((d4.i) this.f6883i.f6884b.f5377c).f6529a).b(new n(this, 0));
        this.f6880e = ((g4.l) ((d4.i) this.f6883i.f6884b.f5377c).f6529a).b(new n(this, 1));
        this.f = ((g4.l) ((d4.i) this.f6883i.f6884b.f5377c).f6529a).c(new n(this, 2));
        p pVar4 = this.f6883i;
        g4.o oVar = ((d4.i) pVar4.f6884b.f5377c).f6529a;
        m mVar = new m(this, pVar4, 0);
        g4.l lVar = (g4.l) oVar;
        lVar.getClass();
        this.f6881g = new g4.i(lVar, mVar);
        p pVar5 = this.f6883i;
        g4.o oVar2 = ((d4.i) pVar5.f6884b.f5377c).f6529a;
        m mVar2 = new m(this, pVar5, 1);
        g4.l lVar2 = (g4.l) oVar2;
        lVar2.getClass();
        this.f6882h = new g4.i(lVar2, mVar2);
    }

    public static LinkedHashMap c(LinkedHashMap linkedHashMap) throws IOException {
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(z.y1(linkedHashMap.size()));
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            Object key = entry.getKey();
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            Iterable<AbstractC0080b> iterable = (Iterable) entry.getValue();
            ArrayList arrayList = new ArrayList(R2.o.C0(iterable));
            for (AbstractC0080b abstractC0080b : iterable) {
                int iC = abstractC0080b.c();
                int iF = B1.j.f(iC) + iC;
                if (iF > 4096) {
                    iF = 4096;
                }
                B1.j jVarJ = B1.j.j(byteArrayOutputStream, iF);
                jVarJ.w(iC);
                abstractC0080b.f(jVarJ);
                jVarJ.i();
                arrayList.add(Q2.k.f2225a);
            }
            linkedHashMap2.put(key, byteArrayOutputStream.toByteArray());
        }
        return linkedHashMap2;
    }

    public final Collection a(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return !((Set) Z0.j.N(this.f6881g, f6875j[0])).contains(fVar) ? R2.u.f2325c : (Collection) this.f6879d.e(fVar);
    }

    public final Collection b(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return !((Set) Z0.j.N(this.f6882h, f6875j[1])).contains(fVar) ? R2.u.f2325c : (Collection) this.f6880e.e(fVar);
    }
}
