package l3;

import i3.InterfaceC0481b;
import java.util.List;
import r3.InterfaceC0800c;

/* renamed from: l3.r, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0693r implements InterfaceC0481b, n0 {

    /* renamed from: c, reason: collision with root package name */
    public final p0 f8217c;

    public AbstractC0693r() {
        r0.j(new C0690o(this, 1));
        this.f8217c = r0.j(new C0690o(this, 2));
        r0.j(new C0690o(this, 4));
        r0.j(new C0690o(this, 5));
        r0.j(new C0690o(this, 0));
    }

    public abstract m3.e g();

    @Override // i3.InterfaceC0481b
    public final Object i(Object... objArr) throws W1.h {
        try {
            return g().i(objArr);
        } catch (IllegalAccessException e5) {
            throw new W1.h(e5);
        }
    }

    public abstract AbstractC0647C j();

    public abstract InterfaceC0800c k();

    public final List l() {
        Object objA = this.f8217c.a();
        d3.i.d("_parameters()", objA);
        return (List) objA;
    }

    public final boolean m() {
        return d3.i.a(getName(), "<init>") && j().a().isAnnotation();
    }

    public abstract boolean n();
}
