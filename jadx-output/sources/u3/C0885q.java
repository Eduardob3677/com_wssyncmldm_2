package u3;

import c3.InterfaceC0222b;

/* renamed from: u3.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0885q implements InterfaceC0222b {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f9452c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ r f9453d;

    public /* synthetic */ C0885q(r rVar, int i5) {
        this.f9452c = i5;
        this.f9453d = rVar;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        switch (this.f9452c) {
            case 0:
                Q3.f fVar = (Q3.f) obj;
                r rVar = this.f9453d;
                if (fVar != null) {
                    return rVar.j(fVar, rVar.i().d(fVar, z3.b.f9733h));
                }
                rVar.getClass();
                r.h(8);
                throw null;
            default:
                Q3.f fVar2 = (Q3.f) obj;
                r rVar2 = this.f9453d;
                if (fVar2 != null) {
                    return rVar2.j(fVar2, rVar2.i().g(fVar2, z3.b.f9733h));
                }
                rVar2.getClass();
                r.h(4);
                throw null;
        }
    }
}
