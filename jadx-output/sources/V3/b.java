package V3;

import c3.InterfaceC0222b;
import h4.AbstractC0468v;
import java.util.List;
import o3.AbstractC0732i;
import r3.InterfaceC0804g;
import r3.InterfaceC0821x;

/* loaded from: classes.dex */
public class b extends g {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0222b f2793b;

    public b(List list, InterfaceC0222b interfaceC0222b) {
        super(list);
        this.f2793b = interfaceC0222b;
    }

    @Override // V3.g
    public final AbstractC0468v a(InterfaceC0821x interfaceC0821x) {
        InterfaceC0804g interfaceC0804gI;
        d3.i.e("module", interfaceC0821x);
        AbstractC0468v abstractC0468v = (AbstractC0468v) this.f2793b.e(interfaceC0821x);
        if (!AbstractC0732i.y(abstractC0468v) && (((interfaceC0804gI = abstractC0468v.J0().i()) == null || AbstractC0732i.r(interfaceC0804gI) == null) && !AbstractC0732i.B(abstractC0468v, o3.m.f8498V.i()) && !AbstractC0732i.B(abstractC0468v, o3.m.f8499W.i()) && !AbstractC0732i.B(abstractC0468v, o3.m.f8500X.i()))) {
            AbstractC0732i.B(abstractC0468v, o3.m.f8501Y.i());
        }
        return abstractC0468v;
    }
}
