package b2;

import android.util.Log;
import f1.AbstractC0420a;
import h2.InterfaceC0444a;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import k2.InterfaceC0638a;

/* loaded from: classes.dex */
public final class i extends Z0.j {

    /* renamed from: g, reason: collision with root package name */
    public static final h f5124g = new h(0);

    /* renamed from: e, reason: collision with root package name */
    public final n f5128e;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f5125b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f5126c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final HashMap f5127d = new HashMap();
    public final AtomicReference f = new AtomicReference();

    public i(Executor executor, ArrayList arrayList, ArrayList arrayList2) {
        n nVar = new n(executor);
        this.f5128e = nVar;
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(c.b(nVar, n.class, h2.b.class, InterfaceC0444a.class));
        arrayList3.add(c.b(this, i.class, new Class[0]));
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar != null) {
                arrayList3.add(cVar);
            }
        }
        ArrayList arrayList4 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            arrayList4.add(it2.next());
        }
        ArrayList arrayList5 = new ArrayList();
        synchronized (this) {
            Iterator it3 = arrayList4.iterator();
            while (it3.hasNext()) {
                try {
                    g gVar = (g) ((InterfaceC0638a) it3.next()).get();
                    if (gVar != null) {
                        arrayList3.addAll(gVar.getComponents());
                        it3.remove();
                    }
                } catch (o e5) {
                    it3.remove();
                    Log.w("ComponentDiscovery", "Invalid component registrar.", e5);
                }
            }
            if (this.f5125b.isEmpty()) {
                AbstractC0420a.s(arrayList3);
            } else {
                ArrayList arrayList6 = new ArrayList(this.f5125b.keySet());
                arrayList6.addAll(arrayList3);
                AbstractC0420a.s(arrayList6);
            }
            Iterator it4 = arrayList3.iterator();
            while (it4.hasNext()) {
                c cVar2 = (c) it4.next();
                this.f5125b.put(cVar2, new p(new W1.c(this, 1, cVar2)));
            }
            arrayList5.addAll(i0(arrayList3));
            arrayList5.addAll(j0());
            h0();
        }
        Iterator it5 = arrayList5.iterator();
        while (it5.hasNext()) {
            ((Runnable) it5.next()).run();
        }
        Boolean bool = (Boolean) this.f.get();
        if (bool != null) {
            g0(this.f5125b, bool.booleanValue());
        }
    }

    @Override // b2.d
    public final synchronized InterfaceC0638a b(Class cls) {
        return (InterfaceC0638a) this.f5126c.get(cls);
    }

    @Override // b2.d
    public final synchronized InterfaceC0638a f(Class cls) {
        q qVar = (q) this.f5127d.get(cls);
        if (qVar != null) {
            return qVar;
        }
        return f5124g;
    }

    public final void g0(Map map, boolean z4) {
        ArrayDeque arrayDeque;
        for (Map.Entry entry : map.entrySet()) {
            c cVar = (c) entry.getKey();
            InterfaceC0638a interfaceC0638a = (InterfaceC0638a) entry.getValue();
            int i5 = cVar.f5118c;
            if (i5 == 1 || (i5 == 2 && z4)) {
                interfaceC0638a.get();
            }
        }
        n nVar = this.f5128e;
        synchronized (nVar) {
            arrayDeque = nVar.f5138b;
            if (arrayDeque != null) {
                nVar.f5138b = null;
            } else {
                arrayDeque = null;
            }
        }
        if (arrayDeque != null) {
            Iterator it = arrayDeque.iterator();
            if (it.hasNext()) {
                B.f.F(it.next());
                throw null;
            }
        }
    }

    public final void h0() {
        for (c cVar : this.f5125b.keySet()) {
            for (l lVar : cVar.f5117b) {
                if (lVar.f5135b == 2 && !this.f5127d.containsKey(lVar.f5134a)) {
                    HashMap map = this.f5127d;
                    Class cls = lVar.f5134a;
                    Set setEmptySet = Collections.emptySet();
                    q qVar = new q();
                    qVar.f5144b = null;
                    qVar.f5143a = Collections.newSetFromMap(new ConcurrentHashMap());
                    qVar.f5143a.addAll(setEmptySet);
                    map.put(cls, qVar);
                } else if (this.f5126c.containsKey(lVar.f5134a)) {
                    continue;
                } else {
                    int i5 = lVar.f5135b;
                    if (i5 == 1) {
                        throw new m("Unsatisfied dependency for component " + cVar + ": " + lVar.f5134a);
                    }
                    if (i5 != 2) {
                        HashMap map2 = this.f5126c;
                        Class cls2 = lVar.f5134a;
                        E2.a aVar = r.f5145c;
                        h hVar = r.f5146d;
                        r rVar = new r();
                        rVar.f5147a = aVar;
                        rVar.f5148b = hVar;
                        map2.put(cls2, rVar);
                    }
                }
            }
        }
    }

    public final ArrayList i0(ArrayList arrayList) {
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            c cVar = (c) it.next();
            if (cVar.f5119d == 0) {
                InterfaceC0638a interfaceC0638a = (InterfaceC0638a) this.f5125b.get(cVar);
                for (Class cls : cVar.f5116a) {
                    HashMap map = this.f5126c;
                    if (map.containsKey(cls)) {
                        arrayList2.add(new A.o((r) ((InterfaceC0638a) map.get(cls)), 3, interfaceC0638a));
                    } else {
                        map.put(cls, interfaceC0638a);
                    }
                }
            }
        }
        return arrayList2;
    }

    public final ArrayList j0() {
        ArrayList arrayList = new ArrayList();
        HashMap map = new HashMap();
        for (Map.Entry entry : this.f5125b.entrySet()) {
            c cVar = (c) entry.getKey();
            if (cVar.f5119d != 0) {
                InterfaceC0638a interfaceC0638a = (InterfaceC0638a) entry.getValue();
                for (Class cls : cVar.f5116a) {
                    if (!map.containsKey(cls)) {
                        map.put(cls, new HashSet());
                    }
                    ((Set) map.get(cls)).add(interfaceC0638a);
                }
            }
        }
        for (Map.Entry entry2 : map.entrySet()) {
            Object key = entry2.getKey();
            HashMap map2 = this.f5127d;
            if (map2.containsKey(key)) {
                q qVar = (q) map2.get(entry2.getKey());
                Iterator it = ((Set) entry2.getValue()).iterator();
                while (it.hasNext()) {
                    arrayList.add(new A.o(qVar, 4, (InterfaceC0638a) it.next()));
                }
            } else {
                Class cls2 = (Class) entry2.getKey();
                Set set = (Set) ((Collection) entry2.getValue());
                q qVar2 = new q();
                qVar2.f5144b = null;
                qVar2.f5143a = Collections.newSetFromMap(new ConcurrentHashMap());
                qVar2.f5143a.addAll(set);
                map2.put(cls2, qVar2);
            }
        }
        return arrayList;
    }
}
