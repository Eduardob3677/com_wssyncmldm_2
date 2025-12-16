package e;

import android.view.MenuItem;
import android.view.Window;
import j.InterfaceC0506g;
import j.MenuC0508i;
import k.F1;

/* loaded from: classes.dex */
public final class K implements F1, InterfaceC0506g {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ L f6662c;

    public /* synthetic */ K(L l5) {
        this.f6662c = l5;
    }

    @Override // j.InterfaceC0506g
    public void c(MenuC0508i menuC0508i) {
        L l5 = this.f6662c;
        boolean zQ = l5.f6663a.f7694a.q();
        Window.Callback callback = l5.f6664b;
        if (zQ) {
            callback.onPanelClosed(108, menuC0508i);
        } else if (callback.onPreparePanel(0, null, menuC0508i)) {
            callback.onMenuOpened(108, menuC0508i);
        }
    }

    @Override // j.InterfaceC0506g
    public boolean d(MenuC0508i menuC0508i, MenuItem menuItem) {
        return false;
    }
}
