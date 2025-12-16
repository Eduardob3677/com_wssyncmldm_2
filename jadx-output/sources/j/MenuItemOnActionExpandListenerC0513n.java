package j;

import android.view.MenuItem;

/* renamed from: j.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class MenuItemOnActionExpandListenerC0513n implements MenuItem.OnActionExpandListener {

    /* renamed from: a, reason: collision with root package name */
    public final MenuItem.OnActionExpandListener f7285a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MenuItemC0515p f7286b;

    public MenuItemOnActionExpandListenerC0513n(MenuItemC0515p menuItemC0515p, MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f7286b = menuItemC0515p;
        this.f7285a = onActionExpandListener;
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionCollapse(MenuItem menuItem) {
        return this.f7285a.onMenuItemActionCollapse(this.f7286b.g(menuItem));
    }

    @Override // android.view.MenuItem.OnActionExpandListener
    public final boolean onMenuItemActionExpand(MenuItem menuItem) {
        return this.f7285a.onMenuItemActionExpand(this.f7286b.g(menuItem));
    }
}
