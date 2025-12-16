package k;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.TypedArray;
import android.graphics.Insets;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import c.AbstractC0206a;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import com.wssyncmldm.R;
import j.InterfaceC0524y;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p.AbstractC0735a;
import p0.AbstractC0739a;
import p0.AbstractC0740b;

/* renamed from: k.x0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0633x0 implements InterfaceC0524y {

    /* renamed from: C, reason: collision with root package name */
    public static final boolean f8026C;

    /* renamed from: A, reason: collision with root package name */
    public boolean f8027A;

    /* renamed from: c, reason: collision with root package name */
    public final Context f8029c;

    /* renamed from: d, reason: collision with root package name */
    public ListAdapter f8030d;

    /* renamed from: e, reason: collision with root package name */
    public C0606l0 f8031e;

    /* renamed from: h, reason: collision with root package name */
    public int f8033h;

    /* renamed from: i, reason: collision with root package name */
    public int f8034i;

    /* renamed from: k, reason: collision with root package name */
    public boolean f8036k;
    public F0.h n;

    /* renamed from: o, reason: collision with root package name */
    public View f8039o;

    /* renamed from: p, reason: collision with root package name */
    public AdapterView.OnItemClickListener f8040p;

    /* renamed from: q, reason: collision with root package name */
    public AdapterView.OnItemSelectedListener f8041q;

    /* renamed from: v, reason: collision with root package name */
    public final Handler f8046v;

    /* renamed from: x, reason: collision with root package name */
    public Rect f8048x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f8049y;

    /* renamed from: z, reason: collision with root package name */
    public final C0636z f8050z;
    public final int f = -2;

    /* renamed from: g, reason: collision with root package name */
    public int f8032g = -2;

    /* renamed from: j, reason: collision with root package name */
    public final int f8035j = IDMCallbackStatusInterface.IDM_STATUS_INITIALIZED;

    /* renamed from: l, reason: collision with root package name */
    public int f8037l = 0;

    /* renamed from: m, reason: collision with root package name */
    public final int f8038m = Integer.MAX_VALUE;

    /* renamed from: r, reason: collision with root package name */
    public final RunnableC0627u0 f8042r = new RunnableC0627u0(this, 1);

    /* renamed from: s, reason: collision with root package name */
    public final ViewOnTouchListenerC0631w0 f8043s = new ViewOnTouchListenerC0631w0(this);

    /* renamed from: t, reason: collision with root package name */
    public final C0629v0 f8044t = new C0629v0(this);

    /* renamed from: u, reason: collision with root package name */
    public final RunnableC0627u0 f8045u = new RunnableC0627u0(this, 0);

    /* renamed from: w, reason: collision with root package name */
    public final Rect f8047w = new Rect();

    /* renamed from: B, reason: collision with root package name */
    public final boolean f8028B = false;

    static {
        f8026C = AbstractC0739a.k() >= 140500;
    }

    public C0633x0(Context context, AttributeSet attributeSet, int i5, int i6) {
        this.f8029c = context;
        this.f8046v = new Handler(context.getMainLooper());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0206a.f5173o, i5, i6);
        this.f8033h = typedArrayObtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.f8034i = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.f8036k = true;
        }
        typedArrayObtainStyledAttributes.recycle();
        C0636z c0636z = new C0636z(context, attributeSet, i5, i6);
        this.f8050z = c0636z;
        c0636z.setInputMethodMode(1);
    }

    @Override // j.InterfaceC0524y
    public final boolean b() {
        return this.f8050z.isShowing();
    }

    public final void c(int i5) {
        this.f8033h = i5;
    }

    public final int d() {
        return this.f8033h;
    }

    @Override // j.InterfaceC0524y
    public final void dismiss() {
        C0636z c0636z = this.f8050z;
        c0636z.dismiss();
        c0636z.setContentView(null);
        this.f8031e = null;
        this.f8046v.removeCallbacks(this.f8042r);
    }

    public final int g() {
        if (this.f8036k) {
            return this.f8034i;
        }
        return 0;
    }

    public final Drawable h() {
        return this.f8050z.getBackground();
    }

    @Override // j.InterfaceC0524y
    public final C0606l0 j() {
        return this.f8031e;
    }

    public final void l(Drawable drawable) {
        this.f8050z.setBackgroundDrawable(drawable);
    }

    public final void m(int i5) {
        this.f8034i = i5;
        this.f8036k = true;
    }

    public void n(ListAdapter listAdapter) {
        F0.h hVar = this.n;
        if (hVar == null) {
            this.n = new F0.h(2, this);
        } else {
            ListAdapter listAdapter2 = this.f8030d;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(hVar);
            }
        }
        this.f8030d = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.n);
        }
        C0606l0 c0606l0 = this.f8031e;
        if (c0606l0 != null) {
            c0606l0.setAdapter(this.f8030d);
        }
    }

    public C0606l0 p(Context context, boolean z4) {
        return new C0606l0(context, z4);
    }

    public final void q(int i5) {
        Drawable background = this.f8050z.getBackground();
        if (background == null) {
            this.f8032g = i5;
            return;
        }
        Rect rect = this.f8047w;
        background.getPadding(rect);
        this.f8032g = rect.left + rect.right + i5;
    }

    /* JADX WARN: Removed duplicated region for block: B:199:0x038d  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01b8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void r() {
        int i5;
        int paddingBottom;
        int i6;
        int i7;
        C0606l0 c0606l0;
        Object obj;
        Object objJ0;
        Object objNewInstance;
        Activity activity;
        int i8;
        int i9;
        int i10;
        int dimensionPixelSize;
        C0636z c0636z = this.f8050z;
        C0606l0 c0606l02 = this.f8031e;
        Context context = this.f8029c;
        if (c0606l02 == null) {
            C0606l0 c0606l0P = p(context, !this.f8049y);
            this.f8031e = c0606l0P;
            c0606l0P.setAdapter(this.f8030d);
            this.f8031e.setOnItemClickListener(this.f8040p);
            this.f8031e.setFocusable(true);
            this.f8031e.setFocusableInTouchMode(true);
            this.f8031e.setOnItemSelectedListener(new C0621r0(0, this));
            this.f8031e.setOnScrollListener(this.f8044t);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.f8041q;
            if (onItemSelectedListener != null) {
                this.f8031e.setOnItemSelectedListener(onItemSelectedListener);
            }
            c0636z.setContentView(this.f8031e);
        }
        Drawable background = c0636z.getBackground();
        Rect rect = this.f8047w;
        if (background != null) {
            background.getPadding(rect);
            i5 = rect.top + rect.bottom;
        } else {
            rect.setEmpty();
            i5 = 0;
        }
        boolean z4 = c0636z.getInputMethodMode() == 2;
        View view = this.f8039o;
        int iA = AbstractC0623s0.a(c0636z, view, this.f8034i, z4);
        if (!f8026C && this.f8027A) {
            Point point = new Point();
            DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
            if (displayManager == null) {
                Log.w("ListPopupWindow", "displayManager is null, can not update height");
            } else {
                Display display = displayManager.getDisplay(0);
                if (display == null) {
                    Log.w("ListPopupWindow", "display is null, can not update height");
                } else if (AbstractC0735a.l()) {
                    Context baseContext = context;
                    while (true) {
                        if (!(baseContext instanceof ContextWrapper)) {
                            activity = null;
                            break;
                        } else {
                            if (baseContext instanceof Activity) {
                                activity = (Activity) baseContext;
                                break;
                            }
                            baseContext = ((ContextWrapper) baseContext).getBaseContext();
                        }
                    }
                    if (activity == null || !activity.isInMultiWindowMode()) {
                        int[] iArr = new int[2];
                        view.getLocationOnScreen(iArr);
                        display.getRealSize(point);
                        if (AbstractC0740b.f()) {
                            if (context.getResources().getConfiguration().orientation == 2) {
                                int i11 = point.y;
                                int i12 = point.x;
                                i8 = i11 > i12 ? i12 / 2 : i11 / 2;
                            } else {
                                i8 = 0;
                            }
                            Log.e("ListPopupWindow", "center = " + i8 + " , anchor top = " + iArr[1]);
                            if (i8 == 0) {
                                int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(R.dimen.sesl_menu_popup_top_margin);
                                int dimensionPixelSize3 = context.getResources().getDimensionPixelSize(R.dimen.sesl_menu_popup_bottom_margin);
                                int i13 = iArr[1];
                                if (i8 > i13) {
                                    i9 = ((i8 - i13) - dimensionPixelSize2) - dimensionPixelSize3;
                                } else {
                                    WindowManager windowManager = (WindowManager) context.getSystemService("window");
                                    if (windowManager != null) {
                                        Insets insets = windowManager.getCurrentWindowMetrics().getWindowInsets().getInsets(WindowInsets.Type.systemBars());
                                        dimensionPixelSize = insets.bottom;
                                        Log.d("ListPopupWindow", "systemBar insets = " + insets);
                                    } else {
                                        int identifier = context.getResources().getIdentifier("navigation_bar_height", "dimen", "android");
                                        dimensionPixelSize = identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0;
                                    }
                                    Log.d("ListPopupWindow", "navigationBarHeight = " + dimensionPixelSize);
                                    int i14 = iArr[1];
                                    int i15 = i14 - i8;
                                    i9 = i15 > (i8 - dimensionPixelSize) / 2 ? (i15 - dimensionPixelSize2) - dimensionPixelSize3 : (((point.y - i14) - dimensionPixelSize2) - dimensionPixelSize3) - dimensionPixelSize;
                                }
                            } else {
                                i9 = -2;
                            }
                            i10 = i9;
                        } else {
                            if (AbstractC0740b.g() && context.getResources().getConfiguration().orientation == 1) {
                                int i16 = point.y;
                                int i17 = point.x;
                                i8 = i16 > i17 ? i16 / 2 : i17 / 2;
                            }
                            Log.e("ListPopupWindow", "center = " + i8 + " , anchor top = " + iArr[1]);
                            if (i8 == 0) {
                            }
                            i10 = i9;
                        }
                    }
                    if (i10 > 0 && i10 < iA) {
                        iA = i10;
                    }
                }
            }
            i10 = -2;
            if (i10 > 0) {
                iA = i10;
            }
        }
        int i18 = this.f;
        if (i18 == -1) {
            paddingBottom = iA + i5;
        } else {
            int i19 = this.f8032g;
            int iA2 = this.f8031e.a(i19 != -2 ? i19 != -1 ? View.MeasureSpec.makeMeasureSpec(i19, 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824) : View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE), iA);
            paddingBottom = iA2 + (iA2 > 0 ? i5 + this.f8031e.getPaddingBottom() + this.f8031e.getPaddingTop() : 0);
        }
        boolean z5 = c0636z.getInputMethodMode() == 2;
        O.n.d(c0636z, this.f8035j);
        boolean z6 = !z5;
        Method methodJ = i3.x.J(PopupWindow.class, "setAllowScrollingAnchorParent", Boolean.TYPE);
        if (methodJ != null) {
            i3.x.j0(c0636z, methodJ, Boolean.valueOf(z6));
        }
        if (c0636z.isShowing()) {
            View view2 = this.f8039o;
            WeakHashMap weakHashMap = J.Q.f940a;
            if (view2.isAttachedToWindow()) {
                int width = this.f8032g;
                if (width == -1) {
                    width = -1;
                } else if (width == -2) {
                    width = this.f8039o.getWidth();
                }
                if (i18 == -1) {
                    i18 = z5 ? paddingBottom : -1;
                    if (z5) {
                        c0636z.setWidth(this.f8032g == -1 ? -1 : 0);
                        c0636z.setHeight(0);
                    } else {
                        c0636z.setWidth(this.f8032g == -1 ? -1 : 0);
                        c0636z.setHeight(-1);
                    }
                } else if (i18 == -2) {
                    i18 = paddingBottom;
                }
                c0636z.setOutsideTouchable(true);
                int height = this.f8034i;
                if (this.f8028B) {
                    height = (height - paddingBottom) - this.f8039o.getHeight();
                }
                this.f8050z.update(this.f8039o, this.f8033h, height, width < 0 ? -1 : width, i18 < 0 ? -1 : i18);
                return;
            }
            return;
        }
        int width2 = this.f8032g;
        if (width2 == -1) {
            i7 = -1;
            i6 = -2;
        } else {
            i6 = -2;
            if (width2 == -2) {
                width2 = this.f8039o.getWidth();
            }
            i7 = width2;
        }
        if (i18 == -1) {
            i18 = -1;
        } else if (i18 == i6) {
            i18 = paddingBottom;
        }
        if (c0636z.getContentView() != null && context != null && (!c0636z.f8063e)) {
            int i20 = W1.a.S(context) ? R.color.sesl_popup_menu_blur_background : R.color.sesl_popup_menu_blur_background_dark;
            View contentView = c0636z.getContentView();
            int color = context.getResources().getColor(i20, context.getTheme());
            float dimensionPixelSize4 = context.getResources().getDimensionPixelSize(R.dimen.sesl_menu_popup_corner_radius);
            Context context2 = contentView.getContext();
            if (Settings.System.getString(context2.getContentResolver(), "current_sec_active_themepackage") == null) {
                Method methodJ2 = i3.x.J(Settings.System.class, "hidden_SEM_ACCESSIBILITY_REDUCE_TRANSPARENCY", new Class[0]);
                if (methodJ2 != null) {
                    obj = null;
                    objJ0 = i3.x.j0(null, methodJ2, new Object[0]);
                } else {
                    obj = null;
                    objJ0 = null;
                }
                String str = objJ0 instanceof String ? (String) objJ0 : "not_supported";
                if (str.equals("not_supported") || Settings.System.getInt(context2.getContentResolver(), str, 0) != 1) {
                    Constructor constructorG = i3.x.G("android.view.SemBlurInfo$Builder", Integer.TYPE);
                    if (constructorG != null) {
                        try {
                            objNewInstance = constructorG.newInstance(0);
                        } catch (IllegalAccessException e5) {
                            Log.e("SeslSemBlurInfoRftr", "semCreateBlurBuilder IllegalAccessException", e5);
                        } catch (InstantiationException e6) {
                            Log.e("SeslSemBlurInfoRftr", "semCreateBlurBuilder InstantiationException", e6);
                        } catch (InvocationTargetException e7) {
                            Log.e("SeslSemBlurInfoRftr", "semCreateBlurBuilder InvocationTargetException", e7);
                        }
                        if (objNewInstance != null) {
                            Class cls = Integer.TYPE;
                            Method methodK = i3.x.K("android.view.SemBlurInfo$Builder", "hidden_setRadius", cls);
                            if (methodK != null) {
                                methodK.setAccessible(true);
                                i3.x.j0(objNewInstance, methodK, 120);
                            }
                            Method methodK2 = i3.x.K("android.view.SemBlurInfo$Builder", "hidden_setBackgroundColor", cls);
                            if (methodK2 != null) {
                                methodK2.setAccessible(true);
                                i3.x.j0(objNewInstance, methodK2, Integer.valueOf(color));
                            }
                            Method methodK3 = i3.x.K("android.view.SemBlurInfo$Builder", "hidden_setBackgroundCornerRadius", Float.TYPE);
                            if (methodK3 != null) {
                                methodK3.setAccessible(true);
                                i3.x.j0(objNewInstance, methodK3, Float.valueOf(dimensionPixelSize4));
                            }
                            Method methodK4 = i3.x.K("android.view.SemBlurInfo$Builder", "hidden_build", new Class[0]);
                            if (methodK4 != null) {
                                methodK4.setAccessible(true);
                                Object objJ02 = i3.x.j0(objNewInstance, methodK4, new Object[0]);
                                try {
                                    Method methodJ3 = i3.x.J(View.class, "hidden_semSetBlurInfo", Class.forName("android.view.SemBlurInfo"));
                                    if (methodJ3 != null) {
                                        i3.x.j0(contentView, methodJ3, objJ02);
                                    }
                                } catch (ClassNotFoundException e8) {
                                    Log.e("SeslViewReflector", "semSetBlurInfo ClassNotFoundException", e8);
                                }
                            }
                            C0606l0 c0606l03 = this.f8031e;
                            if (c0606l03 != null) {
                                c0606l03.setOverScrollMode(2);
                            }
                        }
                    } else {
                        objNewInstance = obj;
                        if (objNewInstance != null) {
                        }
                    }
                }
            }
        }
        c0636z.setWidth(i7);
        c0636z.setHeight(i18);
        AbstractC0625t0.b(c0636z, true);
        c0636z.setOutsideTouchable(true);
        c0636z.setTouchInterceptor(this.f8043s);
        AbstractC0625t0.a(c0636z, this.f8048x);
        c0636z.showAsDropDown(this.f8039o, this.f8033h, this.f8034i, this.f8037l);
        this.f8031e.setSelection(-1);
        if ((!this.f8049y || this.f8031e.isInTouchMode()) && (c0606l0 = this.f8031e) != null) {
            c0606l0.setListSelectionHidden(true);
            c0606l0.requestLayout();
        }
        if (this.f8049y) {
            return;
        }
        this.f8046v.post(this.f8045u);
    }
}
