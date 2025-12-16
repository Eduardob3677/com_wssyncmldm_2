package f4;

import c3.InterfaceC0221a;
import java.util.List;

/* loaded from: classes.dex */
public final class e extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f6841d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ g f6842e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ e(g gVar, int i5) {
        super(0);
        this.f6841d = i5;
        this.f6842e = gVar;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f6841d) {
            case 0:
                a4.f fVar = a4.f.f3106m;
                a4.o.f3129a.getClass();
                return this.f6842e.i(fVar, a4.l.f3123e);
            default:
                g gVar = this.f6842e;
                gVar.f6844g.getClass();
                i iVar = gVar.f6847j;
                d3.i.e("classDescriptor", iVar);
                List listJ = iVar.f6858p.j();
                d3.i.d("classDescriptor.typeConstructor.supertypes", listJ);
                return listJ;
        }
    }
}
