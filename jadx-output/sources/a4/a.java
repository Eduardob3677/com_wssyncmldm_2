package a4;

import R2.u;
import R2.w;
import c3.InterfaceC0222b;
import f1.AbstractC0420a;
import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;
import r3.InterfaceC0804g;
import r3.InterfaceC0805h;

/* loaded from: classes.dex */
public final class a implements o {

    /* renamed from: b, reason: collision with root package name */
    public final String f3090b;

    /* renamed from: c, reason: collision with root package name */
    public final o[] f3091c;

    public a(String str, o[] oVarArr) {
        this.f3090b = str;
        this.f3091c = oVarArr;
    }

    @Override // a4.o
    public final Set a() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (o oVar : this.f3091c) {
            R2.s.E0(linkedHashSet, oVar.a());
        }
        return linkedHashSet;
    }

    @Override // a4.o
    public final Set b() {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (o oVar : this.f3091c) {
            R2.s.E0(linkedHashSet, oVar.b());
        }
        return linkedHashSet;
    }

    @Override // a4.q
    public final InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        InterfaceC0804g interfaceC0804g = null;
        for (o oVar : this.f3091c) {
            InterfaceC0804g interfaceC0804gC = oVar.c(fVar, bVar);
            if (interfaceC0804gC != null) {
                if (!(interfaceC0804gC instanceof InterfaceC0805h) || !((InterfaceC0805h) interfaceC0804gC).y()) {
                    return interfaceC0804gC;
                }
                if (interfaceC0804g == null) {
                    interfaceC0804g = interfaceC0804gC;
                }
            }
        }
        return interfaceC0804g;
    }

    @Override // a4.o
    public final Collection d(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        o[] oVarArr = this.f3091c;
        int length = oVarArr.length;
        if (length == 0) {
            return u.f2325c;
        }
        if (length == 1) {
            return oVarArr[0].d(fVar, bVar);
        }
        Collection collectionB = null;
        for (o oVar : oVarArr) {
            collectionB = o4.a.b(collectionB, oVar.d(fVar, bVar));
        }
        return collectionB == null ? w.f2327c : collectionB;
    }

    @Override // a4.o
    public final Set e() {
        o[] oVarArr = this.f3091c;
        d3.i.e("<this>", oVarArr);
        return AbstractC0420a.x(oVarArr.length == 0 ? u.f2325c : new R2.k(0, oVarArr));
    }

    @Override // a4.q
    public final Collection f(f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        o[] oVarArr = this.f3091c;
        int length = oVarArr.length;
        if (length == 0) {
            return u.f2325c;
        }
        if (length == 1) {
            return oVarArr[0].f(fVar, interfaceC0222b);
        }
        Collection collectionB = null;
        for (o oVar : oVarArr) {
            collectionB = o4.a.b(collectionB, oVar.f(fVar, interfaceC0222b));
        }
        return collectionB == null ? w.f2327c : collectionB;
    }

    @Override // a4.o
    public final Collection g(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        o[] oVarArr = this.f3091c;
        int length = oVarArr.length;
        if (length == 0) {
            return u.f2325c;
        }
        if (length == 1) {
            return oVarArr[0].g(fVar, bVar);
        }
        Collection collectionB = null;
        for (o oVar : oVarArr) {
            collectionB = o4.a.b(collectionB, oVar.g(fVar, bVar));
        }
        return collectionB == null ? w.f2327c : collectionB;
    }

    public final String toString() {
        return this.f3090b;
    }
}
