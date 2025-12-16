package f4;

import A3.C0005d;
import L3.C0052a;
import L3.C0058g;
import L3.C0075y;
import L3.G;
import L3.Q;
import L3.T;
import L3.f0;
import c3.InterfaceC0222b;
import com.google.android.gms.internal.p000firebaseauthapi.G4;
import h4.AbstractC0472z;
import java.io.ByteArrayInputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import r3.InterfaceC0807j;
import s2.C0837c;
import s3.C0844g;
import s3.C0846i;
import s3.InterfaceC0845h;

/* loaded from: classes.dex */
public final class n extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f6873d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ o f6874e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ n(o oVar, int i5) {
        super(1);
        this.f6873d = i5;
        this.f6874e = oVar;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        Collection<C0075y> collectionN;
        Collection<G> collectionN2;
        Q qL;
        Q qL2;
        switch (this.f6873d) {
            case 0:
                Q3.f fVar = (Q3.f) obj;
                d3.i.e("it", fVar);
                o oVar = this.f6874e;
                LinkedHashMap linkedHashMap = oVar.f6876a;
                C0052a c0052a = C0075y.f1790x;
                d3.i.d("PARSER", c0052a);
                byte[] bArr = (byte[]) linkedHashMap.get(fVar);
                p pVar = oVar.f6883i;
                if (bArr != null) {
                    l lVar = new l(c0052a, new ByteArrayInputStream(bArr), pVar, 0);
                    r4.k jVar = new r4.j(lVar, new C0005d(22, lVar));
                    if (!(jVar instanceof r4.a)) {
                        jVar = new r4.a(jVar);
                    }
                    collectionN = r4.m.n(jVar);
                } else {
                    collectionN = R2.u.f2325c;
                }
                ArrayList arrayList = new ArrayList(collectionN.size());
                for (C0075y c0075y : collectionN) {
                    d4.r rVar = (d4.r) pVar.f6884b.f5384k;
                    d3.i.d("it", c0075y);
                    s sVarE = rVar.e(c0075y);
                    if (!pVar.r(sVarE)) {
                        sVarE = null;
                    }
                    if (sVarE != null) {
                        arrayList.add(sVarE);
                    }
                }
                pVar.j(fVar, arrayList);
                return q4.k.e(arrayList);
            case 1:
                Q3.f fVar2 = (Q3.f) obj;
                d3.i.e("it", fVar2);
                o oVar2 = this.f6874e;
                LinkedHashMap linkedHashMap2 = oVar2.f6877b;
                C0052a c0052a2 = G.f1404x;
                d3.i.d("PARSER", c0052a2);
                byte[] bArr2 = (byte[]) linkedHashMap2.get(fVar2);
                p pVar2 = oVar2.f6883i;
                if (bArr2 != null) {
                    l lVar2 = new l(c0052a2, new ByteArrayInputStream(bArr2), pVar2, 0);
                    r4.k jVar2 = new r4.j(lVar2, new C0005d(22, lVar2));
                    if (!(jVar2 instanceof r4.a)) {
                        jVar2 = new r4.a(jVar2);
                    }
                    collectionN2 = r4.m.n(jVar2);
                } else {
                    collectionN2 = R2.u.f2325c;
                }
                ArrayList arrayList2 = new ArrayList(collectionN2.size());
                for (G g5 : collectionN2) {
                    d4.r rVar2 = (d4.r) pVar2.f6884b.f5384k;
                    d3.i.d("it", g5);
                    arrayList2.add(rVar2.f(g5));
                }
                pVar2.k(fVar2, arrayList2);
                return q4.k.e(arrayList2);
            default:
                Q3.f fVar3 = (Q3.f) obj;
                d3.i.e("it", fVar3);
                o oVar3 = this.f6874e;
                byte[] bArr3 = (byte[]) oVar3.f6878c.get(fVar3);
                t tVar = null;
                if (bArr3 != null) {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr3);
                    p pVar3 = oVar3.f6883i;
                    T t2 = (T) T.f1503r.b(byteArrayInputStream, ((d4.i) pVar3.f6884b.f5377c).f6542p);
                    if (t2 != null) {
                        d4.r rVar3 = (d4.r) pVar3.f6884b.f5384k;
                        rVar3.getClass();
                        List list = t2.f1512m;
                        d3.i.d("proto.annotationList", list);
                        ArrayList arrayList3 = new ArrayList(R2.o.C0(list));
                        Iterator it = list.iterator();
                        while (true) {
                            boolean zHasNext = it.hasNext();
                            G4 g42 = rVar3.f6569a;
                            if (zHasNext) {
                                C0058g c0058g = (C0058g) it.next();
                                d3.i.d("it", c0058g);
                                arrayList3.add(rVar3.f6570b.D0(c0058g, (N3.f) g42.f5378d));
                            } else {
                                InterfaceC0845h c0846i = arrayList3.isEmpty() ? C0844g.f9041a : new C0846i(0, arrayList3);
                                tVar = new t(((d4.i) g42.f5377c).f6529a, (InterfaceC0807j) g42.f5379e, c0846i, L2.b.v((N3.f) g42.f5378d, t2.f1506g), W1.a.x((f0) N3.e.f1888d.c(t2.f)), t2, (N3.f) g42.f5378d, (C0837c) g42.f, (N3.g) g42.f5380g, (j) g42.f5382i);
                                List list2 = t2.f1507h;
                                d3.i.d("proto.typeParameterList", list2);
                                J3.c cVar = (J3.c) g42.b(tVar, list2, (N3.f) g42.f5378d, (C0837c) g42.f, (N3.g) g42.f5380g, (N3.a) g42.f5381h).f5383j;
                                List listG1 = R2.m.g1(((Map) cVar.f1143j).values());
                                C0837c c0837c = (C0837c) g42.f;
                                d3.i.e("typeTable", c0837c);
                                int i5 = t2.f1505e;
                                if ((i5 & 4) == 4) {
                                    qL = t2.f1508i;
                                    d3.i.d("underlyingType", qL);
                                } else {
                                    if ((i5 & 8) != 8) {
                                        throw new IllegalStateException("No underlyingType in ProtoBuf.TypeAlias".toString());
                                    }
                                    qL = c0837c.l(t2.f1509j);
                                }
                                AbstractC0472z abstractC0472zF = cVar.f(qL, false);
                                int i6 = t2.f1505e;
                                if ((i6 & 16) == 16) {
                                    qL2 = t2.f1510k;
                                    d3.i.d("expandedType", qL2);
                                } else {
                                    if ((i6 & 32) != 32) {
                                        throw new IllegalStateException("No expandedType in ProtoBuf.TypeAlias".toString());
                                    }
                                    qL2 = c0837c.l(t2.f1511l);
                                }
                                tVar.T0(listG1, abstractC0472zF, cVar.f(qL2, false));
                            }
                        }
                    }
                }
                return tVar;
        }
    }
}
