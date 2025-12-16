package x3;

import c3.InterfaceC0222b;
import d3.AbstractC0395g;
import i3.InterfaceC0484e;
import java.lang.reflect.Constructor;

/* loaded from: classes.dex */
public final /* synthetic */ class k extends AbstractC0395g implements InterfaceC0222b {

    /* renamed from: l, reason: collision with root package name */
    public static final k f9662l = new k(1);

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        Constructor constructor = (Constructor) obj;
        d3.i.e("p0", constructor);
        return new r(constructor);
    }

    @Override // d3.AbstractC0390b, i3.InterfaceC0481b
    public final String getName() {
        return "<init>";
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0484e j() {
        return d3.q.f6516a.b(r.class);
    }

    @Override // d3.AbstractC0390b
    public final String l() {
        return "<init>(Ljava/lang/reflect/Constructor;)V";
    }
}
