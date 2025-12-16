package l3;

import c3.InterfaceC0221a;
import s3.C0844g;

/* renamed from: l3.e0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0679e0 extends d3.k implements InterfaceC0221a {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8163d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractC0681f0 f8164e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0679e0(AbstractC0681f0 abstractC0681f0, int i5) {
        super(0);
        this.f8163d = i5;
        this.f8164e = abstractC0681f0;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        switch (this.f8163d) {
            case 0:
                return r0.c(this.f8164e, true);
            default:
                AbstractC0681f0 abstractC0681f0 = this.f8164e;
                u3.L lR = abstractC0681f0.p().k().r();
                return lR == null ? Z0.j.z(abstractC0681f0.p().k(), C0844g.f9041a) : lR;
        }
    }
}
