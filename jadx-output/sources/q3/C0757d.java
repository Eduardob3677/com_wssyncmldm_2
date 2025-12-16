package q3;

import java.lang.annotation.Annotation;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import o3.C0727d;
import o3.EnumC0734k;
import p0.AbstractC0739a;
import p3.EnumC0747e;

/* renamed from: q3.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0757d {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8645a;

    /* renamed from: b, reason: collision with root package name */
    public static final String f8646b;

    /* renamed from: c, reason: collision with root package name */
    public static final String f8647c;

    /* renamed from: d, reason: collision with root package name */
    public static final String f8648d;

    /* renamed from: e, reason: collision with root package name */
    public static final Q3.b f8649e;
    public static final Q3.c f;

    /* renamed from: g, reason: collision with root package name */
    public static final Q3.b f8650g;

    /* renamed from: h, reason: collision with root package name */
    public static final HashMap f8651h;

    /* renamed from: i, reason: collision with root package name */
    public static final HashMap f8652i;

    /* renamed from: j, reason: collision with root package name */
    public static final HashMap f8653j;

    /* renamed from: k, reason: collision with root package name */
    public static final HashMap f8654k;

    /* renamed from: l, reason: collision with root package name */
    public static final HashMap f8655l;

    /* renamed from: m, reason: collision with root package name */
    public static final HashMap f8656m;
    public static final List n;

    static {
        StringBuilder sb = new StringBuilder();
        EnumC0747e enumC0747e = EnumC0747e.f;
        sb.append(enumC0747e.f8597c.f2234a.toString());
        sb.append('.');
        sb.append(enumC0747e.f8598d);
        f8645a = sb.toString();
        StringBuilder sb2 = new StringBuilder();
        EnumC0747e enumC0747e2 = EnumC0747e.f8594h;
        sb2.append(enumC0747e2.f8597c.f2234a.toString());
        sb2.append('.');
        sb2.append(enumC0747e2.f8598d);
        f8646b = sb2.toString();
        StringBuilder sb3 = new StringBuilder();
        EnumC0747e enumC0747e3 = EnumC0747e.f8593g;
        sb3.append(enumC0747e3.f8597c.f2234a.toString());
        sb3.append('.');
        sb3.append(enumC0747e3.f8598d);
        f8647c = sb3.toString();
        StringBuilder sb4 = new StringBuilder();
        EnumC0747e enumC0747e4 = EnumC0747e.f8595i;
        sb4.append(enumC0747e4.f8597c.f2234a.toString());
        sb4.append('.');
        sb4.append(enumC0747e4.f8598d);
        f8648d = sb4.toString();
        Q3.b bVarK = Q3.b.k(new Q3.c("kotlin.jvm.functions.FunctionN"));
        f8649e = bVarK;
        Q3.c cVarB = bVarK.b();
        d3.i.d("FUNCTION_N_CLASS_ID.asSingleFqName()", cVarB);
        f = cVarB;
        f8650g = Q3.i.n;
        d(Class.class);
        f8651h = new HashMap();
        f8652i = new HashMap();
        f8653j = new HashMap();
        f8654k = new HashMap();
        f8655l = new HashMap();
        f8656m = new HashMap();
        Q3.b bVarK2 = Q3.b.k(o3.m.f8478A);
        Q3.c cVar = o3.m.f8485I;
        Q3.c cVarH = bVarK2.h();
        Q3.c cVarH2 = bVarK2.h();
        d3.i.d("kotlinReadOnly.packageFqName", cVarH2);
        Q3.c cVarL = L2.b.L(cVar, cVarH2);
        C0756c c0756c = new C0756c(d(Iterable.class), bVarK2, new Q3.b(cVarH, cVarL, false));
        Q3.b bVarK3 = Q3.b.k(o3.m.f8529z);
        Q3.c cVar2 = o3.m.f8484H;
        Q3.c cVarH3 = bVarK3.h();
        Q3.c cVarH4 = bVarK3.h();
        d3.i.d("kotlinReadOnly.packageFqName", cVarH4);
        C0756c c0756c2 = new C0756c(d(Iterator.class), bVarK3, new Q3.b(cVarH3, L2.b.L(cVar2, cVarH4), false));
        Q3.b bVarK4 = Q3.b.k(o3.m.f8479B);
        Q3.c cVar3 = o3.m.f8486J;
        Q3.c cVarH5 = bVarK4.h();
        Q3.c cVarH6 = bVarK4.h();
        d3.i.d("kotlinReadOnly.packageFqName", cVarH6);
        C0756c c0756c3 = new C0756c(d(Collection.class), bVarK4, new Q3.b(cVarH5, L2.b.L(cVar3, cVarH6), false));
        Q3.b bVarK5 = Q3.b.k(o3.m.f8480C);
        Q3.c cVar4 = o3.m.f8487K;
        Q3.c cVarH7 = bVarK5.h();
        Q3.c cVarH8 = bVarK5.h();
        d3.i.d("kotlinReadOnly.packageFqName", cVarH8);
        C0756c c0756c4 = new C0756c(d(List.class), bVarK5, new Q3.b(cVarH7, L2.b.L(cVar4, cVarH8), false));
        Q3.b bVarK6 = Q3.b.k(o3.m.E);
        Q3.c cVar5 = o3.m.f8489M;
        Q3.c cVarH9 = bVarK6.h();
        Q3.c cVarH10 = bVarK6.h();
        d3.i.d("kotlinReadOnly.packageFqName", cVarH10);
        C0756c c0756c5 = new C0756c(d(Set.class), bVarK6, new Q3.b(cVarH9, L2.b.L(cVar5, cVarH10), false));
        Q3.b bVarK7 = Q3.b.k(o3.m.f8481D);
        Q3.c cVar6 = o3.m.f8488L;
        Q3.c cVarH11 = bVarK7.h();
        Q3.c cVarH12 = bVarK7.h();
        d3.i.d("kotlinReadOnly.packageFqName", cVarH12);
        C0756c c0756c6 = new C0756c(d(ListIterator.class), bVarK7, new Q3.b(cVarH11, L2.b.L(cVar6, cVarH12), false));
        Q3.c cVar7 = o3.m.f8482F;
        Q3.b bVarK8 = Q3.b.k(cVar7);
        Q3.c cVar8 = o3.m.f8490N;
        Q3.c cVarH13 = bVarK8.h();
        Q3.c cVarH14 = bVarK8.h();
        d3.i.d("kotlinReadOnly.packageFqName", cVarH14);
        C0756c c0756c7 = new C0756c(d(Map.class), bVarK8, new Q3.b(cVarH13, L2.b.L(cVar8, cVarH14), false));
        Q3.b bVarD = Q3.b.k(cVar7).d(o3.m.f8483G.f());
        Q3.c cVar9 = o3.m.f8491O;
        Q3.c cVarH15 = bVarD.h();
        Q3.c cVarH16 = bVarD.h();
        d3.i.d("kotlinReadOnly.packageFqName", cVarH16);
        List<C0756c> listY0 = R2.n.y0(c0756c, c0756c2, c0756c3, c0756c4, c0756c5, c0756c6, c0756c7, new C0756c(d(Map.Entry.class), bVarD, new Q3.b(cVarH15, L2.b.L(cVar9, cVarH16), false)));
        n = listY0;
        c(Object.class, o3.m.f8503a);
        c(String.class, o3.m.f);
        c(CharSequence.class, o3.m.f8510e);
        a(d(Throwable.class), Q3.b.k(o3.m.f8515k));
        c(Cloneable.class, o3.m.f8507c);
        c(Number.class, o3.m.f8513i);
        a(d(Comparable.class), Q3.b.k(o3.m.f8516l));
        c(Enum.class, o3.m.f8514j);
        a(d(Annotation.class), Q3.b.k(o3.m.f8522s));
        for (C0756c c0756c8 : listY0) {
            Q3.b bVar = c0756c8.f8642a;
            Q3.b bVar2 = c0756c8.f8643b;
            a(bVar, bVar2);
            Q3.b bVar3 = c0756c8.f8644c;
            Q3.c cVarB2 = bVar3.b();
            d3.i.d("mutableClassId.asSingleFqName()", cVarB2);
            b(cVarB2, bVar);
            f8655l.put(bVar3, bVar2);
            f8656m.put(bVar2, bVar3);
            Q3.c cVarB3 = bVar2.b();
            d3.i.d("readOnlyClassId.asSingleFqName()", cVarB3);
            Q3.c cVarB4 = bVar3.b();
            d3.i.d("mutableClassId.asSingleFqName()", cVarB4);
            Q3.e eVarI = bVar3.b().i();
            d3.i.d("mutableClassId.asSingleFqName().toUnsafe()", eVarI);
            f8653j.put(eVarI, cVarB3);
            Q3.e eVarI2 = cVarB3.i();
            d3.i.d("readOnlyFqName.toUnsafe()", eVarI2);
            f8654k.put(eVarI2, cVarB4);
        }
        for (Y3.c cVar10 : Y3.c.values()) {
            Q3.b bVarK9 = Q3.b.k(cVar10.e());
            EnumC0734k enumC0734kD = cVar10.d();
            d3.i.d("jvmType.primitiveType", enumC0734kD);
            a(bVarK9, Q3.b.k(o3.n.f8538j.c(enumC0734kD.f8470c)));
        }
        for (Q3.b bVar4 : C0727d.f8448a) {
            a(Q3.b.k(new Q3.c("kotlin.jvm.internal." + bVar4.j().b() + "CompanionObject")), bVar4.d(Q3.h.f2246b));
        }
        for (int i5 = 0; i5 < 23; i5++) {
            a(Q3.b.k(new Q3.c(B.f.t(i5, "kotlin.jvm.functions.Function"))), new Q3.b(o3.n.f8538j, Q3.f.e("Function" + i5)));
            b(new Q3.c(f8646b + i5), f8650g);
        }
        for (int i6 = 0; i6 < 22; i6++) {
            EnumC0747e enumC0747e5 = EnumC0747e.f8595i;
            b(new Q3.c((enumC0747e5.f8597c.f2234a.toString() + '.' + enumC0747e5.f8598d) + i6), f8650g);
        }
        Q3.c cVarG = o3.m.f8505b.g();
        d3.i.d("nothing.toSafe()", cVarG);
        b(cVarG, d(Void.class));
    }

    public static void a(Q3.b bVar, Q3.b bVar2) {
        Q3.e eVarI = bVar.b().i();
        d3.i.d("javaClassId.asSingleFqName().toUnsafe()", eVarI);
        f8651h.put(eVarI, bVar2);
        Q3.c cVarB = bVar2.b();
        d3.i.d("kotlinClassId.asSingleFqName()", cVarB);
        b(cVarB, bVar);
    }

    public static void b(Q3.c cVar, Q3.b bVar) {
        Q3.e eVarI = cVar.i();
        d3.i.d("kotlinFqNameUnsafe.toUnsafe()", eVarI);
        f8652i.put(eVarI, bVar);
    }

    public static void c(Class cls, Q3.e eVar) {
        Q3.c cVarG = eVar.g();
        d3.i.d("kotlinFqName.toSafe()", cVarG);
        a(d(cls), Q3.b.k(cVarG));
    }

    public static Q3.b d(Class cls) {
        if (!cls.isPrimitive()) {
            cls.isArray();
        }
        Class<?> declaringClass = cls.getDeclaringClass();
        return declaringClass == null ? Q3.b.k(new Q3.c(cls.getCanonicalName())) : d(declaringClass).d(Q3.f.e(cls.getSimpleName()));
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0081 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean e(Q3.e eVar, String str) {
        int i5;
        int i6;
        int i7;
        int iDigit;
        int i8;
        Integer numValueOf = null;
        String str2 = eVar.f2238a;
        if (str2 == null) {
            Q3.e.a(4);
            throw null;
        }
        String strT = s4.h.t(str2, str, "");
        if (strT.length() <= 0) {
            return false;
        }
        if (strT.length() > 0 && AbstractC0739a.h(strT.charAt(0), '0', false)) {
            return false;
        }
        AbstractC0739a.e();
        int length = strT.length();
        if (length != 0) {
            char cCharAt = strT.charAt(0);
            int i9 = -2147483647;
            if ((cCharAt < '0' ? (char) 65535 : cCharAt == '0' ? (char) 0 : (char) 1) >= 0) {
                i5 = 0;
            } else if (length != 1) {
                if (cCharAt == '-') {
                    i9 = Integer.MIN_VALUE;
                    i5 = 1;
                } else if (cCharAt == '+') {
                    i6 = 0;
                    i5 = 1;
                    i7 = 0;
                    int i10 = -59652323;
                    while (true) {
                        if (i5 < length) {
                            iDigit = Character.digit((int) strT.charAt(i5), 10);
                            if (iDigit < 0 || ((i7 < i10 && (i10 != -59652323 || i7 < (i10 = i9 / 10))) || (i8 = i7 * 10) < i9 + iDigit)) {
                                break;
                            }
                            i7 = i8 - iDigit;
                            i5++;
                        } else {
                            numValueOf = i6 != 0 ? Integer.valueOf(i7) : Integer.valueOf(-i7);
                        }
                    }
                }
            }
            i6 = i5;
            i7 = 0;
            int i102 = -59652323;
            while (true) {
                if (i5 < length) {
                }
                i7 = i8 - iDigit;
                i5++;
            }
        }
        return numValueOf != null && numValueOf.intValue() >= 23;
    }

    public static Q3.b f(Q3.e eVar) {
        boolean zE = e(eVar, f8645a);
        Q3.b bVar = f8649e;
        if (zE || e(eVar, f8647c)) {
            return bVar;
        }
        boolean zE2 = e(eVar, f8646b);
        Q3.b bVar2 = f8650g;
        return (zE2 || e(eVar, f8648d)) ? bVar2 : (Q3.b) f8652i.get(eVar);
    }
}
