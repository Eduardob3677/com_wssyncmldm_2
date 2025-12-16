package p3;

import R2.m;
import R2.w;
import Z0.j;
import d3.i;
import g4.o;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import r3.InterfaceC0802e;
import r3.InterfaceC0821x;
import s4.h;
import t3.InterfaceC0859c;
import u3.C0867C;
import u3.y;

/* renamed from: p3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0743a implements InterfaceC0859c {

    /* renamed from: a, reason: collision with root package name */
    public final o f8579a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0821x f8580b;

    public C0743a(o oVar, C0867C c0867c) {
        i.e("storageManager", oVar);
        i.e("module", c0867c);
        this.f8579a = oVar;
        this.f8580b = c0867c;
    }

    @Override // t3.InterfaceC0859c
    public final boolean a(Q3.c cVar, Q3.f fVar) {
        i.e("packageFqName", cVar);
        i.e("name", fVar);
        String strB = fVar.b();
        i.d("name.asString()", strB);
        if (h.s(strB, "Function") || h.s(strB, "KFunction") || h.s(strB, "SuspendFunction") || h.s(strB, "KSuspendFunction")) {
            EnumC0747e.f8592e.getClass();
            if (Z0.h.g(strB, cVar) != null) {
                return true;
            }
        }
        return false;
    }

    @Override // t3.InterfaceC0859c
    public final Collection b(Q3.c cVar) {
        i.e("packageFqName", cVar);
        return w.f2327c;
    }

    @Override // t3.InterfaceC0859c
    public final InterfaceC0802e c(Q3.b bVar) {
        i.e("classId", bVar);
        if (bVar.f2232c || (!bVar.f2231b.e().d())) {
            return null;
        }
        String strB = bVar.i().b();
        if (!h.h(strB, "Function")) {
            return null;
        }
        Q3.c cVarH = bVar.h();
        i.d("classId.packageFqName", cVarH);
        EnumC0747e.f8592e.getClass();
        C0746d c0746dG = Z0.h.g(strB, cVarH);
        if (c0746dG == null) {
            return null;
        }
        List list = (List) j.N(((y) this.f8580b.a0(cVarH)).f9514g, y.f9512j[0]);
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (obj instanceof e4.c) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            it.next();
        }
        B.f.F(m.O0(arrayList2));
        return new C0745c(this.f8579a, (e4.c) m.M0(arrayList), c0746dG.f8590a, c0746dG.f8591b);
    }
}
