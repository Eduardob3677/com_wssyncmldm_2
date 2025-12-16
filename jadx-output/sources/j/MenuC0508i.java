package j;

import J.T;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.Log;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import z.AbstractC0933a;

/* renamed from: j.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class MenuC0508i implements Menu {

    /* renamed from: y, reason: collision with root package name */
    public static final int[] f7228y = {1, 4, 5, 3, 2, 0};

    /* renamed from: a, reason: collision with root package name */
    public final Context f7229a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f7230b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f7231c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f7232d;

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC0506g f7233e;
    public final ArrayList f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f7234g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7235h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f7236i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f7237j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f7238k;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence f7240m;
    public Drawable n;

    /* renamed from: o, reason: collision with root package name */
    public View f7241o;

    /* renamed from: v, reason: collision with root package name */
    public C0510k f7248v;

    /* renamed from: x, reason: collision with root package name */
    public boolean f7250x;

    /* renamed from: l, reason: collision with root package name */
    public int f7239l = 0;

    /* renamed from: p, reason: collision with root package name */
    public boolean f7242p = false;

    /* renamed from: q, reason: collision with root package name */
    public boolean f7243q = false;

    /* renamed from: r, reason: collision with root package name */
    public boolean f7244r = false;

    /* renamed from: s, reason: collision with root package name */
    public boolean f7245s = false;

    /* renamed from: t, reason: collision with root package name */
    public final ArrayList f7246t = new ArrayList();

    /* renamed from: u, reason: collision with root package name */
    public final CopyOnWriteArrayList f7247u = new CopyOnWriteArrayList();

    /* renamed from: w, reason: collision with root package name */
    public boolean f7249w = false;

    public MenuC0508i(Context context) {
        boolean z4 = false;
        this.f7229a = context;
        Resources resources = context.getResources();
        this.f7230b = resources;
        this.f = new ArrayList();
        this.f7234g = new ArrayList();
        this.f7235h = true;
        this.f7236i = new ArrayList();
        this.f7237j = new ArrayList();
        this.f7238k = true;
        if (resources.getConfiguration().keyboard != 1 && T.b(ViewConfiguration.get(context))) {
            z4 = true;
        }
        this.f7232d = z4;
    }

    public final C0510k a(int i5, int i6, int i7, CharSequence charSequence) {
        int i8;
        int i9 = ((-65536) & i7) >> 16;
        if (i9 < 0 || i9 >= 6) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i10 = (f7228y[i9] << 16) | (65535 & i7);
        C0510k c0510k = new C0510k(this, i5, i6, i7, i10, charSequence, this.f7239l);
        ArrayList arrayList = this.f;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i8 = 0;
                break;
            }
            if (((C0510k) arrayList.get(size)).f7260d <= i10) {
                i8 = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i8, c0510k);
        p(true);
        return c0510k;
    }

    @Override // android.view.Menu
    public final MenuItem add(CharSequence charSequence) {
        return a(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public final int addIntentOptions(int i5, int i6, int i7, ComponentName componentName, Intent[] intentArr, Intent intent, int i8, MenuItem[] menuItemArr) {
        int i9;
        PackageManager packageManager = this.f7229a.getPackageManager();
        List<ResolveInfo> listQueryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = listQueryIntentActivityOptions != null ? listQueryIntentActivityOptions.size() : 0;
        if ((i8 & 1) == 0) {
            removeGroup(i5);
        }
        for (int i10 = 0; i10 < size; i10++) {
            ResolveInfo resolveInfo = listQueryIntentActivityOptions.get(i10);
            int i11 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i11 < 0 ? intent : intentArr[i11]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            C0510k c0510kA = a(i5, i6, i7, resolveInfo.loadLabel(packageManager));
            c0510kA.setIcon(resolveInfo.loadIcon(packageManager));
            c0510kA.f7262g = intent2;
            if (menuItemArr != null && (i9 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i9] = c0510kA;
            }
        }
        return size;
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public final void b(InterfaceC0520u interfaceC0520u, Context context) {
        this.f7247u.add(new WeakReference(interfaceC0520u));
        interfaceC0520u.c(context, this);
        this.f7238k = true;
    }

    public final void c(boolean z4) {
        if (this.f7245s) {
            return;
        }
        this.f7245s = true;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7247u;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC0520u interfaceC0520u = (InterfaceC0520u) weakReference.get();
            if (interfaceC0520u == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                interfaceC0520u.a(this, z4);
            }
        }
        this.f7245s = false;
    }

    @Override // android.view.Menu
    public final void clear() {
        C0510k c0510k = this.f7248v;
        if (c0510k != null) {
            d(c0510k);
        }
        this.f.clear();
        p(true);
    }

    public final void clearHeader() {
        this.n = null;
        this.f7240m = null;
        this.f7241o = null;
        p(false);
    }

    @Override // android.view.Menu
    public final void close() {
        c(true);
    }

    public boolean d(C0510k c0510k) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7247u;
        boolean zG = false;
        if (!copyOnWriteArrayList.isEmpty() && this.f7248v == c0510k) {
            w();
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                InterfaceC0520u interfaceC0520u = (InterfaceC0520u) weakReference.get();
                if (interfaceC0520u == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    zG = interfaceC0520u.g(c0510k);
                    if (zG) {
                        break;
                    }
                }
            }
            v();
            if (zG) {
                this.f7248v = null;
            }
        }
        return zG;
    }

    public boolean e(MenuC0508i menuC0508i, MenuItem menuItem) {
        InterfaceC0506g interfaceC0506g = this.f7233e;
        return interfaceC0506g != null && interfaceC0506g.d(menuC0508i, menuItem);
    }

    public boolean f(C0510k c0510k) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7247u;
        boolean zE = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        w();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC0520u interfaceC0520u = (InterfaceC0520u) weakReference.get();
            if (interfaceC0520u == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                zE = interfaceC0520u.e(c0510k);
                if (zE) {
                    break;
                }
            }
        }
        v();
        if (zE) {
            this.f7248v = c0510k;
        }
        return zE;
    }

    @Override // android.view.Menu
    public final MenuItem findItem(int i5) {
        MenuItem menuItemFindItem;
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            C0510k c0510k = (C0510k) arrayList.get(i6);
            if (c0510k.f7257a == i5) {
                return c0510k;
            }
            if (c0510k.hasSubMenu() && (menuItemFindItem = c0510k.f7269o.findItem(i5)) != null) {
                return menuItemFindItem;
            }
        }
        return null;
    }

    public final C0510k g(int i5, KeyEvent keyEvent) {
        ArrayList arrayList = this.f7246t;
        arrayList.clear();
        h(arrayList, i5, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (C0510k) arrayList.get(0);
        }
        boolean zN = n();
        for (int i6 = 0; i6 < size; i6++) {
            C0510k c0510k = (C0510k) arrayList.get(i6);
            char c2 = zN ? c0510k.f7265j : c0510k.f7263h;
            char[] cArr = keyData.meta;
            if ((c2 == cArr[0] && (metaState & 2) == 0) || ((c2 == cArr[2] && (metaState & 2) != 0) || (zN && c2 == '\b' && i5 == 67))) {
                return c0510k;
            }
        }
        return null;
    }

    @Override // android.view.Menu
    public final MenuItem getItem(int i5) {
        return (MenuItem) this.f.get(i5);
    }

    public final void h(ArrayList arrayList, int i5, KeyEvent keyEvent) {
        boolean zN = n();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i5 == 67) {
            ArrayList arrayList2 = this.f;
            int size = arrayList2.size();
            for (int i6 = 0; i6 < size; i6++) {
                C0510k c0510k = (C0510k) arrayList2.get(i6);
                if (c0510k.hasSubMenu()) {
                    c0510k.f7269o.h(arrayList, i5, keyEvent);
                }
                char c2 = zN ? c0510k.f7265j : c0510k.f7263h;
                if ((modifiers & 69647) == ((zN ? c0510k.f7266k : c0510k.f7264i) & 69647) && c2 != 0) {
                    char[] cArr = keyData.meta;
                    if ((c2 == cArr[0] || c2 == cArr[2] || (zN && c2 == '\b' && i5 == 67)) && c0510k.isEnabled()) {
                        arrayList.add(c0510k);
                    }
                }
            }
        }
    }

    @Override // android.view.Menu
    public final boolean hasVisibleItems() {
        if (this.f7250x) {
            return true;
        }
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i5 = 0; i5 < size; i5++) {
            if (((C0510k) arrayList.get(i5)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public final void i() {
        ArrayList arrayListL = l();
        if (this.f7238k) {
            CopyOnWriteArrayList copyOnWriteArrayList = this.f7247u;
            Iterator it = copyOnWriteArrayList.iterator();
            boolean zD = false;
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                InterfaceC0520u interfaceC0520u = (InterfaceC0520u) weakReference.get();
                if (interfaceC0520u == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    zD |= interfaceC0520u.d();
                }
            }
            ArrayList arrayList = this.f7236i;
            ArrayList arrayList2 = this.f7237j;
            if (zD) {
                arrayList.clear();
                arrayList2.clear();
                int size = arrayListL.size();
                for (int i5 = 0; i5 < size; i5++) {
                    C0510k c0510k = (C0510k) arrayListL.get(i5);
                    if (c0510k.g()) {
                        arrayList.add(c0510k);
                    } else {
                        arrayList2.add(c0510k);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(l());
            }
            this.f7238k = false;
        }
    }

    @Override // android.view.Menu
    public final boolean isShortcutKey(int i5, KeyEvent keyEvent) {
        return g(i5, keyEvent) != null;
    }

    public String j() {
        return "android:menu:actionviewstates";
    }

    public MenuC0508i k() {
        return this;
    }

    public final ArrayList l() {
        boolean z4 = this.f7235h;
        ArrayList arrayList = this.f7234g;
        if (!z4) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList arrayList2 = this.f;
        int size = arrayList2.size();
        for (int i5 = 0; i5 < size; i5++) {
            C0510k c0510k = (C0510k) arrayList2.get(i5);
            if (c0510k.isVisible()) {
                arrayList.add(c0510k);
            }
        }
        this.f7235h = false;
        this.f7238k = true;
        return arrayList;
    }

    public boolean m() {
        return this.f7249w;
    }

    public boolean n() {
        return this.f7231c;
    }

    public boolean o() {
        return this.f7232d;
    }

    public final void p(boolean z4) {
        if (this.f7242p) {
            this.f7243q = true;
            if (z4) {
                this.f7244r = true;
                return;
            }
            return;
        }
        if (z4) {
            this.f7235h = true;
            this.f7238k = true;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7247u;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        w();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC0520u interfaceC0520u = (InterfaceC0520u) weakReference.get();
            if (interfaceC0520u == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                interfaceC0520u.f();
            }
        }
        v();
    }

    @Override // android.view.Menu
    public final boolean performIdentifierAction(int i5, int i6) {
        return q(findItem(i5), null, i6);
    }

    @Override // android.view.Menu
    public final boolean performShortcut(int i5, KeyEvent keyEvent, int i6) {
        C0510k c0510kG = g(i5, keyEvent);
        boolean zQ = c0510kG != null ? q(c0510kG, null, i6) : false;
        if ((i6 & 2) != 0) {
            c(true);
        }
        return zQ;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean q(MenuItem menuItem, InterfaceC0520u interfaceC0520u, int i5) {
        boolean zExpandActionView;
        C0510k c0510k = (C0510k) menuItem;
        if (c0510k == null || !c0510k.isEnabled()) {
            return false;
        }
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = c0510k.f7270p;
        if (onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(c0510k)) {
            MenuC0508i menuC0508i = c0510k.n;
            if (!menuC0508i.e(menuC0508i, c0510k)) {
                Intent intent = c0510k.f7262g;
                if (intent != null) {
                    try {
                        menuC0508i.f7229a.startActivity(intent);
                    } catch (ActivityNotFoundException e5) {
                        Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e5);
                    }
                } else {
                    ActionProviderVisibilityListenerC0511l actionProviderVisibilityListenerC0511l = c0510k.f7254A;
                    zExpandActionView = actionProviderVisibilityListenerC0511l != null && actionProviderVisibilityListenerC0511l.f7281a.onPerformDefaultAction();
                }
            }
        }
        ActionProviderVisibilityListenerC0511l actionProviderVisibilityListenerC0511l2 = c0510k.f7254A;
        boolean z4 = actionProviderVisibilityListenerC0511l2 != null && actionProviderVisibilityListenerC0511l2.f7281a.hasSubMenu();
        if (c0510k.f()) {
            zExpandActionView |= c0510k.expandActionView();
            if (zExpandActionView) {
                c(true);
            }
        } else if (c0510k.hasSubMenu() || z4) {
            if ((i5 & 4) == 0) {
                c(false);
            }
            if (!c0510k.hasSubMenu()) {
                SubMenuC0499A subMenuC0499A = new SubMenuC0499A(this.f7229a, this, c0510k);
                c0510k.f7269o = subMenuC0499A;
                subMenuC0499A.setHeaderTitle(c0510k.f7261e);
            }
            SubMenuC0499A subMenuC0499A2 = c0510k.f7269o;
            if (z4) {
                actionProviderVisibilityListenerC0511l2.f7282b.getClass();
                actionProviderVisibilityListenerC0511l2.f7281a.onPrepareSubMenu(subMenuC0499A2);
            }
            CopyOnWriteArrayList copyOnWriteArrayList = this.f7247u;
            if (!copyOnWriteArrayList.isEmpty()) {
                zH = interfaceC0520u != null ? interfaceC0520u.h(subMenuC0499A2) : false;
                Iterator it = copyOnWriteArrayList.iterator();
                while (it.hasNext()) {
                    WeakReference weakReference = (WeakReference) it.next();
                    InterfaceC0520u interfaceC0520u2 = (InterfaceC0520u) weakReference.get();
                    if (interfaceC0520u2 == null) {
                        copyOnWriteArrayList.remove(weakReference);
                    } else if (!zH) {
                        zH = interfaceC0520u2.h(subMenuC0499A2);
                    }
                }
            }
            zExpandActionView |= zH;
            if (!zExpandActionView) {
                c(true);
            }
        } else if ((i5 & 1) == 0) {
            c(true);
        }
        return zExpandActionView;
    }

    public final void r(InterfaceC0520u interfaceC0520u) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f7247u;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC0520u interfaceC0520u2 = (InterfaceC0520u) weakReference.get();
            if (interfaceC0520u2 == null || interfaceC0520u2 == interfaceC0520u) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
    }

    @Override // android.view.Menu
    public final void removeGroup(int i5) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        int i6 = 0;
        int i7 = 0;
        while (true) {
            if (i7 >= size) {
                i7 = -1;
                break;
            } else if (((C0510k) arrayList.get(i7)).f7258b == i5) {
                break;
            } else {
                i7++;
            }
        }
        if (i7 >= 0) {
            int size2 = arrayList.size() - i7;
            while (true) {
                int i8 = i6 + 1;
                if (i6 >= size2 || ((C0510k) arrayList.get(i7)).f7258b != i5) {
                    break;
                }
                if (i7 >= 0) {
                    ArrayList arrayList2 = this.f;
                    if (i7 < arrayList2.size()) {
                        arrayList2.remove(i7);
                    }
                }
                i6 = i8;
            }
            p(true);
        }
    }

    @Override // android.view.Menu
    public final void removeItem(int i5) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        int i6 = 0;
        while (true) {
            if (i6 >= size) {
                i6 = -1;
                break;
            } else if (((C0510k) arrayList.get(i6)).f7257a == i5) {
                break;
            } else {
                i6++;
            }
        }
        if (i6 >= 0) {
            ArrayList arrayList2 = this.f;
            if (i6 >= arrayList2.size()) {
                return;
            }
            arrayList2.remove(i6);
            p(true);
        }
    }

    public final void s(Bundle bundle) {
        MenuItem menuItemFindItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(j());
        int size = this.f.size();
        for (int i5 = 0; i5 < size; i5++) {
            MenuItem item = getItem(i5);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0499A) item.getSubMenu()).s(bundle);
            }
        }
        int i6 = bundle.getInt("android:menu:expandedactionview");
        if (i6 <= 0 || (menuItemFindItem = findItem(i6)) == null) {
            return;
        }
        menuItemFindItem.expandActionView();
    }

    @Override // android.view.Menu
    public final void setGroupCheckable(int i5, boolean z4, boolean z5) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            C0510k c0510k = (C0510k) arrayList.get(i6);
            if (c0510k.f7258b == i5) {
                c0510k.f7278x = (c0510k.f7278x & (-5)) | (z5 ? 4 : 0);
                c0510k.setCheckable(z4);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z4) {
        this.f7249w = z4;
    }

    @Override // android.view.Menu
    public final void setGroupEnabled(int i5, boolean z4) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i6 = 0; i6 < size; i6++) {
            C0510k c0510k = (C0510k) arrayList.get(i6);
            if (c0510k.f7258b == i5) {
                c0510k.setEnabled(z4);
            }
        }
    }

    @Override // android.view.Menu
    public final void setGroupVisible(int i5, boolean z4) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        boolean z5 = false;
        for (int i6 = 0; i6 < size; i6++) {
            C0510k c0510k = (C0510k) arrayList.get(i6);
            if (c0510k.f7258b == i5) {
                int i7 = c0510k.f7278x;
                int i8 = (i7 & (-9)) | (z4 ? 0 : 8);
                c0510k.f7278x = i8;
                if (i7 != i8) {
                    z5 = true;
                }
            }
        }
        if (z5) {
            p(true);
        }
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z4) {
        this.f7231c = z4;
        p(false);
    }

    @Override // android.view.Menu
    public final int size() {
        return this.f.size();
    }

    public final void t(Bundle bundle) {
        int size = this.f.size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i5 = 0; i5 < size; i5++) {
            MenuItem item = getItem(i5);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuC0499A) item.getSubMenu()).t(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(j(), sparseArray);
        }
    }

    public final void u(int i5, CharSequence charSequence, int i6, Drawable drawable, View view) {
        if (view != null) {
            this.f7241o = view;
            this.f7240m = null;
            this.n = null;
        } else {
            if (i5 > 0) {
                this.f7240m = this.f7230b.getText(i5);
            } else if (charSequence != null) {
                this.f7240m = charSequence;
            }
            if (i6 > 0) {
                this.n = AbstractC0933a.b(this.f7229a, i6);
            } else if (drawable != null) {
                this.n = drawable;
            }
            this.f7241o = null;
        }
        p(false);
    }

    public final void v() {
        this.f7242p = false;
        if (this.f7243q) {
            this.f7243q = false;
            p(this.f7244r);
        }
    }

    public final void w() {
        if (this.f7242p) {
            return;
        }
        this.f7242p = true;
        this.f7243q = false;
        this.f7244r = false;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i5) {
        return a(0, 0, 0, this.f7230b.getString(i5));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i5) {
        return addSubMenu(0, 0, 0, this.f7230b.getString(i5));
    }

    @Override // android.view.Menu
    public final MenuItem add(int i5, int i6, int i7, CharSequence charSequence) {
        return a(i5, i6, i7, charSequence);
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i5, int i6, int i7, CharSequence charSequence) {
        C0510k c0510kA = a(i5, i6, i7, charSequence);
        SubMenuC0499A subMenuC0499A = new SubMenuC0499A(this.f7229a, this, c0510kA);
        c0510kA.f7269o = subMenuC0499A;
        subMenuC0499A.setHeaderTitle(c0510kA.f7261e);
        return subMenuC0499A;
    }

    @Override // android.view.Menu
    public final MenuItem add(int i5, int i6, int i7, int i8) {
        return a(i5, i6, i7, this.f7230b.getString(i8));
    }

    @Override // android.view.Menu
    public final SubMenu addSubMenu(int i5, int i6, int i7, int i8) {
        return addSubMenu(i5, i6, i7, this.f7230b.getString(i8));
    }
}
