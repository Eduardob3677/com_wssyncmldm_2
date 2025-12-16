package j4;

import R2.u;
import a4.o;
import g4.l;
import h4.S;
import h4.V;
import r3.AbstractC0811n;
import r3.C0785M;
import r3.InterfaceC0786N;
import r3.InterfaceC0802e;
import r3.InterfaceC0808k;
import s3.C0844g;
import u3.C0879k;
import u3.C0881m;

/* loaded from: classes.dex */
public final class a extends C0881m {
    /* JADX WARN: Illegal instructions before constructor call */
    public a(Q3.f fVar) {
        i iVar = i.f7647a;
        c cVar = i.f7648b;
        u uVar = u.f2325c;
        C0785M c0785m = InterfaceC0786N.f8790a;
        super(cVar, fVar, 3, 1, uVar, l.f6948e);
        C0879k c0879k = new C0879k(this, null, C0844g.f9041a, true, 1, c0785m);
        c0879k.e1(uVar, AbstractC0811n.f8812d);
        String str = c0879k.getName().f2242c;
        d3.i.d("errorConstructor.name.toString()", str);
        e eVarB = i.b(new String[]{str, ""}, 9);
        h hVar = h.f7642x;
        c0879k.a1(new f(i.d(hVar, new String[0]), eVarB, hVar, uVar, false, new String[0]));
        u0(eVarB, L2.b.I(c0879k), c0879k);
    }

    @Override // u3.AbstractC0870b, r3.InterfaceC0788P
    public final InterfaceC0808k b(V v4) {
        d3.i.e("substitutor", v4);
        return this;
    }

    @Override // u3.AbstractC0870b, u3.AbstractC0865A
    public final o d(S s5, i4.f fVar) {
        d3.i.e("typeSubstitution", s5);
        String str = getName().f2242c;
        d3.i.d("name.toString()", str);
        return i.b(new String[]{str, s5.toString()}, 9);
    }

    @Override // u3.AbstractC0870b
    /* renamed from: p0 */
    public final InterfaceC0802e b(V v4) {
        d3.i.e("substitutor", v4);
        return this;
    }

    @Override // u3.C0881m
    public final String toString() {
        String strB = getName().b();
        d3.i.d("name.asString()", strB);
        return strB;
    }
}
