package l3;

import c3.InterfaceC0223c;
import d3.AbstractC0395g;
import i3.InterfaceC0484e;

/* renamed from: l3.P, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0660P extends AbstractC0395g implements InterfaceC0223c {

    /* renamed from: l, reason: collision with root package name */
    public static final C0660P f8128l = new C0660P(2);

    @Override // c3.InterfaceC0223c
    public final Object d(Object obj, Object obj2) {
        d4.r rVar = (d4.r) obj;
        L3.G g5 = (L3.G) obj2;
        d3.i.e("p0", rVar);
        d3.i.e("p1", g5);
        return rVar.f(g5);
    }

    @Override // d3.AbstractC0390b, i3.InterfaceC0481b
    public final String getName() {
        return "loadProperty";
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0484e j() {
        return d3.q.f6516a.b(d4.r.class);
    }

    @Override // d3.AbstractC0390b
    public final String l() {
        return "loadProperty(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Property;)Lorg/jetbrains/kotlin/descriptors/PropertyDescriptor;";
    }
}
