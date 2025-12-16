package o3;

import R2.z;
import h4.AbstractC0468v;
import h4.X;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import r3.InterfaceC0775C;
import r3.InterfaceC0804g;
import r3.InterfaceC0807j;
import u3.E;

/* loaded from: classes.dex */
public abstract class r {

    /* renamed from: a, reason: collision with root package name */
    public static final Set f8552a;

    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f8553b;

    /* renamed from: c, reason: collision with root package name */
    public static final HashMap f8554c;

    /* renamed from: d, reason: collision with root package name */
    public static final LinkedHashSet f8555d;

    static {
        q[] qVarArrValues = q.values();
        ArrayList arrayList = new ArrayList(qVarArrValues.length);
        for (q qVar : qVarArrValues) {
            arrayList.add(qVar.f8550d);
        }
        f8552a = R2.m.j1(arrayList);
        p[] pVarArrValues = p.values();
        ArrayList arrayList2 = new ArrayList(pVarArrValues.length);
        for (p pVar : pVarArrValues) {
            arrayList2.add(pVar.f8548c);
        }
        R2.m.j1(arrayList2);
        f8553b = new HashMap();
        f8554c = new HashMap();
        z.B1(new HashMap(z.y1(4)), new Q2.e[]{new Q2.e(p.UBYTEARRAY, Q3.f.e("ubyteArrayOf")), new Q2.e(p.USHORTARRAY, Q3.f.e("ushortArrayOf")), new Q2.e(p.UINTARRAY, Q3.f.e("uintArrayOf")), new Q2.e(p.ULONGARRAY, Q3.f.e("ulongArrayOf"))});
        q[] qVarArrValues2 = q.values();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (q qVar2 : qVarArrValues2) {
            linkedHashSet.add(qVar2.f8551e.j());
        }
        f8555d = linkedHashSet;
        for (q qVar3 : q.values()) {
            HashMap map = f8553b;
            Q3.b bVar = qVar3.f8551e;
            Q3.b bVar2 = qVar3.f8549c;
            map.put(bVar, bVar2);
            f8554c.put(bVar2, qVar3.f8551e);
        }
    }

    public static final boolean a(AbstractC0468v abstractC0468v) {
        InterfaceC0804g interfaceC0804gI;
        if (X.m(abstractC0468v) || (interfaceC0804gI = abstractC0468v.J0().i()) == null) {
            return false;
        }
        InterfaceC0807j interfaceC0807jL = interfaceC0804gI.l();
        return (interfaceC0807jL instanceof InterfaceC0775C) && d3.i.a(((E) ((InterfaceC0775C) interfaceC0807jL)).f9353g, n.f8538j) && f8552a.contains(interfaceC0804gI.getName());
    }
}
