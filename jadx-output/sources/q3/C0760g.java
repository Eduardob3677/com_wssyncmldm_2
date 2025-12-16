package q3;

import R2.w;
import c3.InterfaceC0222b;
import d3.q;
import d3.r;
import i3.InterfaceC0494o;
import java.util.Collection;
import r3.InterfaceC0802e;
import r3.InterfaceC0821x;
import t3.InterfaceC0859c;
import u3.C0867C;
import u3.C0881m;

/* renamed from: q3.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0760g implements InterfaceC0859c {

    /* renamed from: d, reason: collision with root package name */
    public static final C0758e f8659d;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ InterfaceC0494o[] f8660e;
    public static final Q3.c f;

    /* renamed from: g, reason: collision with root package name */
    public static final Q3.f f8661g;

    /* renamed from: h, reason: collision with root package name */
    public static final Q3.b f8662h;

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0821x f8663a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0222b f8664b;

    /* renamed from: c, reason: collision with root package name */
    public final g4.i f8665c;

    static {
        r rVar = q.f6516a;
        f8660e = new InterfaceC0494o[]{rVar.e(new d3.n(rVar.b(C0760g.class), "cloneable", "getCloneable()Lorg/jetbrains/kotlin/descriptors/impl/ClassDescriptorImpl;"))};
        f8659d = new C0758e();
        f = o3.n.f8538j;
        Q3.e eVar = o3.m.f8507c;
        Q3.f fVarF = eVar.f();
        d3.i.d("cloneable.shortName()", fVarF);
        f8661g = fVarF;
        f8662h = Q3.b.k(eVar.g());
    }

    public C0760g(g4.o oVar, C0867C c0867c) {
        C0759f c0759f = C0759f.f8658d;
        this.f8663a = c0867c;
        this.f8664b = c0759f;
        this.f8665c = new g4.i((g4.l) oVar, new B3.c(this, 12, oVar));
    }

    @Override // t3.InterfaceC0859c
    public final boolean a(Q3.c cVar, Q3.f fVar) {
        d3.i.e("packageFqName", cVar);
        d3.i.e("name", fVar);
        return d3.i.a(fVar, f8661g) && d3.i.a(cVar, f);
    }

    @Override // t3.InterfaceC0859c
    public final Collection b(Q3.c cVar) {
        d3.i.e("packageFqName", cVar);
        return d3.i.a(cVar, f) ? L2.b.I((C0881m) Z0.j.N(this.f8665c, f8660e[0])) : w.f2327c;
    }

    @Override // t3.InterfaceC0859c
    public final InterfaceC0802e c(Q3.b bVar) {
        d3.i.e("classId", bVar);
        if (d3.i.a(bVar, f8662h)) {
            return (C0881m) Z0.j.N(this.f8665c, f8660e[0]);
        }
        return null;
    }
}
