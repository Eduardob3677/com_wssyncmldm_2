package i;

import J.AbstractC0037k;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.util.Log;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import j.ActionProviderVisibilityListenerC0511l;
import j.C0510k;
import j.MenuItemC0515p;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: A, reason: collision with root package name */
    public CharSequence f7101A;

    /* renamed from: B, reason: collision with root package name */
    public CharSequence f7102B;
    public final /* synthetic */ j E;

    /* renamed from: a, reason: collision with root package name */
    public final Menu f7105a;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7111h;

    /* renamed from: i, reason: collision with root package name */
    public int f7112i;

    /* renamed from: j, reason: collision with root package name */
    public int f7113j;

    /* renamed from: k, reason: collision with root package name */
    public CharSequence f7114k;

    /* renamed from: l, reason: collision with root package name */
    public CharSequence f7115l;

    /* renamed from: m, reason: collision with root package name */
    public int f7116m;
    public char n;

    /* renamed from: o, reason: collision with root package name */
    public int f7117o;

    /* renamed from: p, reason: collision with root package name */
    public char f7118p;

    /* renamed from: q, reason: collision with root package name */
    public int f7119q;

    /* renamed from: r, reason: collision with root package name */
    public int f7120r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f7121s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f7122t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f7123u;

    /* renamed from: v, reason: collision with root package name */
    public int f7124v;

    /* renamed from: w, reason: collision with root package name */
    public int f7125w;

    /* renamed from: x, reason: collision with root package name */
    public String f7126x;

    /* renamed from: y, reason: collision with root package name */
    public String f7127y;

    /* renamed from: z, reason: collision with root package name */
    public ActionProviderVisibilityListenerC0511l f7128z;

    /* renamed from: C, reason: collision with root package name */
    public ColorStateList f7103C = null;

    /* renamed from: D, reason: collision with root package name */
    public PorterDuff.Mode f7104D = null;

    /* renamed from: b, reason: collision with root package name */
    public int f7106b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f7107c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f7108d = 0;

    /* renamed from: e, reason: collision with root package name */
    public int f7109e = 0;
    public boolean f = true;

    /* renamed from: g, reason: collision with root package name */
    public boolean f7110g = true;

    public i(j jVar, Menu menu) {
        this.E = jVar;
        this.f7105a = menu;
    }

    public final Object a(String str, Class[] clsArr, Object[] objArr) throws NoSuchMethodException, SecurityException {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.E.f7132c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e5) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e5);
            return null;
        }
    }

    public final void b(MenuItem menuItem) {
        boolean z4 = false;
        menuItem.setChecked(this.f7121s).setVisible(this.f7122t).setEnabled(this.f7123u).setCheckable(this.f7120r >= 1).setTitleCondensed(this.f7115l).setIcon(this.f7116m);
        int i5 = this.f7124v;
        if (i5 >= 0) {
            menuItem.setShowAsAction(i5);
        }
        String str = this.f7127y;
        j jVar = this.E;
        if (str != null) {
            if (jVar.f7132c.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (jVar.f7133d == null) {
                jVar.f7133d = j.a(jVar.f7132c);
            }
            Object obj = jVar.f7133d;
            String str2 = this.f7127y;
            h hVar = new h();
            hVar.f7099c = obj;
            Class<?> cls = obj.getClass();
            try {
                hVar.f7100d = cls.getMethod(str2, h.f7098e);
                menuItem.setOnMenuItemClickListener(hVar);
            } catch (Exception e5) {
                InflateException inflateException = new InflateException("Couldn't resolve menu item onClick handler " + str2 + " in class " + cls.getName());
                inflateException.initCause(e5);
                throw inflateException;
            }
        }
        if (this.f7120r >= 2) {
            if (menuItem instanceof C0510k) {
                C0510k c0510k = (C0510k) menuItem;
                c0510k.f7278x = (c0510k.f7278x & (-5)) | 4;
            } else if (menuItem instanceof MenuItemC0515p) {
                MenuItemC0515p menuItemC0515p = (MenuItemC0515p) menuItem;
                try {
                    Method method = menuItemC0515p.f7290d;
                    D.a aVar = menuItemC0515p.f7289c;
                    if (method == null) {
                        menuItemC0515p.f7290d = aVar.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                    }
                    menuItemC0515p.f7290d.invoke(aVar, Boolean.TRUE);
                } catch (Exception e6) {
                    Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e6);
                }
            }
        }
        String str3 = this.f7126x;
        if (str3 != null) {
            menuItem.setActionView((View) a(str3, j.f7129e, jVar.f7130a));
            z4 = true;
        }
        int i6 = this.f7125w;
        if (i6 > 0) {
            if (z4) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            } else {
                menuItem.setActionView(i6);
            }
        }
        ActionProviderVisibilityListenerC0511l actionProviderVisibilityListenerC0511l = this.f7128z;
        if (actionProviderVisibilityListenerC0511l != null) {
            if (menuItem instanceof D.a) {
                ((D.a) menuItem).b(actionProviderVisibilityListenerC0511l);
            } else {
                Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
            }
        }
        CharSequence charSequence = this.f7101A;
        boolean z5 = menuItem instanceof D.a;
        if (z5) {
            ((D.a) menuItem).setContentDescription(charSequence);
        } else {
            AbstractC0037k.h(menuItem, charSequence);
        }
        CharSequence charSequence2 = this.f7102B;
        if (z5) {
            ((D.a) menuItem).setTooltipText(charSequence2);
        } else {
            AbstractC0037k.m(menuItem, charSequence2);
        }
        char c2 = this.n;
        int i7 = this.f7117o;
        if (z5) {
            ((D.a) menuItem).setAlphabeticShortcut(c2, i7);
        } else {
            AbstractC0037k.g(menuItem, c2, i7);
        }
        char c5 = this.f7118p;
        int i8 = this.f7119q;
        if (z5) {
            ((D.a) menuItem).setNumericShortcut(c5, i8);
        } else {
            AbstractC0037k.k(menuItem, c5, i8);
        }
        PorterDuff.Mode mode = this.f7104D;
        if (mode != null) {
            if (z5) {
                ((D.a) menuItem).setIconTintMode(mode);
            } else {
                AbstractC0037k.j(menuItem, mode);
            }
        }
        ColorStateList colorStateList = this.f7103C;
        if (colorStateList != null) {
            if (z5) {
                ((D.a) menuItem).setIconTintList(colorStateList);
            } else {
                AbstractC0037k.i(menuItem, colorStateList);
            }
        }
        if (z5) {
            ((D.a) menuItem).a();
        }
    }
}
