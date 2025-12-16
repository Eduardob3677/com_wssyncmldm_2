package j;

import android.R;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import z.AbstractC0933a;

/* renamed from: j.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0500a implements D.a {

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f7199a;

    /* renamed from: b, reason: collision with root package name */
    public CharSequence f7200b;

    /* renamed from: c, reason: collision with root package name */
    public Intent f7201c;

    /* renamed from: d, reason: collision with root package name */
    public char f7202d;
    public char f;

    /* renamed from: h, reason: collision with root package name */
    public Drawable f7205h;

    /* renamed from: i, reason: collision with root package name */
    public final Context f7206i;

    /* renamed from: j, reason: collision with root package name */
    public CharSequence f7207j;

    /* renamed from: k, reason: collision with root package name */
    public CharSequence f7208k;

    /* renamed from: e, reason: collision with root package name */
    public int f7203e = 4096;

    /* renamed from: g, reason: collision with root package name */
    public int f7204g = 4096;

    /* renamed from: l, reason: collision with root package name */
    public ColorStateList f7209l = null;

    /* renamed from: m, reason: collision with root package name */
    public PorterDuff.Mode f7210m = null;
    public boolean n = false;

    /* renamed from: o, reason: collision with root package name */
    public boolean f7211o = false;

    /* renamed from: p, reason: collision with root package name */
    public int f7212p = 16;

    public C0500a(Context context, CharSequence charSequence) {
        this.f7206i = context;
        this.f7199a = charSequence;
    }

    @Override // D.a
    public final D.a b(ActionProviderVisibilityListenerC0511l actionProviderVisibilityListenerC0511l) {
        throw new UnsupportedOperationException();
    }

    @Override // D.a
    public final ActionProviderVisibilityListenerC0511l c() {
        return null;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        return false;
    }

    public final void d() {
        Drawable drawable = this.f7205h;
        if (drawable != null) {
            if (this.n || this.f7211o) {
                this.f7205h = drawable;
                Drawable drawableMutate = drawable.mutate();
                this.f7205h = drawableMutate;
                if (this.n) {
                    C.a.h(drawableMutate, this.f7209l);
                }
                if (this.f7211o) {
                    C.a.i(this.f7205h, this.f7210m);
                }
            }
        }
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        return null;
    }

    @Override // D.a, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f7204g;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f;
    }

    @Override // D.a, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f7207j;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        return this.f7205h;
    }

    @Override // D.a, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f7209l;
    }

    @Override // D.a, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f7210m;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f7201c;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return R.id.home;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // D.a, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f7203e;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f7202d;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return 0;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f7199a;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f7200b;
        return charSequence != null ? charSequence : this.f7199a;
    }

    @Override // D.a, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f7208k;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f7212p & 1) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f7212p & 2) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f7212p & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        return (this.f7212p & 8) == 0;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2) {
        this.f = Character.toLowerCase(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z4) {
        this.f7212p = (z4 ? 1 : 0) | (this.f7212p & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z4) {
        this.f7212p = (z4 ? 2 : 0) | (this.f7212p & (-3));
        return this;
    }

    @Override // D.a, android.view.MenuItem
    public final D.a setContentDescription(CharSequence charSequence) {
        this.f7207j = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z4) {
        this.f7212p = (z4 ? 16 : 0) | (this.f7212p & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f7205h = drawable;
        d();
        return this;
    }

    @Override // D.a, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f7209l = colorStateList;
        this.n = true;
        d();
        return this;
    }

    @Override // D.a, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f7210m = mode;
        this.f7211o = true;
        d();
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f7201c = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2) {
        this.f7202d = c2;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c5) {
        this.f7202d = c2;
        this.f = Character.toLowerCase(c5);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i5) {
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i5) {
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f7199a = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f7200b = charSequence;
        return this;
    }

    @Override // D.a, android.view.MenuItem
    public final D.a setTooltipText(CharSequence charSequence) {
        this.f7208k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z4) {
        this.f7212p = (this.f7212p & 8) | (z4 ? 0 : 8);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i5) {
        throw new UnsupportedOperationException();
    }

    @Override // D.a, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2, int i5) {
        this.f = Character.toLowerCase(c2);
        this.f7204g = KeyEvent.normalizeMetaState(i5);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setContentDescription(CharSequence charSequence) {
        this.f7207j = charSequence;
        return this;
    }

    @Override // D.a, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2, int i5) {
        this.f7202d = c2;
        this.f7203e = KeyEvent.normalizeMetaState(i5);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i5) {
        this.f7199a = this.f7206i.getResources().getString(i5);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTooltipText(CharSequence charSequence) {
        this.f7208k = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i5) {
        this.f7205h = AbstractC0933a.b(this.f7206i, i5);
        d();
        return this;
    }

    @Override // D.a, android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c5, int i5, int i6) {
        this.f7202d = c2;
        this.f7203e = KeyEvent.normalizeMetaState(i5);
        this.f = Character.toLowerCase(c5);
        this.f7204g = KeyEvent.normalizeMetaState(i6);
        return this;
    }
}
