package J;

import android.view.Menu;
import android.view.MenuItem;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: J.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0036j {

    /* renamed from: a, reason: collision with root package name */
    public final Runnable f986a;

    /* renamed from: b, reason: collision with root package name */
    public final CopyOnWriteArrayList f987b = new CopyOnWriteArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f988c = new HashMap();

    public C0036j(Runnable runnable) {
        this.f986a = runnable;
    }

    public final boolean a(MenuItem menuItem) {
        Iterator it = this.f987b.iterator();
        while (it.hasNext()) {
            if (((androidx.fragment.app.S) ((InterfaceC0038l) it.next())).f3764a.o(menuItem)) {
                return true;
            }
        }
        return false;
    }

    public final void b(Menu menu) {
        Iterator it = this.f987b.iterator();
        while (it.hasNext()) {
            ((androidx.fragment.app.S) ((InterfaceC0038l) it.next())).f3764a.s(menu);
        }
    }

    public final void c(InterfaceC0038l interfaceC0038l) {
        this.f987b.remove(interfaceC0038l);
        C0035i c0035i = (C0035i) this.f988c.remove(interfaceC0038l);
        if (c0035i != null) {
            c0035i.f983a.b(c0035i.f984b);
            c0035i.f984b = null;
        }
        this.f986a.run();
    }
}
