package q3;

import A3.C0005d;
import R2.w;
import c3.InterfaceC0222b;
import e.v;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import r3.InterfaceC0775C;
import r3.InterfaceC0779G;
import r3.InterfaceC0821x;
import u3.C0867C;

/* loaded from: classes.dex */
public final class o implements InterfaceC0779G {

    /* renamed from: a, reason: collision with root package name */
    public final g4.o f8685a;

    /* renamed from: b, reason: collision with root package name */
    public final v f8686b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC0821x f8687c;

    /* renamed from: d, reason: collision with root package name */
    public d4.i f8688d;

    /* renamed from: e, reason: collision with root package name */
    public final g4.j f8689e;

    public o(g4.l lVar, v vVar, C0867C c0867c) {
        this.f8685a = lVar;
        this.f8686b = vVar;
        this.f8687c = c0867c;
        this.f8689e = lVar.c(new C0005d(14, this));
    }

    @Override // r3.InterfaceC0779G
    public final boolean a(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        g4.j jVar = this.f8689e;
        Object obj = jVar.f6942d.get(cVar);
        return ((obj == null || obj == g4.k.f6945d) ? d(cVar) : (InterfaceC0775C) jVar.e(cVar)) == null;
    }

    @Override // r3.InterfaceC0776D
    public final List b(Q3.c cVar) {
        d3.i.e("fqName", cVar);
        return R2.n.z0(this.f8689e.e(cVar));
    }

    @Override // r3.InterfaceC0779G
    public final void c(Q3.c cVar, ArrayList arrayList) {
        d3.i.e("fqName", cVar);
        q4.k.b(arrayList, this.f8689e.e(cVar));
    }

    public final e4.c d(Q3.c cVar) {
        InputStream inputStreamI;
        d3.i.e("fqName", cVar);
        v vVar = this.f8686b;
        vVar.getClass();
        if (cVar.h(o3.n.f8537i)) {
            e4.a.f6808q.getClass();
            String strA = e4.a.a(cVar);
            ((e4.d) vVar.f6793d).getClass();
            inputStreamI = e4.d.i(strA);
        } else {
            inputStreamI = null;
        }
        if (inputStreamI != null) {
            return Z0.j.w(cVar, this.f8685a, this.f8687c, inputStreamI);
        }
        return null;
    }

    @Override // r3.InterfaceC0776D
    public final Collection o(Q3.c cVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("fqName", cVar);
        d3.i.e("nameFilter", interfaceC0222b);
        return w.f2327c;
    }
}
