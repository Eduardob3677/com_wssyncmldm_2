package androidx.appcompat.widget;

import C0.q;
import J.C0042p;
import J.G;
import J.I;
import J.InterfaceC0040n;
import J.InterfaceC0041o;
import J.Q;
import J.h0;
import J.o0;
import J.q0;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import android.widget.OverScroller;
import com.wssyncmldm.R;
import e.t;
import f1.AbstractC0420a;
import i.l;
import j.MenuC0508i;
import java.util.WeakHashMap;
import k.C0584e;
import k.C0602k;
import k.D1;
import k.I1;
import k.InterfaceC0581d;
import k.InterfaceC0582d0;
import k.InterfaceC0585e0;
import k.RunnableC0578c;

/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements InterfaceC0582d0, InterfaceC0040n, InterfaceC0041o {

    /* renamed from: D, reason: collision with root package name */
    public static final int[] f3295D = {R.attr.actionBarSize, android.R.attr.windowContentOverlay};

    /* renamed from: A, reason: collision with root package name */
    public final RunnableC0578c f3296A;

    /* renamed from: B, reason: collision with root package name */
    public final RunnableC0578c f3297B;

    /* renamed from: C, reason: collision with root package name */
    public final C0042p f3298C;

    /* renamed from: c, reason: collision with root package name */
    public int f3299c;

    /* renamed from: d, reason: collision with root package name */
    public int f3300d;

    /* renamed from: e, reason: collision with root package name */
    public ContentFrameLayout f3301e;
    public ActionBarContainer f;

    /* renamed from: g, reason: collision with root package name */
    public InterfaceC0585e0 f3302g;

    /* renamed from: h, reason: collision with root package name */
    public Drawable f3303h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f3304i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3305j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f3306k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f3307l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f3308m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f3309o;

    /* renamed from: p, reason: collision with root package name */
    public final Rect f3310p;

    /* renamed from: q, reason: collision with root package name */
    public final Rect f3311q;

    /* renamed from: r, reason: collision with root package name */
    public final Rect f3312r;

    /* renamed from: s, reason: collision with root package name */
    public q0 f3313s;

    /* renamed from: t, reason: collision with root package name */
    public q0 f3314t;

    /* renamed from: u, reason: collision with root package name */
    public q0 f3315u;

    /* renamed from: v, reason: collision with root package name */
    public q0 f3316v;

    /* renamed from: w, reason: collision with root package name */
    public InterfaceC0581d f3317w;

    /* renamed from: x, reason: collision with root package name */
    public OverScroller f3318x;

    /* renamed from: y, reason: collision with root package name */
    public ViewPropertyAnimator f3319y;

    /* renamed from: z, reason: collision with root package name */
    public final q f3320z;

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f3300d = 0;
        this.f3310p = new Rect();
        this.f3311q = new Rect();
        this.f3312r = new Rect();
        new Rect();
        new Rect();
        new Rect();
        new Rect();
        q0 q0Var = q0.f1001b;
        this.f3313s = q0Var;
        this.f3314t = q0Var;
        this.f3315u = q0Var;
        this.f3316v = q0Var;
        this.f3320z = new q(5, this);
        this.f3296A = new RunnableC0578c(this, 0);
        this.f3297B = new RunnableC0578c(this, 1);
        i(context);
        this.f3298C = new C0042p();
    }

    public static boolean g(FrameLayout frameLayout, Rect rect, boolean z4) {
        boolean z5;
        C0584e c0584e = (C0584e) frameLayout.getLayoutParams();
        int i5 = ((ViewGroup.MarginLayoutParams) c0584e).leftMargin;
        int i6 = rect.left;
        if (i5 != i6) {
            ((ViewGroup.MarginLayoutParams) c0584e).leftMargin = i6;
            z5 = true;
        } else {
            z5 = false;
        }
        int i7 = ((ViewGroup.MarginLayoutParams) c0584e).topMargin;
        int i8 = rect.top;
        if (i7 != i8) {
            ((ViewGroup.MarginLayoutParams) c0584e).topMargin = i8;
            z5 = true;
        }
        int i9 = ((ViewGroup.MarginLayoutParams) c0584e).rightMargin;
        int i10 = rect.right;
        if (i9 != i10) {
            ((ViewGroup.MarginLayoutParams) c0584e).rightMargin = i10;
            z5 = true;
        }
        if (z4) {
            int i11 = ((ViewGroup.MarginLayoutParams) c0584e).bottomMargin;
            int i12 = rect.bottom;
            if (i11 != i12) {
                ((ViewGroup.MarginLayoutParams) c0584e).bottomMargin = i12;
                return true;
            }
        }
        return z5;
    }

    @Override // J.InterfaceC0040n
    public final void a(View view, View view2, int i5, int i6) {
        if (i6 == 0) {
            onNestedScrollAccepted(view, view2, i5);
        }
    }

    @Override // J.InterfaceC0040n
    public final void b(View view, int i5, int i6, int[] iArr, int i7) {
    }

    @Override // J.InterfaceC0040n
    public final void c(int i5, View view) {
        if (i5 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0584e;
    }

    @Override // J.InterfaceC0041o
    public final void d(View view, int i5, int i6, int i7, int i8, int i9, int[] iArr) {
        e(view, i5, i6, i7, i8, i9);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.f3303h == null || this.f3304i) {
            return;
        }
        if (this.f.getVisibility() == 0) {
            translationY = (int) (this.f.getTranslationY() + this.f.getBottom() + 0.5f);
        } else {
            translationY = 0;
        }
        this.f3303h.setBounds(0, translationY, getWidth(), this.f3303h.getIntrinsicHeight() + translationY);
        this.f3303h.draw(canvas);
    }

    @Override // J.InterfaceC0040n
    public final void e(View view, int i5, int i6, int i7, int i8, int i9) {
        if (i9 == 0) {
            onNestedScroll(view, i5, i6, i7, i8);
        }
    }

    @Override // J.InterfaceC0040n
    public final boolean f(View view, View view2, int i5, int i6) {
        return i6 == 0 && onStartNestedScroll(view, view2, i5);
    }

    @Override // android.view.View
    public final boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new C0584e(-1, -1);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0584e(getContext(), attributeSet);
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        C0042p c0042p = this.f3298C;
        return c0042p.f1000b | c0042p.f999a;
    }

    public CharSequence getTitle() {
        k();
        return ((I1) this.f3302g).f7694a.getTitle();
    }

    public final void h() {
        removeCallbacks(this.f3296A);
        removeCallbacks(this.f3297B);
        ViewPropertyAnimator viewPropertyAnimator = this.f3319y;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void i(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(f3295D);
        this.f3299c = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f3303h = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f3304i = context.getApplicationInfo().targetSdkVersion < 19;
        this.f3318x = new OverScroller(context);
    }

    public final void j(int i5) {
        k();
        if (i5 == 2) {
            ((I1) this.f3302g).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else if (i5 == 5) {
            ((I1) this.f3302g).getClass();
            Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
        } else {
            if (i5 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    public final void k() {
        InterfaceC0585e0 wrapper;
        if (this.f3301e == null) {
            this.f3301e = (ContentFrameLayout) findViewById(R.id.action_bar_activity_content);
            this.f = (ActionBarContainer) findViewById(R.id.action_bar_container);
            KeyEvent.Callback callbackFindViewById = findViewById(R.id.action_bar);
            if (callbackFindViewById instanceof InterfaceC0585e0) {
                wrapper = (InterfaceC0585e0) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof Toolbar)) {
                    throw new IllegalStateException("Can't make a decor toolbar out of ".concat(callbackFindViewById.getClass().getSimpleName()));
                }
                wrapper = ((Toolbar) callbackFindViewById).getWrapper();
            }
            this.f3302g = wrapper;
        }
    }

    public final void l(MenuC0508i menuC0508i, t tVar) {
        k();
        I1 i12 = (I1) this.f3302g;
        C0602k c0602k = i12.f7705m;
        Toolbar toolbar = i12.f7694a;
        if (c0602k == null) {
            i12.f7705m = new C0602k(toolbar.getContext());
        }
        C0602k c0602k2 = i12.f7705m;
        c0602k2.f7882g = tVar;
        if (menuC0508i == null && toolbar.f3536c == null) {
            return;
        }
        toolbar.f();
        MenuC0508i menuC0508i2 = toolbar.f3536c.f3331r;
        if (menuC0508i2 == menuC0508i) {
            return;
        }
        if (menuC0508i2 != null) {
            menuC0508i2.r(toolbar.f3526N);
            menuC0508i2.r(toolbar.f3527O);
        }
        if (toolbar.f3527O == null) {
            toolbar.f3527O = new D1(toolbar);
        }
        c0602k2.f7893s = true;
        if (menuC0508i != null) {
            menuC0508i.b(c0602k2, toolbar.f3547l);
            menuC0508i.b(toolbar.f3527O, toolbar.f3547l);
        } else {
            c0602k2.c(toolbar.f3547l, null);
            toolbar.f3527O.c(toolbar.f3547l, null);
            c0602k2.f();
            toolbar.f3527O.f();
        }
        toolbar.f3536c.setPopupTheme(toolbar.f3548m);
        toolbar.f3536c.setPresenter(c0602k2);
        toolbar.f3526N = c0602k2;
        toolbar.x();
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        k();
        q0 q0VarF = q0.f(windowInsets, this);
        boolean zG = g(this.f, new Rect(q0VarF.b(), q0VarF.d(), q0VarF.c(), q0VarF.a()), false);
        WeakHashMap weakHashMap = Q.f940a;
        Rect rect = this.f3310p;
        I.b(this, q0VarF, rect);
        int i5 = rect.left;
        int i6 = rect.top;
        int i7 = rect.right;
        int i8 = rect.bottom;
        o0 o0Var = q0VarF.f1002a;
        q0 q0VarI = o0Var.i(i5, i6, i7, i8);
        this.f3313s = q0VarI;
        boolean z4 = true;
        if (!this.f3314t.equals(q0VarI)) {
            this.f3314t = this.f3313s;
            zG = true;
        }
        Rect rect2 = this.f3311q;
        if (rect2.equals(rect)) {
            z4 = zG;
        } else {
            rect2.set(rect);
        }
        if (z4) {
            requestLayout();
        }
        return o0Var.a().f1002a.c().f1002a.b().e();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        i(getContext());
        WeakHashMap weakHashMap = Q.f940a;
        G.c(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                C0584e c0584e = (C0584e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i10 = ((ViewGroup.MarginLayoutParams) c0584e).leftMargin + paddingLeft;
                int i11 = ((ViewGroup.MarginLayoutParams) c0584e).topMargin + paddingTop;
                childAt.layout(i10, i11, measuredWidth + i10, measuredHeight + i11);
            }
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i5, int i6) {
        int measuredHeight;
        k();
        measureChildWithMargins(this.f, i5, 0, i6, 0);
        C0584e c0584e = (C0584e) this.f.getLayoutParams();
        int iMax = Math.max(0, this.f.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0584e).leftMargin + ((ViewGroup.MarginLayoutParams) c0584e).rightMargin);
        int iMax2 = Math.max(0, this.f.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0584e).topMargin + ((ViewGroup.MarginLayoutParams) c0584e).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f.getMeasuredState());
        WeakHashMap weakHashMap = Q.f940a;
        boolean z4 = (getWindowSystemUiVisibility() & 256) != 0;
        if (z4) {
            measuredHeight = this.f3299c;
            if (this.f3306k && this.f.getTabContainer() != null) {
                measuredHeight += this.f3299c;
            }
        } else {
            measuredHeight = this.f.getVisibility() != 8 ? this.f.getMeasuredHeight() : 0;
        }
        Rect rect = this.f3310p;
        Rect rect2 = this.f3312r;
        rect2.set(rect);
        q0 q0Var = this.f3313s;
        this.f3315u = q0Var;
        if (this.f3305j || z4) {
            B.c cVarB = B.c.b(q0Var.b(), this.f3315u.d() + measuredHeight, this.f3315u.c(), this.f3315u.a());
            h0 h0Var = new h0(this.f3315u);
            h0Var.e(cVarB);
            this.f3315u = h0Var.b();
        } else {
            rect2.top += measuredHeight;
            rect2.bottom = rect2.bottom;
            this.f3315u = q0Var.f1002a.i(0, measuredHeight, 0, 0);
        }
        g(this.f3301e, rect2, true);
        if (!this.f3316v.equals(this.f3315u)) {
            q0 q0Var2 = this.f3315u;
            this.f3316v = q0Var2;
            Q.b(this.f3301e, q0Var2);
        }
        measureChildWithMargins(this.f3301e, i5, 0, i6, 0);
        C0584e c0584e2 = (C0584e) this.f3301e.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f3301e.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) c0584e2).leftMargin + ((ViewGroup.MarginLayoutParams) c0584e2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f3301e.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) c0584e2).topMargin + ((ViewGroup.MarginLayoutParams) c0584e2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f3301e.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(getPaddingRight() + getPaddingLeft() + iMax3, getSuggestedMinimumWidth()), i5, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(getPaddingBottom() + getPaddingTop() + iMax4, getSuggestedMinimumHeight()), i6, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedFling(View view, float f, float f5, boolean z4) {
        if (!this.f3307l || !z4) {
            return false;
        }
        this.f3318x.fling(0, 0, 0, (int) f5, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        if (this.f3318x.getFinalY() > this.f.getHeight()) {
            h();
            this.f3297B.run();
        } else {
            h();
            this.f3296A.run();
        }
        this.f3308m = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onNestedPreFling(View view, float f, float f5) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedPreScroll(View view, int i5, int i6, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScroll(View view, int i5, int i6, int i7, int i8) {
        int i9 = this.n + i6;
        this.n = i9;
        setActionBarHideOffset(i9);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onNestedScrollAccepted(View view, View view2, int i5) {
        e.Q q2;
        l lVar;
        this.f3298C.f999a = i5;
        this.n = getActionBarHideOffset();
        h();
        InterfaceC0581d interfaceC0581d = this.f3317w;
        if (interfaceC0581d == null || (lVar = (q2 = (e.Q) interfaceC0581d).f6700s) == null) {
            return;
        }
        lVar.a();
        q2.f6700s = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean onStartNestedScroll(View view, View view2, int i5) {
        if ((i5 & 2) == 0 || this.f.getVisibility() != 0) {
            return false;
        }
        return this.f3307l;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void onStopNestedScroll(View view) {
        if (!this.f3307l || this.f3308m) {
            return;
        }
        if (this.n <= this.f.getHeight()) {
            h();
            postDelayed(this.f3296A, 600L);
        } else {
            h();
            postDelayed(this.f3297B, 600L);
        }
    }

    @Override // android.view.View
    public final void onWindowSystemUiVisibilityChanged(int i5) {
        super.onWindowSystemUiVisibilityChanged(i5);
        k();
        int i6 = this.f3309o ^ i5;
        this.f3309o = i5;
        boolean z4 = (i5 & 4) == 0;
        boolean z5 = (i5 & 256) != 0;
        InterfaceC0581d interfaceC0581d = this.f3317w;
        if (interfaceC0581d != null) {
            ((e.Q) interfaceC0581d).f6696o = !z5;
            if (z4 || !z5) {
                e.Q q2 = (e.Q) interfaceC0581d;
                if (q2.f6697p) {
                    q2.f6697p = false;
                    q2.u(true);
                }
            } else {
                e.Q q5 = (e.Q) interfaceC0581d;
                if (!q5.f6697p) {
                    q5.f6697p = true;
                    q5.u(true);
                }
            }
        }
        if ((i6 & 256) == 0 || this.f3317w == null) {
            return;
        }
        WeakHashMap weakHashMap = Q.f940a;
        G.c(this);
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i5) {
        super.onWindowVisibilityChanged(i5);
        this.f3300d = i5;
        InterfaceC0581d interfaceC0581d = this.f3317w;
        if (interfaceC0581d != null) {
            ((e.Q) interfaceC0581d).n = i5;
        }
    }

    public void setActionBarHideOffset(int i5) {
        h();
        this.f.setTranslationY(-Math.max(0, Math.min(i5, this.f.getHeight())));
    }

    public void setActionBarVisibilityCallback(InterfaceC0581d interfaceC0581d) {
        this.f3317w = interfaceC0581d;
        if (getWindowToken() != null) {
            ((e.Q) this.f3317w).n = this.f3300d;
            int i5 = this.f3309o;
            if (i5 != 0) {
                onWindowSystemUiVisibilityChanged(i5);
                WeakHashMap weakHashMap = Q.f940a;
                G.c(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z4) {
        this.f3306k = z4;
    }

    public void setHideOnContentScrollEnabled(boolean z4) {
        if (z4 != this.f3307l) {
            this.f3307l = z4;
            if (z4) {
                return;
            }
            h();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i5) {
        k();
        I1 i12 = (I1) this.f3302g;
        i12.f7697d = i5 != 0 ? AbstractC0420a.A(i12.f7694a.getContext(), i5) : null;
        i12.c();
    }

    public void setLogo(int i5) {
        k();
        I1 i12 = (I1) this.f3302g;
        i12.f7698e = i5 != 0 ? AbstractC0420a.A(i12.f7694a.getContext(), i5) : null;
        i12.c();
    }

    public void setOverlayMode(boolean z4) {
        this.f3305j = z4;
        this.f3304i = z4 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z4) {
    }

    public void setUiOptions(int i5) {
    }

    @Override // k.InterfaceC0582d0
    public void setWindowCallback(Window.Callback callback) {
        k();
        ((I1) this.f3302g).f7703k = callback;
    }

    @Override // k.InterfaceC0582d0
    public void setWindowTitle(CharSequence charSequence) {
        k();
        I1 i12 = (I1) this.f3302g;
        if (i12.f7699g) {
            return;
        }
        i12.f7700h = charSequence;
        if ((i12.f7695b & 8) != 0) {
            Toolbar toolbar = i12.f7694a;
            toolbar.setTitle(charSequence);
            if (i12.f7699g) {
                Q.i(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0584e(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        k();
        I1 i12 = (I1) this.f3302g;
        i12.f7697d = drawable;
        i12.c();
    }
}
