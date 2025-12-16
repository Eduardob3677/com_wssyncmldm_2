package l3;

import R3.C0087i;
import c3.InterfaceC0221a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import o3.C0727d;
import r3.InterfaceC0783K;
import r3.InterfaceC0802e;
import r3.InterfaceC0807j;
import u3.C0887t;

/* loaded from: classes.dex */
public final class i0 extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8176d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ j0 f8177e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ i0(j0 j0Var, int i5) {
        super(0);
        this.f8176d = i5;
        this.f8177e = j0Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005d  */
    @Override // c3.InterfaceC0221a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a() {
        Class<?> enclosingClass;
        boolean z4 = true;
        e.v vVar = null;
        j0 j0Var = this.f8177e;
        switch (this.f8176d) {
            case 0:
                AbstractC0647C abstractC0647C = j0Var.f8181d;
                abstractC0647C.getClass();
                String str = j0Var.f8182e;
                d3.i.e("name", str);
                String str2 = j0Var.f;
                d3.i.e("signature", str2);
                Q2.a aVar = AbstractC0647C.f8104c;
                aVar.getClass();
                Matcher matcher = ((Pattern) aVar.f2208d).matcher(str2);
                d3.i.d("nativePattern.matcher(input)", matcher);
                if (matcher.matches()) {
                    vVar = new e.v();
                    vVar.f6792c = matcher;
                }
                if (vVar != null) {
                    if (((s4.a) vVar.f6793d) == null) {
                        vVar.f6793d = new s4.a(vVar);
                    }
                    s4.a aVar2 = (s4.a) vVar.f6793d;
                    d3.i.b(aVar2);
                    String str3 = (String) aVar2.get(1);
                    InterfaceC0783K interfaceC0783KF = abstractC0647C.f(Integer.parseInt(str3));
                    if (interfaceC0783KF != null) {
                        return interfaceC0783KF;
                    }
                    throw new Q2.d("Local property #" + str3 + " not found in " + abstractC0647C.a(), 2);
                }
                Collection collectionI = abstractC0647C.i(Q3.f.e(str));
                ArrayList arrayList = new ArrayList();
                for (Object obj : collectionI) {
                    if (d3.i.a(u0.b((InterfaceC0783K) obj).e(), str2)) {
                        arrayList.add(obj);
                    }
                }
                if (arrayList.isEmpty()) {
                    throw new Q2.d("Property '" + str + "' (JVM signature: " + str2 + ") not resolved in " + abstractC0647C, 2);
                }
                if (arrayList.size() == 1) {
                    return (InterfaceC0783K) R2.m.b1(arrayList);
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    Object next = it.next();
                    A3.p pVarC = ((InterfaceC0783K) next).c();
                    Object arrayList2 = linkedHashMap.get(pVarC);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                        linkedHashMap.put(pVarC, arrayList2);
                    }
                    ((List) arrayList2).add(next);
                }
                TreeMap treeMap = new TreeMap(new F0.b(6));
                treeMap.putAll(linkedHashMap);
                Collection collectionValues = treeMap.values();
                d3.i.d("properties\n             …\n                }.values", collectionValues);
                List list = (List) R2.m.T0(collectionValues);
                if (list.size() == 1) {
                    return (InterfaceC0783K) R2.m.M0(list);
                }
                String strS0 = R2.m.S0(abstractC0647C.i(Q3.f.e(str)), "\n", null, null, C0672b.f8152j, 30);
                StringBuilder sb = new StringBuilder("Property '");
                sb.append(str);
                sb.append("' (JVM signature: ");
                sb.append(str2);
                sb.append(") not resolved in ");
                sb.append(abstractC0647C);
                sb.append(':');
                sb.append(strS0.length() == 0 ? " no members found" : "\n".concat(strS0));
                throw new Q2.d(sb.toString(), 2);
            default:
                Q3.b bVar = u0.f8226a;
                r0 r0VarB = u0.b(j0Var.k());
                if (!(r0VarB instanceof C0688m)) {
                    if (r0VarB instanceof C0686k) {
                        return ((C0686k) r0VarB).f8186d;
                    }
                    if ((r0VarB instanceof C0687l) || (r0VarB instanceof C0689n)) {
                        return null;
                    }
                    throw new A0.c();
                }
                C0688m c0688m = (C0688m) r0VarB;
                C0087i c0087i = P3.h.f2166a;
                L3.G g5 = c0688m.f8197e;
                P3.d dVarB = P3.h.b(g5, c0688m.f8198g, c0688m.f8199h, true);
                if (dVarB == null) {
                    return null;
                }
                InterfaceC0783K interfaceC0783K = c0688m.f8196d;
                if (interfaceC0783K == null) {
                    W1.a.a(0);
                    throw null;
                }
                if (interfaceC0783K.k0() != 2) {
                    InterfaceC0807j interfaceC0807jL = interfaceC0783K.l();
                    if (interfaceC0807jL == null) {
                        W1.a.a(1);
                        throw null;
                    }
                    if (T3.e.m(interfaceC0807jL)) {
                        InterfaceC0807j interfaceC0807jL2 = interfaceC0807jL.l();
                        if (T3.e.o(interfaceC0807jL2, 1) || T3.e.o(interfaceC0807jL2, 3)) {
                            LinkedHashSet linkedHashSet = C0727d.f8448a;
                            if (i3.x.t0((InterfaceC0802e) interfaceC0807jL)) {
                                if (T3.e.m(interfaceC0783K.l())) {
                                    C0887t c0887tR0 = interfaceC0783K.r0();
                                    if (!((c0887tR0 == null || !c0887tR0.t().b(A3.y.f163a)) ? interfaceC0783K.t().b(A3.y.f163a) : true)) {
                                    }
                                } else {
                                    z4 = false;
                                }
                            }
                        }
                    }
                }
                AbstractC0647C abstractC0647C2 = j0Var.f8181d;
                if (z4 || P3.h.d(g5)) {
                    enclosingClass = abstractC0647C2.a().getEnclosingClass();
                } else {
                    InterfaceC0807j interfaceC0807jL3 = interfaceC0783K.l();
                    enclosingClass = interfaceC0807jL3 instanceof InterfaceC0802e ? w0.j((InterfaceC0802e) interfaceC0807jL3) : abstractC0647C2.a();
                }
                if (enclosingClass == null) {
                    return null;
                }
                try {
                    return enclosingClass.getDeclaredField(dVarB.f2157b);
                } catch (NoSuchFieldException unused) {
                    return null;
                }
        }
    }
}
