package I3;

import A3.C0004c;
import A3.C0005d;
import A3.EnumC0002a;
import A3.w;
import E3.I;
import android.view.View;
import android.view.ViewGroup;
import h4.AbstractC0450c;
import h4.AbstractC0464q;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.X;
import i3.x;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import r3.InterfaceC0789Q;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import s3.InterfaceC0838a;
import u3.AbstractC0878j;

/* loaded from: classes.dex */
public final class p {

    /* renamed from: a, reason: collision with root package name */
    public boolean f918a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f919b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f920c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f921d;

    /* renamed from: e, reason: collision with root package name */
    public Object f922e;

    public p(InterfaceC0838a interfaceC0838a, boolean z4, D3.e eVar, EnumC0002a enumC0002a, boolean z5) {
        d3.i.e("containerContext", eVar);
        this.f920c = interfaceC0838a;
        this.f918a = z4;
        this.f921d = eVar;
        this.f922e = enumC0002a;
        this.f919b = z5;
    }

    public static void b(Object obj, ArrayList arrayList, C0005d c0005d) {
        arrayList.add(obj);
        Iterable iterable = (Iterable) c0005d.e(obj);
        if (iterable != null) {
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                b(it.next(), arrayList, c0005d);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v7, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Iterable, java.util.Collection] */
    public static i c(InterfaceC0789Q interfaceC0789Q) {
        ?? arrayList;
        h hVar;
        if (!(interfaceC0789Q instanceof I)) {
            return null;
        }
        List<k4.c> upperBounds = ((AbstractC0878j) interfaceC0789Q).getUpperBounds();
        d3.i.d("this.upperBounds", upperBounds);
        if (!upperBounds.isEmpty()) {
            Iterator it = upperBounds.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                if (!x.o0((k4.c) it.next())) {
                    if (!upperBounds.isEmpty()) {
                        Iterator it2 = upperBounds.iterator();
                        while (it2.hasNext()) {
                            if (f((k4.c) it2.next()) != null) {
                                arrayList = upperBounds;
                                break;
                            }
                        }
                    }
                    if (!upperBounds.isEmpty()) {
                        for (k4.c cVar : upperBounds) {
                            d3.i.e("<this>", cVar);
                            if (AbstractC0450c.e((AbstractC0468v) cVar) != null) {
                                arrayList = new ArrayList();
                                for (k4.c cVar2 : upperBounds) {
                                    d3.i.e("<this>", cVar2);
                                    AbstractC0468v abstractC0468vE = AbstractC0450c.e((AbstractC0468v) cVar2);
                                    if (abstractC0468vE != null) {
                                        arrayList.add(abstractC0468vE);
                                    }
                                }
                                if (arrayList.isEmpty()) {
                                    hVar = h.f897d;
                                } else {
                                    Iterator it3 = arrayList.iterator();
                                    while (it3.hasNext()) {
                                        if (!x.w0((k4.c) it3.next())) {
                                            hVar = h.f898e;
                                            break;
                                        }
                                    }
                                    hVar = h.f897d;
                                }
                                return new i(hVar, arrayList != upperBounds);
                            }
                        }
                    }
                }
            }
        }
        return null;
    }

    public static Q3.e e(AbstractC0472z abstractC0472z) {
        j4.f fVar = X.f7044a;
        InterfaceC0804g interfaceC0804gI = abstractC0472z.J0().i();
        InterfaceC0802e interfaceC0802e = interfaceC0804gI instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gI : null;
        if (interfaceC0802e != null) {
            return T3.e.g(interfaceC0802e);
        }
        return null;
    }

    public static h f(k4.c cVar) {
        AbstractC0472z abstractC0472zL;
        AbstractC0472z abstractC0472zL2;
        d3.i.e("<this>", cVar);
        AbstractC0464q abstractC0464qJ = x.j(cVar);
        if (abstractC0464qJ == null || (abstractC0472zL = x.D0(abstractC0464qJ)) == null) {
            abstractC0472zL = x.l(cVar);
            d3.i.b(abstractC0472zL);
        }
        if (x.u0(abstractC0472zL)) {
            return h.f897d;
        }
        AbstractC0464q abstractC0464qJ2 = x.j(cVar);
        if (abstractC0464qJ2 == null || (abstractC0472zL2 = x.k1(abstractC0464qJ2)) == null) {
            abstractC0472zL2 = x.l(cVar);
            d3.i.b(abstractC0472zL2);
        }
        if (x.u0(abstractC0472zL2)) {
            return null;
        }
        return h.f898e;
    }

    public boolean a(J1.g gVar) {
        int id = gVar.getId();
        HashSet hashSet = (HashSet) this.f921d;
        if (hashSet.contains(Integer.valueOf(id))) {
            return false;
        }
        J1.g gVar2 = (J1.g) ((HashMap) this.f920c).get(Integer.valueOf(g()));
        if (gVar2 != null) {
            k(gVar2, false);
        }
        boolean zAdd = hashSet.add(Integer.valueOf(id));
        if (!gVar.isChecked()) {
            gVar.setChecked(true);
        }
        return zAdd;
    }

    public ArrayList d(ViewGroup viewGroup) {
        HashSet hashSet = new HashSet((HashSet) this.f921d);
        ArrayList arrayList = new ArrayList();
        for (int i5 = 0; i5 < viewGroup.getChildCount(); i5++) {
            View childAt = viewGroup.getChildAt(i5);
            if ((childAt instanceof J1.g) && hashSet.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }

    public int g() {
        if (this.f918a) {
            HashSet hashSet = (HashSet) this.f921d;
            if (!hashSet.isEmpty()) {
                return ((Integer) hashSet.iterator().next()).intValue();
            }
        }
        return -1;
    }

    public int[] h() {
        synchronized (this) {
            try {
                if (this.f918a && !this.f919b) {
                    int length = ((long[]) this.f920c).length;
                    int i5 = 0;
                    while (true) {
                        int i6 = 1;
                        if (i5 >= length) {
                            this.f919b = true;
                            this.f918a = false;
                            return (int[]) this.f922e;
                        }
                        boolean z4 = ((long[]) this.f920c)[i5] > 0;
                        boolean[] zArr = (boolean[]) this.f921d;
                        if (z4 != zArr[i5]) {
                            int[] iArr = (int[]) this.f922e;
                            if (!z4) {
                                i6 = 2;
                            }
                            iArr[i5] = i6;
                        } else {
                            ((int[]) this.f922e)[i5] = 0;
                        }
                        zArr[i5] = z4;
                        i5++;
                    }
                }
                return null;
            } finally {
            }
        }
    }

    public void i() {
        F1.g gVar = (F1.g) this.f922e;
        if (gVar != null) {
            new HashSet((HashSet) this.f921d);
            F1.l lVar = gVar.f732a;
            F1.j jVar = lVar.f736h;
            if (jVar != null) {
                lVar.f737i.d(lVar);
                F1.l lVar2 = ((F1.g) jVar).f732a;
                if (lVar2.f737i.f918a) {
                    lVar2.getCheckedChipId();
                    throw null;
                }
            }
        }
    }

    public ArrayList j(k4.c cVar) {
        D3.e eVar = (D3.e) this.f921d;
        w wVar = (w) ((Q2.c) eVar.f501g).getValue();
        C0004c c0004c = ((D3.a) eVar.f499d).f483q;
        d3.i.e("<this>", cVar);
        a aVar = new a(cVar, c0004c.b(wVar, ((AbstractC0468v) cVar).t()), null);
        C0005d c0005d = new C0005d(7, this);
        ArrayList arrayList = new ArrayList(1);
        b(aVar, arrayList, c0005d);
        return arrayList;
    }

    public boolean k(J1.g gVar, boolean z4) {
        int id = gVar.getId();
        HashSet hashSet = (HashSet) this.f921d;
        if (!hashSet.contains(Integer.valueOf(id))) {
            return false;
        }
        if (z4 && hashSet.size() == 1 && hashSet.contains(Integer.valueOf(id))) {
            gVar.setChecked(true);
            return false;
        }
        boolean zRemove = hashSet.remove(Integer.valueOf(id));
        if (gVar.isChecked()) {
            gVar.setChecked(false);
        }
        return zRemove;
    }

    public p() {
        this.f920c = new HashMap();
        this.f921d = new HashSet();
    }

    public p(int i5) {
        long[] jArr = new long[i5];
        this.f920c = jArr;
        boolean[] zArr = new boolean[i5];
        this.f921d = zArr;
        this.f922e = new int[i5];
        Arrays.fill(jArr, 0L);
        Arrays.fill(zArr, false);
    }
}
