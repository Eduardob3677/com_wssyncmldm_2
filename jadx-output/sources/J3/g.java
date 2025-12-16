package J3;

import L3.Q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashSet;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public final class g implements d4.l {

    /* renamed from: b, reason: collision with root package name */
    public static final g f1155b = new g();

    /* renamed from: c, reason: collision with root package name */
    public static final g f1156c = new g();

    /* renamed from: d, reason: collision with root package name */
    public static final g f1157d = new g();

    public static String[] a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add("<init>(" + str + ")V");
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static l b(String str) {
        Y3.c cVar;
        l jVar;
        d3.i.e("representation", str);
        char cCharAt = str.charAt(0);
        Y3.c[] cVarArrValues = Y3.c.values();
        int length = cVarArrValues.length;
        int i5 = 0;
        while (true) {
            if (i5 >= length) {
                cVar = null;
                break;
            }
            cVar = cVarArrValues[i5];
            if (cVar.c().charAt(0) == cCharAt) {
                break;
            }
            i5++;
        }
        if (cVar != null) {
            return new k(cVar);
        }
        if (cCharAt == 'V') {
            return new k(null);
        }
        if (cCharAt == '[') {
            String strSubstring = str.substring(1);
            d3.i.d("this as java.lang.String).substring(startIndex)", strSubstring);
            jVar = new i(b(strSubstring));
        } else {
            if (cCharAt == 'L' && str.length() > 0) {
                AbstractC0739a.h(str.charAt(s4.h.i(str)), ';', false);
            }
            String strSubstring2 = str.substring(1, str.length() - 1);
            d3.i.d("this as java.lang.String…ing(startIndex, endIndex)", strSubstring2);
            jVar = new j(strSubstring2);
        }
        return jVar;
    }

    public static j d(String str) {
        d3.i.e("internalName", str);
        return new j(str);
    }

    public static LinkedHashSet e(String str, String... strArr) {
        d3.i.e("internalName", str);
        d3.i.e("signatures", strArr);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (String str2 : strArr) {
            linkedHashSet.add(str + '.' + str2);
        }
        return linkedHashSet;
    }

    public static LinkedHashSet f(String str, String... strArr) {
        d3.i.e("signatures", strArr);
        return e("java/lang/".concat(str), (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static LinkedHashSet g(String str, String... strArr) {
        return e("java/util/".concat(str), (String[]) Arrays.copyOf(strArr, strArr.length));
    }

    public static String h(l lVar) {
        String strC;
        d3.i.e("type", lVar);
        if (lVar instanceof i) {
            return "[" + h(((i) lVar).f1161i);
        }
        if (lVar instanceof k) {
            Y3.c cVar = ((k) lVar).f1163i;
            return (cVar == null || (strC = cVar.c()) == null) ? "V" : strC;
        }
        if (!(lVar instanceof j)) {
            throw new A0.c();
        }
        return "L" + ((j) lVar).f1162i + ';';
    }

    @Override // d4.l
    public AbstractC0468v c(Q q2, String str, AbstractC0472z abstractC0472z, AbstractC0472z abstractC0472z2) {
        d3.i.e("proto", q2);
        d3.i.e("flexibleId", str);
        d3.i.e("lowerBound", abstractC0472z);
        d3.i.e("upperBound", abstractC0472z2);
        return !d3.i.a(str, "kotlin.jvm.PlatformType") ? j4.i.c(j4.h.f7633o, str, abstractC0472z.toString(), abstractC0472z2.toString()) : q2.l(O3.k.f2021g) ? new F3.f(abstractC0472z, abstractC0472z2) : C0451d.j(abstractC0472z, abstractC0472z2);
    }
}
