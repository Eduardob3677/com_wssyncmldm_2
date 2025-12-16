package I3;

import A3.D;
import R2.x;
import R2.y;
import R2.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class o {

    /* renamed from: a, reason: collision with root package name */
    public final String f915a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f916b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public Q2.e f917c = new Q2.e("V", null);

    public o(D d2, String str) {
        this.f915a = str;
    }

    public final void a(String str, e... eVarArr) {
        q qVar;
        d3.i.e("type", str);
        ArrayList arrayList = this.f916b;
        if (eVarArr.length == 0) {
            qVar = null;
        } else {
            R2.k kVar = new R2.k(1, new B3.k(3, eVarArr));
            int iY1 = z.y1(R2.o.C0(kVar));
            if (iY1 < 16) {
                iY1 = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(iY1);
            Iterator it = kVar.iterator();
            while (true) {
                y yVar = (y) it;
                if (!yVar.f2331d.hasNext()) {
                    break;
                }
                x xVar = (x) yVar.next();
                linkedHashMap.put(Integer.valueOf(xVar.f2328a), (e) xVar.f2329b);
            }
            qVar = new q(linkedHashMap);
        }
        arrayList.add(new Q2.e(str, qVar));
    }

    public final void b(Y3.c cVar) {
        d3.i.e("type", cVar);
        String strC = cVar.c();
        d3.i.d("type.desc", strC);
        this.f917c = new Q2.e(strC, null);
    }

    public final void c(String str, e... eVarArr) {
        d3.i.e("type", str);
        R2.k kVar = new R2.k(1, new B3.k(3, eVarArr));
        int iY1 = z.y1(R2.o.C0(kVar));
        if (iY1 < 16) {
            iY1 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iY1);
        Iterator it = kVar.iterator();
        while (true) {
            y yVar = (y) it;
            if (!yVar.f2331d.hasNext()) {
                this.f917c = new Q2.e(str, new q(linkedHashMap));
                return;
            } else {
                x xVar = (x) yVar.next();
                linkedHashMap.put(Integer.valueOf(xVar.f2328a), (e) xVar.f2329b);
            }
        }
    }
}
