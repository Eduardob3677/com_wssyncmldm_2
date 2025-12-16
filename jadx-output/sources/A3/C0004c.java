package A3;

import f1.AbstractC0420a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import r3.InterfaceC0802e;
import s3.InterfaceC0839b;
import s3.InterfaceC0845h;

/* renamed from: A3.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0004c {

    /* renamed from: c, reason: collision with root package name */
    public static final LinkedHashMap f115c;

    /* renamed from: a, reason: collision with root package name */
    public final v f116a;

    /* renamed from: b, reason: collision with root package name */
    public final ConcurrentHashMap f117b;

    static {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (EnumC0002a enumC0002a : EnumC0002a.values()) {
            String str = enumC0002a.f108c;
            if (linkedHashMap.get(str) == null) {
                linkedHashMap.put(str, enumC0002a);
            }
        }
        f115c = linkedHashMap;
    }

    public C0004c(v vVar) {
        d3.i.e("javaTypeEnhancementState", vVar);
        this.f116a = vVar;
        this.f117b = new ConcurrentHashMap();
    }

    public static ArrayList a(Object obj, boolean z4) {
        InterfaceC0839b interfaceC0839b = (InterfaceC0839b) obj;
        d3.i.e("<this>", interfaceC0839b);
        Map mapB = interfaceC0839b.b();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : mapB.entrySet()) {
            R2.s.E0(arrayList, (!z4 || d3.i.a((Q3.f) entry.getKey(), z.f166b)) ? j((V3.g) entry.getValue()) : R2.u.f2325c);
        }
        return arrayList;
    }

    public static Object c(Object obj, Q3.c cVar) {
        for (Object obj2 : e(obj)) {
            if (d3.i.a(d(obj2), cVar)) {
                return obj2;
            }
        }
        return null;
    }

    public static Q3.c d(Object obj) {
        InterfaceC0839b interfaceC0839b = (InterfaceC0839b) obj;
        d3.i.e("<this>", interfaceC0839b);
        return interfaceC0839b.a();
    }

    public static Iterable e(Object obj) {
        InterfaceC0845h interfaceC0845hT;
        InterfaceC0839b interfaceC0839b = (InterfaceC0839b) obj;
        d3.i.e("<this>", interfaceC0839b);
        InterfaceC0802e interfaceC0802eD = X3.f.d(interfaceC0839b);
        return (interfaceC0802eD == null || (interfaceC0845hT = interfaceC0802eD.t()) == null) ? R2.u.f2325c : interfaceC0845hT;
    }

    public static boolean f(Object obj, Q3.c cVar) {
        Iterable iterableE = e(obj);
        if ((iterableE instanceof Collection) && ((Collection) iterableE).isEmpty()) {
            return false;
        }
        Iterator it = iterableE.iterator();
        while (it.hasNext()) {
            if (d3.i.a(d(it.next()), cVar)) {
                return true;
            }
        }
        return false;
    }

    public static List j(V3.g gVar) {
        if (!(gVar instanceof V3.b)) {
            return gVar instanceof V3.i ? AbstractC0420a.V(((V3.i) gVar).f2800c.c()) : R2.u.f2325c;
        }
        Iterable iterable = (Iterable) ((V3.b) gVar).f2797a;
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            R2.s.E0(arrayList, j((V3.g) it.next()));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x018c  */
    /* JADX WARN: Removed duplicated region for block: B:104:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:10:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0129  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final w b(w wVar, Iterable iterable) {
        EnumMap enumMap;
        o oVar;
        E eH;
        o oVar2;
        Object objC;
        Object next;
        Q2.e eVar;
        boolean z4;
        boolean z5;
        int i5;
        I3.h hVar;
        I3.i iVarA;
        o oVar3;
        d3.i.e("annotations", iterable);
        v vVar = this.f116a;
        if (vVar.f157b) {
            return wVar;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : iterable) {
            E e5 = E.IGNORE;
            E e6 = E.WARN;
            if (!vVar.f157b && (oVar = (o) AbstractC0003b.f.get(d(obj))) != null) {
                Q3.c cVarD = d(obj);
                if (cVarD == null || !AbstractC0003b.f113e.containsKey(cVarD)) {
                    eH = h(obj);
                    if (eH == null) {
                        eH = vVar.f156a.f159a;
                    }
                } else {
                    eH = (E) u.f154l.e(cVarD);
                }
                if (eH == e5) {
                    eH = null;
                }
                if (eH == null) {
                    oVar2 = null;
                } else {
                    I3.i iVarA2 = I3.i.a(oVar.f137a, null, eH == e6, 1);
                    Collection collection = oVar.f138b;
                    d3.i.e("qualifierApplicabilityTypes", collection);
                    oVar2 = new o(iVarA2, collection, oVar.f139c);
                }
            }
            if (oVar2 != null) {
                oVar3 = oVar2;
            } else if (!vVar.f156a.f162d && (objC = c(obj, AbstractC0003b.f111c)) != null) {
                Iterator it = e(obj).iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (i(next) != null) {
                        break;
                    }
                }
                if (next == null) {
                    eVar = null;
                } else {
                    ArrayList arrayListA = a(objC, true);
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    Iterator it2 = arrayListA.iterator();
                    while (it2.hasNext()) {
                        EnumC0002a enumC0002a = (EnumC0002a) f115c.get((String) it2.next());
                        if (enumC0002a != null) {
                            linkedHashSet.add(enumC0002a);
                        }
                    }
                    if (linkedHashSet.contains(EnumC0002a.TYPE_USE)) {
                        Set setX0 = R2.i.x0(EnumC0002a.values());
                        EnumC0002a enumC0002a2 = EnumC0002a.TYPE_PARAMETER_BOUNDS;
                        LinkedHashSet linkedHashSet2 = new LinkedHashSet(R2.z.y1(setX0.size()));
                        boolean z6 = false;
                        for (Object obj2 : setX0) {
                            if (z6 || !d3.i.a(obj2, enumC0002a2)) {
                                z4 = true;
                            } else {
                                z6 = true;
                                z4 = false;
                            }
                            if (z4) {
                                linkedHashSet2.add(obj2);
                            }
                        }
                        linkedHashSet = R2.B.S(linkedHashSet2, linkedHashSet);
                    }
                    eVar = new Q2.e(next, linkedHashSet);
                }
                if (eVar == null) {
                    oVar3 = null;
                } else {
                    Set set = (Set) eVar.f2213d;
                    E eH2 = h(obj);
                    Object obj3 = eVar.f2212c;
                    if (eH2 == null && (eH2 = h(obj3)) == null) {
                        eH2 = vVar.f156a.f159a;
                    }
                    eH2.getClass();
                    if (eH2 != e5) {
                        d3.i.e("$this$extractNullability", obj3);
                        I3.i iVarG = g(obj3, false);
                        if (iVarG != null) {
                            iVarA = iVarG;
                        } else {
                            Object objI = i(obj3);
                            if (objI != null) {
                                E eH3 = h(obj3);
                                if (eH3 == null) {
                                    eH3 = vVar.f156a.f159a;
                                }
                                eH3.getClass();
                                if (eH3 != e5) {
                                    z5 = false;
                                    z5 = false;
                                    I3.i iVarG2 = g(objI, false);
                                    if (iVarG2 != null) {
                                        i5 = 1;
                                        hVar = 0;
                                        iVarA = I3.i.a(iVarG2, null, eH3 == e6, 1);
                                    } else {
                                        i5 = 1;
                                        hVar = 0;
                                        iVarA = null;
                                    }
                                    if (iVarA != null) {
                                        oVar3 = hVar;
                                    } else {
                                        boolean z7 = z5;
                                        if (eH2 == e6) {
                                            z7 = i5;
                                        }
                                        oVar3 = new o(I3.i.a(iVarA, hVar, z7, i5), set);
                                    }
                                }
                            }
                            iVarA = null;
                        }
                        z5 = false;
                        i5 = 1;
                        hVar = 0;
                        if (iVarA != null) {
                        }
                    }
                }
            }
            if (oVar3 != null) {
                arrayList.add(oVar3);
            }
        }
        if (arrayList.isEmpty()) {
            return wVar;
        }
        EnumMap enumMap2 = (wVar == null || (enumMap = wVar.f158a) == null) ? new EnumMap(EnumC0002a.class) : new EnumMap(enumMap);
        Iterator it3 = arrayList.iterator();
        boolean z8 = false;
        while (it3.hasNext()) {
            o oVar4 = (o) it3.next();
            Iterator it4 = oVar4.f138b.iterator();
            z8 = z8;
            while (it4.hasNext()) {
                enumMap2.put((EnumMap) it4.next(), (EnumC0002a) oVar4);
                z8 = true;
            }
        }
        return !z8 ? wVar : new w(enumMap2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0084, code lost:
    
        if (r9.equals("ALWAYS") != false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008d, code lost:
    
        if (r9.equals("UNKNOWN") == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0096, code lost:
    
        if (r9.equals("NEVER") == false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009f, code lost:
    
        if (r9.equals("MAYBE") == false) goto L45;
     */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final I3.i g(Object obj, boolean z4) {
        Q3.c cVarD = d(obj);
        if (cVarD == null) {
            return null;
        }
        this.f116a.getClass();
        E e5 = (E) u.f154l.e(cVarD);
        e5.getClass();
        if (e5 == E.IGNORE) {
            return null;
        }
        boolean zContains = A.f67g.contains(cVarD);
        I3.h hVar = I3.h.f897d;
        boolean z5 = true;
        if (!zContains) {
            boolean zContains2 = A.f70j.contains(cVarD);
            I3.h hVar2 = I3.h.f898e;
            if (!zContains2) {
                if (!(d3.i.a(cVarD, A.f62a) ? true : d3.i.a(cVarD, A.f65d))) {
                    boolean zA = d3.i.a(cVarD, A.f63b) ? true : d3.i.a(cVarD, A.f66e);
                    I3.h hVar3 = I3.h.f896c;
                    if (zA) {
                        hVar = hVar3;
                    } else if (d3.i.a(cVarD, A.f68h)) {
                        String str = (String) R2.m.N0(a(obj, false));
                        if (str != null) {
                            switch (str.hashCode()) {
                                case 73135176:
                                    break;
                                case 74175084:
                                    break;
                                case 433141802:
                                    break;
                                case 1933739535:
                                    break;
                            }
                            return null;
                        }
                        hVar = hVar2;
                    } else if (!d3.i.a(cVarD, A.f71k)) {
                        if (!d3.i.a(cVarD, A.f72l) && !d3.i.a(cVarD, A.n)) {
                            if (!d3.i.a(cVarD, A.f73m)) {
                                return null;
                            }
                        }
                    }
                }
            }
        }
        if (!(e5 == E.WARN) && !z4) {
            z5 = false;
        }
        return new I3.i(hVar, z5);
    }

    public final E h(Object obj) {
        String str;
        v vVar = this.f116a;
        E e5 = (E) vVar.f156a.f161c.get(d(obj));
        if (e5 != null) {
            return e5;
        }
        Object objC = c(obj, AbstractC0003b.f112d);
        if (objC == null || (str = (String) R2.m.N0(a(objC, false))) == null) {
            return null;
        }
        E e6 = vVar.f156a.f160b;
        if (e6 != null) {
            return e6;
        }
        int iHashCode = str.hashCode();
        if (iHashCode == -2137067054) {
            if (str.equals("IGNORE")) {
                return E.IGNORE;
            }
            return null;
        }
        if (iHashCode == -1838656823) {
            if (str.equals("STRICT")) {
                return E.STRICT;
            }
            return null;
        }
        if (iHashCode == 2656902 && str.equals("WARN")) {
            return E.WARN;
        }
        return null;
    }

    public final Object i(Object obj) {
        Object objI;
        d3.i.e("annotation", obj);
        if (this.f116a.f156a.f162d) {
            return null;
        }
        if (R2.m.H0(AbstractC0003b.f114g, d(obj)) || f(obj, AbstractC0003b.f110b)) {
            return obj;
        }
        if (!f(obj, AbstractC0003b.f109a)) {
            return null;
        }
        ConcurrentHashMap concurrentHashMap = this.f117b;
        InterfaceC0802e interfaceC0802eD = X3.f.d((InterfaceC0839b) obj);
        d3.i.b(interfaceC0802eD);
        Object obj2 = concurrentHashMap.get(interfaceC0802eD);
        if (obj2 != null) {
            return obj2;
        }
        Iterator it = e(obj).iterator();
        while (true) {
            if (!it.hasNext()) {
                objI = null;
                break;
            }
            objI = i(it.next());
            if (objI != null) {
                break;
            }
        }
        if (objI == null) {
            return null;
        }
        Object objPutIfAbsent = concurrentHashMap.putIfAbsent(interfaceC0802eD, objI);
        return objPutIfAbsent == null ? objI : objPutIfAbsent;
    }
}
