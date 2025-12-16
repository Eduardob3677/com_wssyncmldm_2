package k3;

import L3.C0075y;
import c3.InterfaceC0223c;
import d3.AbstractC0395g;
import d3.i;
import d3.q;
import d4.r;
import i3.InterfaceC0484e;

/* renamed from: k3.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class C0639a extends AbstractC0395g implements InterfaceC0223c {

    /* renamed from: l, reason: collision with root package name */
    public static final C0639a f8067l = new C0639a(2);

    @Override // c3.InterfaceC0223c
    public final Object d(Object obj, Object obj2) {
        r rVar = (r) obj;
        C0075y c0075y = (C0075y) obj2;
        i.e("p0", rVar);
        i.e("p1", c0075y);
        return rVar.e(c0075y);
    }

    @Override // d3.AbstractC0390b, i3.InterfaceC0481b
    public final String getName() {
        return "loadFunction";
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0484e j() {
        return q.f6516a.b(r.class);
    }

    @Override // d3.AbstractC0390b
    public final String l() {
        return "loadFunction(Lorg/jetbrains/kotlin/metadata/ProtoBuf$Function;)Lorg/jetbrains/kotlin/descriptors/SimpleFunctionDescriptor;";
    }
}
