package B3;

import d3.n;
import d3.q;
import d3.r;
import g4.o;
import i3.InterfaceC0494o;
import java.util.Map;
import x3.C0918e;

/* loaded from: classes.dex */
public final class m extends d {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f246g;
    public final g4.i f;

    static {
        r rVar = q.f6516a;
        f246g = new InterfaceC0494o[]{rVar.e(new n(rVar.b(m.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(C0918e c0918e, D3.e eVar) {
        super(eVar, c0918e, o3.m.f8523t);
        d3.i.e("annotation", c0918e);
        d3.i.e("c", eVar);
        o oVar = ((D3.a) eVar.f499d).f469a;
        k kVar = new k(1, this);
        g4.l lVar = (g4.l) oVar;
        lVar.getClass();
        this.f = new g4.i(lVar, kVar);
    }

    @Override // B3.d, s3.InterfaceC0839b
    public final Map b() {
        return (Map) Z0.j.N(this.f, f246g[0]);
    }
}
