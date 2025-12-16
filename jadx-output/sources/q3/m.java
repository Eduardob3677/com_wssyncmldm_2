package q3;

import A3.C0005d;
import R2.u;
import R2.z;
import V3.v;
import c3.InterfaceC0221a;
import f1.AbstractC0420a;
import h4.AbstractC0472z;
import java.util.List;
import o3.AbstractC0732i;
import s3.AbstractC0842e;
import s3.C0844g;
import s3.C0846i;
import s3.C0847j;

/* loaded from: classes.dex */
public final class m extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8677d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ n f8678e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ m(n nVar, int i5) {
        super(0);
        this.f8677d = i5;
        this.f8678e = nVar;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        n nVar = this.f8678e;
        switch (this.f8677d) {
            case 0:
                AbstractC0472z abstractC0472zE = nVar.f8680a.g().e();
                d3.i.d("moduleDescriptor.builtIns.anyType", abstractC0472zE);
                return abstractC0472zE;
            default:
                AbstractC0732i abstractC0732iG = nVar.f8680a.g();
                Q3.f fVar = AbstractC0842e.f9036a;
                d3.i.e("<this>", abstractC0732iG);
                List listV = AbstractC0420a.V(new C0847j(abstractC0732iG, o3.m.f8517m, z.A1(new Q2.e(AbstractC0842e.f9036a, new v("This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version")), new Q2.e(AbstractC0842e.f9037b, new V3.a((Object) new C0847j(abstractC0732iG, o3.m.f8518o, z.A1(new Q2.e(AbstractC0842e.f9039d, new v("")), new Q2.e(AbstractC0842e.f9040e, new V3.b(u.f2325c, new C0005d(23, abstractC0732iG))))))), new Q2.e(AbstractC0842e.f9038c, new V3.i(Q3.b.k(o3.m.n), Q3.f.e("WARNING"))))));
                return listV.isEmpty() ? C0844g.f9041a : new C0846i(0, listV);
        }
    }
}
