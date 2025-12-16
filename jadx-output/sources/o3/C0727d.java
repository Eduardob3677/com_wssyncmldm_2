package o3;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;

/* renamed from: o3.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0727d {

    /* renamed from: a, reason: collision with root package name */
    public static final LinkedHashSet f8448a;

    static {
        Set<EnumC0734k> set = EnumC0734k.f8461g;
        ArrayList arrayList = new ArrayList(R2.o.C0(set));
        for (EnumC0734k enumC0734k : set) {
            d3.i.e("primitiveType", enumC0734k);
            arrayList.add(n.f8538j.c(enumC0734k.f8470c));
        }
        Q3.c cVarG = m.f.g();
        d3.i.d("string.toSafe()", cVarG);
        ArrayList arrayListZ0 = R2.m.Z0(arrayList, cVarG);
        Q3.c cVarG2 = m.f8512h.g();
        d3.i.d("_boolean.toSafe()", cVarG2);
        ArrayList arrayListZ02 = R2.m.Z0(arrayListZ0, cVarG2);
        Q3.c cVarG3 = m.f8514j.g();
        d3.i.d("_enum.toSafe()", cVarG3);
        ArrayList arrayListZ03 = R2.m.Z0(arrayListZ02, cVarG3);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = arrayListZ03.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(Q3.b.k((Q3.c) it.next()));
        }
        f8448a = linkedHashSet;
    }
}
