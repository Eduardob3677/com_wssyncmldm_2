package x3;

import c3.InterfaceC0222b;
import d3.AbstractC0395g;
import i3.InterfaceC0484e;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final /* synthetic */ class n extends AbstractC0395g implements InterfaceC0222b {

    /* renamed from: l, reason: collision with root package name */
    public static final n f9665l = new n(1);

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        Method method = (Method) obj;
        d3.i.e("p0", method);
        return new x(method);
    }

    @Override // d3.AbstractC0390b, i3.InterfaceC0481b
    public final String getName() {
        return "<init>";
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0484e j() {
        return d3.q.f6516a.b(x.class);
    }

    @Override // d3.AbstractC0390b
    public final String l() {
        return "<init>(Ljava/lang/reflect/Method;)V";
    }
}
