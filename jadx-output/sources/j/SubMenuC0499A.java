package j;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* renamed from: j.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class SubMenuC0499A extends MenuC0508i implements SubMenu {

    /* renamed from: A, reason: collision with root package name */
    public final C0510k f7197A;

    /* renamed from: z, reason: collision with root package name */
    public final MenuC0508i f7198z;

    public SubMenuC0499A(Context context, MenuC0508i menuC0508i, C0510k c0510k) {
        super(context);
        this.f7198z = menuC0508i;
        this.f7197A = c0510k;
    }

    @Override // j.MenuC0508i
    public final boolean d(C0510k c0510k) {
        return this.f7198z.d(c0510k);
    }

    @Override // j.MenuC0508i
    public final boolean e(MenuC0508i menuC0508i, MenuItem menuItem) {
        return super.e(menuC0508i, menuItem) || this.f7198z.e(menuC0508i, menuItem);
    }

    @Override // j.MenuC0508i
    public final boolean f(C0510k c0510k) {
        return this.f7198z.f(c0510k);
    }

    @Override // android.view.SubMenu
    public final MenuItem getItem() {
        return this.f7197A;
    }

    @Override // j.MenuC0508i
    public final String j() {
        C0510k c0510k = this.f7197A;
        int i5 = c0510k != null ? c0510k.f7257a : 0;
        if (i5 == 0) {
            return null;
        }
        return B.f.t(i5, "android:menu:actionviewstates:");
    }

    @Override // j.MenuC0508i
    public final MenuC0508i k() {
        return this.f7198z.k();
    }

    @Override // j.MenuC0508i
    public final boolean m() {
        return this.f7198z.m();
    }

    @Override // j.MenuC0508i
    public final boolean n() {
        return this.f7198z.n();
    }

    @Override // j.MenuC0508i
    public final boolean o() {
        return this.f7198z.o();
    }

    @Override // j.MenuC0508i, android.view.Menu
    public final void setGroupDividerEnabled(boolean z4) {
        this.f7198z.setGroupDividerEnabled(z4);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(Drawable drawable) {
        u(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(CharSequence charSequence) {
        u(0, charSequence, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderView(View view) {
        u(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(Drawable drawable) {
        this.f7197A.setIcon(drawable);
        return this;
    }

    @Override // j.MenuC0508i, android.view.Menu
    public final void setQwertyMode(boolean z4) {
        this.f7198z.setQwertyMode(z4);
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderIcon(int i5) {
        u(0, null, i5, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setHeaderTitle(int i5) {
        u(i5, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public final SubMenu setIcon(int i5) {
        this.f7197A.setIcon(i5);
        return this;
    }
}
