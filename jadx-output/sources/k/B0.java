package k;

import android.content.Context;
import android.view.MenuItem;
import j.C0510k;
import j.MenuC0508i;

/* loaded from: classes.dex */
public final class B0 extends C0633x0 implements InterfaceC0635y0 {
    @Override // k.InterfaceC0635y0
    public final void a(MenuC0508i menuC0508i, C0510k c0510k) {
    }

    @Override // k.InterfaceC0635y0
    public final void f(MenuC0508i menuC0508i, MenuItem menuItem) {
    }

    @Override // k.C0633x0
    public final C0606l0 p(Context context, boolean z4) {
        A0 a02 = new A0(context, z4);
        a02.setHoverListener(this);
        return a02;
    }
}
