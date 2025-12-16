package E3;

import A3.C0005d;
import c3.InterfaceC0222b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import x3.C0909A;

/* renamed from: E3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0018a implements InterfaceC0020c {

    /* renamed from: a, reason: collision with root package name */
    public final x3.o f570a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0222b f571b;

    /* renamed from: c, reason: collision with root package name */
    public final C0005d f572c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f573d;

    /* renamed from: e, reason: collision with root package name */
    public final LinkedHashMap f574e;
    public final LinkedHashMap f;

    public C0018a(x3.o oVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("jClass", oVar);
        this.f570a = oVar;
        this.f571b = interfaceC0222b;
        C0005d c0005d = new C0005d(4, this);
        this.f572c = c0005d;
        r4.f fVarI = r4.m.i(R2.m.G0(oVar.c()), c0005d);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        r4.e eVar = new r4.e(fVarI);
        while (eVar.hasNext()) {
            Object next = eVar.next();
            Q3.f fVarB = ((x3.x) next).b();
            Object arrayList = linkedHashMap.get(fVarB);
            if (arrayList == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(fVarB, arrayList);
            }
            ((List) arrayList).add(next);
        }
        this.f573d = linkedHashMap;
        r4.f fVarI2 = r4.m.i(R2.m.G0(this.f570a.a()), this.f571b);
        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
        r4.e eVar2 = new r4.e(fVarI2);
        while (eVar2.hasNext()) {
            Object next2 = eVar2.next();
            linkedHashMap2.put(((x3.u) next2).b(), next2);
        }
        this.f574e = linkedHashMap2;
        ArrayList arrayListD = this.f570a.d();
        InterfaceC0222b interfaceC0222b2 = this.f571b;
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayListD.iterator();
        while (it.hasNext()) {
            Object next3 = it.next();
            if (((Boolean) interfaceC0222b2.e(next3)).booleanValue()) {
                arrayList2.add(next3);
            }
        }
        int iY1 = R2.z.y1(R2.o.C0(arrayList2));
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(iY1 < 16 ? 16 : iY1);
        Iterator it2 = arrayList2.iterator();
        while (it2.hasNext()) {
            Object next4 = it2.next();
            linkedHashMap3.put(((C0909A) next4).b(), next4);
        }
        this.f = linkedHashMap3;
    }

    @Override // E3.InterfaceC0020c
    public final C0909A a(Q3.f fVar) {
        d3.i.e("name", fVar);
        return (C0909A) this.f.get(fVar);
    }

    @Override // E3.InterfaceC0020c
    public final Set b() {
        return this.f.keySet();
    }

    @Override // E3.InterfaceC0020c
    public final x3.u c(Q3.f fVar) {
        d3.i.e("name", fVar);
        return (x3.u) this.f574e.get(fVar);
    }

    @Override // E3.InterfaceC0020c
    public final Set d() {
        r4.f fVarI = r4.m.i(R2.m.G0(this.f570a.a()), this.f571b);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        r4.e eVar = new r4.e(fVarI);
        while (eVar.hasNext()) {
            linkedHashSet.add(((x3.u) eVar.next()).b());
        }
        return linkedHashSet;
    }

    @Override // E3.InterfaceC0020c
    public final Set e() {
        r4.f fVarI = r4.m.i(R2.m.G0(this.f570a.c()), this.f572c);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        r4.e eVar = new r4.e(fVarI);
        while (eVar.hasNext()) {
            linkedHashSet.add(((x3.x) eVar.next()).b());
        }
        return linkedHashSet;
    }

    @Override // E3.InterfaceC0020c
    public final Collection f(Q3.f fVar) {
        d3.i.e("name", fVar);
        List list = (List) this.f573d.get(fVar);
        return list != null ? list : R2.u.f2325c;
    }
}
