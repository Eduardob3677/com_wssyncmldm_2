package E3;

import c3.InterfaceC0222b;
import h4.AbstractC0450c;
import h4.AbstractC0468v;
import h4.X;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import o3.AbstractC0732i;
import r3.InterfaceC0783K;
import r3.InterfaceC0807j;
import u3.N;
import x3.C0913E;

/* loaded from: classes.dex */
public final class A extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f545d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C f546e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ A(C c2, int i5) {
        super(1);
        this.f545d = i5;
        this.f546e = c2;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x027d  */
    @Override // c3.InterfaceC0222b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object e(Object obj) {
        H3.d zVar;
        int i5 = 1;
        C c2 = this.f546e;
        switch (this.f545d) {
            case 0:
                Q3.f fVar = (Q3.f) obj;
                d3.i.e("name", fVar);
                C c5 = c2.f552c;
                if (c5 != null) {
                    return (InterfaceC0783K) c5.f555g.e(fVar);
                }
                x3.u uVarC = ((InterfaceC0020c) c2.f554e.a()).c(fVar);
                if (uVarC != null) {
                    Field field = uVarC.f9672a;
                    if (!field.isEnumConstant()) {
                        boolean z4 = !Modifier.isFinal(((Field) uVarC.a()).getModifiers());
                        D3.e eVar = c2.f551b;
                        D3.c cVarG0 = W1.a.g0(eVar, uVarC);
                        InterfaceC0807j interfaceC0807jQ = c2.q();
                        A3.p pVarO = L2.b.O(uVarC.d());
                        Q3.f fVarB = uVarC.b();
                        D3.a aVar = (D3.a) eVar.f499d;
                        C3.g gVarZ0 = C3.g.Z0(interfaceC0807jQ, cVarG0, pVarO, z4, fVarB, aVar.f477j.c(uVarC), Modifier.isFinal(((Field) uVarC.a()).getModifiers()) && Modifier.isStatic(((Field) uVarC.a()).getModifiers()));
                        gVarZ0.V0(null, null, null, null);
                        Type genericType = field.getGenericType();
                        d3.i.d("member.genericType", genericType);
                        boolean z5 = genericType instanceof Class;
                        if (z5) {
                            Class cls = (Class) genericType;
                            zVar = cls.isPrimitive() ? new x3.z(cls) : ((genericType instanceof GenericArrayType) || (z5 && ((Class) genericType).isArray())) ? new x3.i(genericType) : genericType instanceof WildcardType ? new C0913E((WildcardType) genericType) : new x3.q(genericType);
                        }
                        AbstractC0468v abstractC0468vK = ((com.google.firebase.messaging.p) eVar.f502h).K(zVar, L2.b.N(2, false, false, null, 7));
                        if ((AbstractC0732i.F(abstractC0468vK) || AbstractC0732i.D(abstractC0468vK, o3.m.f)) && Modifier.isFinal(((Field) uVarC.a()).getModifiers())) {
                            Modifier.isStatic(((Field) uVarC.a()).getModifiers());
                        }
                        R2.u uVar = R2.u.f2325c;
                        gVarZ0.Y0(abstractC0468vK, uVar, c2.p(), null, uVar);
                        AbstractC0468v abstractC0468vE = gVarZ0.e();
                        if (abstractC0468vE == null) {
                            T3.e.a(67);
                            throw null;
                        }
                        int i6 = T3.e.f2720a;
                        if (!gVarZ0.f9379h && !AbstractC0450c.i(abstractC0468vE)) {
                            if (X.b(abstractC0468vE)) {
                                gVarZ0.W0(null, new B(c2, uVarC, gVarZ0, i5));
                            } else {
                                AbstractC0732i abstractC0732iE = X3.f.e(gVarZ0);
                                if (!AbstractC0732i.F(abstractC0468vE)) {
                                    i4.l lVar = i4.d.f7169a;
                                    if (lVar.a(abstractC0732iE.u(), abstractC0468vE) || lVar.a(abstractC0732iE.j("Number").q(), abstractC0468vE) || lVar.a(abstractC0732iE.e(), abstractC0468vE) || o3.r.a(abstractC0468vE)) {
                                    }
                                }
                            }
                        }
                        aVar.f474g.getClass();
                        return gVarZ0;
                    }
                }
                return null;
            case 1:
                Q3.f fVar2 = (Q3.f) obj;
                d3.i.e("name", fVar2);
                C c6 = c2.f552c;
                if (c6 != null) {
                    return (Collection) c6.f.e(fVar2);
                }
                ArrayList arrayList = new ArrayList();
                Iterator it = ((InterfaceC0020c) c2.f554e.a()).f(fVar2).iterator();
                while (it.hasNext()) {
                    C3.f fVarT = c2.t((x3.x) it.next());
                    if (c2.r(fVarT)) {
                        ((D3.a) c2.f551b.f499d).f474g.getClass();
                        arrayList.add(fVarT);
                    }
                }
                c2.j(fVar2, arrayList);
                return arrayList;
            case 2:
                Q3.f fVar3 = (Q3.f) obj;
                d3.i.e("name", fVar3);
                LinkedHashSet linkedHashSet = new LinkedHashSet((Collection) c2.f.e(fVar3));
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                for (Object obj2 : linkedHashSet) {
                    String strN = W1.a.n((N) obj2, 2);
                    Object arrayList2 = linkedHashMap.get(strN);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        linkedHashMap.put(strN, arrayList2);
                    }
                    ((List) arrayList2).add(obj2);
                }
                for (List list : linkedHashMap.values()) {
                    if (list.size() != 1) {
                        Collection collectionZ0 = i3.x.Z0(list, k.f);
                        linkedHashSet.removeAll(list);
                        linkedHashSet.addAll(collectionZ0);
                    }
                }
                c2.m(linkedHashSet, fVar3);
                D3.e eVar2 = c2.f551b;
                return R2.m.g1(((D3.a) eVar2.f499d).f484r.j(eVar2, linkedHashSet));
            default:
                Q3.f fVar4 = (Q3.f) obj;
                d3.i.e("name", fVar4);
                ArrayList arrayList3 = new ArrayList();
                q4.k.b(arrayList3, c2.f555g.e(fVar4));
                c2.n(fVar4, arrayList3);
                if (T3.e.o(c2.q(), 5)) {
                    return R2.m.g1(arrayList3);
                }
                D3.e eVar3 = c2.f551b;
                return R2.m.g1(((D3.a) eVar3.f499d).f484r.j(eVar3, arrayList3));
        }
    }
}
