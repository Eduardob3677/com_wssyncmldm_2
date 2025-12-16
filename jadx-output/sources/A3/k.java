package A3;

import h4.AbstractC0468v;
import h4.V;
import java.util.List;
import k.Q0;
import r3.InterfaceC0799b;
import r3.InterfaceC0802e;
import u3.C0890w;
import u3.N;

/* loaded from: classes.dex */
public final class k implements T3.h {
    @Override // T3.h
    public T3.f a() {
        return T3.f.f2722d;
    }

    @Override // T3.h
    public T3.g b(InterfaceC0799b interfaceC0799b, InterfaceC0799b interfaceC0799b2, InterfaceC0802e interfaceC0802e) {
        d3.i.e("superDescriptor", interfaceC0799b);
        d3.i.e("subDescriptor", interfaceC0799b2);
        boolean z4 = interfaceC0799b2 instanceof C3.f;
        T3.g gVar = T3.g.f2726e;
        if (!z4) {
            return gVar;
        }
        C3.f fVar = (C3.f) interfaceC0799b2;
        if (!fVar.u().isEmpty()) {
            return gVar;
        }
        T3.m mVarI = T3.n.i(interfaceC0799b, interfaceC0799b2);
        if ((mVarI != null ? mVarI.c() : 0) != 0) {
            return gVar;
        }
        List listW0 = fVar.w0();
        d3.i.d("subDescriptor.valueParameters", listW0);
        r4.r rVarL = r4.m.l(R2.m.G0(listW0), C0007f.f123h);
        AbstractC0468v abstractC0468v = fVar.f9491i;
        d3.i.b(abstractC0468v);
        r4.h hVarJ = r4.m.j(R2.i.h0(new r4.k[]{rVarL, R2.i.h0(new Object[]{abstractC0468v})}));
        C0890w c0890w = fVar.f9493k;
        r4.g gVar2 = new r4.g(r4.m.j(R2.i.h0(new r4.k[]{hVarJ, R2.m.G0(R2.n.z0(c0890w != null ? c0890w.e() : null))})));
        while (gVar2.a()) {
            AbstractC0468v abstractC0468v2 = (AbstractC0468v) gVar2.next();
            if ((!abstractC0468v2.u0().isEmpty()) && !(abstractC0468v2.M0() instanceof F3.f)) {
                return gVar;
            }
        }
        InterfaceC0799b interfaceC0799bJ = (InterfaceC0799b) interfaceC0799b.b(V.e(new F3.d()));
        if (interfaceC0799bJ == null) {
            return gVar;
        }
        if (interfaceC0799bJ instanceof N) {
            N n = (N) interfaceC0799bJ;
            if (!n.u().isEmpty()) {
                interfaceC0799bJ = n.e0().F().j();
                d3.i.b(interfaceC0799bJ);
            }
        }
        int iC = T3.n.f2735d.n(interfaceC0799bJ, interfaceC0799b2, false).c();
        B.f.E(iC, "DEFAULT.isOverridableByW…Descriptor, false).result");
        return j.f133a[Q0.f(iC)] == 1 ? T3.g.f2724c : gVar;
    }
}
