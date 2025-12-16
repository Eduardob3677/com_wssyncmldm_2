package j;

import android.view.MenuItem;

/* renamed from: j.o, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class MenuItemOnMenuItemClickListenerC0514o implements MenuItem.OnMenuItemClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final MenuItem.OnMenuItemClickListener f7287c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ MenuItemC0515p f7288d;

    public MenuItemOnMenuItemClickListenerC0514o(MenuItemC0515p menuItemC0515p, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f7288d = menuItemC0515p;
        this.f7287c = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        return this.f7287c.onMenuItemClick(this.f7288d.g(menuItem));
    }
}
