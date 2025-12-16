package o3;

import f1.AbstractC0420a;
import h4.C0457j;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import r3.AbstractC0811n;
import r3.InterfaceC0816s;
import u3.C0868D;
import u3.C0879k;
import u3.T;

/* loaded from: classes.dex */
public abstract class o {

    /* renamed from: a, reason: collision with root package name */
    public static final C0868D f8543a;

    static {
        j4.i iVar = j4.i.f7647a;
        q3.l lVar = new q3.l(j4.i.f7648b, n.f8534e, 1);
        Q3.f fVarF = n.f.f();
        g4.b bVar = g4.l.f6948e;
        C0868D c0868d = new C0868D(lVar, fVarF, bVar);
        c0868d.f9348l = 4;
        A3.p pVar = AbstractC0811n.f8813e;
        if (pVar == null) {
            C0868D.c0(9);
            throw null;
        }
        c0868d.f9349m = pVar;
        List listV = AbstractC0420a.V(T.T0(c0868d, 2, Q3.f.e("T"), 0, bVar));
        if (c0868d.f9350o != null) {
            throw new IllegalStateException("Type parameters are already set for " + c0868d.getName());
        }
        ArrayList arrayList = new ArrayList(listV);
        c0868d.f9350o = arrayList;
        c0868d.n = new C0457j(c0868d, arrayList, c0868d.f9351p, c0868d.f9352q);
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet == null) {
            C0868D.c0(13);
            throw null;
        }
        Iterator it = setEmptySet.iterator();
        while (it.hasNext()) {
            ((C0879k) ((InterfaceC0816s) it.next())).a1(c0868d.q());
        }
        f8543a = c0868d;
    }
}
