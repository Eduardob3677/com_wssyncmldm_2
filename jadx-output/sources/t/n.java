package t;

import h0.AbstractC0432c;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import s.C0827d;

/* loaded from: classes.dex */
public final class n {
    public static int f;

    /* renamed from: a, reason: collision with root package name */
    public ArrayList f9113a;

    /* renamed from: b, reason: collision with root package name */
    public int f9114b;

    /* renamed from: c, reason: collision with root package name */
    public int f9115c;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f9116d;

    /* renamed from: e, reason: collision with root package name */
    public int f9117e;

    public final void a(ArrayList arrayList) {
        int size = this.f9113a.size();
        if (this.f9117e != -1 && size > 0) {
            for (int i5 = 0; i5 < arrayList.size(); i5++) {
                n nVar = (n) arrayList.get(i5);
                if (this.f9117e == nVar.f9114b) {
                    c(this.f9115c, nVar);
                }
            }
        }
        if (size == 0) {
            arrayList.remove(this);
        }
    }

    public final int b(r.c cVar, int i5) {
        int iN;
        int iN2;
        ArrayList arrayList = this.f9113a;
        if (arrayList.size() == 0) {
            return 0;
        }
        s.e eVar = (s.e) ((C0827d) arrayList.get(0)).f8905N;
        cVar.t();
        eVar.b(cVar, false);
        for (int i6 = 0; i6 < arrayList.size(); i6++) {
            ((C0827d) arrayList.get(i6)).b(cVar, false);
        }
        if (i5 == 0 && eVar.s0 > 0) {
            s.j.a(eVar, cVar, arrayList, 0);
        }
        if (i5 == 1 && eVar.t0 > 0) {
            s.j.a(eVar, cVar, arrayList, 1);
        }
        try {
            cVar.p();
        } catch (Exception e5) {
            e5.printStackTrace();
        }
        this.f9116d = new ArrayList();
        for (int i7 = 0; i7 < arrayList.size(); i7++) {
            C0827d c0827d = (C0827d) arrayList.get(i7);
            e4.d dVar = new e4.d(17);
            new WeakReference(c0827d);
            r.c.n(c0827d.f8895C);
            r.c.n(c0827d.f8896D);
            r.c.n(c0827d.E);
            r.c.n(c0827d.f8897F);
            r.c.n(c0827d.f8898G);
            this.f9116d.add(dVar);
        }
        if (i5 == 0) {
            iN = r.c.n(eVar.f8895C);
            iN2 = r.c.n(eVar.E);
            cVar.t();
        } else {
            iN = r.c.n(eVar.f8896D);
            iN2 = r.c.n(eVar.f8897F);
            cVar.t();
        }
        return iN2 - iN;
    }

    public final void c(int i5, n nVar) {
        Iterator it = this.f9113a.iterator();
        while (it.hasNext()) {
            C0827d c0827d = (C0827d) it.next();
            ArrayList arrayList = nVar.f9113a;
            if (!arrayList.contains(c0827d)) {
                arrayList.add(c0827d);
            }
            int i6 = nVar.f9114b;
            if (i5 == 0) {
                c0827d.f8931h0 = i6;
            } else {
                c0827d.f8933i0 = i6;
            }
        }
        this.f9117e = nVar.f9114b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        int i5 = this.f9115c;
        sb.append(i5 == 0 ? "Horizontal" : i5 == 1 ? "Vertical" : i5 == 2 ? "Both" : "Unknown");
        sb.append(" [");
        sb.append(this.f9114b);
        sb.append("] <");
        String string = sb.toString();
        Iterator it = this.f9113a.iterator();
        while (it.hasNext()) {
            string = string + " " + ((C0827d) it.next()).f8921b0;
        }
        return AbstractC0432c.h(string, " >");
    }
}
