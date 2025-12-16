package k;

import android.view.MenuItem;
import androidx.appcompat.widget.Toolbar;
import j.InterfaceC0506g;
import j.MenuC0508i;

/* loaded from: classes.dex */
public final class B1 implements InterfaceC0611n, InterfaceC0506g {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Toolbar f7662c;

    public /* synthetic */ B1(Toolbar toolbar) {
        this.f7662c = toolbar;
    }

    @Override // j.InterfaceC0506g
    public void c(MenuC0508i menuC0508i) {
        Toolbar toolbar = this.f7662c;
        C0602k c0602k = toolbar.f3536c.f3335v;
        if (c0602k == null || !c0602k.j()) {
            toolbar.f3521I.b(menuC0508i);
        }
        InterfaceC0506g interfaceC0506g = toolbar.f3529R;
        if (interfaceC0506g != null) {
            interfaceC0506g.c(menuC0508i);
        }
    }

    @Override // j.InterfaceC0506g
    public boolean d(MenuC0508i menuC0508i, MenuItem menuItem) {
        InterfaceC0506g interfaceC0506g = this.f7662c.f3529R;
        return interfaceC0506g != null && interfaceC0506g.d(menuC0508i, menuItem);
    }
}
