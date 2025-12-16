package B3;

import E3.C0023f;
import R2.z;
import java.util.Map;
import x3.AbstractC0917d;
import x3.C0918e;

/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final Q3.f f231a = Q3.f.e("message");

    /* renamed from: b, reason: collision with root package name */
    public static final Q3.f f232b = Q3.f.e("allowedTargets");

    /* renamed from: c, reason: collision with root package name */
    public static final Q3.f f233c = Q3.f.e("value");

    /* renamed from: d, reason: collision with root package name */
    public static final Map f234d = z.A1(new Q2.e(o3.m.f8523t, A3.z.f167c), new Q2.e(o3.m.f8526w, A3.z.f168d), new Q2.e(o3.m.f8527x, A3.z.f));

    public static C3.h a(Q3.c cVar, H3.b bVar, D3.e eVar) {
        C0918e c0918eV;
        d3.i.e("kotlinName", cVar);
        d3.i.e("annotationOwner", bVar);
        d3.i.e("c", eVar);
        if (d3.i.a(cVar, o3.m.f8517m)) {
            Q3.c cVar2 = A3.z.f169e;
            d3.i.d("DEPRECATED_ANNOTATION", cVar2);
            C0918e c0918eV2 = bVar.v(cVar2);
            if (c0918eV2 != null) {
                return new i(c0918eV2, eVar);
            }
        }
        Q3.c cVar3 = (Q3.c) f234d.get(cVar);
        if (cVar3 == null || (c0918eV = bVar.v(cVar3)) == null) {
            return null;
        }
        return b(eVar, c0918eV, false);
    }

    public static C3.h b(D3.e eVar, C0918e c0918e, boolean z4) {
        d3.i.e("annotation", c0918e);
        d3.i.e("c", eVar);
        Q3.b bVarA = AbstractC0917d.a(L2.b.q(L2.b.k(c0918e.f9654a)));
        if (d3.i.a(bVarA, Q3.b.k(A3.z.f167c))) {
            return new m(c0918e, eVar);
        }
        if (d3.i.a(bVarA, Q3.b.k(A3.z.f168d))) {
            return new l(c0918e, eVar);
        }
        if (d3.i.a(bVarA, Q3.b.k(A3.z.f))) {
            return new d(eVar, c0918e, o3.m.f8527x);
        }
        if (d3.i.a(bVarA, Q3.b.k(A3.z.f169e))) {
            return null;
        }
        return new C0023f(eVar, c0918e, z4);
    }
}
