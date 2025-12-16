package E3;

import c3.InterfaceC0221a;
import java.util.LinkedHashSet;
import java.util.List;

/* loaded from: classes.dex */
public final class z extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f650d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C f651e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ z(C c2, int i5) {
        super(0);
        this.f650d = i5;
        this.f651e = c2;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f650d) {
            case 0:
                a4.f fVar = a4.f.f3106m;
                a4.o.f3129a.getClass();
                a4.l lVar = a4.l.f3123e;
                C c2 = this.f651e;
                c2.getClass();
                d3.i.e("kindFilter", fVar);
                z3.b bVar = z3.b.f;
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                if (fVar.a(a4.f.f3105l)) {
                    for (Q3.f fVar2 : c2.h(fVar, lVar)) {
                        lVar.e(fVar2);
                        q4.k.b(linkedHashSet, c2.c(fVar2, bVar));
                    }
                }
                boolean zA = fVar.a(a4.f.f3102i);
                List list = fVar.f3112a;
                if (zA && !list.contains(a4.b.f3092a)) {
                    for (Q3.f fVar3 : c2.i(fVar, lVar)) {
                        lVar.e(fVar3);
                        linkedHashSet.addAll(c2.d(fVar3, bVar));
                    }
                }
                if (fVar.a(a4.f.f3103j) && !list.contains(a4.b.f3092a)) {
                    for (Q3.f fVar4 : c2.o(fVar)) {
                        lVar.e(fVar4);
                        linkedHashSet.addAll(c2.g(fVar4, bVar));
                    }
                }
                return R2.m.g1(linkedHashSet);
            case 1:
                return this.f651e.h(a4.f.f3107o, null);
            case 2:
                return this.f651e.k();
            case 3:
                return this.f651e.i(a4.f.f3108p, null);
            default:
                return this.f651e.o(a4.f.f3109q);
        }
    }
}
