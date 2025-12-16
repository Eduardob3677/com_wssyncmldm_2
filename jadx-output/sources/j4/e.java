package j4;

import R2.u;
import R2.w;
import a4.o;
import c3.InterfaceC0222b;
import h0.AbstractC0432c;
import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import r3.AbstractC0811n;
import r3.InterfaceC0786N;
import r3.InterfaceC0804g;
import s3.C0844g;

/* loaded from: classes.dex */
public class e implements o {

    /* renamed from: b, reason: collision with root package name */
    public final String f7608b;

    public e(String[] strArr, int i5) {
        B.f.x(i5, "kind");
        d3.i.e("formatParams", strArr);
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length);
        this.f7608b = String.format(AbstractC0432c.c(i5), Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
    }

    @Override // a4.o
    public Set a() {
        return w.f2327c;
    }

    @Override // a4.o
    public Set b() {
        return w.f2327c;
    }

    @Override // a4.q
    public InterfaceC0804g c(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return new a(Q3.f.g(String.format("<Error class: %s>", Arrays.copyOf(new Object[]{fVar}, 1))));
    }

    @Override // a4.o
    public Set e() {
        return w.f2327c;
    }

    @Override // a4.q
    public Collection f(a4.f fVar, InterfaceC0222b interfaceC0222b) {
        d3.i.e("kindFilter", fVar);
        d3.i.e("nameFilter", interfaceC0222b);
        return u.f2325c;
    }

    @Override // a4.o
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public Set d(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        a aVar = i.f7649c;
        d3.i.e("containingDeclaration", aVar);
        b bVar2 = new b(aVar, null, C0844g.f9041a, Q3.f.g("<Error function>"), 1, InterfaceC0786N.f8790a);
        u uVar = u.f2325c;
        bVar2.V0(null, null, uVar, uVar, uVar, i.c(h.f7626g, new String[0]), 3, AbstractC0811n.f8813e);
        return L2.b.I(bVar2);
    }

    @Override // a4.o
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public Set g(Q3.f fVar, z3.b bVar) {
        d3.i.e("name", fVar);
        return i.f;
    }

    public String toString() {
        return "ErrorScope{" + this.f7608b + '}';
    }
}
