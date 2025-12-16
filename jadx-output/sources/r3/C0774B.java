package r3;

import c3.InterfaceC0222b;
import java.util.List;

/* renamed from: r3.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0774B extends d3.k implements InterfaceC0222b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f8780d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ com.google.firebase.messaging.p f8781e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0774B(com.google.firebase.messaging.p pVar, int i5) {
        super(1);
        this.f8780d = i5;
        this.f8781e = pVar;
    }

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        InterfaceC0803f interfaceC0803fV;
        switch (this.f8780d) {
            case 0:
                C0823z c0823z = (C0823z) obj;
                d3.i.e("<name for destructuring parameter 0>", c0823z);
                Q3.b bVar = c0823z.f8833a;
                if (bVar.f2232c) {
                    throw new UnsupportedOperationException("Unresolved local class: " + bVar);
                }
                Q3.b bVarG = bVar.g();
                com.google.firebase.messaging.p pVar = this.f8781e;
                List list = c0823z.f8834b;
                if (bVarG != null) {
                    interfaceC0803fV = pVar.v(bVarG, R2.m.I0(list));
                } else {
                    g4.e eVar = (g4.e) pVar.f;
                    Q3.c cVarH = bVar.h();
                    d3.i.d("classId.packageFqName", cVarH);
                    interfaceC0803fV = (InterfaceC0803f) eVar.e(cVarH);
                }
                InterfaceC0803f interfaceC0803f = interfaceC0803fV;
                boolean z4 = !bVar.f2231b.e().d();
                g4.o oVar = (g4.o) pVar.f6258d;
                Q3.f fVarJ = bVar.j();
                d3.i.d("classId.shortClassName", fVarJ);
                Integer num = (Integer) R2.m.O0(list);
                return new C0773A(oVar, interfaceC0803f, fVarJ, z4, num != null ? num.intValue() : 0);
            default:
                Q3.c cVar = (Q3.c) obj;
                d3.i.e("fqName", cVar);
                return new q3.l((InterfaceC0821x) this.f8781e.f6259e, cVar, 1);
        }
    }
}
