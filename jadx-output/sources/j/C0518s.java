package j;

import J.Q;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.wssyncmldm.R;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import k.B0;
import k.C0606l0;
import k.C0636z;

/* renamed from: j.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0518s {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7292a;

    /* renamed from: b, reason: collision with root package name */
    public final MenuC0508i f7293b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f7294c;

    /* renamed from: d, reason: collision with root package name */
    public final int f7295d;

    /* renamed from: e, reason: collision with root package name */
    public final int f7296e;
    public View f;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7298h;

    /* renamed from: i, reason: collision with root package name */
    public InterfaceC0519t f7299i;

    /* renamed from: j, reason: collision with root package name */
    public ViewOnKeyListenerC0525z f7300j;

    /* renamed from: k, reason: collision with root package name */
    public PopupWindow.OnDismissListener f7301k;

    /* renamed from: g, reason: collision with root package name */
    public int f7297g = 8388611;

    /* renamed from: l, reason: collision with root package name */
    public final boolean f7302l = true;

    /* renamed from: m, reason: collision with root package name */
    public final C0516q f7303m = new C0516q(this);

    public C0518s(int i5, int i6, Context context, View view, MenuC0508i menuC0508i, boolean z4) {
        this.f7292a = context;
        this.f7293b = menuC0508i;
        this.f = view;
        this.f7294c = z4;
        this.f7295d = i5;
        this.f7296e = i6;
    }

    public final ViewOnKeyListenerC0525z a() throws Resources.NotFoundException {
        if (this.f7300j == null) {
            Context context = this.f7292a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            AbstractC0517r.a(defaultDisplay, point);
            Math.min(point.x, point.y);
            context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width);
            View view = this.f;
            int i5 = this.f7296e;
            boolean z4 = this.f7294c;
            ViewOnKeyListenerC0525z viewOnKeyListenerC0525z = new ViewOnKeyListenerC0525z(this.f7295d, i5, this.f7292a, view, this.f7293b, z4);
            if (!this.f7302l) {
                viewOnKeyListenerC0525z.n = false;
            }
            viewOnKeyListenerC0525z.f7317q = this.f7303m;
            viewOnKeyListenerC0525z.f7318r = this.f;
            viewOnKeyListenerC0525z.f7320t = this.f7299i;
            viewOnKeyListenerC0525z.f.f7224g = this.f7298h;
            viewOnKeyListenerC0525z.f7325y = this.f7297g;
            this.f7300j = viewOnKeyListenerC0525z;
        }
        return this.f7300j;
    }

    public final boolean b() {
        ViewOnKeyListenerC0525z viewOnKeyListenerC0525z = this.f7300j;
        return viewOnKeyListenerC0525z != null && viewOnKeyListenerC0525z.b();
    }

    public void c() {
        this.f7300j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f7301k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public final void d(boolean z4, boolean z5) throws Resources.NotFoundException {
        View view;
        C0636z c0636z;
        Method methodJ;
        ViewOnKeyListenerC0525z viewOnKeyListenerC0525zA = a();
        viewOnKeyListenerC0525zA.f7326z = z5;
        if (z4) {
            View view2 = this.f;
            WeakHashMap weakHashMap = Q.f940a;
            boolean z6 = view2.getLayoutDirection() == 1;
            Context context = this.f7292a;
            int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.sesl_menu_popup_offset_horizontal);
            if (z6) {
                viewOnKeyListenerC0525zA.f7312k.f8033h = dimensionPixelOffset;
            } else {
                viewOnKeyListenerC0525zA.f7312k.f8033h = 0 - dimensionPixelOffset;
            }
            viewOnKeyListenerC0525zA.f7312k.m(0);
            int i5 = (int) ((context.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            int i6 = 0 - i5;
            viewOnKeyListenerC0525zA.f7305c = new Rect(i6, i6, i5, i5);
        }
        if (viewOnKeyListenerC0525zA.b()) {
            return;
        }
        if (viewOnKeyListenerC0525zA.f7322v || (view = viewOnKeyListenerC0525zA.f7318r) == null) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
        viewOnKeyListenerC0525zA.f7319s = view;
        boolean z7 = viewOnKeyListenerC0525zA.n;
        B0 b02 = viewOnKeyListenerC0525zA.f7312k;
        if (!z7 && (c0636z = b02.f8050z) != null && (methodJ = i3.x.J(PopupWindow.class, "setAllowScrollingAnchorParent", Boolean.TYPE)) != null) {
            i3.x.j0(c0636z, methodJ, Boolean.valueOf(z7));
        }
        b02.f8050z.setOnDismissListener(viewOnKeyListenerC0525zA);
        b02.f8040p = viewOnKeyListenerC0525zA;
        b02.f8049y = true;
        b02.f8050z.setFocusable(true);
        View view3 = viewOnKeyListenerC0525zA.f7319s;
        boolean z8 = viewOnKeyListenerC0525zA.f7321u == null;
        ViewTreeObserver viewTreeObserver = view3.getViewTreeObserver();
        viewOnKeyListenerC0525zA.f7321u = viewTreeObserver;
        if (z8) {
            viewTreeObserver.addOnGlobalLayoutListener(viewOnKeyListenerC0525zA.f7315o);
        }
        view3.addOnAttachStateChangeListener(viewOnKeyListenerC0525zA.f7316p);
        b02.f8039o = view3;
        b02.f8037l = viewOnKeyListenerC0525zA.f7325y;
        boolean z9 = viewOnKeyListenerC0525zA.f7323w;
        Context context2 = viewOnKeyListenerC0525zA.f7306d;
        C0505f c0505f = viewOnKeyListenerC0525zA.f;
        if (!z9) {
            viewOnKeyListenerC0525zA.f7324x = ViewOnKeyListenerC0525z.i(c0505f, context2, viewOnKeyListenerC0525zA.f7309h);
            viewOnKeyListenerC0525zA.f7323w = true;
        }
        b02.q(viewOnKeyListenerC0525zA.f7324x);
        b02.f8050z.setInputMethodMode(2);
        Rect rect = viewOnKeyListenerC0525zA.f7305c;
        b02.f8048x = rect != null ? new Rect(rect) : null;
        b02.r();
        C0606l0 c0606l0 = b02.f8031e;
        c0606l0.setOnKeyListener(viewOnKeyListenerC0525zA);
        boolean z10 = viewOnKeyListenerC0525zA.f7313l;
        viewOnKeyListenerC0525zA.f7314m = z10 ? null : c0606l0;
        if (viewOnKeyListenerC0525zA.f7326z) {
            MenuC0508i menuC0508i = viewOnKeyListenerC0525zA.f7307e;
            if (menuC0508i.f7240m != null && !z10) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context2).inflate(R.layout.sesl_popup_menu_header_item_layout, (ViewGroup) c0606l0, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(menuC0508i.f7240m);
                }
                frameLayout.setEnabled(false);
                c0606l0.addHeaderView(frameLayout, null, false);
            }
        }
        b02.n(c0505f);
        b02.r();
    }
}
