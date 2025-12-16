package a4;

import R2.u;
import c3.InterfaceC0222b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import r3.InterfaceC0802e;
import r3.InterfaceC0804g;
import r3.InterfaceC0805h;

/* loaded from: classes.dex */
public final class i extends p {

    /* renamed from: b, reason: collision with root package name */
    public final o f3118b;

    public i(o oVar) {
        d3.i.e("workerScope", oVar);
        this.f3118b = oVar;
    }

    @Override // a4.p, a4.o
    public final Set a() {
        return this.f3118b.a();
    }

    @Override // a4.p, a4.o
    public final Set b() {
        return this.f3118b.b();
    }

    @Override // a4.p, a4.q
    public final InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        InterfaceC0804g interfaceC0804gC = this.f3118b.c(fVar, bVar);
        if (interfaceC0804gC == null) {
            return null;
        }
        InterfaceC0802e interfaceC0802e = interfaceC0804gC instanceof InterfaceC0802e ? (InterfaceC0802e) interfaceC0804gC : null;
        if (interfaceC0802e != null) {
            return interfaceC0802e;
        }
        if (interfaceC0804gC instanceof f4.t) {
            return (f4.t) interfaceC0804gC;
        }
        return null;
    }

    @Override // a4.p, a4.o
    public final Set e() {
        return this.f3118b.e();
    }

    @Override // a4.p, a4.q
    public final Collection f(f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        int i5 = f.f3105l & fVar.f3113b;
        f fVar2 = i5 == 0 ? null : new f(i5, fVar.f3112a);
        if (fVar2 == null) {
            return u.f2325c;
        }
        Collection collectionF = this.f3118b.f(fVar2, interfaceC0222b);
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionF) {
            if (obj instanceof InterfaceC0805h) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final String toString() {
        return "Classes from " + this.f3118b;
    }
}
