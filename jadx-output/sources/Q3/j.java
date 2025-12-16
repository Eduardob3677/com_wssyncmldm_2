package Q3;

import R2.o;
import R2.z;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class j {
    static {
        new c("java.lang").c(f.e("annotation"));
    }

    public static final b a(String str) {
        c cVar = i.f2251a;
        return new b(i.f2251a, f.e(str));
    }

    public static final b b(String str) {
        c cVar = i.f2251a;
        return new b(i.f2253c, f.e(str));
    }

    public static final void c(LinkedHashMap linkedHashMap) {
        Set<Map.Entry> setEntrySet = linkedHashMap.entrySet();
        int iY1 = z.y1(o.C0(setEntrySet));
        if (iY1 < 16) {
            iY1 = 16;
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(iY1);
        for (Map.Entry entry : setEntrySet) {
            linkedHashMap2.put(entry.getValue(), entry.getKey());
        }
    }

    public static final b d(f fVar) {
        c cVar = i.f2251a;
        b bVar = i.f2257h;
        return new b(bVar.h(), f.e(fVar.c().concat(bVar.j().c())));
    }

    public static final b e(String str) {
        c cVar = i.f2251a;
        return new b(i.f2252b, f.e(str));
    }

    public static final b f(b bVar) {
        c cVar = i.f2251a;
        return new b(i.f2251a, f.e("U".concat(bVar.j().c())));
    }
}
