package r3;

import c3.InterfaceC0222b;
import d3.AbstractC0395g;
import i3.InterfaceC0484e;

/* renamed from: r3.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0813p extends AbstractC0395g implements InterfaceC0222b {

    /* renamed from: l, reason: collision with root package name */
    public static final C0813p f8823l = new C0813p(1);

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        Q3.b bVar = (Q3.b) obj;
        d3.i.e("p0", bVar);
        return bVar.g();
    }

    @Override // d3.AbstractC0390b, i3.InterfaceC0481b
    public final String getName() {
        return "getOuterClassId";
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0484e j() {
        return d3.q.f6516a.b(Q3.b.class);
    }

    @Override // d3.AbstractC0390b
    public final String l() {
        return "getOuterClassId()Lorg/jetbrains/kotlin/name/ClassId;";
    }
}
