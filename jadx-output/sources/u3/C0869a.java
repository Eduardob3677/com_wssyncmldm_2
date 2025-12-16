package u3;

import c3.InterfaceC0221a;
import h4.C0451d;
import h4.X;
import java.util.List;

/* renamed from: u3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0869a implements InterfaceC0221a {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f9415c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ AbstractC0870b f9416d;

    public /* synthetic */ C0869a(AbstractC0870b abstractC0870b, int i5) {
        this.f9415c = i5;
        this.f9416d = abstractC0870b;
    }

    @Override // c3.InterfaceC0221a
    public final Object a() {
        AbstractC0870b abstractC0870b = this.f9416d;
        switch (this.f9415c) {
            case 0:
                a4.o oVarF0 = abstractC0870b.f0();
                B3.a aVar = new B3.a(3, this);
                j4.f fVar = X.f7044a;
                if (j4.i.f(abstractC0870b)) {
                    return j4.i.c(j4.h.f7632m, abstractC0870b.toString());
                }
                h4.J jH = abstractC0870b.H();
                if (jH == null) {
                    X.a(12);
                    throw null;
                }
                if (oVarF0 == null) {
                    X.a(13);
                    throw null;
                }
                List listE = X.e(jH.k());
                h4.G.f7019d.getClass();
                return C0451d.t(h4.G.f7020e, jH, listE, false, oVarF0, aVar);
            case 1:
                return new a4.i(abstractC0870b.f0());
            default:
                return new C0890w(abstractC0870b);
        }
    }
}
