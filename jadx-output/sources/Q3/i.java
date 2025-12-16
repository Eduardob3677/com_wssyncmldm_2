package Q3;

import R2.B;
import R2.o;
import R2.z;
import java.util.LinkedHashMap;
import java.util.Set;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public static final c f2251a;

    /* renamed from: b, reason: collision with root package name */
    public static final c f2252b;

    /* renamed from: c, reason: collision with root package name */
    public static final c f2253c;

    /* renamed from: d, reason: collision with root package name */
    public static final c f2254d;

    /* renamed from: e, reason: collision with root package name */
    public static final c f2255e;
    public static final c f;

    /* renamed from: g, reason: collision with root package name */
    public static final c f2256g;

    /* renamed from: h, reason: collision with root package name */
    public static final b f2257h;

    /* renamed from: i, reason: collision with root package name */
    public static final b f2258i;

    /* renamed from: j, reason: collision with root package name */
    public static final b f2259j;

    /* renamed from: k, reason: collision with root package name */
    public static final b f2260k;

    /* renamed from: l, reason: collision with root package name */
    public static final b f2261l;

    /* renamed from: m, reason: collision with root package name */
    public static final b f2262m;
    public static final b n;

    /* renamed from: o, reason: collision with root package name */
    public static final Set f2263o;

    /* renamed from: p, reason: collision with root package name */
    public static final Set f2264p;

    /* renamed from: q, reason: collision with root package name */
    public static final b f2265q;

    /* renamed from: r, reason: collision with root package name */
    public static final b f2266r;

    /* renamed from: s, reason: collision with root package name */
    public static final b f2267s;

    /* renamed from: t, reason: collision with root package name */
    public static final b f2268t;

    static {
        c cVar = new c("kotlin");
        f2251a = cVar;
        c cVarC = cVar.c(f.e("reflect"));
        f2252b = cVarC;
        c cVarC2 = cVar.c(f.e("collections"));
        f2253c = cVarC2;
        c cVarC3 = cVar.c(f.e("ranges"));
        f2254d = cVarC3;
        cVar.c(f.e("jvm")).c(f.e("internal"));
        c cVarC4 = cVar.c(f.e("annotation"));
        f2255e = cVarC4;
        c cVarC5 = cVar.c(f.e("internal"));
        cVarC5.c(f.e("ir"));
        c cVarC6 = cVar.c(f.e("coroutines"));
        f = cVarC6;
        f2256g = cVar.c(f.e("enums"));
        B.T(cVar, cVarC2, cVarC3, cVarC4, cVarC, cVarC5, cVarC6);
        j.a("Nothing");
        j.a("Unit");
        j.a("Any");
        j.a("Enum");
        j.a("Annotation");
        f2257h = j.a("Array");
        b bVarA = j.a("Boolean");
        b bVarA2 = j.a("Char");
        b bVarA3 = j.a("Byte");
        b bVarA4 = j.a("Short");
        b bVarA5 = j.a("Int");
        b bVarA6 = j.a("Long");
        b bVarA7 = j.a("Float");
        b bVarA8 = j.a("Double");
        f2258i = j.f(bVarA3);
        f2259j = j.f(bVarA4);
        f2260k = j.f(bVarA5);
        f2261l = j.f(bVarA6);
        j.a("CharSequence");
        f2262m = j.a("String");
        j.a("Throwable");
        j.a("Cloneable");
        j.e("KProperty");
        j.e("KMutableProperty");
        j.e("KProperty0");
        j.e("KMutableProperty0");
        j.e("KProperty1");
        j.e("KMutableProperty1");
        j.e("KProperty2");
        j.e("KMutableProperty2");
        n = j.e("KFunction");
        j.e("KClass");
        j.e("KCallable");
        j.a("Comparable");
        j.a("Number");
        j.a("Function");
        Set setT = B.T(bVarA, bVarA2, bVarA3, bVarA4, bVarA5, bVarA6, bVarA7, bVarA8);
        f2263o = setT;
        int iY1 = z.y1(o.C0(setT));
        if (iY1 < 16) {
            iY1 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iY1);
        for (Object obj : setT) {
            f fVarJ = ((b) obj).j();
            d3.i.d("id.shortClassName", fVarJ);
            linkedHashMap.put(obj, j.d(fVarJ));
        }
        j.c(linkedHashMap);
        Set setT2 = B.T(f2258i, f2259j, f2260k, f2261l);
        f2264p = setT2;
        int iY12 = z.y1(o.C0(setT2));
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(iY12 >= 16 ? iY12 : 16);
        for (Object obj2 : setT2) {
            f fVarJ2 = ((b) obj2).j();
            d3.i.d("id.shortClassName", fVarJ2);
            linkedHashMap2.put(obj2, j.d(fVarJ2));
        }
        j.c(linkedHashMap2);
        B.R(B.S(f2263o, f2264p), f2262m);
        c cVar2 = f;
        f fVarE = f.e("Continuation");
        if (cVar2 == null) {
            b.a(3);
            throw null;
        }
        c.j(fVarE);
        j.b("Iterator");
        j.b("Iterable");
        j.b("Collection");
        j.b("List");
        j.b("ListIterator");
        j.b("Set");
        b bVarB = j.b("Map");
        j.b("MutableIterator");
        j.b("CharIterator");
        j.b("MutableIterable");
        j.b("MutableCollection");
        f2265q = j.b("MutableList");
        j.b("MutableListIterator");
        f2266r = j.b("MutableSet");
        b bVarB2 = j.b("MutableMap");
        f2267s = bVarB2;
        bVarB.d(f.e("Entry"));
        bVarB2.d(f.e("MutableEntry"));
        j.a("Result");
        c cVar3 = f2254d;
        f fVarE2 = f.e("IntRange");
        if (cVar3 == null) {
            b.a(3);
            throw null;
        }
        c.j(fVarE2);
        f fVarE3 = f.e("LongRange");
        if (cVar3 == null) {
            b.a(3);
            throw null;
        }
        c.j(fVarE3);
        f fVarE4 = f.e("CharRange");
        if (cVar3 == null) {
            b.a(3);
            throw null;
        }
        c.j(fVarE4);
        c cVar4 = f2255e;
        f fVarE5 = f.e("AnnotationRetention");
        if (cVar4 == null) {
            b.a(3);
            throw null;
        }
        c.j(fVarE5);
        f fVarE6 = f.e("AnnotationTarget");
        if (cVar4 == null) {
            b.a(3);
            throw null;
        }
        c.j(fVarE6);
        f2268t = new b(f2256g, f.e("EnumEntries"));
    }
}
