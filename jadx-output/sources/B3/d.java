package B3;

import R2.v;
import d3.n;
import d3.q;
import d3.r;
import g4.o;
import h4.AbstractC0468v;
import h4.AbstractC0472z;
import i3.InterfaceC0494o;
import java.util.Map;
import r3.InterfaceC0786N;
import s3.InterfaceC0839b;
import x3.C0918e;

/* loaded from: classes.dex */
public class d implements InterfaceC0839b, C3.h {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f226e;

    /* renamed from: a, reason: collision with root package name */
    public final Q3.c f227a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0786N f228b;

    /* renamed from: c, reason: collision with root package name */
    public final g4.i f229c;

    /* renamed from: d, reason: collision with root package name */
    public final H3.a f230d;

    static {
        r rVar = q.f6516a;
        f226e = new InterfaceC0494o[]{rVar.e(new n(rVar.b(d.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;"))};
    }

    public d(D3.e eVar, C0918e c0918e, Q3.c cVar) {
        d3.i.e("c", eVar);
        d3.i.e("fqName", cVar);
        this.f227a = cVar;
        D3.a aVar = (D3.a) eVar.f499d;
        this.f228b = c0918e != null ? aVar.f477j.c(c0918e) : InterfaceC0786N.f8790a;
        o oVar = aVar.f469a;
        c cVar2 = new c(eVar, 0, this);
        g4.l lVar = (g4.l) oVar;
        lVar.getClass();
        this.f229c = new g4.i(lVar, cVar2);
        this.f230d = c0918e != null ? (H3.a) R2.m.N0(c0918e.a()) : null;
    }

    @Override // s3.InterfaceC0839b
    public final Q3.c a() {
        return this.f227a;
    }

    @Override // s3.InterfaceC0839b
    public Map b() {
        return v.f2326c;
    }

    @Override // s3.InterfaceC0839b
    public final AbstractC0468v e() {
        return (AbstractC0472z) Z0.j.N(this.f229c, f226e[0]);
    }

    @Override // s3.InterfaceC0839b
    public final InterfaceC0786N m() {
        return this.f228b;
    }
}
