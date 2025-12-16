package x3;

import c3.InterfaceC0222b;
import d3.AbstractC0395g;
import i3.InterfaceC0484e;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
public final /* synthetic */ class m extends AbstractC0395g implements InterfaceC0222b {

    /* renamed from: l, reason: collision with root package name */
    public static final m f9664l = new m(1);

    @Override // c3.InterfaceC0222b
    public final Object e(Object obj) {
        Field field = (Field) obj;
        d3.i.e("p0", field);
        return new u(field);
    }

    @Override // d3.AbstractC0390b, i3.InterfaceC0481b
    public final String getName() {
        return "<init>";
    }

    @Override // d3.AbstractC0390b
    public final InterfaceC0484e j() {
        return d3.q.f6516a.b(u.class);
    }

    @Override // d3.AbstractC0390b
    public final String l() {
        return "<init>(Ljava/lang/reflect/Field;)V";
    }
}
