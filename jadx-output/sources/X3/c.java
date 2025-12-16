package X3;

import c3.InterfaceC0222b;
import d3.AbstractC0395g;
import d3.i;
import d3.q;
import i3.InterfaceC0484e;
import u3.V;

/* loaded from: classes.dex */
public final /* synthetic */ class c extends AbstractC0395g implements InterfaceC0222b {

    /* renamed from: l, reason: collision with root package name */
    public static final c f2869l = new c(1);

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        V v4 = (V) obj;
        i.e("p0", v4);
        return Boolean.valueOf(v4.R0());
    }

    @Override // d3.AbstractC0390b, i3.InterfaceC0481b
    public final String getName() {
        return "declaresDefaultValue";
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0484e j() {
        return q.f6516a.b(V.class);
    }

    @Override // d3.AbstractC0390b
    public final String l() {
        return "declaresDefaultValue()Z";
    }
}
