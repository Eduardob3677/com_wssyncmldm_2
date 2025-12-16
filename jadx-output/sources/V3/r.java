package V3;

import f1.AbstractC0420a;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import h4.C0451d;
import h4.G;
import h4.O;
import h4.Z;
import o3.AbstractC0732i;
import r3.InterfaceC0802e;
import r3.InterfaceC0821x;

/* loaded from: classes.dex */
public final class r extends g {
    public r(Q3.b bVar, int i5) {
        super(new p(new f(bVar, i5)));
    }

    @Override // V3.g
    public final AbstractC0468v a(InterfaceC0821x interfaceC0821x) {
        AbstractC0468v abstractC0468vC;
        d3.i.e("module", interfaceC0821x);
        G.f7019d.getClass();
        G g5 = G.f7020e;
        AbstractC0732i abstractC0732iG = interfaceC0821x.g();
        abstractC0732iG.getClass();
        InterfaceC0802e interfaceC0802eI = abstractC0732iG.i(o3.m.f8492P.g());
        Object obj = this.f2797a;
        q qVar = (q) obj;
        if (qVar instanceof o) {
            abstractC0468vC = ((o) obj).f2808a;
        } else {
            if (!(qVar instanceof p)) {
                throw new A0.c();
            }
            f fVar = ((p) obj).f2809a;
            Q3.b bVar = fVar.f2795a;
            InterfaceC0802e interfaceC0802eE = o4.a.e(interfaceC0821x, bVar);
            int i5 = fVar.f2796b;
            if (interfaceC0802eE == null) {
                j4.h hVar = j4.h.f;
                String string = bVar.toString();
                d3.i.d("classId.toString()", string);
                abstractC0468vC = j4.i.c(hVar, string, String.valueOf(i5));
            } else {
                AbstractC0472z abstractC0472zQ = interfaceC0802eE.q();
                d3.i.d("descriptor.defaultType", abstractC0472zQ);
                Z zH0 = AbstractC0420a.h0(abstractC0472zQ);
                for (int i6 = 0; i6 < i5; i6++) {
                    zH0 = interfaceC0821x.g().h(zH0);
                }
                abstractC0468vC = zH0;
            }
        }
        return C0451d.q(g5, interfaceC0802eI, AbstractC0420a.V(new O(abstractC0468vC)));
    }
}
