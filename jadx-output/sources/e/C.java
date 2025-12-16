package e;

import J.InterfaceC0031e;
import J.a0;
import J.r0;
import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.view.menu.ExpandedMenuView;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.AppCompatSpinner;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.lifecycle.C0157y;
import androidx.lifecycle.EnumC0150q;
import androidx.lifecycle.InterfaceC0155w;
import c.AbstractC0206a;
import com.google.android.gms.internal.p000firebaseauthapi.O3;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import com.idm.fotaagent.database.sqlite.database.IDMDatabaseInterface;
import i.AbstractC0474b;
import i.InterfaceC0473a;
import j.C0503d;
import j.C0504e;
import j.InterfaceC0506g;
import j.MenuC0508i;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import k.C0557C;
import k.C0576b0;
import k.C0587f;
import k.C0602k;
import k.C0618q;
import k.C0622s;
import k.C0626u;
import k.C0630w;
import k.C0632x;
import k.C0634y;
import k.I1;
import k.InterfaceC0582d0;
import k.L1;
import k.N1;
import o.C0722k;
import p.AbstractC0735a;

/* loaded from: classes.dex */
public final class C extends r implements InterfaceC0506g, LayoutInflater.Factory2 {
    public static final C0722k k0 = new C0722k();
    public static final int[] l0 = {R.attr.windowBackground};
    public static final boolean m0 = !"robolectric".equals(Build.FINGERPRINT);
    public static final boolean n0 = true;

    /* renamed from: A, reason: collision with root package name */
    public ViewGroup f6600A;

    /* renamed from: B, reason: collision with root package name */
    public TextView f6601B;

    /* renamed from: C, reason: collision with root package name */
    public View f6602C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f6603D;
    public boolean E;

    /* renamed from: F, reason: collision with root package name */
    public boolean f6604F;

    /* renamed from: G, reason: collision with root package name */
    public boolean f6605G;

    /* renamed from: H, reason: collision with root package name */
    public boolean f6606H;

    /* renamed from: I, reason: collision with root package name */
    public boolean f6607I;

    /* renamed from: J, reason: collision with root package name */
    public boolean f6608J;

    /* renamed from: K, reason: collision with root package name */
    public boolean f6609K;

    /* renamed from: L, reason: collision with root package name */
    public B[] f6610L;

    /* renamed from: M, reason: collision with root package name */
    public B f6611M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f6612N;

    /* renamed from: O, reason: collision with root package name */
    public boolean f6613O;

    /* renamed from: Q, reason: collision with root package name */
    public boolean f6614Q;

    /* renamed from: R, reason: collision with root package name */
    public boolean f6615R;

    /* renamed from: T, reason: collision with root package name */
    public Configuration f6616T;

    /* renamed from: U, reason: collision with root package name */
    public final int f6617U;

    /* renamed from: V, reason: collision with root package name */
    public int f6618V;

    /* renamed from: W, reason: collision with root package name */
    public int f6619W;

    /* renamed from: X, reason: collision with root package name */
    public boolean f6620X;

    /* renamed from: Y, reason: collision with root package name */
    public z f6621Y;

    /* renamed from: Z, reason: collision with root package name */
    public z f6622Z;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f6623a0;

    /* renamed from: b0, reason: collision with root package name */
    public int f6624b0;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f6626d0;

    /* renamed from: e0, reason: collision with root package name */
    public Rect f6627e0;

    /* renamed from: f0, reason: collision with root package name */
    public Rect f6628f0;
    public F g0;

    /* renamed from: h0, reason: collision with root package name */
    public OnBackInvokedDispatcher f6629h0;

    /* renamed from: i0, reason: collision with root package name */
    public OnBackInvokedCallback f6630i0;

    /* renamed from: j, reason: collision with root package name */
    public final Object f6631j;

    /* renamed from: k, reason: collision with root package name */
    public final Context f6633k;

    /* renamed from: l, reason: collision with root package name */
    public Window f6634l;

    /* renamed from: m, reason: collision with root package name */
    public y f6635m;
    public final InterfaceC0411o n;

    /* renamed from: o, reason: collision with root package name */
    public AbstractC0397a f6636o;

    /* renamed from: p, reason: collision with root package name */
    public i.j f6637p;

    /* renamed from: q, reason: collision with root package name */
    public CharSequence f6638q;

    /* renamed from: r, reason: collision with root package name */
    public InterfaceC0582d0 f6639r;

    /* renamed from: s, reason: collision with root package name */
    public t f6640s;

    /* renamed from: t, reason: collision with root package name */
    public t f6641t;

    /* renamed from: u, reason: collision with root package name */
    public AbstractC0474b f6642u;

    /* renamed from: v, reason: collision with root package name */
    public ActionBarContextView f6643v;

    /* renamed from: w, reason: collision with root package name */
    public PopupWindow f6644w;

    /* renamed from: x, reason: collision with root package name */
    public s f6645x;

    /* renamed from: z, reason: collision with root package name */
    public boolean f6647z;

    /* renamed from: y, reason: collision with root package name */
    public a0 f6646y = null;

    /* renamed from: c0, reason: collision with root package name */
    public final s f6625c0 = new s(this, 0);

    /* renamed from: j0, reason: collision with root package name */
    public boolean f6632j0 = false;

    public C(Context context, Window window, InterfaceC0411o interfaceC0411o, Object obj) {
        AbstractActivityC0410n abstractActivityC0410n;
        this.f6617U = -100;
        this.f6633k = context;
        this.n = interfaceC0411o;
        this.f6631j = obj;
        if (obj instanceof Dialog) {
            while (context != null) {
                if (!(context instanceof AbstractActivityC0410n)) {
                    if (!(context instanceof ContextWrapper)) {
                        break;
                    } else {
                        context = ((ContextWrapper) context).getBaseContext();
                    }
                } else {
                    abstractActivityC0410n = (AbstractActivityC0410n) context;
                    break;
                }
            }
            abstractActivityC0410n = null;
            if (abstractActivityC0410n != null) {
                this.f6617U = ((C) abstractActivityC0410n.getDelegate()).f6617U;
            }
        }
        if (this.f6617U == -100) {
            C0722k c0722k = k0;
            Integer num = (Integer) c0722k.getOrDefault(this.f6631j.getClass().getName(), null);
            if (num != null) {
                this.f6617U = num.intValue();
                c0722k.remove(this.f6631j.getClass().getName());
            }
        }
        if (window != null) {
            q(window);
        }
        C0622s.c();
    }

    public static Configuration u(Context context, int i5, Configuration configuration, boolean z4) {
        int i6 = i5 != 1 ? i5 != 2 ? z4 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i6 | (configuration2.uiMode & (-49));
        return configuration2;
    }

    public final B A(int i5) {
        B[] bArr = this.f6610L;
        if (bArr == null || bArr.length <= i5) {
            B[] bArr2 = new B[i5 + 1];
            if (bArr != null) {
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            }
            this.f6610L = bArr2;
            bArr = bArr2;
        }
        B b3 = bArr[i5];
        if (b3 != null) {
            return b3;
        }
        B b5 = new B();
        b5.f6586a = i5;
        b5.n = false;
        bArr[i5] = b5;
        return b5;
    }

    public final void B() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        x();
        if (this.f6604F && this.f6636o == null) {
            Object obj = this.f6631j;
            if (obj instanceof Activity) {
                this.f6636o = new Q((Activity) obj, this.f6605G);
            } else if (obj instanceof Dialog) {
                this.f6636o = new Q((Dialog) obj);
            }
            AbstractC0397a abstractC0397a = this.f6636o;
            if (abstractC0397a != null) {
                abstractC0397a.l(this.f6626d0);
            }
        }
    }

    public final void C(int i5) {
        this.f6624b0 = (1 << i5) | this.f6624b0;
        if (this.f6623a0) {
            return;
        }
        View decorView = this.f6634l.getDecorView();
        WeakHashMap weakHashMap = J.Q.f940a;
        decorView.postOnAnimation(this.f6625c0);
        this.f6623a0 = true;
    }

    public final int D(Context context, int i5) {
        if (i5 == -100) {
            return -1;
        }
        if (i5 != -1) {
            if (i5 == 0) {
                if (((UiModeManager) context.getApplicationContext().getSystemService(IDMDatabaseInterface.IDM_DB_NOTIINFO_UIMODE)).getNightMode() == 0) {
                    return -1;
                }
                return z(context).f();
            }
            if (i5 != 1 && i5 != 2) {
                if (i5 != 3) {
                    throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                }
                if (this.f6622Z == null) {
                    this.f6622Z = new z(this, context);
                }
                return this.f6622Z.f();
            }
        }
        return i5;
    }

    public final boolean E() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        boolean z4 = this.f6612N;
        this.f6612N = false;
        B bA = A(0);
        if (bA.f6597m) {
            if (!z4) {
                t(bA, true);
            }
            return true;
        }
        AbstractC0474b abstractC0474b = this.f6642u;
        if (abstractC0474b != null) {
            abstractC0474b.a();
            return true;
        }
        B();
        AbstractC0397a abstractC0397a = this.f6636o;
        return abstractC0397a != null && abstractC0397a.b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0175, code lost:
    
        if (r3.f7220h.getCount() > 0) goto L88;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:104:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void F(B b3, KeyEvent keyEvent) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        int i5;
        ViewGroup.LayoutParams layoutParams;
        if (b3.f6597m || this.f6615R) {
            return;
        }
        int i6 = b3.f6586a;
        Context context = this.f6633k;
        if (i6 == 0 && (context.getResources().getConfiguration().screenLayout & 15) == 4) {
            return;
        }
        Window.Callback callback = this.f6634l.getCallback();
        if (callback != null && !callback.onMenuOpened(i6, b3.f6592h)) {
            t(b3, true);
            return;
        }
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        if (windowManager == null || !H(b3, keyEvent)) {
            return;
        }
        A a3 = b3.f6590e;
        if (a3 != null && !b3.n) {
            View view = b3.f6591g;
            if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                i5 = -1;
            }
            b3.f6596l = false;
            WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i5, -2, 0, 0, IDMCallbackStatusInterface.IDM_STATUS_INITIALIZED, 8519680, -3);
            layoutParams2.gravity = b3.f6588c;
            layoutParams2.windowAnimations = b3.f6589d;
            windowManager.addView(b3.f6590e, layoutParams2);
            b3.f6597m = true;
            if (i6 != 0) {
                J();
                return;
            }
            return;
        }
        if (a3 == null) {
            B();
            AbstractC0397a abstractC0397a = this.f6636o;
            Context contextE = abstractC0397a != null ? abstractC0397a.e() : null;
            if (contextE != null) {
                context = contextE;
            }
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(com.wssyncmldm.R.attr.actionBarPopupTheme, typedValue, true);
            int i7 = typedValue.resourceId;
            if (i7 != 0) {
                themeNewTheme.applyStyle(i7, true);
            }
            themeNewTheme.resolveAttribute(com.wssyncmldm.R.attr.panelMenuListTheme, typedValue, true);
            int i8 = typedValue.resourceId;
            if (i8 != 0) {
                themeNewTheme.applyStyle(i8, true);
            } else {
                themeNewTheme.applyStyle(2132017909, true);
            }
            i.e eVar = new i.e(context, 0);
            eVar.getTheme().setTo(themeNewTheme);
            b3.f6594j = eVar;
            TypedArray typedArrayObtainStyledAttributes = eVar.obtainStyledAttributes(AbstractC0206a.f5169j);
            b3.f6587b = typedArrayObtainStyledAttributes.getResourceId(102, 0);
            b3.f6589d = typedArrayObtainStyledAttributes.getResourceId(8, 0);
            typedArrayObtainStyledAttributes.recycle();
            b3.f6590e = new A(this, b3.f6594j);
            b3.f6588c = 81;
        } else if (b3.n && a3.getChildCount() > 0) {
            b3.f6590e.removeAllViews();
        }
        View view2 = b3.f6591g;
        if (view2 == null) {
            if (b3.f6592h != null) {
                if (this.f6641t == null) {
                    this.f6641t = new t(this, 3);
                }
                t tVar = this.f6641t;
                if (b3.f6593i == null) {
                    C0504e c0504e = new C0504e(b3.f6594j);
                    b3.f6593i = c0504e;
                    c0504e.f7219g = tVar;
                    MenuC0508i menuC0508i = b3.f6592h;
                    menuC0508i.b(c0504e, menuC0508i.f7229a);
                }
                C0504e c0504e2 = b3.f6593i;
                A a5 = b3.f6590e;
                if (c0504e2.f == null) {
                    c0504e2.f = (ExpandedMenuView) c0504e2.f7217d.inflate(com.wssyncmldm.R.layout.abc_expanded_menu_layout, (ViewGroup) a5, false);
                    if (c0504e2.f7220h == null) {
                        c0504e2.f7220h = new C0503d(c0504e2);
                    }
                    c0504e2.f.setAdapter((ListAdapter) c0504e2.f7220h);
                    c0504e2.f.setOnItemClickListener(c0504e2);
                }
                ExpandedMenuView expandedMenuView = c0504e2.f;
                b3.f = expandedMenuView;
                if (expandedMenuView != null) {
                }
            }
            b3.n = true;
            return;
        }
        b3.f = view2;
        if (b3.f != null) {
            if (b3.f6591g == null) {
                C0504e c0504e3 = b3.f6593i;
                if (c0504e3.f7220h == null) {
                    c0504e3.f7220h = new C0503d(c0504e3);
                }
            }
            ViewGroup.LayoutParams layoutParams3 = b3.f.getLayoutParams();
            if (layoutParams3 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            b3.f6590e.setBackgroundResource(b3.f6587b);
            ViewParent parent = b3.f.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(b3.f);
            }
            b3.f6590e.addView(b3.f, layoutParams3);
            if (!b3.f.hasFocus()) {
                b3.f.requestFocus();
            }
        }
        b3.n = true;
        return;
        i5 = -2;
        b3.f6596l = false;
        WindowManager.LayoutParams layoutParams22 = new WindowManager.LayoutParams(i5, -2, 0, 0, IDMCallbackStatusInterface.IDM_STATUS_INITIALIZED, 8519680, -3);
        layoutParams22.gravity = b3.f6588c;
        layoutParams22.windowAnimations = b3.f6589d;
        windowManager.addView(b3.f6590e, layoutParams22);
        b3.f6597m = true;
        if (i6 != 0) {
        }
    }

    public final boolean G(B b3, int i5, KeyEvent keyEvent) {
        MenuC0508i menuC0508i;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((b3.f6595k || H(b3, keyEvent)) && (menuC0508i = b3.f6592h) != null) {
            return menuC0508i.performShortcut(i5, keyEvent, 1);
        }
        return false;
    }

    public final boolean H(B b3, KeyEvent keyEvent) {
        InterfaceC0582d0 interfaceC0582d0;
        InterfaceC0582d0 interfaceC0582d02;
        Resources.Theme themeNewTheme;
        InterfaceC0582d0 interfaceC0582d03;
        InterfaceC0582d0 interfaceC0582d04;
        if (this.f6615R) {
            return false;
        }
        if (b3.f6595k) {
            return true;
        }
        B b5 = this.f6611M;
        if (b5 != null && b5 != b3) {
            t(b5, false);
        }
        Window.Callback callback = this.f6634l.getCallback();
        int i5 = b3.f6586a;
        if (callback != null) {
            b3.f6591g = callback.onCreatePanelView(i5);
        }
        boolean z4 = i5 == 0 || i5 == 108;
        if (z4 && (interfaceC0582d04 = this.f6639r) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0582d04;
            actionBarOverlayLayout.k();
            ((I1) actionBarOverlayLayout.f3302g).f7704l = true;
        }
        if (b3.f6591g == null && (!z4 || !(this.f6636o instanceof L))) {
            MenuC0508i menuC0508i = b3.f6592h;
            if (menuC0508i == null || b3.f6598o) {
                if (menuC0508i == null) {
                    Context context = this.f6633k;
                    if ((i5 == 0 || i5 == 108) && this.f6639r != null) {
                        TypedValue typedValue = new TypedValue();
                        Resources.Theme theme = context.getTheme();
                        theme.resolveAttribute(com.wssyncmldm.R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            themeNewTheme = context.getResources().newTheme();
                            themeNewTheme.setTo(theme);
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                            themeNewTheme.resolveAttribute(com.wssyncmldm.R.attr.actionBarWidgetTheme, typedValue, true);
                        } else {
                            theme.resolveAttribute(com.wssyncmldm.R.attr.actionBarWidgetTheme, typedValue, true);
                            themeNewTheme = null;
                        }
                        if (typedValue.resourceId != 0) {
                            if (themeNewTheme == null) {
                                themeNewTheme = context.getResources().newTheme();
                                themeNewTheme.setTo(theme);
                            }
                            themeNewTheme.applyStyle(typedValue.resourceId, true);
                        }
                        if (themeNewTheme != null) {
                            i.e eVar = new i.e(context, 0);
                            eVar.getTheme().setTo(themeNewTheme);
                            context = eVar;
                        }
                    }
                    MenuC0508i menuC0508i2 = new MenuC0508i(context);
                    menuC0508i2.f7233e = this;
                    MenuC0508i menuC0508i3 = b3.f6592h;
                    if (menuC0508i2 != menuC0508i3) {
                        if (menuC0508i3 != null) {
                            menuC0508i3.r(b3.f6593i);
                        }
                        b3.f6592h = menuC0508i2;
                        C0504e c0504e = b3.f6593i;
                        if (c0504e != null) {
                            menuC0508i2.b(c0504e, menuC0508i2.f7229a);
                        }
                    }
                    if (b3.f6592h == null) {
                        return false;
                    }
                }
                if (z4 && (interfaceC0582d02 = this.f6639r) != null) {
                    if (this.f6640s == null) {
                        this.f6640s = new t(this, 2);
                    }
                    ((ActionBarOverlayLayout) interfaceC0582d02).l(b3.f6592h, this.f6640s);
                }
                b3.f6592h.w();
                if (!callback.onCreatePanelMenu(i5, b3.f6592h)) {
                    MenuC0508i menuC0508i4 = b3.f6592h;
                    if (menuC0508i4 != null) {
                        if (menuC0508i4 != null) {
                            menuC0508i4.r(b3.f6593i);
                        }
                        b3.f6592h = null;
                    }
                    if (z4 && (interfaceC0582d0 = this.f6639r) != null) {
                        ((ActionBarOverlayLayout) interfaceC0582d0).l(null, this.f6640s);
                    }
                    return false;
                }
                b3.f6598o = false;
            }
            b3.f6592h.w();
            Bundle bundle = b3.f6599p;
            if (bundle != null) {
                b3.f6592h.s(bundle);
                b3.f6599p = null;
            }
            if (!callback.onPreparePanel(0, b3.f6591g, b3.f6592h)) {
                if (z4 && (interfaceC0582d03 = this.f6639r) != null) {
                    ((ActionBarOverlayLayout) interfaceC0582d03).l(null, this.f6640s);
                }
                b3.f6592h.v();
                return false;
            }
            b3.f6592h.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            b3.f6592h.v();
        }
        b3.f6595k = true;
        b3.f6596l = false;
        this.f6611M = b3;
        return true;
    }

    public final void I() {
        if (this.f6647z) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void J() {
        OnBackInvokedCallback onBackInvokedCallback;
        boolean z4 = false;
        if (this.f6629h0 != null && (A(0).f6597m || this.f6642u != null)) {
            z4 = true;
        }
        if (z4 && this.f6630i0 == null) {
            this.f6630i0 = x.b(this.f6629h0, this);
        } else {
            if (z4 || (onBackInvokedCallback = this.f6630i0) == null) {
                return;
            }
            x.c(this.f6629h0, onBackInvokedCallback);
        }
    }

    @Override // e.r
    public final void a() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.f6633k);
        if (layoutInflaterFrom.getFactory() == null) {
            layoutInflaterFrom.setFactory2(this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof C) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // e.r
    public final void b() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        if (this.f6636o != null) {
            B();
            if (this.f6636o.f()) {
                return;
            }
            C(0);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0048, code lost:
    
        if (r6.j() != false) goto L20;
     */
    @Override // j.InterfaceC0506g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c(MenuC0508i menuC0508i) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ActionMenuView actionMenuView;
        C0602k c0602k;
        InterfaceC0582d0 interfaceC0582d0 = this.f6639r;
        if (interfaceC0582d0 != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0582d0;
            actionBarOverlayLayout.k();
            Toolbar toolbar = ((I1) actionBarOverlayLayout.f3302g).f7694a;
            if (toolbar.getVisibility() == 0 && (actionMenuView = toolbar.f3536c) != null && actionMenuView.f3334u) {
                if (ViewConfiguration.get(this.f6633k).hasPermanentMenuKey()) {
                    ActionBarOverlayLayout actionBarOverlayLayout2 = (ActionBarOverlayLayout) this.f6639r;
                    actionBarOverlayLayout2.k();
                    ActionMenuView actionMenuView2 = ((I1) actionBarOverlayLayout2.f3302g).f7694a.f3536c;
                    if (actionMenuView2 != null) {
                        C0602k c0602k2 = actionMenuView2.f3335v;
                        if (c0602k2 != null) {
                            if (c0602k2.f7897w == null) {
                            }
                        }
                    }
                }
                Window.Callback callback = this.f6634l.getCallback();
                ActionBarOverlayLayout actionBarOverlayLayout3 = (ActionBarOverlayLayout) this.f6639r;
                actionBarOverlayLayout3.k();
                if (((I1) actionBarOverlayLayout3.f3302g).f7694a.q()) {
                    ActionBarOverlayLayout actionBarOverlayLayout4 = (ActionBarOverlayLayout) this.f6639r;
                    actionBarOverlayLayout4.k();
                    ActionMenuView actionMenuView3 = ((I1) actionBarOverlayLayout4.f3302g).f7694a.f3536c;
                    if (actionMenuView3 != null && (c0602k = actionMenuView3.f3335v) != null) {
                        c0602k.i();
                    }
                    if (this.f6615R) {
                        return;
                    }
                    callback.onPanelClosed(108, A(0).f6592h);
                    return;
                }
                if (callback == null || this.f6615R) {
                    return;
                }
                if (this.f6623a0 && (1 & this.f6624b0) != 0) {
                    View decorView = this.f6634l.getDecorView();
                    s sVar = this.f6625c0;
                    decorView.removeCallbacks(sVar);
                    sVar.run();
                }
                B bA = A(0);
                MenuC0508i menuC0508i2 = bA.f6592h;
                if (menuC0508i2 == null || bA.f6598o || !callback.onPreparePanel(0, bA.f6591g, menuC0508i2)) {
                    return;
                }
                callback.onMenuOpened(108, bA.f6592h);
                ActionBarOverlayLayout actionBarOverlayLayout5 = (ActionBarOverlayLayout) this.f6639r;
                actionBarOverlayLayout5.k();
                ((I1) actionBarOverlayLayout5.f3302g).f7694a.w();
                return;
            }
        }
        B bA2 = A(0);
        bA2.n = true;
        t(bA2, false);
        F(bA2, null);
    }

    @Override // j.InterfaceC0506g
    public final boolean d(MenuC0508i menuC0508i, MenuItem menuItem) {
        B b3;
        Window.Callback callback = this.f6634l.getCallback();
        if (callback != null && !this.f6615R) {
            MenuC0508i menuC0508iK = menuC0508i.k();
            B[] bArr = this.f6610L;
            int length = bArr != null ? bArr.length : 0;
            int i5 = 0;
            while (true) {
                if (i5 < length) {
                    b3 = bArr[i5];
                    if (b3 != null && b3.f6592h == menuC0508iK) {
                        break;
                    }
                    i5++;
                } else {
                    b3 = null;
                    break;
                }
            }
            if (b3 != null) {
                return callback.onMenuItemSelected(b3.f6586a, menuItem);
            }
        }
        return false;
    }

    @Override // e.r
    public final void f() throws PackageManager.NameNotFoundException {
        String strJ;
        this.f6613O = true;
        p(false);
        y();
        Object obj = this.f6631j;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    strJ = AbstractC0735a.j(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e5) {
                    throw new IllegalArgumentException(e5);
                }
            } catch (IllegalArgumentException unused) {
                strJ = null;
            }
            if (strJ != null) {
                AbstractC0397a abstractC0397a = this.f6636o;
                if (abstractC0397a == null) {
                    this.f6626d0 = true;
                } else {
                    abstractC0397a.l(true);
                }
            }
            synchronized (r.f6784h) {
                r.i(this);
                r.f6783g.add(new WeakReference(this));
            }
        }
        this.f6616T = new Configuration(this.f6633k.getResources().getConfiguration());
        this.f6614Q = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    @Override // e.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g() {
        if (this.f6631j instanceof Activity) {
            synchronized (r.f6784h) {
                r.i(this);
            }
        }
        if (this.f6623a0) {
            this.f6634l.getDecorView().removeCallbacks(this.f6625c0);
        }
        this.f6615R = true;
        if (this.f6617U != -100) {
            Object obj = this.f6631j;
            if ((obj instanceof Activity) && ((Activity) obj).isChangingConfigurations()) {
                k0.put(this.f6631j.getClass().getName(), Integer.valueOf(this.f6617U));
            } else {
                k0.remove(this.f6631j.getClass().getName());
            }
        }
        AbstractC0397a abstractC0397a = this.f6636o;
        if (abstractC0397a != null) {
            abstractC0397a.h();
        }
        z zVar = this.f6621Y;
        if (zVar != null) {
            zVar.d();
        }
        z zVar2 = this.f6622Z;
        if (zVar2 != null) {
            zVar2.d();
        }
    }

    @Override // e.r
    public final void h() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        B();
        AbstractC0397a abstractC0397a = this.f6636o;
        if (abstractC0397a != null) {
            abstractC0397a.n(false);
        }
        B[] bArr = this.f6610L;
        int length = bArr != null ? bArr.length : 0;
        for (int i5 = 0; i5 < length; i5++) {
            B b3 = bArr[i5];
            if (b3 != null) {
                t(b3, true);
            }
        }
    }

    @Override // e.r
    public final boolean j(int i5) {
        if (i5 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i5 = 108;
        } else if (i5 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i5 = 109;
        }
        if (this.f6608J && i5 == 108) {
            return false;
        }
        if (this.f6604F && i5 == 1) {
            this.f6604F = false;
        }
        if (i5 == 1) {
            I();
            this.f6608J = true;
            return true;
        }
        if (i5 == 2) {
            I();
            this.f6603D = true;
            return true;
        }
        if (i5 == 5) {
            I();
            this.E = true;
            return true;
        }
        if (i5 == 10) {
            I();
            this.f6606H = true;
            return true;
        }
        if (i5 == 108) {
            I();
            this.f6604F = true;
            return true;
        }
        if (i5 != 109) {
            return this.f6634l.requestFeature(i5);
        }
        I();
        this.f6605G = true;
        return true;
    }

    @Override // e.r
    public final void k(int i5) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        x();
        ViewGroup viewGroup = (ViewGroup) this.f6600A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f6633k).inflate(i5, viewGroup);
        this.f6635m.a(this.f6634l.getCallback());
    }

    @Override // e.r
    public final void l(View view) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        x();
        ViewGroup viewGroup = (ViewGroup) this.f6600A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f6635m.a(this.f6634l.getCallback());
    }

    @Override // e.r
    public final void m(View view, ViewGroup.LayoutParams layoutParams) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        x();
        ViewGroup viewGroup = (ViewGroup) this.f6600A.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f6635m.a(this.f6634l.getCallback());
    }

    @Override // e.r
    public final void n(CharSequence charSequence) {
        this.f6638q = charSequence;
        InterfaceC0582d0 interfaceC0582d0 = this.f6639r;
        if (interfaceC0582d0 != null) {
            interfaceC0582d0.setWindowTitle(charSequence);
            return;
        }
        AbstractC0397a abstractC0397a = this.f6636o;
        if (abstractC0397a != null) {
            abstractC0397a.p(charSequence);
            return;
        }
        TextView textView = this.f6601B;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01a4  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01e8  */
    @Override // e.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AbstractC0474b o(InterfaceC0473a interfaceC0473a) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        AbstractC0474b abstractC0474bOnWindowStartingSupportActionMode;
        boolean z4;
        ViewGroup viewGroup;
        AbstractC0474b abstractC0474b;
        int i5 = 1;
        if (interfaceC0473a == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        AbstractC0474b abstractC0474b2 = this.f6642u;
        if (abstractC0474b2 != null) {
            abstractC0474b2.a();
        }
        v vVar = new v();
        vVar.f6793d = this;
        vVar.f6792c = interfaceC0473a;
        B();
        AbstractC0397a abstractC0397a = this.f6636o;
        InterfaceC0411o interfaceC0411o = this.n;
        if (abstractC0397a != null) {
            AbstractC0474b abstractC0474bQ = abstractC0397a.q(vVar);
            this.f6642u = abstractC0474bQ;
            if (abstractC0474bQ != null && interfaceC0411o != null) {
                interfaceC0411o.onSupportActionModeStarted(abstractC0474bQ);
            }
        }
        if (this.f6642u == null) {
            a0 a0Var = this.f6646y;
            if (a0Var != null) {
                a0Var.b();
            }
            AbstractC0474b abstractC0474b3 = this.f6642u;
            if (abstractC0474b3 != null) {
                abstractC0474b3.a();
            }
            if (interfaceC0411o == null || this.f6615R) {
                abstractC0474bOnWindowStartingSupportActionMode = null;
                if (abstractC0474bOnWindowStartingSupportActionMode == null) {
                    this.f6642u = abstractC0474bOnWindowStartingSupportActionMode;
                } else {
                    if (this.f6643v == null) {
                        boolean z5 = this.f6607I;
                        Context context = this.f6633k;
                        if (z5) {
                            TypedValue typedValue = new TypedValue();
                            Resources.Theme theme = context.getTheme();
                            theme.resolveAttribute(com.wssyncmldm.R.attr.actionBarTheme, typedValue, true);
                            if (typedValue.resourceId != 0) {
                                Resources.Theme themeNewTheme = context.getResources().newTheme();
                                themeNewTheme.setTo(theme);
                                themeNewTheme.applyStyle(typedValue.resourceId, true);
                                i.e eVar = new i.e(context, 0);
                                eVar.getTheme().setTo(themeNewTheme);
                                context = eVar;
                            }
                            this.f6643v = new ActionBarContextView(context, null);
                            PopupWindow popupWindow = new PopupWindow(context, (AttributeSet) null, com.wssyncmldm.R.attr.actionModePopupWindowStyle);
                            this.f6644w = popupWindow;
                            O.n.d(popupWindow, 2);
                            this.f6644w.setContentView(this.f6643v);
                            this.f6644w.setWidth(-1);
                            context.getTheme().resolveAttribute(com.wssyncmldm.R.attr.actionBarSize, typedValue, true);
                            this.f6643v.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, context.getResources().getDisplayMetrics()));
                            this.f6644w.setHeight(-2);
                            this.f6645x = new s(this, i5);
                        } else {
                            Context context2 = this.f6600A.getContext();
                            View viewFindViewById = this.f6600A.findViewById(context2.getResources().getIdentifier("collapsing_toolbar", "id", context2.getPackageName()));
                            if (viewFindViewById == null) {
                                viewFindViewById = this.f6600A.findViewById(context2.getResources().getIdentifier("sesl_toolbar_container", "id", context2.getPackageName()));
                            }
                            ViewStubCompat viewStubCompat = (viewFindViewById == null || this.f6606H) ? (ViewStubCompat) this.f6600A.findViewById(com.wssyncmldm.R.id.action_mode_bar_stub) : (ViewStubCompat) viewFindViewById.findViewById(com.wssyncmldm.R.id.action_mode_bar_stub);
                            if (viewStubCompat != null) {
                                B();
                                AbstractC0397a abstractC0397a2 = this.f6636o;
                                Context contextE = abstractC0397a2 != null ? abstractC0397a2.e() : null;
                                if (contextE != null) {
                                    context = contextE;
                                }
                                viewStubCompat.setLayoutInflater(LayoutInflater.from(context));
                                this.f6643v = (ActionBarContextView) viewStubCompat.a();
                            }
                        }
                    }
                    if (this.f6643v != null) {
                        a0 a0Var2 = this.f6646y;
                        if (a0Var2 != null) {
                            a0Var2.b();
                        }
                        this.f6643v.e();
                        Context context3 = this.f6643v.getContext();
                        ActionBarContextView actionBarContextView = this.f6643v;
                        i.f fVar = new i.f();
                        fVar.f7091e = context3;
                        fVar.f = actionBarContextView;
                        fVar.f7092g = vVar;
                        MenuC0508i menuC0508i = new MenuC0508i(actionBarContextView.getContext());
                        menuC0508i.f7239l = 1;
                        fVar.f7095j = menuC0508i;
                        menuC0508i.f7233e = fVar;
                        if (((InterfaceC0473a) vVar.f6792c).f(fVar, menuC0508i)) {
                            fVar.i();
                            this.f6643v.c(fVar);
                            this.f6642u = fVar;
                            if (!this.f6647z || (viewGroup = this.f6600A) == null) {
                                z4 = false;
                                if (z4) {
                                    this.f6643v.setAlpha(1.0f);
                                    this.f6643v.setVisibility(0);
                                    if (this.f6643v.getParent() instanceof View) {
                                        View view = (View) this.f6643v.getParent();
                                        WeakHashMap weakHashMap = J.Q.f940a;
                                        J.G.c(view);
                                    }
                                } else {
                                    this.f6643v.setAlpha(0.0f);
                                    a0 a0VarA = J.Q.a(this.f6643v);
                                    a0VarA.a(1.0f);
                                    this.f6646y = a0VarA;
                                    a0VarA.d(new u(i5, this));
                                }
                                if (this.f6644w != null) {
                                    this.f6634l.getDecorView().post(this.f6645x);
                                }
                            } else {
                                WeakHashMap weakHashMap2 = J.Q.f940a;
                                if (viewGroup.isLaidOut()) {
                                    z4 = true;
                                }
                                if (z4) {
                                }
                                if (this.f6644w != null) {
                                }
                            }
                        } else {
                            this.f6642u = null;
                        }
                    }
                }
                abstractC0474b = this.f6642u;
                if (abstractC0474b != null && interfaceC0411o != null) {
                    interfaceC0411o.onSupportActionModeStarted(abstractC0474b);
                }
                J();
                this.f6642u = this.f6642u;
            } else {
                try {
                    abstractC0474bOnWindowStartingSupportActionMode = interfaceC0411o.onWindowStartingSupportActionMode(vVar);
                } catch (AbstractMethodError unused) {
                }
                if (abstractC0474bOnWindowStartingSupportActionMode == null) {
                }
                abstractC0474b = this.f6642u;
                if (abstractC0474b != null) {
                    interfaceC0411o.onSupportActionModeStarted(abstractC0474b);
                }
                J();
                this.f6642u = this.f6642u;
            }
        }
        J();
        return this.f6642u;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0093  */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View c0557c;
        View view2 = null;
        if (this.g0 == null) {
            int[] iArr = AbstractC0206a.f5169j;
            Context context2 = this.f6633k;
            String string = context2.obtainStyledAttributes(iArr).getString(144);
            if (string == null) {
                this.g0 = new F();
            } else {
                try {
                    this.g0 = (F) context2.getClassLoader().loadClass(string).getDeclaredConstructor(null).newInstance(null);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.g0 = new F();
                }
            }
        }
        F f = this.g0;
        int i5 = L1.f7716a;
        f.getClass();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0206a.f5159C, 0, 0);
        char c2 = '\b';
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(8, 0);
        if (resourceId != 0) {
            Log.i("AppCompatViewInflater", "app:theme is now deprecated. Please move to using android:theme instead.");
        }
        typedArrayObtainStyledAttributes.recycle();
        Context eVar = (resourceId == 0 || ((context instanceof i.e) && ((i.e) context).f7086a == resourceId)) ? context : new i.e(context, resourceId);
        str.getClass();
        switch (str.hashCode()) {
            case -1946472170:
                if (!str.equals("RatingBar")) {
                    c2 = 65535;
                    break;
                } else {
                    c2 = 0;
                    break;
                }
            case -1455429095:
                if (str.equals("CheckedTextView")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1346021293:
                if (str.equals("MultiAutoCompleteTextView")) {
                    c2 = 2;
                    break;
                }
                break;
            case -938935918:
                if (str.equals("TextView")) {
                    c2 = 3;
                    break;
                }
                break;
            case -937446323:
                if (str.equals("ImageButton")) {
                    c2 = 4;
                    break;
                }
                break;
            case -339785223:
                if (str.equals("Spinner")) {
                    c2 = 5;
                    break;
                }
                break;
            case 776382189:
                if (str.equals("RadioButton")) {
                    c2 = 6;
                    break;
                }
                break;
            case 799298502:
                if (str.equals("ToggleButton")) {
                    c2 = 7;
                    break;
                }
                break;
            case 1125864064:
                if (!str.equals("ImageView")) {
                }
                break;
            case 1413872058:
                if (str.equals("AutoCompleteTextView")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 1601505219:
                if (str.equals("CheckBox")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 1666676343:
                if (str.equals("EditText")) {
                    c2 = 11;
                    break;
                }
                break;
            case 2001146706:
                if (str.equals("Button")) {
                    c2 = '\f';
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                c0557c = new C0557C(eVar, attributeSet);
                break;
            case 1:
                c0557c = new C0618q(eVar, attributeSet);
                break;
            case 2:
                c0557c = new C0634y(eVar, attributeSet);
                break;
            case 3:
                c0557c = f.e(eVar, attributeSet);
                break;
            case 4:
                c0557c = new C0630w(eVar, attributeSet, com.wssyncmldm.R.attr.imageButtonStyle);
                break;
            case 5:
                c0557c = new AppCompatSpinner(eVar, attributeSet);
                break;
            case 6:
                c0557c = f.d(eVar, attributeSet);
                break;
            case 7:
                c0557c = new C0576b0(eVar, attributeSet);
                break;
            case '\b':
                c0557c = new C0632x(eVar, attributeSet, 0);
                break;
            case '\t':
                c0557c = f.a(eVar, attributeSet);
                break;
            case '\n':
                c0557c = f.c(eVar, attributeSet);
                break;
            case 11:
                c0557c = new C0626u(eVar, attributeSet);
                break;
            case '\f':
                c0557c = f.b(eVar, attributeSet);
                break;
            default:
                c0557c = null;
                break;
        }
        if (c0557c == null && context != eVar) {
            Object[] objArr = f.f6656a;
            if (str.equals("view")) {
                str = attributeSet.getAttributeValue(null, "class");
            }
            try {
                objArr[0] = eVar;
                objArr[1] = attributeSet;
                if (-1 == str.indexOf(46)) {
                    int i6 = 0;
                    while (true) {
                        String[] strArr = F.f6654d;
                        if (i6 < 3) {
                            View viewF = f.f(eVar, str, strArr[i6]);
                            if (viewF != null) {
                                objArr[0] = null;
                                objArr[1] = null;
                                view2 = viewF;
                            } else {
                                i6++;
                            }
                        }
                    }
                } else {
                    View viewF2 = f.f(eVar, str, null);
                    objArr[0] = null;
                    objArr[1] = null;
                    view2 = viewF2;
                }
            } catch (Exception unused) {
            } finally {
                objArr[0] = null;
                objArr[1] = null;
            }
            c0557c = view2;
        }
        if (c0557c != null) {
            Context context3 = c0557c.getContext();
            if (context3 instanceof ContextWrapper) {
                WeakHashMap weakHashMap = J.Q.f940a;
                if (c0557c.hasOnClickListeners()) {
                    TypedArray typedArrayObtainStyledAttributes2 = context3.obtainStyledAttributes(attributeSet, F.f6653c);
                    String string2 = typedArrayObtainStyledAttributes2.getString(0);
                    if (string2 != null) {
                        c0557c.setOnClickListener(new E(c0557c, string2));
                    }
                    typedArrayObtainStyledAttributes2.recycle();
                }
            }
        }
        return c0557c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0086  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean p(boolean z4) throws PackageManager.NameNotFoundException {
        int i5;
        int i6;
        DisplayMetrics displayMetrics;
        boolean z5;
        boolean z6;
        if (this.f6615R) {
            return false;
        }
        int i7 = this.f6617U;
        if (i7 == -100) {
            i7 = r.f6781d;
        }
        int i8 = i7;
        Context context = this.f6633k;
        int iD = D(context, i8);
        Configuration configurationU = u(context, iD, null, false);
        boolean z7 = this.f6620X;
        Object obj = this.f6631j;
        boolean z8 = true;
        if (z7 || !(obj instanceof Activity)) {
            this.f6620X = true;
            i5 = this.f6619W;
        } else {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                i5 = 0;
            } else {
                try {
                    ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, obj.getClass()), 269221888);
                    if (activityInfo != null) {
                        this.f6619W = activityInfo.configChanges;
                    }
                } catch (PackageManager.NameNotFoundException e5) {
                    Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e5);
                    this.f6619W = 0;
                }
                this.f6620X = true;
                i5 = this.f6619W;
            }
        }
        Configuration configuration = this.f6616T;
        if (configuration == null) {
            configuration = context.getResources().getConfiguration();
        }
        int i9 = configuration.uiMode & 48;
        int i10 = configurationU.uiMode & 48;
        F.i iVarB = w.b(configuration);
        int i11 = i9 != i10 ? 512 : 0;
        if (((~i5) & i11) != 0 && z4 && this.f6613O && (((z6 = m0) || this.f6614Q) && (obj instanceof Activity))) {
            Activity activity = (Activity) obj;
            if (!activity.isChild()) {
                Integer numValueOf = Integer.valueOf(i9);
                displayMetrics = null;
                i6 = i11;
                Log.d("AppCompatDelegate", String.format("updateAppConfiguration attempting to recreate Activity [currentNightMode:%s, newNightMode:%s, currentLocales:%s, newLocales:%s, activityHandlingNightModeChanges:%s, activityHandlingLocalesChanges:%s, activityHandlingLayoutDirectionChanges:%s, baseContextAttached:%s, created:%s, canReturnDifferentContext:%s, host:%s], application configuration [%s]", numValueOf, Integer.valueOf(i10), iVarB, null, Boolean.valueOf((i5 & 512) != 0), Boolean.valueOf((i5 & 4) != 0), Boolean.valueOf((i5 & 8192) != 0), Boolean.valueOf(this.f6613O), Boolean.valueOf(this.f6614Q), Boolean.valueOf(z6), this.f6631j, context.getApplicationContext().getResources().getConfiguration()));
                activity.recreate();
                z5 = true;
            }
        } else {
            i6 = i11;
            displayMetrics = null;
            z5 = false;
        }
        if (z5 || i6 == 0) {
            z8 = z5;
        } else {
            boolean z9 = (i5 & i6) == i6;
            Resources resources = context.getResources();
            Configuration configuration2 = new Configuration(resources.getConfiguration());
            configuration2.uiMode = i10 | (resources.getConfiguration().uiMode & (-49));
            resources.updateConfiguration(configuration2, displayMetrics);
            int i12 = this.f6618V;
            if (i12 != 0) {
                context.setTheme(i12);
                context.getTheme().applyStyle(this.f6618V, true);
            }
            if (z9 && (obj instanceof Activity)) {
                Activity activity2 = (Activity) obj;
                if (activity2 instanceof InterfaceC0155w) {
                    if (((C0157y) ((InterfaceC0155w) activity2).getLifecycle()).f4073c.compareTo(EnumC0150q.f4065e) >= 0) {
                        activity2.onConfigurationChanged(configuration2);
                    }
                } else if (this.f6614Q && !this.f6615R) {
                    activity2.onConfigurationChanged(configuration2);
                }
            }
        }
        if (z8 && (obj instanceof AbstractActivityC0410n) && (512 & i6) != 0) {
            ((AbstractActivityC0410n) obj).onNightModeChanged(iD);
        }
        if (i8 == 0) {
            z(context).i();
        } else {
            z zVar = this.f6621Y;
            if (zVar != null) {
                zVar.d();
            }
        }
        if (i8 == 3) {
            if (this.f6622Z == null) {
                this.f6622Z = new z(this, context);
            }
            this.f6622Z.i();
        } else {
            z zVar2 = this.f6622Z;
            if (zVar2 != null) {
                zVar2.d();
            }
        }
        return z8;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void q(Window window) {
        Drawable drawableD;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.f6634l != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof y) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        y yVar = new y(this, callback);
        this.f6635m = yVar;
        window.setCallback(yVar);
        int[] iArr = l0;
        Context context = this.f6633k;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, iArr);
        if (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) {
            drawableD = null;
        } else {
            C0622s c0622sA = C0622s.a();
            synchronized (c0622sA) {
                drawableD = c0622sA.f7986a.d(context, resourceId, true);
            }
        }
        if (drawableD != null) {
            window.setBackgroundDrawable(drawableD);
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f6634l = window;
        OnBackInvokedDispatcher onBackInvokedDispatcher = this.f6629h0;
        if (onBackInvokedDispatcher == null) {
            if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.f6630i0) != null) {
                x.c(onBackInvokedDispatcher, onBackInvokedCallback);
                this.f6630i0 = null;
            }
            Object obj = this.f6631j;
            if (obj instanceof Activity) {
                Activity activity = (Activity) obj;
                if (activity.getWindow() != null) {
                    this.f6629h0 = x.a(activity);
                } else {
                    this.f6629h0 = null;
                }
            }
            J();
        }
    }

    public final void r(int i5, B b3, MenuC0508i menuC0508i) {
        if (menuC0508i == null) {
            if (b3 == null && i5 >= 0) {
                B[] bArr = this.f6610L;
                if (i5 < bArr.length) {
                    b3 = bArr[i5];
                }
            }
            if (b3 != null) {
                menuC0508i = b3.f6592h;
            }
        }
        if ((b3 == null || b3.f6597m) && !this.f6615R) {
            y yVar = this.f6635m;
            Window.Callback callback = this.f6634l.getCallback();
            yVar.getClass();
            try {
                yVar.f6797g = true;
                callback.onPanelClosed(i5, menuC0508i);
            } finally {
                yVar.f6797g = false;
            }
        }
    }

    public final void s(MenuC0508i menuC0508i) {
        C0602k c0602k;
        if (this.f6609K) {
            return;
        }
        this.f6609K = true;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) this.f6639r;
        actionBarOverlayLayout.k();
        ActionMenuView actionMenuView = ((I1) actionBarOverlayLayout.f3302g).f7694a.f3536c;
        if (actionMenuView != null && (c0602k = actionMenuView.f3335v) != null) {
            c0602k.i();
            C0587f c0587f = c0602k.f7896v;
            if (c0587f != null && c0587f.b()) {
                c0587f.f7300j.dismiss();
            }
        }
        Window.Callback callback = this.f6634l.getCallback();
        if (callback != null && !this.f6615R) {
            callback.onPanelClosed(108, menuC0508i);
        }
        this.f6609K = false;
    }

    public final void t(B b3, boolean z4) {
        A a3;
        InterfaceC0582d0 interfaceC0582d0;
        if (z4 && b3.f6586a == 0 && (interfaceC0582d0 = this.f6639r) != null) {
            ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0582d0;
            actionBarOverlayLayout.k();
            if (((I1) actionBarOverlayLayout.f3302g).f7694a.q()) {
                s(b3.f6592h);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.f6633k.getSystemService("window");
        if (windowManager != null && b3.f6597m && (a3 = b3.f6590e) != null) {
            if (a3.isAttachedToWindow()) {
                windowManager.removeView(b3.f6590e);
            }
            if (z4) {
                r(b3.f6586a, b3, null);
            }
        }
        b3.f6595k = false;
        b3.f6596l = false;
        b3.f6597m = false;
        b3.f = null;
        b3.n = true;
        if (this.f6611M == b3) {
            this.f6611M = null;
        }
        if (b3.f6586a == 0) {
            J();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:65:0x00ed  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean v(KeyEvent keyEvent) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        boolean zW;
        boolean zH;
        ActionMenuView actionMenuView;
        C0602k c0602k;
        Object obj = this.f6631j;
        if (((obj instanceof InterfaceC0031e) || (obj instanceof DialogInterfaceC0407k)) && this.f6634l.getDecorView() != null) {
            WeakHashMap weakHashMap = J.Q.f940a;
        }
        if (keyEvent.getKeyCode() == 82) {
            y yVar = this.f6635m;
            Window.Callback callback = this.f6634l.getCallback();
            yVar.getClass();
            try {
                yVar.f = true;
                if (callback.dispatchKeyEvent(keyEvent)) {
                    return true;
                }
            } finally {
                yVar.f = false;
            }
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyEvent.getAction() == 0) {
            if (keyCode == 4) {
                this.f6612N = (keyEvent.getFlags() & 128) != 0;
            } else if (keyCode == 82) {
                if (keyEvent.getRepeatCount() != 0) {
                    return true;
                }
                B bA = A(0);
                if (bA.f6597m) {
                    return true;
                }
                H(bA, keyEvent);
                return true;
            }
        } else if (keyCode != 4) {
            if (keyCode == 82) {
                if (this.f6642u != null) {
                    return true;
                }
                B bA2 = A(0);
                InterfaceC0582d0 interfaceC0582d0 = this.f6639r;
                Context context = this.f6633k;
                if (interfaceC0582d0 != null) {
                    ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) interfaceC0582d0;
                    actionBarOverlayLayout.k();
                    Toolbar toolbar = ((I1) actionBarOverlayLayout.f3302g).f7694a;
                    if (toolbar.getVisibility() != 0 || (actionMenuView = toolbar.f3536c) == null || !actionMenuView.f3334u || ViewConfiguration.get(context).hasPermanentMenuKey()) {
                        boolean z4 = bA2.f6597m;
                        if (z4 || bA2.f6596l) {
                            t(bA2, true);
                            zW = z4;
                        } else {
                            if (bA2.f6595k) {
                                if (bA2.f6598o) {
                                    bA2.f6595k = false;
                                    zH = H(bA2, keyEvent);
                                } else {
                                    zH = true;
                                }
                                if (zH) {
                                    F(bA2, keyEvent);
                                    zW = true;
                                }
                            }
                            zW = false;
                        }
                    } else {
                        ActionBarOverlayLayout actionBarOverlayLayout2 = (ActionBarOverlayLayout) this.f6639r;
                        actionBarOverlayLayout2.k();
                        if (((I1) actionBarOverlayLayout2.f3302g).f7694a.q()) {
                            ActionBarOverlayLayout actionBarOverlayLayout3 = (ActionBarOverlayLayout) this.f6639r;
                            actionBarOverlayLayout3.k();
                            ActionMenuView actionMenuView2 = ((I1) actionBarOverlayLayout3.f3302g).f7694a.f3536c;
                            if (actionMenuView2 != null && (c0602k = actionMenuView2.f3335v) != null && c0602k.i()) {
                                zW = true;
                            }
                        } else if (!this.f6615R && H(bA2, keyEvent)) {
                            ActionBarOverlayLayout actionBarOverlayLayout4 = (ActionBarOverlayLayout) this.f6639r;
                            actionBarOverlayLayout4.k();
                            zW = ((I1) actionBarOverlayLayout4.f3302g).f7694a.w();
                        }
                        zW = false;
                    }
                }
                if (!zW) {
                    return true;
                }
                AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
                if (audioManager != null) {
                    audioManager.playSoundEffect(0);
                    return true;
                }
                Log.w("AppCompatDelegate", "Couldn't get audio manager");
                return true;
            }
        } else if (E()) {
            return true;
        }
        return false;
    }

    public final void w(int i5) {
        B bA = A(i5);
        if (bA.f6592h != null) {
            Bundle bundle = new Bundle();
            bA.f6592h.t(bundle);
            if (bundle.size() > 0) {
                bA.f6599p = bundle;
            }
            bA.f6592h.w();
            bA.f6592h.clear();
        }
        bA.f6598o = true;
        bA.n = true;
        if ((i5 == 108 || i5 == 0) && this.f6639r != null) {
            B bA2 = A(0);
            bA2.f6595k = false;
            H(bA2, null);
        }
    }

    public final void x() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        ViewGroup viewGroup;
        int i5 = 1;
        int i6 = 0;
        if (this.f6647z) {
            return;
        }
        int[] iArr = AbstractC0206a.f5169j;
        Context context = this.f6633k;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!typedArrayObtainStyledAttributes.hasValue(145)) {
            typedArrayObtainStyledAttributes.recycle();
            Log.e("AppCompatDelegate", "createSubDecor: mContext = " + context);
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(154, false)) {
            j(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(145, false)) {
            j(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(146, false)) {
            j(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(147, false)) {
            j(10);
        }
        this.f6607I = typedArrayObtainStyledAttributes.getBoolean(1, false);
        if (typedArrayObtainStyledAttributes.hasValue(86)) {
            this.f6632j0 = typedArrayObtainStyledAttributes.getBoolean(86, false);
        }
        typedArrayObtainStyledAttributes.recycle();
        y();
        this.f6634l.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(context);
        if (this.f6608J) {
            viewGroup = this.f6606H ? (ViewGroup) layoutInflaterFrom.inflate(com.wssyncmldm.R.layout.sesl_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(com.wssyncmldm.R.layout.sesl_screen_simple, (ViewGroup) null);
        } else if (this.f6607I) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(com.wssyncmldm.R.layout.sesl_dialog_title, (ViewGroup) null);
            this.f6605G = false;
            this.f6604F = false;
        } else if (this.f6604F) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(com.wssyncmldm.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new i.e(context, typedValue.resourceId) : context).inflate(com.wssyncmldm.R.layout.sesl_screen_toolbar, (ViewGroup) null);
            InterfaceC0582d0 interfaceC0582d0 = (InterfaceC0582d0) viewGroup.findViewById(com.wssyncmldm.R.id.decor_content_parent);
            this.f6639r = interfaceC0582d0;
            interfaceC0582d0.setWindowCallback(this.f6634l.getCallback());
            if (this.f6605G) {
                ((ActionBarOverlayLayout) this.f6639r).j(109);
            }
            if (this.f6603D) {
                ((ActionBarOverlayLayout) this.f6639r).j(2);
            }
            if (this.E) {
                ((ActionBarOverlayLayout) this.f6639r).j(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f6604F + ", windowActionBarOverlay: " + this.f6605G + ", android:windowIsFloating: " + this.f6607I + ", windowActionModeOverlay: " + this.f6606H + ", windowNoTitle: " + this.f6608J + " }");
        }
        t tVar = new t(this, i6);
        WeakHashMap weakHashMap = J.Q.f940a;
        J.I.u(viewGroup, tVar);
        if (this.f6639r == null) {
            this.f6601B = (TextView) viewGroup.findViewById(com.wssyncmldm.R.id.title);
        }
        Method method = N1.f7721a;
        try {
            Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
            if (!method2.isAccessible()) {
                method2.setAccessible(true);
            }
            method2.invoke(viewGroup, null);
        } catch (IllegalAccessException e5) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e5);
        } catch (NoSuchMethodException unused) {
            Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (InvocationTargetException e6) {
            Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e6);
        }
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(com.wssyncmldm.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f6634l.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f6634l.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new t(this, i5));
        this.f6600A = viewGroup;
        Object obj = this.f6631j;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f6638q;
        if (!TextUtils.isEmpty(title)) {
            InterfaceC0582d0 interfaceC0582d02 = this.f6639r;
            if (interfaceC0582d02 != null) {
                interfaceC0582d02.setWindowTitle(title);
            } else {
                AbstractC0397a abstractC0397a = this.f6636o;
                if (abstractC0397a != null) {
                    abstractC0397a.p(title);
                } else {
                    TextView textView = this.f6601B;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.f6600A.findViewById(R.id.content);
        View decorView = this.f6634l.getDecorView();
        contentFrameLayout2.f3368i.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        WeakHashMap weakHashMap2 = J.Q.f940a;
        if (contentFrameLayout2.isLaidOut()) {
            contentFrameLayout2.requestLayout();
        }
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iArr);
        typedArrayObtainStyledAttributes2.getValue(152, contentFrameLayout2.getMinWidthMajor());
        typedArrayObtainStyledAttributes2.getValue(153, contentFrameLayout2.getMinWidthMinor());
        if (typedArrayObtainStyledAttributes2.hasValue(150)) {
            typedArrayObtainStyledAttributes2.getValue(150, contentFrameLayout2.getFixedWidthMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(151)) {
            typedArrayObtainStyledAttributes2.getValue(151, contentFrameLayout2.getFixedWidthMinor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(148)) {
            typedArrayObtainStyledAttributes2.getValue(148, contentFrameLayout2.getFixedHeightMajor());
        }
        if (typedArrayObtainStyledAttributes2.hasValue(149)) {
            typedArrayObtainStyledAttributes2.getValue(149, contentFrameLayout2.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.f6647z = true;
        B bA = A(0);
        if (this.f6615R || bA.f6592h != null) {
            return;
        }
        C(108);
    }

    public final void y() {
        if (this.f6634l == null) {
            Object obj = this.f6631j;
            if (obj instanceof Activity) {
                q(((Activity) obj).getWindow());
            }
        }
        if (this.f6634l == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final O3 z(Context context) {
        if (this.f6621Y == null) {
            if (r0.f == null) {
                Context applicationContext = context.getApplicationContext();
                LocationManager locationManager = (LocationManager) applicationContext.getSystemService("location");
                r0 r0Var = new r0();
                r0Var.f1008e = new N();
                r0Var.f1006c = applicationContext;
                r0Var.f1007d = locationManager;
                r0.f = r0Var;
            }
            this.f6621Y = new z(this, r0.f);
        }
        return this.f6621Y;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
