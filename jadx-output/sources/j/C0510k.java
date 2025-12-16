package j;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import f1.AbstractC0420a;
import java.util.ArrayList;

/* renamed from: j.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0510k implements D.a {

    /* renamed from: A, reason: collision with root package name */
    public ActionProviderVisibilityListenerC0511l f7254A;

    /* renamed from: B, reason: collision with root package name */
    public MenuItem.OnActionExpandListener f7255B;

    /* renamed from: a, reason: collision with root package name */
    public final int f7257a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7258b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7259c;

    /* renamed from: d, reason: collision with root package name */
    public final int f7260d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f7261e;
    public CharSequence f;

    /* renamed from: g, reason: collision with root package name */
    public Intent f7262g;

    /* renamed from: h, reason: collision with root package name */
    public char f7263h;

    /* renamed from: j, reason: collision with root package name */
    public char f7265j;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f7267l;
    public final MenuC0508i n;

    /* renamed from: o, reason: collision with root package name */
    public SubMenuC0499A f7269o;

    /* renamed from: p, reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f7270p;

    /* renamed from: q, reason: collision with root package name */
    public CharSequence f7271q;

    /* renamed from: r, reason: collision with root package name */
    public CharSequence f7272r;

    /* renamed from: y, reason: collision with root package name */
    public int f7279y;

    /* renamed from: z, reason: collision with root package name */
    public View f7280z;

    /* renamed from: i, reason: collision with root package name */
    public int f7264i = 4096;

    /* renamed from: k, reason: collision with root package name */
    public int f7266k = 4096;

    /* renamed from: m, reason: collision with root package name */
    public int f7268m = 0;

    /* renamed from: s, reason: collision with root package name */
    public ColorStateList f7273s = null;

    /* renamed from: t, reason: collision with root package name */
    public PorterDuff.Mode f7274t = null;

    /* renamed from: u, reason: collision with root package name */
    public boolean f7275u = false;

    /* renamed from: v, reason: collision with root package name */
    public boolean f7276v = false;

    /* renamed from: w, reason: collision with root package name */
    public boolean f7277w = false;

    /* renamed from: x, reason: collision with root package name */
    public int f7278x = 16;

    /* renamed from: C, reason: collision with root package name */
    public boolean f7256C = false;

    public C0510k(MenuC0508i menuC0508i, int i5, int i6, int i7, int i8, CharSequence charSequence, int i9) {
        this.n = menuC0508i;
        this.f7257a = i6;
        this.f7258b = i5;
        this.f7259c = i7;
        this.f7260d = i8;
        this.f7261e = charSequence;
        this.f7279y = i9;
    }

    public static void d(StringBuilder sb, int i5, int i6, String str) {
        if ((i5 & i6) == i6) {
            sb.append(str);
        }
    }

    @Override // D.a
    public final void a() {
        this.n.p(false);
    }

    @Override // D.a
    public final D.a b(ActionProviderVisibilityListenerC0511l actionProviderVisibilityListenerC0511l) {
        ActionProviderVisibilityListenerC0511l actionProviderVisibilityListenerC0511l2 = this.f7254A;
        if (actionProviderVisibilityListenerC0511l2 != null) {
            actionProviderVisibilityListenerC0511l2.getClass();
        }
        this.f7280z = null;
        this.f7254A = actionProviderVisibilityListenerC0511l;
        this.n.p(true);
        ActionProviderVisibilityListenerC0511l actionProviderVisibilityListenerC0511l3 = this.f7254A;
        if (actionProviderVisibilityListenerC0511l3 != null) {
            actionProviderVisibilityListenerC0511l3.d(new c1.w(this));
        }
        return this;
    }

    @Override // D.a
    public final ActionProviderVisibilityListenerC0511l c() {
        return this.f7254A;
    }

    @Override // android.view.MenuItem
    public final boolean collapseActionView() {
        if ((this.f7279y & 8) == 0) {
            return false;
        }
        if (this.f7280z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f7255B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.n.d(this);
        }
        return false;
    }

    public final Drawable e(Drawable drawable) {
        if (drawable != null && this.f7277w && (this.f7275u || this.f7276v)) {
            drawable = drawable.mutate();
            if (this.f7275u) {
                C.a.h(drawable, this.f7273s);
            }
            if (this.f7276v) {
                C.a.i(drawable, this.f7274t);
            }
            this.f7277w = false;
        }
        return drawable;
    }

    @Override // android.view.MenuItem
    public final boolean expandActionView() {
        if (!f()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f7255B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.n.f(this);
        }
        return false;
    }

    public final boolean f() {
        ActionProviderVisibilityListenerC0511l actionProviderVisibilityListenerC0511l;
        if ((this.f7279y & 8) == 0) {
            return false;
        }
        if (this.f7280z == null && (actionProviderVisibilityListenerC0511l = this.f7254A) != null) {
            this.f7280z = actionProviderVisibilityListenerC0511l.b(this);
        }
        return this.f7280z != null;
    }

    public final boolean g() {
        return (this.f7278x & 32) == 32;
    }

    @Override // android.view.MenuItem
    public final ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // android.view.MenuItem
    public final View getActionView() {
        View view = this.f7280z;
        if (view != null) {
            return view;
        }
        ActionProviderVisibilityListenerC0511l actionProviderVisibilityListenerC0511l = this.f7254A;
        if (actionProviderVisibilityListenerC0511l == null) {
            return null;
        }
        View viewB = actionProviderVisibilityListenerC0511l.b(this);
        this.f7280z = viewB;
        return viewB;
    }

    @Override // D.a, android.view.MenuItem
    public final int getAlphabeticModifiers() {
        return this.f7266k;
    }

    @Override // android.view.MenuItem
    public final char getAlphabeticShortcut() {
        return this.f7265j;
    }

    @Override // D.a, android.view.MenuItem
    public final CharSequence getContentDescription() {
        return this.f7271q;
    }

    @Override // android.view.MenuItem
    public final int getGroupId() {
        return this.f7258b;
    }

    @Override // android.view.MenuItem
    public final Drawable getIcon() {
        Drawable drawable = this.f7267l;
        if (drawable != null) {
            return e(drawable);
        }
        int i5 = this.f7268m;
        if (i5 == 0) {
            return null;
        }
        Drawable drawableA = AbstractC0420a.A(this.n.f7229a, i5);
        this.f7268m = 0;
        this.f7267l = drawableA;
        return e(drawableA);
    }

    @Override // D.a, android.view.MenuItem
    public final ColorStateList getIconTintList() {
        return this.f7273s;
    }

    @Override // D.a, android.view.MenuItem
    public final PorterDuff.Mode getIconTintMode() {
        return this.f7274t;
    }

    @Override // android.view.MenuItem
    public final Intent getIntent() {
        return this.f7262g;
    }

    @Override // android.view.MenuItem
    public final int getItemId() {
        return this.f7257a;
    }

    @Override // android.view.MenuItem
    public final ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // D.a, android.view.MenuItem
    public final int getNumericModifiers() {
        return this.f7264i;
    }

    @Override // android.view.MenuItem
    public final char getNumericShortcut() {
        return this.f7263h;
    }

    @Override // android.view.MenuItem
    public final int getOrder() {
        return this.f7259c;
    }

    @Override // android.view.MenuItem
    public final SubMenu getSubMenu() {
        return this.f7269o;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitle() {
        return this.f7261e;
    }

    @Override // android.view.MenuItem
    public final CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f;
        return charSequence != null ? charSequence : this.f7261e;
    }

    @Override // D.a, android.view.MenuItem
    public final CharSequence getTooltipText() {
        return this.f7272r;
    }

    public final boolean h() {
        return (this.f7278x & 4) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean hasSubMenu() {
        return this.f7269o != null;
    }

    public final void i(boolean z4) {
        if (z4) {
            this.f7278x |= 32;
        } else {
            this.f7278x &= -33;
        }
    }

    @Override // android.view.MenuItem
    public final boolean isActionViewExpanded() {
        return this.f7256C;
    }

    @Override // android.view.MenuItem
    public final boolean isCheckable() {
        return (this.f7278x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public final boolean isChecked() {
        return (this.f7278x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public final boolean isEnabled() {
        return (this.f7278x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public final boolean isVisible() {
        ActionProviderVisibilityListenerC0511l actionProviderVisibilityListenerC0511l = this.f7254A;
        return (actionProviderVisibilityListenerC0511l == null || !actionProviderVisibilityListenerC0511l.c()) ? (this.f7278x & 8) == 0 : (this.f7278x & 8) == 0 && this.f7254A.a();
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(View view) {
        int i5;
        this.f7280z = view;
        this.f7254A = null;
        if (view != null && view.getId() == -1 && (i5 = this.f7257a) > 0) {
            view.setId(i5);
        }
        MenuC0508i menuC0508i = this.n;
        menuC0508i.f7238k = true;
        menuC0508i.p(true);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2) {
        if (this.f7265j == c2) {
            return this;
        }
        this.f7265j = Character.toLowerCase(c2);
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setCheckable(boolean z4) {
        int i5 = this.f7278x;
        int i6 = (z4 ? 1 : 0) | (i5 & (-2));
        this.f7278x = i6;
        if (i5 != i6) {
            this.n.p(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setChecked(boolean z4) {
        int i5 = this.f7278x;
        if ((i5 & 4) != 0) {
            MenuC0508i menuC0508i = this.n;
            menuC0508i.getClass();
            ArrayList arrayList = menuC0508i.f;
            int size = arrayList.size();
            menuC0508i.w();
            for (int i6 = 0; i6 < size; i6++) {
                C0510k c0510k = (C0510k) arrayList.get(i6);
                if (c0510k.f7258b == this.f7258b && c0510k.h() && c0510k.isCheckable()) {
                    boolean z5 = c0510k == this;
                    int i7 = c0510k.f7278x;
                    int i8 = (z5 ? 2 : 0) | (i7 & (-3));
                    c0510k.f7278x = i8;
                    if (i7 != i8) {
                        c0510k.n.p(false);
                    }
                }
            }
            menuC0508i.v();
        } else {
            int i9 = (i5 & (-3)) | (z4 ? 2 : 0);
            this.f7278x = i9;
            if (i5 != i9) {
                this.n.p(false);
            }
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setContentDescription(CharSequence charSequence) {
        setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setEnabled(boolean z4) {
        if (z4) {
            this.f7278x |= 16;
        } else {
            this.f7278x &= -17;
        }
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(Drawable drawable) {
        this.f7268m = 0;
        this.f7267l = drawable;
        this.f7277w = true;
        this.n.p(false);
        return this;
    }

    @Override // D.a, android.view.MenuItem
    public final MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f7273s = colorStateList;
        this.f7275u = true;
        this.f7277w = true;
        this.n.p(false);
        return this;
    }

    @Override // D.a, android.view.MenuItem
    public final MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f7274t = mode;
        this.f7276v = true;
        this.f7277w = true;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIntent(Intent intent) {
        this.f7262g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2) {
        if (this.f7263h == c2) {
            return this;
        }
        this.f7263h = c2;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f7255B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f7270p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c5) {
        this.f7263h = c2;
        this.f7265j = Character.toLowerCase(c5);
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final void setShowAsAction(int i5) {
        int i6 = i5 & 3;
        if (i6 != 0 && i6 != 1 && i6 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f7279y = i5;
        MenuC0508i menuC0508i = this.n;
        menuC0508i.f7238k = true;
        menuC0508i.p(true);
    }

    @Override // android.view.MenuItem
    public final MenuItem setShowAsActionFlags(int i5) {
        setShowAsAction(i5);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(CharSequence charSequence) {
        this.f7261e = charSequence;
        this.n.p(false);
        SubMenuC0499A subMenuC0499A = this.f7269o;
        if (subMenuC0499A != null) {
            subMenuC0499A.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f = charSequence;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final /* bridge */ /* synthetic */ MenuItem setTooltipText(CharSequence charSequence) {
        setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setVisible(boolean z4) {
        int i5 = this.f7278x;
        int i6 = (z4 ? 0 : 8) | (i5 & (-9));
        this.f7278x = i6;
        if (i5 != i6) {
            MenuC0508i menuC0508i = this.n;
            menuC0508i.f7235h = true;
            menuC0508i.p(true);
        }
        return this;
    }

    public final String toString() {
        CharSequence charSequence = this.f7261e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // D.a, android.view.MenuItem
    public final D.a setContentDescription(CharSequence charSequence) {
        this.f7271q = charSequence;
        this.n.p(false);
        return this;
    }

    @Override // D.a, android.view.MenuItem
    public final D.a setTooltipText(CharSequence charSequence) {
        this.f7272r = charSequence;
        this.n.p(false);
        return this;
    }

    @Override // D.a, android.view.MenuItem
    public final MenuItem setAlphabeticShortcut(char c2, int i5) {
        if (this.f7265j == c2 && this.f7266k == i5) {
            return this;
        }
        this.f7265j = Character.toLowerCase(c2);
        this.f7266k = KeyEvent.normalizeMetaState(i5);
        this.n.p(false);
        return this;
    }

    @Override // D.a, android.view.MenuItem
    public final MenuItem setNumericShortcut(char c2, int i5) {
        if (this.f7263h == c2 && this.f7264i == i5) {
            return this;
        }
        this.f7263h = c2;
        this.f7264i = KeyEvent.normalizeMetaState(i5);
        this.n.p(false);
        return this;
    }

    @Override // D.a, android.view.MenuItem
    public final MenuItem setShortcut(char c2, char c5, int i5, int i6) {
        this.f7263h = c2;
        this.f7264i = KeyEvent.normalizeMetaState(i5);
        this.f7265j = Character.toLowerCase(c5);
        this.f7266k = KeyEvent.normalizeMetaState(i6);
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setIcon(int i5) {
        this.f7267l = null;
        this.f7268m = i5;
        this.f7277w = true;
        this.n.p(false);
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setTitle(int i5) {
        setTitle(this.n.f7229a.getString(i5));
        return this;
    }

    @Override // android.view.MenuItem
    public final MenuItem setActionView(int i5) {
        int i6;
        Context context = this.n.f7229a;
        View viewInflate = LayoutInflater.from(context).inflate(i5, (ViewGroup) new LinearLayout(context), false);
        this.f7280z = viewInflate;
        this.f7254A = null;
        if (viewInflate != null && viewInflate.getId() == -1 && (i6 = this.f7257a) > 0) {
            viewInflate.setId(i6);
        }
        MenuC0508i menuC0508i = this.n;
        menuC0508i.f7238k = true;
        menuC0508i.p(true);
        return this;
    }
}
