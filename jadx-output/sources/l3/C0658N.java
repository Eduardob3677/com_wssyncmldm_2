package l3;

import R3.C0098u;
import c3.InterfaceC0221a;
import com.idm.core.tnds.IDMTndsXmlWbxmlDefine;
import f1.AbstractC0420a;
import i3.InterfaceC0494o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import x3.AbstractC0917d;

/* renamed from: l3.N, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0658N extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8122d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C0659O f8123e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0658N(C0659O c0659o, int i5) {
        super(0);
        this.f8122d = i5;
        this.f8123e = c0659o;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v14, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.Iterable] */
    @Override // c3.InterfaceC0221a
    public final Object a() throws C0098u {
        K3.b bVar;
        String[] strArr;
        String[] strArr2;
        ?? V4;
        switch (this.f8122d) {
            case 0:
                C0659O c0659o = this.f8123e;
                c0659o.getClass();
                InterfaceC0494o interfaceC0494o = C0659O.f8124g[0];
                w3.b bVar2 = (w3.b) c0659o.f8125c.a();
                if (bVar2 == null || (bVar = bVar2.f9609b) == null || (strArr = (String[]) bVar.f) == null || (strArr2 = (String[]) bVar.f1292h) == null) {
                    return null;
                }
                Q2.e eVarH = P3.h.h(strArr, strArr2);
                return new Q2.i((P3.g) eVarH.f2212c, (L3.C) eVarH.f2213d, (P3.f) bVar.f1290e);
            default:
                C0659O c0659o2 = this.f8123e;
                c0659o2.getClass();
                InterfaceC0494o interfaceC0494o2 = C0659O.f8124g[0];
                w3.b bVar3 = (w3.b) c0659o2.f8125c.a();
                if (bVar3 == null) {
                    return a4.n.f3128b;
                }
                InterfaceC0494o interfaceC0494o3 = AbstractC0645A.f8102b[0];
                Object objA = c0659o2.f8103a.a();
                d3.i.d("<get-moduleData>(...)", objA);
                J.r0 r0Var = ((w3.e) objA).f9614b;
                r0Var.getClass();
                ConcurrentHashMap concurrentHashMap = (ConcurrentHashMap) r0Var.f1008e;
                Class cls = bVar3.f9608a;
                Q3.b bVarA = AbstractC0917d.a(cls);
                Object obj = concurrentHashMap.get(bVarA);
                if (obj == null) {
                    Q3.c cVarH = AbstractC0917d.a(cls).h();
                    d3.i.d("fileClass.classId.packageFqName", cVarH);
                    K3.b bVar4 = bVar3.f9609b;
                    K3.a aVar = (K3.a) bVar4.f1289d;
                    K3.a aVar2 = K3.a.MULTIFILE_CLASS;
                    J3.f fVar = (J3.f) r0Var.f1006c;
                    if (aVar == aVar2) {
                        String[] strArr3 = aVar == aVar2 ? (String[]) bVar4.f : null;
                        List listG0 = strArr3 != null ? R2.i.g0(strArr3) : null;
                        if (listG0 == null) {
                            listG0 = R2.u.f2325c;
                        }
                        V4 = new ArrayList();
                        Iterator it = listG0.iterator();
                        while (it.hasNext()) {
                            Q3.b bVarK = Q3.b.k(new Q3.c(Y3.b.d((String) it.next()).f2964a.replace(IDMTndsXmlWbxmlDefine.XML_SLASH, '.')));
                            d3.i.e("<this>", fVar.c().f6531c);
                            w3.b bVarW = AbstractC0420a.w((e.v) r0Var.f1007d, bVarK, P3.f.f2161g);
                            if (bVarW != null) {
                                V4.add(bVarW);
                            }
                        }
                    } else {
                        V4 = AbstractC0420a.V(bVar3);
                    }
                    q3.l lVar = new q3.l(fVar.c().f6530b, cVarH, 1);
                    ArrayList arrayList = new ArrayList();
                    Iterator it2 = V4.iterator();
                    while (it2.hasNext()) {
                        f4.q qVarA = fVar.a(lVar, (w3.b) it2.next());
                        if (qVarA != null) {
                            arrayList.add(qVarA);
                        }
                    }
                    a4.o oVarU = Z0.j.u("package " + cVarH + " (" + bVar3 + ')', R2.m.g1(arrayList));
                    Object objPutIfAbsent = concurrentHashMap.putIfAbsent(bVarA, oVarU);
                    obj = objPutIfAbsent == null ? oVarU : objPutIfAbsent;
                }
                d3.i.d("cache.getOrPut(fileClass…ileClass)\", scopes)\n    }", obj);
                return (a4.o) obj;
        }
    }
}
