package androidx.appcompat.widget;

import J.Q;
import P1.e;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.ActionMenuItemView;
import c.AbstractC0206a;
import com.wssyncmldm.R;
import j.C0510k;
import j.InterfaceC0506g;
import j.InterfaceC0507h;
import j.InterfaceC0519t;
import j.InterfaceC0522w;
import j.MenuC0508i;
import java.util.WeakHashMap;
import k.AbstractC0619q0;
import k.C0555A;
import k.C0587f;
import k.C0596i;
import k.C0602k;
import k.C0608m;
import k.C0617p0;
import k.C0632x;
import k.InterfaceC0605l;
import k.InterfaceC0611n;
import k.N1;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public class ActionMenuView extends AbstractC0619q0 implements InterfaceC0507h, InterfaceC0522w {

    /* renamed from: A, reason: collision with root package name */
    public final int f3321A;

    /* renamed from: B, reason: collision with root package name */
    public final int f3322B;

    /* renamed from: C, reason: collision with root package name */
    public InterfaceC0611n f3323C;

    /* renamed from: D, reason: collision with root package name */
    public int f3324D;
    public int E;

    /* renamed from: F, reason: collision with root package name */
    public int f3325F;

    /* renamed from: G, reason: collision with root package name */
    public int f3326G;

    /* renamed from: H, reason: collision with root package name */
    public int f3327H;

    /* renamed from: I, reason: collision with root package name */
    public int f3328I;

    /* renamed from: J, reason: collision with root package name */
    public final String f3329J;

    /* renamed from: K, reason: collision with root package name */
    public final boolean f3330K;

    /* renamed from: r, reason: collision with root package name */
    public MenuC0508i f3331r;

    /* renamed from: s, reason: collision with root package name */
    public Context f3332s;

    /* renamed from: t, reason: collision with root package name */
    public int f3333t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f3334u;

    /* renamed from: v, reason: collision with root package name */
    public C0602k f3335v;

    /* renamed from: w, reason: collision with root package name */
    public InterfaceC0519t f3336w;

    /* renamed from: x, reason: collision with root package name */
    public InterfaceC0506g f3337x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f3338y;

    /* renamed from: z, reason: collision with root package name */
    public int f3339z;

    public ActionMenuView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        setBaselineAligned(false);
        float f = context.getResources().getDisplayMetrics().density;
        this.f3321A = (int) (56.0f * f);
        this.f3322B = (int) (f * 4.0f);
        this.f3332s = context;
        this.f3333t = 0;
        boolean z4 = AbstractC0739a.k() >= 130100;
        this.f3330K = z4;
        int[] iArr = AbstractC0206a.f5159C;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.actionButtonStyle, 0);
        this.f3324D = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr, R.attr.actionOverflowButtonStyle, 0);
        this.f3325F = typedArrayObtainStyledAttributes2.getDimensionPixelSize(7, 0);
        this.f3326G = typedArrayObtainStyledAttributes2.getDimensionPixelSize(6, 0);
        this.f3328I = typedArrayObtainStyledAttributes2.getDimensionPixelSize(3, 0);
        typedArrayObtainStyledAttributes2.recycle();
        this.f3329J = context.getResources().getString(R.string.sesl_action_menu_overflow_badge_text_n);
        if (z4) {
            this.f3324D = getResources().getDimensionPixelSize(R.dimen.sesl_action_button_side_padding);
            this.E = getResources().getDimensionPixelSize(R.dimen.sesl_action_button_side_padding);
            this.f3325F = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_overflow_side_padding);
            this.f3326G = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_overflow_padding_end);
        }
        this.f3327H = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_last_padding);
    }

    public static C0608m l() {
        C0608m c0608m = new C0608m(-2, -2);
        c0608m.f7929a = false;
        ((LinearLayout.LayoutParams) c0608m).gravity = 16;
        return c0608m;
    }

    public static C0608m m(ViewGroup.LayoutParams layoutParams) {
        C0608m c0608m;
        if (layoutParams == null) {
            return l();
        }
        if (layoutParams instanceof C0608m) {
            C0608m c0608m2 = (C0608m) layoutParams;
            c0608m = new C0608m(c0608m2);
            c0608m.f7929a = c0608m2.f7929a;
        } else {
            c0608m = new C0608m(layoutParams);
        }
        if (((LinearLayout.LayoutParams) c0608m).gravity <= 0) {
            ((LinearLayout.LayoutParams) c0608m).gravity = 16;
        }
        return c0608m;
    }

    @Override // j.InterfaceC0522w
    public final void a(MenuC0508i menuC0508i) {
        this.f3331r = menuC0508i;
    }

    @Override // j.InterfaceC0507h
    public final boolean b(C0510k c0510k) {
        MenuC0508i menuC0508i = this.f3331r;
        if (menuC0508i != null) {
            return menuC0508i.q(c0510k, null, 0);
        }
        return false;
    }

    @Override // k.AbstractC0619q0, android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0608m;
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // k.AbstractC0619q0, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return l();
    }

    @Override // k.AbstractC0619q0, android.view.ViewGroup
    public final /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m(layoutParams);
    }

    public Menu getMenu() {
        if (this.f3331r == null) {
            Context context = getContext();
            MenuC0508i menuC0508i = new MenuC0508i(context);
            this.f3331r = menuC0508i;
            menuC0508i.f7233e = new C0555A(this);
            C0602k c0602k = new C0602k(context);
            this.f3335v = c0602k;
            c0602k.n = true;
            c0602k.f7889o = true;
            InterfaceC0519t eVar = this.f3336w;
            if (eVar == null) {
                eVar = new e(15);
            }
            c0602k.f7882g = eVar;
            this.f3331r.b(c0602k, this.f3332s);
            C0602k c0602k2 = this.f3335v;
            c0602k2.f7885j = this;
            this.f3331r = c0602k2.f7881e;
        }
        return this.f3331r;
    }

    public String getOverflowBadgeText() {
        return this.f3329J;
    }

    public Drawable getOverflowIcon() {
        getMenu();
        C0602k c0602k = this.f3335v;
        if (c0602k.f7900z) {
            return null;
        }
        C0596i c0596i = c0602k.f7886k;
        if (c0596i != null) {
            return ((C0632x) c0596i.f7863e).getDrawable();
        }
        if (c0602k.f7888m) {
            return c0602k.f7887l;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.f3333t;
    }

    public int getSumOfDigitsInBadges() {
        if (this.f3331r == null) {
            return 0;
        }
        for (int i5 = 0; i5 < this.f3331r.f.size(); i5++) {
            ((C0510k) this.f3331r.getItem(i5)).isVisible();
        }
        return 0;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // k.AbstractC0619q0
    /* renamed from: h */
    public final /* bridge */ /* synthetic */ C0617p0 generateDefaultLayoutParams() {
        return l();
    }

    @Override // k.AbstractC0619q0
    /* renamed from: i */
    public final C0617p0 generateLayoutParams(AttributeSet attributeSet) {
        return new C0608m(getContext(), attributeSet);
    }

    @Override // k.AbstractC0619q0
    /* renamed from: j */
    public final /* bridge */ /* synthetic */ C0617p0 generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return m(layoutParams);
    }

    public final boolean n(int i5) {
        boolean zA = false;
        if (i5 == 0) {
            return false;
        }
        KeyEvent.Callback childAt = getChildAt(i5 - 1);
        KeyEvent.Callback childAt2 = getChildAt(i5);
        if (i5 < getChildCount() && (childAt instanceof InterfaceC0605l)) {
            zA = ((InterfaceC0605l) childAt).a();
        }
        return (i5 <= 0 || !(childAt2 instanceof InterfaceC0605l)) ? zA : zA | ((InterfaceC0605l) childAt2).b();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        C0602k c0602k = this.f3335v;
        if (c0602k != null) {
            c0602k.k();
            this.f3335v.f();
            if (this.f3335v.j()) {
                this.f3335v.i();
                this.f3335v.l();
            }
        }
        Context context = getContext();
        int[] iArr = AbstractC0206a.f5159C;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, iArr, R.attr.actionButtonStyle, 0);
        this.f3324D = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(6, 0);
        typedArrayObtainStyledAttributes.recycle();
        TypedArray typedArrayObtainStyledAttributes2 = getContext().obtainStyledAttributes(null, iArr, R.attr.actionOverflowButtonStyle, 0);
        this.f3325F = typedArrayObtainStyledAttributes2.getDimensionPixelSize(7, 0);
        this.f3326G = typedArrayObtainStyledAttributes2.getDimensionPixelSize(6, 0);
        this.f3328I = typedArrayObtainStyledAttributes2.getDimensionPixelSize(3, 0);
        typedArrayObtainStyledAttributes2.recycle();
        if (this.f3330K) {
            this.f3324D = getResources().getDimensionPixelSize(R.dimen.sesl_action_button_side_padding);
            this.E = getResources().getDimensionPixelSize(R.dimen.sesl_action_button_side_padding);
            this.f3325F = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_overflow_side_padding);
            this.f3326G = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_overflow_padding_end);
        }
        this.f3327H = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_last_padding);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0602k c0602k = this.f3335v;
        if (c0602k != null) {
            c0602k.i();
            C0587f c0587f = c0602k.f7896v;
            if (c0587f == null || !c0587f.b()) {
                return;
            }
            c0587f.f7300j.dismiss();
        }
    }

    @Override // k.AbstractC0619q0, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int width;
        int paddingLeft;
        if (!this.f3338y) {
            super.onLayout(z4, i5, i6, i7, i8);
            return;
        }
        int childCount = getChildCount();
        int i9 = (i8 - i6) / 2;
        int dividerWidth = getDividerWidth();
        int i10 = i7 - i5;
        int paddingRight = (i10 - getPaddingRight()) - getPaddingLeft();
        boolean zA = N1.a(this);
        int i11 = 0;
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            View childAt = getChildAt(i13);
            if (childAt.getVisibility() != 8) {
                C0608m c0608m = (C0608m) childAt.getLayoutParams();
                if (c0608m.f7929a) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (n(i13)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zA) {
                        paddingLeft = getPaddingLeft() + ((LinearLayout.LayoutParams) c0608m).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((LinearLayout.LayoutParams) c0608m).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i14 = i9 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i14, width, measuredHeight + i14);
                    paddingRight -= measuredWidth;
                    i11 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((LinearLayout.LayoutParams) c0608m).leftMargin) + ((LinearLayout.LayoutParams) c0608m).rightMargin;
                    n(i13);
                    i12++;
                }
            }
        }
        if (childCount == 1 && i11 == 0) {
            View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i15 = (i10 / 2) - (measuredWidth2 / 2);
            int i16 = i9 - (measuredHeight2 / 2);
            childAt2.layout(i15, i16, measuredWidth2 + i15, measuredHeight2 + i16);
            return;
        }
        int i17 = i12 - (i11 ^ 1);
        int iMax = Math.max(0, i17 > 0 ? paddingRight / i17 : 0);
        if (zA) {
            int width2 = getWidth() - getPaddingRight();
            for (int i18 = 0; i18 < childCount; i18++) {
                View childAt3 = getChildAt(i18);
                C0608m c0608m2 = (C0608m) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !c0608m2.f7929a) {
                    int i19 = width2 - ((LinearLayout.LayoutParams) c0608m2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i20 = i9 - (measuredHeight3 / 2);
                    childAt3.layout(i19 - measuredWidth3, i20, i19, measuredHeight3 + i20);
                    width2 = i19 - ((measuredWidth3 + ((LinearLayout.LayoutParams) c0608m2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i21 = 0; i21 < childCount; i21++) {
            View childAt4 = getChildAt(i21);
            C0608m c0608m3 = (C0608m) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !c0608m3.f7929a) {
                int i22 = paddingLeft2 + ((LinearLayout.LayoutParams) c0608m3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i23 = i9 - (measuredHeight4 / 2);
                childAt4.layout(i22, i23, i22 + measuredWidth4, measuredHeight4 + i23);
                paddingLeft2 = measuredWidth4 + ((LinearLayout.LayoutParams) c0608m3).rightMargin + iMax + i22;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v28, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v30 */
    /* JADX WARN: Type inference failed for: r2v31, types: [int] */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v34 */
    @Override // k.AbstractC0619q0, android.view.View
    public final void onMeasure(int i5, int i6) {
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        ?? r22;
        int i16;
        int i17;
        int i18;
        int i19;
        MenuC0508i menuC0508i;
        boolean z4 = this.f3338y;
        boolean z5 = View.MeasureSpec.getMode(i5) == 1073741824;
        this.f3338y = z5;
        if (z4 != z5) {
            this.f3339z = 0;
        }
        int size = View.MeasureSpec.getSize(i5);
        if (this.f3338y && (menuC0508i = this.f3331r) != null && size != this.f3339z) {
            this.f3339z = size;
            menuC0508i.p(true);
        }
        int childCount = getChildCount();
        if (!this.f3338y || childCount <= 0) {
            int i20 = 0;
            while (i20 < childCount) {
                ?? childAt = getChildAt(i20);
                C0608m c0608m = (C0608m) childAt.getLayoutParams();
                ((LinearLayout.LayoutParams) c0608m).rightMargin = 0;
                ((LinearLayout.LayoutParams) c0608m).leftMargin = 0;
                if (childAt instanceof ActionMenuItemView) {
                    int i21 = this.f3324D;
                    int i22 = this.E;
                    WeakHashMap weakHashMap = Q.f940a;
                    childAt.setPaddingRelative(i21, 0, i22, 0);
                    int i23 = childCount - 1;
                    if (i20 == i23) {
                        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) childAt;
                        if (actionMenuItemView.q()) {
                            if (getLayoutDirection() == 0) {
                                ((LinearLayout.LayoutParams) c0608m).rightMargin = this.f3327H;
                                childAt.setLayoutParams(c0608m);
                            } else {
                                ((LinearLayout.LayoutParams) c0608m).leftMargin = this.f3327H;
                                childAt.setLayoutParams(c0608m);
                            }
                            i7 = 1;
                        } else if (this.f3330K) {
                            actionMenuItemView.setIsLastItem(true);
                            childAt.setLayoutParams(c0608m);
                            childAt.setPaddingRelative(this.f3324D, 0, this.f3326G, 0);
                            i7 = 1;
                        } else {
                            actionMenuItemView.setIsLastItem(true);
                            actionMenuItemView.setMinWidth(this.f3328I);
                            childAt.setLayoutParams(c0608m);
                            childAt.setPaddingRelative(this.f3325F, 0, this.f3326G, 0);
                        }
                        i20 += i7;
                    } else if (i20 < i23) {
                        ActionMenuItemView actionMenuItemView2 = (ActionMenuItemView) childAt;
                        if (!actionMenuItemView2.q()) {
                            actionMenuItemView2.setIsLastItem(false);
                        }
                    }
                } else if (c0608m.f7929a) {
                    if (childAt instanceof C0596i) {
                        ViewGroup viewGroup = (ViewGroup) childAt;
                        viewGroup.getChildAt(0).setPaddingRelative(this.f3325F, 0, this.f3326G, 0);
                        viewGroup.getChildAt(0).setMinimumWidth(this.f3328I);
                    } else {
                        int i24 = this.f3325F;
                        int i25 = this.f3326G;
                        WeakHashMap weakHashMap2 = Q.f940a;
                        childAt.setPaddingRelative(i24, 0, i25, 0);
                        childAt.setMinimumWidth(this.f3328I);
                    }
                }
                i7 = 1;
                i20 += i7;
            }
            super.onMeasure(i5, i6);
            return;
        }
        int mode = View.MeasureSpec.getMode(i6);
        int size2 = View.MeasureSpec.getSize(i5);
        int size3 = View.MeasureSpec.getSize(i6);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i6, paddingBottom, -2);
        int i26 = size2 - paddingRight;
        int i27 = this.f3321A;
        int i28 = i26 / i27;
        int i29 = i26 % i27;
        if (i28 == 0) {
            setMeasuredDimension(i26, 0);
            return;
        }
        int i30 = (i29 / i28) + i27;
        int childCount2 = getChildCount();
        int i31 = 0;
        int iMax = 0;
        int i32 = 0;
        int i33 = 0;
        int i34 = 0;
        int iMax2 = 0;
        long j3 = 0;
        while (true) {
            i8 = this.f3322B;
            if (i32 >= childCount2) {
                break;
            }
            View childAt2 = getChildAt(i32);
            if (childAt2.getVisibility() == 8) {
                i16 = size3;
                i17 = paddingBottom;
                i19 = 1;
            } else {
                boolean z6 = childAt2 instanceof ActionMenuItemView;
                int i35 = i31 + 1;
                if (z6) {
                    childAt2.setPadding(i8, 0, i8, 0);
                }
                C0608m c0608m2 = (C0608m) childAt2.getLayoutParams();
                c0608m2.f = false;
                c0608m2.f7931c = 0;
                c0608m2.f7930b = 0;
                c0608m2.f7932d = false;
                ((LinearLayout.LayoutParams) c0608m2).leftMargin = 0;
                ((LinearLayout.LayoutParams) c0608m2).rightMargin = 0;
                c0608m2.f7933e = z6 && ((ActionMenuItemView) childAt2).q();
                int i36 = c0608m2.f7929a ? 1 : i28;
                i16 = size3;
                C0608m c0608m3 = (C0608m) childAt2.getLayoutParams();
                i17 = paddingBottom;
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(childMeasureSpec) - paddingBottom, View.MeasureSpec.getMode(childMeasureSpec));
                ActionMenuItemView actionMenuItemView3 = z6 ? (ActionMenuItemView) childAt2 : null;
                boolean z7 = actionMenuItemView3 != null && actionMenuItemView3.q();
                if (i36 <= 0 || (z7 && i36 < 2)) {
                    i18 = 0;
                } else {
                    childAt2.measure(View.MeasureSpec.makeMeasureSpec(i36 * i30, Integer.MIN_VALUE), iMakeMeasureSpec);
                    int measuredWidth = childAt2.getMeasuredWidth();
                    i18 = measuredWidth / i30;
                    if (measuredWidth % i30 != 0) {
                        i18++;
                    }
                    if (z7 && i18 < 2) {
                        i18 = 2;
                    }
                }
                c0608m3.f7932d = !c0608m3.f7929a && z7;
                c0608m3.f7930b = i18;
                childAt2.measure(View.MeasureSpec.makeMeasureSpec(i18 * i30, 1073741824), iMakeMeasureSpec);
                iMax = Math.max(iMax, i18);
                if (c0608m2.f7932d) {
                    i19 = 1;
                    i34++;
                } else {
                    i19 = 1;
                }
                if (c0608m2.f7929a) {
                    i33 = i19;
                }
                i28 -= i18;
                iMax2 = Math.max(iMax2, childAt2.getMeasuredHeight());
                if (i18 == i19) {
                    j3 |= i19 << i32;
                }
                i31 = i35;
            }
            i32 += i19;
            paddingBottom = i17;
            size3 = i16;
        }
        int i37 = size3;
        int i38 = iMax2;
        boolean z8 = i33 != 0 && i31 == 2;
        int i39 = 0;
        while (i34 > 0 && i28 > 0) {
            int i40 = Integer.MAX_VALUE;
            int i41 = 0;
            int i42 = 0;
            long j5 = 0;
            while (i41 < childCount2) {
                int i43 = i39;
                C0608m c0608m4 = (C0608m) getChildAt(i41).getLayoutParams();
                int i44 = i38;
                if (c0608m4.f7932d) {
                    int i45 = c0608m4.f7930b;
                    if (i45 < i40) {
                        j5 = 1 << i41;
                        i40 = i45;
                        i42 = 1;
                    } else if (i45 == i40) {
                        i42++;
                        j5 |= 1 << i41;
                    }
                }
                i41++;
                i38 = i44;
                i39 = i43;
            }
            i11 = i39;
            i12 = i38;
            int i46 = 1;
            j3 |= j5;
            if (i42 > i28) {
                i9 = mode;
                i10 = i26;
                i13 = 1;
                break;
            }
            int i47 = i40 + 1;
            int i48 = 0;
            while (i48 < childCount2) {
                View childAt3 = getChildAt(i48);
                C0608m c0608m5 = (C0608m) childAt3.getLayoutParams();
                int i49 = mode;
                int i50 = i26;
                long j6 = i46 << i48;
                if ((j5 & j6) == 0) {
                    if (c0608m5.f7930b == i47) {
                        j3 |= j6;
                    }
                    r22 = 1;
                } else {
                    if (z8 && c0608m5.f7933e) {
                        r22 = 1;
                        r22 = 1;
                        if (i28 == 1) {
                            childAt3.setPadding(i8 + i30, 0, i8, 0);
                        }
                    } else {
                        r22 = 1;
                    }
                    c0608m5.f7930b += r22 == true ? 1 : 0;
                    c0608m5.f = r22;
                    i28--;
                }
                i48 += r22;
                i46 = r22;
                mode = i49;
                i26 = i50;
            }
            i39 = i46;
            i38 = i12;
            mode = mode;
        }
        i9 = mode;
        i10 = i26;
        i11 = i39;
        i12 = i38;
        i13 = 1;
        int i51 = (i33 == 0 && i31 == i13) ? i13 : 0;
        if (i28 > 0 && j3 != 0 && (i28 < i31 - i13 || i51 != 0 || iMax > i13)) {
            float fBitCount = Long.bitCount(j3);
            if (i51 == 0) {
                if ((j3 & 1) != 0 && !((C0608m) getChildAt(0).getLayoutParams()).f7933e) {
                    fBitCount -= 0.5f;
                }
                int i52 = childCount2 - 1;
                if ((j3 & (1 << i52)) != 0 && !((C0608m) getChildAt(i52).getLayoutParams()).f7933e) {
                    fBitCount -= 0.5f;
                }
            }
            int i53 = fBitCount > 0.0f ? (int) ((i28 * i30) / fBitCount) : 0;
            int i54 = 0;
            while (i54 < childCount2) {
                if ((j3 & (1 << i54)) == 0) {
                    i15 = 1;
                } else {
                    View childAt4 = getChildAt(i54);
                    C0608m c0608m6 = (C0608m) childAt4.getLayoutParams();
                    if (childAt4 instanceof ActionMenuItemView) {
                        c0608m6.f7931c = i53;
                        c0608m6.f = true;
                        if (i54 == 0 && !c0608m6.f7933e) {
                            ((LinearLayout.LayoutParams) c0608m6).leftMargin = (-i53) / 2;
                        }
                        i15 = 1;
                        i11 = 1;
                    } else if (c0608m6.f7929a) {
                        c0608m6.f7931c = i53;
                        i15 = 1;
                        c0608m6.f = true;
                        ((LinearLayout.LayoutParams) c0608m6).rightMargin = (-i53) / 2;
                        i11 = 1;
                    } else {
                        i15 = 1;
                        if (i54 != 0) {
                            ((LinearLayout.LayoutParams) c0608m6).leftMargin = i53 / 2;
                        }
                        if (i54 != childCount2 - 1) {
                            ((LinearLayout.LayoutParams) c0608m6).rightMargin = i53 / 2;
                        }
                    }
                }
                i54 += i15;
            }
        }
        if (i11 != 0) {
            int i55 = 0;
            while (i55 < childCount2) {
                View childAt5 = getChildAt(i55);
                C0608m c0608m7 = (C0608m) childAt5.getLayoutParams();
                if (c0608m7.f) {
                    childAt5.measure(View.MeasureSpec.makeMeasureSpec((c0608m7.f7930b * i30) + c0608m7.f7931c, 1073741824), childMeasureSpec);
                    i14 = 1;
                } else {
                    i14 = 1;
                }
                i55 += i14;
            }
        }
        setMeasuredDimension(i10, i9 != 1073741824 ? i12 : i37);
    }

    public void setExpandedActionViewsExclusive(boolean z4) {
        this.f3335v.f7893s = z4;
    }

    public void setOnMenuItemClickListener(InterfaceC0611n interfaceC0611n) {
        this.f3323C = interfaceC0611n;
    }

    public void setOverflowIcon(Drawable drawable) {
        getMenu();
        C0602k c0602k = this.f3335v;
        if (c0602k.f7900z) {
            return;
        }
        C0596i c0596i = c0602k.f7886k;
        if (c0596i != null) {
            ((C0632x) c0596i.f7863e).setImageDrawable(drawable);
        } else {
            c0602k.f7888m = true;
            c0602k.f7887l = drawable;
        }
    }

    public void setOverflowReserved(boolean z4) {
        this.f3334u = z4;
    }

    public void setPopupTheme(int i5) {
        if (this.f3333t != i5) {
            this.f3333t = i5;
            if (i5 == 0) {
                this.f3332s = getContext();
            } else {
                this.f3332s = new ContextThemeWrapper(getContext(), i5);
            }
        }
    }

    public void setPresenter(C0602k c0602k) {
        this.f3335v = c0602k;
        c0602k.f7885j = this;
        this.f3331r = c0602k.f7881e;
    }

    @Override // k.AbstractC0619q0, android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0608m(getContext(), attributeSet);
    }
}
