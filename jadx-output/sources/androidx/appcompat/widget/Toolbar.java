package androidx.appcompat.widget;

import J.C0036j;
import J.InterfaceC0032f;
import J.InterfaceC0038l;
import J.N;
import J.Q;
import J.r0;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.S;
import c.AbstractC0206a;
import com.wssyncmldm.R;
import f1.AbstractC0420a;
import i.j;
import j.C0510k;
import j.InterfaceC0506g;
import j.InterfaceC0519t;
import j.MenuC0508i;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import k.A1;
import k.B1;
import k.C0602k;
import k.C0630w;
import k.C0632x;
import k.C1;
import k.D1;
import k.E1;
import k.F0;
import k.F1;
import k.G1;
import k.I1;
import k.InterfaceC0585e0;
import k.J1;
import k.N1;
import k.RunnableC0603k0;
import k.ViewOnClickListenerC0575b;
import k.z1;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup implements InterfaceC0032f {

    /* renamed from: f0, reason: collision with root package name */
    public static final /* synthetic */ int f3513f0 = 0;

    /* renamed from: A, reason: collision with root package name */
    public CharSequence f3514A;

    /* renamed from: B, reason: collision with root package name */
    public ColorStateList f3515B;

    /* renamed from: C, reason: collision with root package name */
    public ColorStateList f3516C;

    /* renamed from: D, reason: collision with root package name */
    public boolean f3517D;
    public boolean E;

    /* renamed from: F, reason: collision with root package name */
    public final ArrayList f3518F;

    /* renamed from: G, reason: collision with root package name */
    public final ArrayList f3519G;

    /* renamed from: H, reason: collision with root package name */
    public final int[] f3520H;

    /* renamed from: I, reason: collision with root package name */
    public final C0036j f3521I;

    /* renamed from: J, reason: collision with root package name */
    public ArrayList f3522J;

    /* renamed from: K, reason: collision with root package name */
    public F1 f3523K;

    /* renamed from: L, reason: collision with root package name */
    public final B1 f3524L;

    /* renamed from: M, reason: collision with root package name */
    public I1 f3525M;

    /* renamed from: N, reason: collision with root package name */
    public C0602k f3526N;

    /* renamed from: O, reason: collision with root package name */
    public D1 f3527O;

    /* renamed from: Q, reason: collision with root package name */
    public InterfaceC0519t f3528Q;

    /* renamed from: R, reason: collision with root package name */
    public InterfaceC0506g f3529R;

    /* renamed from: T, reason: collision with root package name */
    public boolean f3530T;

    /* renamed from: U, reason: collision with root package name */
    public OnBackInvokedCallback f3531U;

    /* renamed from: V, reason: collision with root package name */
    public OnBackInvokedDispatcher f3532V;

    /* renamed from: W, reason: collision with root package name */
    public boolean f3533W;

    /* renamed from: a0, reason: collision with root package name */
    public final RunnableC0603k0 f3534a0;

    /* renamed from: b0, reason: collision with root package name */
    public final CharSequence f3535b0;

    /* renamed from: c, reason: collision with root package name */
    public ActionMenuView f3536c;

    /* renamed from: c0, reason: collision with root package name */
    public Drawable f3537c0;

    /* renamed from: d, reason: collision with root package name */
    public AppCompatTextView f3538d;

    /* renamed from: d0, reason: collision with root package name */
    public final int f3539d0;

    /* renamed from: e, reason: collision with root package name */
    public AppCompatTextView f3540e;

    /* renamed from: e0, reason: collision with root package name */
    public A1 f3541e0;
    public C0630w f;

    /* renamed from: g, reason: collision with root package name */
    public C0632x f3542g;

    /* renamed from: h, reason: collision with root package name */
    public final Drawable f3543h;

    /* renamed from: i, reason: collision with root package name */
    public CharSequence f3544i;

    /* renamed from: j, reason: collision with root package name */
    public C0630w f3545j;

    /* renamed from: k, reason: collision with root package name */
    public View f3546k;

    /* renamed from: l, reason: collision with root package name */
    public Context f3547l;

    /* renamed from: m, reason: collision with root package name */
    public int f3548m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f3549o;

    /* renamed from: p, reason: collision with root package name */
    public final int f3550p;

    /* renamed from: q, reason: collision with root package name */
    public int f3551q;

    /* renamed from: r, reason: collision with root package name */
    public int f3552r;

    /* renamed from: s, reason: collision with root package name */
    public int f3553s;

    /* renamed from: t, reason: collision with root package name */
    public int f3554t;

    /* renamed from: u, reason: collision with root package name */
    public int f3555u;

    /* renamed from: v, reason: collision with root package name */
    public F0 f3556v;

    /* renamed from: w, reason: collision with root package name */
    public int f3557w;

    /* renamed from: x, reason: collision with root package name */
    public int f3558x;

    /* renamed from: y, reason: collision with root package name */
    public final int f3559y;

    /* renamed from: z, reason: collision with root package name */
    public CharSequence f3560z;

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i5 = 0; i5 < menu.size(); i5++) {
            arrayList.add(menu.getItem(i5));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new j(getContext());
    }

    public static E1 h() {
        E1 e1 = new E1(-2, -2);
        e1.f7677b = 0;
        e1.f7676a = 8388627;
        return e1;
    }

    public static E1 i(ViewGroup.LayoutParams layoutParams) {
        boolean z4 = layoutParams instanceof E1;
        if (z4) {
            E1 e1 = (E1) layoutParams;
            E1 e12 = new E1(e1);
            e12.f7677b = 0;
            e12.f7677b = e1.f7677b;
            return e12;
        }
        if (z4) {
            E1 e13 = new E1((E1) layoutParams);
            e13.f7677b = 0;
            return e13;
        }
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            E1 e14 = new E1(layoutParams);
            e14.f7677b = 0;
            return e14;
        }
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        E1 e15 = new E1(marginLayoutParams);
        e15.f7677b = 0;
        ((ViewGroup.MarginLayoutParams) e15).leftMargin = marginLayoutParams.leftMargin;
        ((ViewGroup.MarginLayoutParams) e15).topMargin = marginLayoutParams.topMargin;
        ((ViewGroup.MarginLayoutParams) e15).rightMargin = marginLayoutParams.rightMargin;
        ((ViewGroup.MarginLayoutParams) e15).bottomMargin = marginLayoutParams.bottomMargin;
        return e15;
    }

    public static int l(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginEnd() + marginLayoutParams.getMarginStart();
    }

    public static int m(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final void a(ArrayList arrayList, int i5) {
        WeakHashMap weakHashMap = Q.f940a;
        boolean z4 = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int absoluteGravity = Gravity.getAbsoluteGravity(i5, getLayoutDirection());
        arrayList.clear();
        if (!z4) {
            for (int i6 = 0; i6 < childCount; i6++) {
                View childAt = getChildAt(i6);
                E1 e1 = (E1) childAt.getLayoutParams();
                if (e1.f7677b == 0 && v(childAt) && j(e1.f7676a) == absoluteGravity) {
                    arrayList.add(childAt);
                }
            }
            return;
        }
        for (int i7 = childCount - 1; i7 >= 0; i7--) {
            View childAt2 = getChildAt(i7);
            E1 e12 = (E1) childAt2.getLayoutParams();
            if (e12.f7677b == 0 && v(childAt2) && j(e12.f7676a) == absoluteGravity) {
                arrayList.add(childAt2);
            }
        }
    }

    @Override // J.InterfaceC0032f
    public final void addMenuProvider(InterfaceC0038l interfaceC0038l) {
        C0036j c0036j = this.f3521I;
        c0036j.f987b.add(interfaceC0038l);
        c0036j.f986a.run();
    }

    public final void b(View view, boolean z4) {
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            E1 e1H = layoutParams == null ? h() : !checkLayoutParams(layoutParams) ? i(layoutParams) : (E1) layoutParams;
            e1H.f7677b = 1;
            if (z4 && this.f3546k != null) {
                view.setLayoutParams(e1H);
                this.f3519G.add(view);
            } else if (view.getParent() == null) {
                addView(view, e1H);
            }
        }
    }

    public final void c() {
        if (this.f3545j == null) {
            C0630w c0630w = new C0630w(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            this.f3545j = c0630w;
            c0630w.setImageDrawable(this.f3543h);
            this.f3545j.setContentDescription(this.f3544i);
            E1 e1H = h();
            e1H.f7676a = (this.f3550p & 112) | 8388611;
            e1H.f7677b = 2;
            this.f3545j.setLayoutParams(e1H);
            this.f3545j.setOnClickListener(new ViewOnClickListenerC0575b(1, this));
            AbstractC0739a.p(o4.a.m(), this.f3545j);
            if (TextUtils.isEmpty(this.f3544i)) {
                return;
            }
            J1.a(this.f3545j, this.f3544i);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof E1);
    }

    public final void d() {
        if (this.f3556v == null) {
            F0 f02 = new F0();
            f02.f7678a = 0;
            f02.f7679b = 0;
            f02.f7680c = Integer.MIN_VALUE;
            f02.f7681d = Integer.MIN_VALUE;
            f02.f7682e = 0;
            f02.f = 0;
            f02.f7683g = false;
            f02.f7684h = false;
            this.f3556v = f02;
        }
    }

    @Override // android.view.View
    public final boolean dispatchGenericMotionEvent(MotionEvent motionEvent) {
        motionEvent.getAction();
        return super.dispatchGenericMotionEvent(motionEvent);
    }

    public final void e() {
        f();
        ActionMenuView actionMenuView = this.f3536c;
        if (actionMenuView.f3331r == null) {
            MenuC0508i menuC0508i = (MenuC0508i) actionMenuView.getMenu();
            if (this.f3527O == null) {
                this.f3527O = new D1(this);
            }
            this.f3536c.setExpandedActionViewsExclusive(true);
            menuC0508i.b(this.f3527O, this.f3547l);
            x();
        }
    }

    public final void f() {
        if (this.f3536c == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext(), null);
            this.f3536c = actionMenuView;
            actionMenuView.setPopupTheme(this.f3548m);
            this.f3536c.setOnMenuItemClickListener(this.f3524L);
            ActionMenuView actionMenuView2 = this.f3536c;
            InterfaceC0519t interfaceC0519t = this.f3528Q;
            B1 b12 = new B1(this);
            actionMenuView2.f3336w = interfaceC0519t;
            actionMenuView2.f3337x = b12;
            E1 e1H = h();
            e1H.f7676a = (this.f3550p & 112) | 8388613;
            this.f3536c.setLayoutParams(e1H);
            b(this.f3536c, false);
        }
    }

    public final void g() {
        if (this.f == null) {
            this.f = new C0630w(getContext(), null, R.attr.toolbarNavigationButtonStyle);
            E1 e1H = h();
            e1H.f7676a = (this.f3550p & 112) | 8388611;
            this.f.setLayoutParams(e1H);
            AbstractC0739a.p(o4.a.m(), this.f);
            CharSequence charSequence = this.f3535b0;
            if (TextUtils.isEmpty(charSequence)) {
                return;
            }
            J1.a(this.f, charSequence);
        }
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return h();
    }

    @Override // android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return i(layoutParams);
    }

    public CharSequence getCollapseContentDescription() {
        C0630w c0630w = this.f3545j;
        if (c0630w != null) {
            return c0630w.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        C0630w c0630w = this.f3545j;
        if (c0630w != null) {
            return c0630w.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        F0 f02 = this.f3556v;
        if (f02 != null) {
            return f02.f7683g ? f02.f7678a : f02.f7679b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i5 = this.f3558x;
        return i5 != Integer.MIN_VALUE ? i5 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        F0 f02 = this.f3556v;
        if (f02 != null) {
            return f02.f7678a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        F0 f02 = this.f3556v;
        if (f02 != null) {
            return f02.f7679b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        F0 f02 = this.f3556v;
        if (f02 != null) {
            return f02.f7683g ? f02.f7679b : f02.f7678a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i5 = this.f3557w;
        return i5 != Integer.MIN_VALUE ? i5 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        MenuC0508i menuC0508i;
        ActionMenuView actionMenuView = this.f3536c;
        return (actionMenuView == null || (menuC0508i = actionMenuView.f3331r) == null || !menuC0508i.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.f3558x, 0));
    }

    public int getCurrentContentInsetLeft() {
        WeakHashMap weakHashMap = Q.f940a;
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        WeakHashMap weakHashMap = Q.f940a;
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.f3557w, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        C0632x c0632x = this.f3542g;
        if (c0632x != null) {
            return c0632x.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        C0632x c0632x = this.f3542g;
        if (c0632x != null) {
            return c0632x.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        e();
        return this.f3536c.getMenu();
    }

    public View getNavButtonView() {
        return this.f;
    }

    public CharSequence getNavigationContentDescription() {
        C0630w c0630w = this.f;
        if (c0630w != null) {
            return c0630w.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        C0630w c0630w = this.f;
        if (c0630w != null) {
            return c0630w.getDrawable();
        }
        return null;
    }

    public C0602k getOuterActionMenuPresenter() {
        return this.f3526N;
    }

    public Drawable getOverflowIcon() {
        e();
        return this.f3536c.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.f3547l;
    }

    public int getPopupTheme() {
        return this.f3548m;
    }

    public CharSequence getSubtitle() {
        return this.f3514A;
    }

    public final TextView getSubtitleTextView() {
        return this.f3540e;
    }

    public CharSequence getTitle() {
        return this.f3560z;
    }

    public int getTitleMarginBottom() {
        return this.f3555u;
    }

    public int getTitleMarginEnd() {
        return this.f3553s;
    }

    public int getTitleMarginStart() {
        return this.f3552r;
    }

    public int getTitleMarginTop() {
        return this.f3554t;
    }

    public final TextView getTitleTextView() {
        return this.f3538d;
    }

    public InterfaceC0585e0 getWrapper() {
        if (this.f3525M == null) {
            this.f3525M = new I1(this, true);
        }
        return this.f3525M;
    }

    public final int j(int i5) {
        WeakHashMap weakHashMap = Q.f940a;
        int layoutDirection = getLayoutDirection();
        int absoluteGravity = Gravity.getAbsoluteGravity(i5, layoutDirection) & 7;
        return (absoluteGravity == 1 || absoluteGravity == 3 || absoluteGravity == 5) ? absoluteGravity : layoutDirection == 1 ? 5 : 3;
    }

    public final int k(int i5, View view) {
        E1 e1 = (E1) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i6 = i5 > 0 ? (measuredHeight - i5) / 2 : 0;
        int i7 = e1.f7676a & 112;
        if (i7 != 16 && i7 != 48 && i7 != 80) {
            i7 = this.f3559y & 112;
        }
        if (i7 == 48) {
            return getPaddingTop();
        }
        if (i7 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) e1).bottomMargin) - i6;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i8 = ((ViewGroup.MarginLayoutParams) e1).topMargin;
        if (iMax < i8) {
            iMax = i8;
        } else {
            int i9 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i10 = ((ViewGroup.MarginLayoutParams) e1).bottomMargin;
            if (i9 < i10) {
                iMax = Math.max(0, iMax - (i10 - i9));
            }
        }
        return paddingTop + iMax;
    }

    public void n(int i5) {
        getMenuInflater().inflate(i5, getMenu());
    }

    public final void o() {
        Iterator it = this.f3522J.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        MenuInflater menuInflater = getMenuInflater();
        C0036j c0036j = this.f3521I;
        Iterator it2 = c0036j.f987b.iterator();
        while (it2.hasNext()) {
            ((S) ((InterfaceC0038l) it2.next())).f3764a.j(menu, menuInflater);
        }
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.f3522J = currentMenuItems2;
        c0036j.b(menu);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() throws Resources.NotFoundException {
        super.onAttachedToWindow();
        x();
        int dimensionPixelSize = this.f3539d0;
        if (dimensionPixelSize == -1) {
            dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_top_padding);
        }
        setPadding(0, dimensionPixelSize, 0, 0);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(AbstractC0206a.f5169j);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(16, 0);
        typedArrayObtainStyledAttributes.recycle();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = dimensionPixelSize2 + dimensionPixelSize;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) throws Resources.NotFoundException {
        C0602k c0602k;
        C0602k c0602k2;
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(AbstractC0206a.f5169j);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(16, 0);
        if (this.f != null) {
            typedArrayObtainStyledAttributes.recycle();
            typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, AbstractC0206a.f5159C, R.attr.actionOverflowButtonStyle, 0);
            this.f.setMinimumHeight(typedArrayObtainStyledAttributes.getDimensionPixelSize(4, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        int dimensionPixelSize2 = this.f3539d0;
        if (dimensionPixelSize2 == -1) {
            dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_top_padding);
        }
        setPadding(0, dimensionPixelSize2, 0, 0);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = dimensionPixelSize + dimensionPixelSize2;
        setLayoutParams(layoutParams);
        TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(null, AbstractC0206a.f5158B, android.R.attr.toolbarStyle, 0);
        int dimensionPixelSize3 = typedArrayObtainStyledAttributes2.getDimensionPixelSize(14, -1);
        if (dimensionPixelSize3 >= -1) {
            this.f3551q = dimensionPixelSize3;
        }
        int dimensionPixelSize4 = typedArrayObtainStyledAttributes2.getDimensionPixelSize(1, -1);
        if (dimensionPixelSize4 >= -1) {
            setMinimumHeight(dimensionPixelSize4);
        }
        typedArrayObtainStyledAttributes2.recycle();
        ActionMenuView actionMenuView = this.f3536c;
        if (actionMenuView == null || (c0602k = actionMenuView.f3335v) == null || !c0602k.j() || (c0602k2 = this.f3536c.f3335v) == null) {
            return;
        }
        c0602k2.i();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.f3534a0);
        x();
        if (this.f3541e0 != null) {
            getViewTreeObserver().removeOnGlobalLayoutListener(this.f3541e0);
            this.f3541e0 = null;
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.E = false;
        }
        if (!this.E) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.E = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.E = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x02b4 A[LOOP:0: B:109:0x02b2->B:110:0x02b4, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02d1 A[LOOP:1: B:112:0x02cf->B:113:0x02d1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02ef A[LOOP:2: B:115:0x02ed->B:116:0x02ef, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x033e A[LOOP:3: B:124:0x033c->B:125:0x033e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0149  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0150  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0183  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01bb  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x023b  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int iR;
        int iS;
        boolean zV;
        boolean zV2;
        int i9;
        int measuredHeight;
        int i10;
        int i11;
        boolean z5;
        int i12;
        int i13;
        int i14;
        int paddingTop;
        int i15;
        int i16;
        int i17;
        int i18;
        int size;
        int iR2;
        int i19;
        int size2;
        int i20;
        int size3;
        int i21;
        int i22;
        int size4;
        int i23;
        WeakHashMap weakHashMap = Q.f940a;
        boolean z6 = getLayoutDirection() == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i24 = width - paddingRight;
        int[] iArr = this.f3520H;
        iArr[1] = 0;
        iArr[0] = 0;
        int minimumHeight = getMinimumHeight();
        int iMax = minimumHeight >= 0 ? Math.max(minimumHeight, i8 - i6) : 0;
        if (v(this.f)) {
            if (this.f.getLayoutDirection() != this.f3537c0.getLayoutDirection()) {
                this.f3537c0.setLayoutDirection(this.f.getLayoutDirection());
            }
            if (z6) {
                iS = s(this.f, i24, iMax, iArr);
                iR = paddingLeft;
                if (v(this.f3545j)) {
                    if (z6) {
                        iS = s(this.f3545j, iS, iMax, iArr);
                    } else {
                        iR = r(this.f3545j, iR, iMax, iArr);
                    }
                }
                if (v(this.f3536c)) {
                    if (z6) {
                        iR = r(this.f3536c, iR, iMax, iArr);
                    } else {
                        iS = s(this.f3536c, iS, iMax, iArr);
                    }
                }
                int currentContentInsetLeft = getCurrentContentInsetLeft();
                int currentContentInsetRight = getCurrentContentInsetRight();
                iArr[0] = Math.max(0, currentContentInsetLeft - iR);
                iArr[1] = Math.max(0, currentContentInsetRight - (i24 - iS));
                int iMax2 = Math.max(iR, currentContentInsetLeft);
                int iMin = Math.min(iS, i24 - currentContentInsetRight);
                if (v(this.f3546k)) {
                    if (z6) {
                        iMin = s(this.f3546k, iMin, iMax, iArr);
                    } else {
                        iMax2 = r(this.f3546k, iMax2, iMax, iArr);
                    }
                }
                if (v(this.f3542g)) {
                    if (z6) {
                        iMin = s(this.f3542g, iMin, iMax, iArr);
                    } else {
                        iMax2 = r(this.f3542g, iMax2, iMax, iArr);
                    }
                }
                zV = v(this.f3538d);
                zV2 = v(this.f3540e);
                if (zV) {
                    i9 = paddingRight;
                    measuredHeight = 0;
                } else {
                    E1 e1 = (E1) this.f3538d.getLayoutParams();
                    i9 = paddingRight;
                    measuredHeight = ((ViewGroup.MarginLayoutParams) e1).bottomMargin + this.f3538d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) e1).topMargin;
                }
                if (zV2) {
                    i10 = width;
                } else {
                    E1 e12 = (E1) this.f3540e.getLayoutParams();
                    i10 = width;
                    measuredHeight += this.f3540e.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) e12).topMargin + ((ViewGroup.MarginLayoutParams) e12).bottomMargin;
                }
                if (!zV || zV2) {
                    AppCompatTextView appCompatTextView = !zV ? this.f3538d : this.f3540e;
                    AppCompatTextView appCompatTextView2 = !zV2 ? this.f3540e : this.f3538d;
                    E1 e13 = (E1) appCompatTextView.getLayoutParams();
                    E1 e14 = (E1) appCompatTextView2.getLayoutParams();
                    if ((zV || this.f3538d.getMeasuredWidth() <= 0) && (!zV2 || this.f3540e.getMeasuredWidth() <= 0)) {
                        i11 = paddingLeft;
                        z5 = false;
                    } else {
                        i11 = paddingLeft;
                        z5 = true;
                    }
                    i12 = this.f3559y & 112;
                    i13 = iMax;
                    if (i12 == 48) {
                        i14 = iMax2;
                        paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) e13).topMargin + this.f3554t;
                    } else if (i12 != 80) {
                        int iMax3 = (((height - paddingTop2) - paddingBottom) - measuredHeight) / 2;
                        i14 = iMax2;
                        int i25 = ((ViewGroup.MarginLayoutParams) e13).topMargin + this.f3554t;
                        if (iMax3 < i25) {
                            iMax3 = i25;
                        } else {
                            int i26 = (((height - paddingBottom) - measuredHeight) - iMax3) - paddingTop2;
                            int i27 = ((ViewGroup.MarginLayoutParams) e13).bottomMargin;
                            int i28 = this.f3555u;
                            if (i26 < i27 + i28) {
                                iMax3 = Math.max(0, iMax3 - ((((ViewGroup.MarginLayoutParams) e14).bottomMargin + i28) - i26));
                            }
                        }
                        paddingTop = paddingTop2 + iMax3;
                    } else {
                        i14 = iMax2;
                        paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) e14).bottomMargin) - this.f3555u) - measuredHeight;
                    }
                    if (z6) {
                        int i29 = (z5 ? this.f3552r : 0) - iArr[1];
                        iMin -= Math.max(0, i29);
                        iArr[1] = Math.max(0, -i29);
                        if (zV) {
                            E1 e15 = (E1) this.f3538d.getLayoutParams();
                            int measuredWidth = iMin - this.f3538d.getMeasuredWidth();
                            int measuredHeight2 = this.f3538d.getMeasuredHeight() + paddingTop;
                            this.f3538d.layout(measuredWidth, paddingTop, iMin, measuredHeight2);
                            i17 = measuredWidth - this.f3553s;
                            paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) e15).bottomMargin;
                        } else {
                            i17 = iMin;
                        }
                        if (zV2) {
                            int i30 = paddingTop + ((ViewGroup.MarginLayoutParams) ((E1) this.f3540e.getLayoutParams())).topMargin;
                            this.f3540e.layout(iMin - this.f3540e.getMeasuredWidth(), i30, iMin, this.f3540e.getMeasuredHeight() + i30);
                            i18 = iMin - this.f3553s;
                        } else {
                            i18 = iMin;
                        }
                        if (z5) {
                            iMin = Math.min(i17, i18);
                        }
                        iMax2 = i14;
                    } else {
                        int i31 = (z5 ? this.f3552r : 0) - iArr[0];
                        int iMax4 = Math.max(0, i31) + i14;
                        iArr[0] = Math.max(0, -i31);
                        if (zV) {
                            E1 e16 = (E1) this.f3538d.getLayoutParams();
                            int measuredWidth2 = this.f3538d.getMeasuredWidth() + iMax4;
                            int measuredHeight3 = this.f3538d.getMeasuredHeight() + paddingTop;
                            this.f3538d.layout(iMax4, paddingTop, measuredWidth2, measuredHeight3);
                            i15 = measuredWidth2 + this.f3553s;
                            paddingTop = measuredHeight3 + ((ViewGroup.MarginLayoutParams) e16).bottomMargin;
                        } else {
                            i15 = iMax4;
                        }
                        if (zV2) {
                            int i32 = paddingTop + ((ViewGroup.MarginLayoutParams) ((E1) this.f3540e.getLayoutParams())).topMargin;
                            int measuredWidth3 = this.f3540e.getMeasuredWidth() + iMax4;
                            this.f3540e.layout(iMax4, i32, measuredWidth3, this.f3540e.getMeasuredHeight() + i32);
                            i16 = measuredWidth3 + this.f3553s;
                        } else {
                            i16 = iMax4;
                        }
                        iMax2 = z5 ? Math.max(i15, i16) : iMax4;
                    }
                } else {
                    i11 = paddingLeft;
                    i13 = iMax;
                }
                ArrayList arrayList = this.f3518F;
                a(arrayList, 3);
                size = arrayList.size();
                iR2 = iMax2;
                for (i19 = 0; i19 < size; i19++) {
                    iR2 = r((View) arrayList.get(i19), iR2, i13, iArr);
                }
                int i33 = i13;
                a(arrayList, 5);
                size2 = arrayList.size();
                for (i20 = 0; i20 < size2; i20++) {
                    iMin = s((View) arrayList.get(i20), iMin, i33, iArr);
                }
                a(arrayList, 1);
                int i34 = iArr[0];
                int i35 = iArr[1];
                size3 = arrayList.size();
                int i36 = i35;
                int i37 = i34;
                i21 = 0;
                int measuredWidth4 = 0;
                while (i21 < size3) {
                    View view = (View) arrayList.get(i21);
                    E1 e17 = (E1) view.getLayoutParams();
                    int i38 = ((ViewGroup.MarginLayoutParams) e17).leftMargin - i37;
                    int i39 = ((ViewGroup.MarginLayoutParams) e17).rightMargin - i36;
                    int iMax5 = Math.max(0, i38);
                    int iMax6 = Math.max(0, i39);
                    int iMax7 = Math.max(0, -i38);
                    int iMax8 = Math.max(0, -i39);
                    measuredWidth4 += view.getMeasuredWidth() + iMax5 + iMax6;
                    i21++;
                    i36 = iMax8;
                    i37 = iMax7;
                }
                i22 = ((((i10 - i11) - i9) / 2) + i11) - (measuredWidth4 / 2);
                int i40 = measuredWidth4 + i22;
                if (i22 >= iR2) {
                    iR2 = i40 > iMin ? i22 - (i40 - iMin) : i22;
                }
                size4 = arrayList.size();
                for (i23 = 0; i23 < size4; i23++) {
                    iR2 = r((View) arrayList.get(i23), iR2, i33, iArr);
                }
                arrayList.clear();
            }
            iR = r(this.f, paddingLeft, iMax, iArr);
        } else {
            iR = paddingLeft;
        }
        iS = i24;
        if (v(this.f3545j)) {
        }
        if (v(this.f3536c)) {
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - iR);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i24 - iS));
        int iMax22 = Math.max(iR, currentContentInsetLeft2);
        int iMin2 = Math.min(iS, i24 - currentContentInsetRight2);
        if (v(this.f3546k)) {
        }
        if (v(this.f3542g)) {
        }
        zV = v(this.f3538d);
        zV2 = v(this.f3540e);
        if (zV) {
        }
        if (zV2) {
        }
        if (zV) {
            if (!zV) {
            }
            if (!zV2) {
            }
            E1 e132 = (E1) appCompatTextView.getLayoutParams();
            E1 e142 = (E1) appCompatTextView2.getLayoutParams();
            if (zV) {
                i11 = paddingLeft;
                z5 = false;
                i12 = this.f3559y & 112;
                i13 = iMax;
                if (i12 == 48) {
                }
                if (z6) {
                }
            } else {
                i11 = paddingLeft;
                z5 = false;
                i12 = this.f3559y & 112;
                i13 = iMax;
                if (i12 == 48) {
                }
                if (z6) {
                }
            }
        }
        ArrayList arrayList2 = this.f3518F;
        a(arrayList2, 3);
        size = arrayList2.size();
        iR2 = iMax22;
        while (i19 < size) {
        }
        int i332 = i13;
        a(arrayList2, 5);
        size2 = arrayList2.size();
        while (i20 < size2) {
        }
        a(arrayList2, 1);
        int i342 = iArr[0];
        int i352 = iArr[1];
        size3 = arrayList2.size();
        int i362 = i352;
        int i372 = i342;
        i21 = 0;
        int measuredWidth42 = 0;
        while (i21 < size3) {
        }
        i22 = ((((i10 - i11) - i9) / 2) + i11) - (measuredWidth42 / 2);
        int i402 = measuredWidth42 + i22;
        if (i22 >= iR2) {
        }
        size4 = arrayList2.size();
        while (i23 < size4) {
        }
        arrayList2.clear();
    }

    @Override // android.view.View
    public final void onMeasure(int i5, int i6) throws Resources.NotFoundException {
        int iL;
        int iMax;
        int iCombineMeasuredStates;
        int iL2;
        int iM;
        int iCombineMeasuredStates2;
        int iMax2;
        boolean zA = N1.a(this);
        int i7 = !zA ? 1 : 0;
        int i8 = 0;
        if (v(this.f)) {
            u(this.f, i5, 0, i6, this.f3551q);
            iL = l(this.f) + this.f.getMeasuredWidth();
            int iMax3 = Math.max(0, m(this.f) + this.f.getMeasuredHeight());
            int iCombineMeasuredStates3 = View.combineMeasuredStates(0, this.f.getMeasuredState());
            Drawable drawable = this.f.getDrawable();
            Drawable background = this.f.getBackground();
            if (drawable != null && background != null) {
                int paddingLeft = (this.f.getPaddingLeft() - this.f.getPaddingRight()) / 2;
                C.a.f(background, paddingLeft, 0, paddingLeft + iL, iMax3);
            }
            iMax = iMax3;
            iCombineMeasuredStates = iCombineMeasuredStates3;
        } else {
            iL = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (v(this.f3545j)) {
            u(this.f3545j, i5, 0, i6, this.f3551q);
            iL = l(this.f3545j) + this.f3545j.getMeasuredWidth();
            iMax = Math.max(iMax, m(this.f3545j) + this.f3545j.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f3545j.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax4 = Math.max(currentContentInsetStart, iL);
        int iMax5 = Math.max(0, currentContentInsetStart - iL);
        int[] iArr = this.f3520H;
        iArr[zA ? 1 : 0] = iMax5;
        if (v(this.f3536c)) {
            u(this.f3536c, i5, iMax4, i6, this.f3551q);
            iL2 = l(this.f3536c) + this.f3536c.getMeasuredWidth();
            iMax = Math.max(iMax, m(this.f3536c) + this.f3536c.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f3536c.getMeasuredState());
        } else {
            iL2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax6 = iMax4 + Math.max(currentContentInsetEnd, iL2);
        iArr[i7] = Math.max(0, currentContentInsetEnd - iL2);
        if (v(this.f3546k)) {
            iMax6 += t(this.f3546k, i5, iMax6, i6, 0, iArr);
            iMax = Math.max(iMax, m(this.f3546k) + this.f3546k.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f3546k.getMeasuredState());
        }
        if (v(this.f3542g)) {
            iMax6 += t(this.f3542g, i5, iMax6, i6, 0, iArr);
            iMax = Math.max(iMax, m(this.f3542g) + this.f3542g.getMeasuredHeight());
            iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, this.f3542g.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i9 = 0; i9 < childCount; i9++) {
            View childAt = getChildAt(i9);
            if (((E1) childAt.getLayoutParams()).f7677b == 0 && v(childAt)) {
                iMax6 += t(childAt, i5, iMax6, i6, 0, iArr);
                iMax = Math.max(iMax, m(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i10 = this.f3554t + this.f3555u;
        int i11 = this.f3552r + this.f3553s;
        if (v(this.f3538d)) {
            Context context = getContext();
            int i12 = this.n;
            int[] iArr2 = AbstractC0206a.f5157A;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(i12, iArr2);
            TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(0);
            float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.sesl_toolbar_title_text_size);
            if (!TextUtils.isEmpty(this.f3514A)) {
                dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.sesl_toolbar_title_text_size_with_subtitle);
            }
            if (typedValuePeekValue != null && TextUtils.isEmpty(this.f3514A)) {
                dimensionPixelSize = TypedValue.complexToFloat(typedValuePeekValue.data);
            }
            typedArrayObtainStyledAttributes.recycle();
            TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(this.f3549o, iArr2);
            TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes2.peekValue(0);
            typedArrayObtainStyledAttributes2.recycle();
            float dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.sesl_toolbar_subtitle_text_size);
            if (typedValuePeekValue2 != null) {
                dimensionPixelSize2 = TypedValue.complexToFloat(typedValuePeekValue2.data);
            }
            float f = getContext().getResources().getConfiguration().fontScale;
            if (f > 1.2f) {
                f = 1.2f;
            }
            if (dimensionPixelSize == -1.0f || !TextUtils.isEmpty(this.f3514A)) {
                this.f3538d.setTextSize(0, dimensionPixelSize * f);
                this.f3540e.setTextSize(1, dimensionPixelSize2 * f);
            } else {
                this.f3538d.setTextSize(1, dimensionPixelSize * f);
            }
            t(this.f3538d, i5, iMax6 + i11, i6, i10, iArr);
            int iL3 = l(this.f3538d) + this.f3538d.getMeasuredWidth();
            iM = m(this.f3538d) + this.f3538d.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f3538d.getMeasuredState());
            iMax2 = iL3;
        } else {
            iM = 0;
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
        }
        if (v(this.f3540e)) {
            iMax2 = Math.max(iMax2, t(this.f3540e, i5, iMax6 + i11, i6, iM + i10, iArr));
            iM += m(this.f3540e) + this.f3540e.getMeasuredHeight();
            iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates2, this.f3540e.getMeasuredState());
        }
        int iMax7 = Math.max(iMax, iM);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax7;
        int iResolveSizeAndState = View.resolveSizeAndState(Math.max(paddingRight + iMax6 + iMax2, getSuggestedMinimumWidth()), i5, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = View.resolveSizeAndState(Math.max(paddingBottom, getSuggestedMinimumHeight()), i6, iCombineMeasuredStates2 << 16);
        if (!this.f3530T) {
            i8 = iResolveSizeAndState2;
            break;
        }
        int childCount2 = getChildCount();
        for (int i13 = 0; i13 < childCount2; i13++) {
            View childAt2 = getChildAt(i13);
            if (v(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                i8 = iResolveSizeAndState2;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, i8);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem menuItemFindItem;
        if (!(parcelable instanceof G1)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        G1 g12 = (G1) parcelable;
        super.onRestoreInstanceState(g12.f2270c);
        ActionMenuView actionMenuView = this.f3536c;
        MenuC0508i menuC0508i = actionMenuView != null ? actionMenuView.f3331r : null;
        int i5 = g12.f7685e;
        if (i5 != 0 && this.f3527O != null && menuC0508i != null && (menuItemFindItem = menuC0508i.findItem(i5)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (g12.f) {
            RunnableC0603k0 runnableC0603k0 = this.f3534a0;
            removeCallbacks(runnableC0603k0);
            post(runnableC0603k0);
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i5) {
        super.onRtlPropertiesChanged(i5);
        d();
        F0 f02 = this.f3556v;
        boolean z4 = i5 == 1;
        if (z4 == f02.f7683g) {
            return;
        }
        f02.f7683g = z4;
        if (!f02.f7684h) {
            f02.f7678a = f02.f7682e;
            f02.f7679b = f02.f;
            return;
        }
        if (z4) {
            int i6 = f02.f7681d;
            if (i6 == Integer.MIN_VALUE) {
                i6 = f02.f7682e;
            }
            f02.f7678a = i6;
            int i7 = f02.f7680c;
            if (i7 == Integer.MIN_VALUE) {
                i7 = f02.f;
            }
            f02.f7679b = i7;
            return;
        }
        int i8 = f02.f7680c;
        if (i8 == Integer.MIN_VALUE) {
            i8 = f02.f7682e;
        }
        f02.f7678a = i8;
        int i9 = f02.f7681d;
        if (i9 == Integer.MIN_VALUE) {
            i9 = f02.f;
        }
        f02.f7679b = i9;
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        C0510k c0510k;
        G1 g12 = new G1(super.onSaveInstanceState());
        D1 d12 = this.f3527O;
        if (d12 != null && (c0510k = d12.f7672d) != null) {
            g12.f7685e = c0510k.f7257a;
        }
        g12.f = q();
        return g12;
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f3517D = false;
        }
        if (!this.f3517D) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f3517D = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f3517D = false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.view.ViewTreeObserver$OnGlobalLayoutListener, k.A1] */
    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i5) {
        super.onWindowVisibilityChanged(i5);
        if (i5 != 0) {
            if (this.f3541e0 != null) {
                getViewTreeObserver().removeOnGlobalLayoutListener(this.f3541e0);
                this.f3541e0 = null;
                return;
            }
            return;
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver == 0 || this.f3541e0 != null) {
            return;
        }
        ?? r0 = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: k.A1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public final void onGlobalLayout() {
                int i6 = Toolbar.f3513f0;
                Toolbar toolbar = this.f7658c;
                toolbar.getClass();
                toolbar.post(new A.o(toolbar, 16, toolbar));
            }
        };
        this.f3541e0 = r0;
        viewTreeObserver.addOnGlobalLayoutListener(r0);
    }

    public final boolean p(View view) {
        return view.getParent() == this || this.f3519G.contains(view);
    }

    public final boolean q() {
        C0602k c0602k;
        ActionMenuView actionMenuView = this.f3536c;
        return (actionMenuView == null || (c0602k = actionMenuView.f3335v) == null || !c0602k.j()) ? false : true;
    }

    public final int r(View view, int i5, int i6, int[] iArr) {
        E1 e1 = (E1) view.getLayoutParams();
        int i7 = ((ViewGroup.MarginLayoutParams) e1).leftMargin - iArr[0];
        int iMax = Math.max(0, i7) + i5;
        iArr[0] = Math.max(0, -i7);
        int iK = k(i6, view);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iK, iMax + measuredWidth, view.getMeasuredHeight() + iK);
        return measuredWidth + ((ViewGroup.MarginLayoutParams) e1).rightMargin + iMax;
    }

    @Override // J.InterfaceC0032f
    public final void removeMenuProvider(InterfaceC0038l interfaceC0038l) {
        this.f3521I.c(interfaceC0038l);
    }

    public final int s(View view, int i5, int i6, int[] iArr) {
        E1 e1 = (E1) view.getLayoutParams();
        int i7 = ((ViewGroup.MarginLayoutParams) e1).rightMargin - iArr[1];
        int iMax = i5 - Math.max(0, i7);
        iArr[1] = Math.max(0, -i7);
        int iK = k(i6, view);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iK, iMax, view.getMeasuredHeight() + iK);
        return iMax - (measuredWidth + ((ViewGroup.MarginLayoutParams) e1).leftMargin);
    }

    public void setBackInvokedCallbackEnabled(boolean z4) {
        if (this.f3533W != z4) {
            this.f3533W = z4;
            x();
        }
    }

    public void setCollapseContentDescription(int i5) {
        setCollapseContentDescription(i5 != 0 ? getContext().getText(i5) : null);
    }

    public void setCollapseIcon(int i5) {
        setCollapseIcon(AbstractC0420a.A(getContext(), i5));
    }

    public void setCollapsible(boolean z4) {
        this.f3530T = z4;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i5) {
        if (i5 < 0) {
            i5 = Integer.MIN_VALUE;
        }
        if (i5 != this.f3558x) {
            this.f3558x = i5;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i5) {
        if (i5 < 0) {
            i5 = Integer.MIN_VALUE;
        }
        if (i5 != this.f3557w) {
            this.f3557w = i5;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i5) {
        setLogo(AbstractC0420a.A(getContext(), i5));
    }

    public void setLogoDescription(int i5) {
        setLogoDescription(getContext().getText(i5));
    }

    public void setNavigationContentDescription(int i5) {
        setNavigationContentDescription(i5 != 0 ? getContext().getText(i5) : null);
    }

    public void setNavigationIcon(int i5) {
        setNavigationIcon(AbstractC0420a.A(getContext(), i5));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        g();
        this.f.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(F1 f12) {
        this.f3523K = f12;
    }

    public void setOverflowIcon(Drawable drawable) {
        e();
        this.f3536c.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i5) {
        if (this.f3548m != i5) {
            this.f3548m = i5;
            if (i5 == 0) {
                this.f3547l = getContext();
            } else {
                this.f3547l = new ContextThemeWrapper(getContext(), i5);
            }
        }
    }

    public void setSubtitle(int i5) {
        setSubtitle(getContext().getText(i5));
    }

    public void setSubtitleTextColor(int i5) {
        setSubtitleTextColor(ColorStateList.valueOf(i5));
    }

    public void setTitle(int i5) {
        setTitle(getContext().getText(i5));
    }

    public void setTitleAccessibilityEnabled(boolean z4) {
        if (z4) {
            AppCompatTextView appCompatTextView = this.f3538d;
            if (appCompatTextView != null) {
                appCompatTextView.setImportantForAccessibility(1);
            }
            AppCompatTextView appCompatTextView2 = this.f3540e;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setImportantForAccessibility(1);
                return;
            }
            return;
        }
        AppCompatTextView appCompatTextView3 = this.f3538d;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setImportantForAccessibility(2);
        }
        AppCompatTextView appCompatTextView4 = this.f3540e;
        if (appCompatTextView4 != null) {
            appCompatTextView4.setImportantForAccessibility(2);
        }
    }

    public void setTitleMarginBottom(int i5) {
        this.f3555u = i5;
        requestLayout();
    }

    public void setTitleMarginEnd(int i5) {
        this.f3553s = i5;
        requestLayout();
    }

    public void setTitleMarginStart(int i5) {
        this.f3552r = i5;
        requestLayout();
    }

    public void setTitleMarginTop(int i5) {
        this.f3554t = i5;
        requestLayout();
    }

    public void setTitleTextColor(int i5) {
        setTitleTextColor(ColorStateList.valueOf(i5));
    }

    public final int t(View view, int i5, int i6, int i7, int i8, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i9 = marginLayoutParams.leftMargin - iArr[0];
        int i10 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = Math.max(0, i10) + Math.max(0, i9);
        iArr[0] = Math.max(0, -i9);
        iArr[1] = Math.max(0, -i10);
        view.measure(ViewGroup.getChildMeasureSpec(i5, getPaddingRight() + getPaddingLeft() + iMax + i6, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i7, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i8, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public final void u(View view, int i5, int i6, int i7, int i8) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i5, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i6, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i7, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i8 >= 0) {
            if (mode != 0) {
                i8 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i8);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i8, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final boolean v(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public final boolean w() {
        C0602k c0602k;
        ActionMenuView actionMenuView = this.f3536c;
        return (actionMenuView == null || (c0602k = actionMenuView.f3335v) == null || !c0602k.l()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x001d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void x() {
        boolean z4;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        int i5 = 0;
        OnBackInvokedDispatcher onBackInvokedDispatcherA = C1.a(this);
        D1 d12 = this.f3527O;
        if (d12 == null || d12.f7672d == null || onBackInvokedDispatcherA == null) {
            z4 = false;
        } else {
            WeakHashMap weakHashMap = Q.f940a;
            if (isAttachedToWindow() && this.f3533W) {
                z4 = true;
            }
        }
        if (z4 && this.f3532V == null) {
            if (this.f3531U == null) {
                this.f3531U = C1.b(new z1(this, i5));
            }
            C1.c(onBackInvokedDispatcherA, this.f3531U);
            this.f3532V = onBackInvokedDispatcherA;
            return;
        }
        if (z4 || (onBackInvokedDispatcher = this.f3532V) == null) {
            return;
        }
        C1.d(onBackInvokedDispatcher, this.f3531U);
        this.f3532V = null;
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i5) {
        super(context, attributeSet, R.attr.toolbarStyle);
        this.f3559y = 8388627;
        this.f3518F = new ArrayList();
        this.f3519G = new ArrayList();
        this.f3520H = new int[2];
        this.f3521I = new C0036j(new z1(this, 1));
        this.f3522J = new ArrayList();
        this.f3524L = new B1(this);
        this.f3534a0 = new RunnableC0603k0(2, this);
        this.f3539d0 = -1;
        Context context2 = getContext();
        int[] iArr = AbstractC0206a.f5158B;
        r0 r0VarM = r0.m(context2, attributeSet, iArr, R.attr.toolbarStyle, 0);
        WeakHashMap weakHashMap = Q.f940a;
        N.d(this, context, iArr, attributeSet, (TypedArray) r0VarM.f1007d, R.attr.toolbarStyle, 0);
        TypedArray typedArray = (TypedArray) r0VarM.f1007d;
        this.n = typedArray.getResourceId(29, 0);
        this.f3549o = typedArray.getResourceId(20, 0);
        this.f3559y = typedArray.getInteger(0, 8388627);
        this.f3550p = typedArray.getInteger(3, 48);
        Drawable drawableG = r0VarM.g(2);
        this.f3535b0 = typedArray.getText(31);
        setBackground(drawableG);
        int dimensionPixelOffset = typedArray.getDimensionPixelOffset(23, 0);
        this.f3555u = dimensionPixelOffset;
        this.f3554t = dimensionPixelOffset;
        this.f3553s = dimensionPixelOffset;
        this.f3552r = dimensionPixelOffset;
        int dimensionPixelOffset2 = typedArray.getDimensionPixelOffset(26, -1);
        if (dimensionPixelOffset2 >= 0) {
            this.f3552r = dimensionPixelOffset2;
        }
        int dimensionPixelOffset3 = typedArray.getDimensionPixelOffset(25, -1);
        if (dimensionPixelOffset3 >= 0) {
            this.f3553s = dimensionPixelOffset3;
        }
        int dimensionPixelOffset4 = typedArray.getDimensionPixelOffset(27, -1);
        if (dimensionPixelOffset4 >= 0) {
            this.f3554t = dimensionPixelOffset4;
        }
        int dimensionPixelOffset5 = typedArray.getDimensionPixelOffset(24, -1);
        if (dimensionPixelOffset5 >= 0) {
            this.f3555u = dimensionPixelOffset5;
        }
        this.f3551q = typedArray.getDimensionPixelSize(14, -1);
        int dimensionPixelOffset6 = typedArray.getDimensionPixelOffset(10, Integer.MIN_VALUE);
        int dimensionPixelOffset7 = typedArray.getDimensionPixelOffset(6, Integer.MIN_VALUE);
        int dimensionPixelSize = typedArray.getDimensionPixelSize(8, 0);
        int dimensionPixelSize2 = typedArray.getDimensionPixelSize(9, 0);
        d();
        F0 f02 = this.f3556v;
        f02.f7684h = false;
        if (dimensionPixelSize != Integer.MIN_VALUE) {
            f02.f7682e = dimensionPixelSize;
            f02.f7678a = dimensionPixelSize;
        }
        if (dimensionPixelSize2 != Integer.MIN_VALUE) {
            f02.f = dimensionPixelSize2;
            f02.f7679b = dimensionPixelSize2;
        }
        if (dimensionPixelOffset6 != Integer.MIN_VALUE || dimensionPixelOffset7 != Integer.MIN_VALUE) {
            f02.a(dimensionPixelOffset6, dimensionPixelOffset7);
        }
        this.f3557w = typedArray.getDimensionPixelOffset(11, Integer.MIN_VALUE);
        this.f3558x = typedArray.getDimensionPixelOffset(7, Integer.MIN_VALUE);
        this.f3543h = r0VarM.g(5);
        this.f3544i = typedArray.getText(4);
        CharSequence text = typedArray.getText(22);
        if (!TextUtils.isEmpty(text)) {
            setTitle(text);
        }
        CharSequence text2 = typedArray.getText(19);
        if (!TextUtils.isEmpty(text2)) {
            setSubtitle(text2);
        }
        this.f3547l = getContext();
        setPopupTheme(typedArray.getResourceId(18, 0));
        Drawable drawableG2 = r0VarM.g(17);
        if (drawableG2 != null) {
            setNavigationIcon(drawableG2);
        }
        CharSequence text3 = typedArray.getText(16);
        if (!TextUtils.isEmpty(text3)) {
            setNavigationContentDescription(text3);
        }
        Drawable drawableG3 = r0VarM.g(12);
        if (drawableG3 != null) {
            setLogo(drawableG3);
        }
        CharSequence text4 = typedArray.getText(13);
        if (!TextUtils.isEmpty(text4)) {
            setLogoDescription(text4);
        }
        if (typedArray.hasValue(30)) {
            setTitleTextColor(r0VarM.f(30));
        }
        if (typedArray.hasValue(21)) {
            setSubtitleTextColor(r0VarM.f(21));
        }
        if (typedArray.hasValue(15)) {
            n(typedArray.getResourceId(15, 0));
        }
        r0VarM.n();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        Context context = getContext();
        E1 e1 = new E1(context, attributeSet);
        e1.f7676a = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0206a.f5162b);
        e1.f7676a = typedArrayObtainStyledAttributes.getInt(0, 0);
        typedArrayObtainStyledAttributes.recycle();
        e1.f7677b = 0;
        return e1;
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            c();
        }
        C0630w c0630w = this.f3545j;
        if (c0630w != null) {
            c0630w.setContentDescription(charSequence);
            J1.a(this.f3545j, charSequence);
            this.f3544i = charSequence;
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            c();
            this.f3545j.setImageDrawable(drawable);
        } else {
            C0630w c0630w = this.f3545j;
            if (c0630w != null) {
                c0630w.setImageDrawable(this.f3543h);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            if (this.f3542g == null) {
                this.f3542g = new C0632x(getContext(), null, 0);
            }
            if (!p(this.f3542g)) {
                b(this.f3542g, true);
            }
        } else {
            C0632x c0632x = this.f3542g;
            if (c0632x != null && p(c0632x)) {
                removeView(this.f3542g);
                this.f3519G.remove(this.f3542g);
            }
        }
        C0632x c0632x2 = this.f3542g;
        if (c0632x2 != null) {
            c0632x2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence) && this.f3542g == null) {
            this.f3542g = new C0632x(getContext(), null, 0);
        }
        C0632x c0632x = this.f3542g;
        if (c0632x != null) {
            c0632x.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        C0630w c0630w = this.f;
        if (c0630w != null) {
            c0630w.setContentDescription(charSequence);
            J1.a(this.f, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!p(this.f)) {
                b(this.f, true);
            }
        } else {
            C0630w c0630w = this.f;
            if (c0630w != null && p(c0630w)) {
                removeView(this.f);
                this.f3519G.remove(this.f);
            }
        }
        C0630w c0630w2 = this.f;
        if (c0630w2 != null) {
            c0630w2.setImageDrawable(drawable);
            this.f3537c0 = drawable;
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.f3540e;
            if (appCompatTextView != null && p(appCompatTextView)) {
                removeView(this.f3540e);
                this.f3519G.remove(this.f3540e);
            }
        } else {
            if (this.f3540e == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                this.f3540e = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.f3540e.setEllipsize(TextUtils.TruncateAt.END);
                int i5 = this.f3549o;
                if (i5 != 0) {
                    this.f3540e.setTextAppearance(context, i5);
                }
                ColorStateList colorStateList = this.f3516C;
                if (colorStateList != null) {
                    this.f3540e.setTextColor(colorStateList);
                }
            }
            if (!p(this.f3540e)) {
                b(this.f3540e, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f3540e;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.f3514A = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.f3516C = colorStateList;
        AppCompatTextView appCompatTextView = this.f3540e;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            AppCompatTextView appCompatTextView = this.f3538d;
            if (appCompatTextView != null && p(appCompatTextView)) {
                removeView(this.f3538d);
                this.f3519G.remove(this.f3538d);
            }
        } else {
            if (this.f3538d == null) {
                Context context = getContext();
                AppCompatTextView appCompatTextView2 = new AppCompatTextView(context, null);
                this.f3538d = appCompatTextView2;
                appCompatTextView2.setSingleLine();
                this.f3538d.setEllipsize(TextUtils.TruncateAt.END);
                int i5 = this.n;
                if (i5 != 0) {
                    this.f3538d.setTextAppearance(context, i5);
                }
                ColorStateList colorStateList = this.f3515B;
                if (colorStateList != null) {
                    this.f3538d.setTextColor(colorStateList);
                }
            }
            if (!p(this.f3538d)) {
                b(this.f3538d, true);
            }
        }
        AppCompatTextView appCompatTextView3 = this.f3538d;
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(charSequence);
        }
        this.f3560z = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.f3515B = colorStateList;
        AppCompatTextView appCompatTextView = this.f3538d;
        if (appCompatTextView != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }
}
