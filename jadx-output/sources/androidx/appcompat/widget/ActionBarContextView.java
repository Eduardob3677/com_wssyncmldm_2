package androidx.appcompat.widget;

import J.Q;
import J.a0;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import c.AbstractC0206a;
import com.wssyncmldm.R;
import f1.AbstractC0420a;
import i.AbstractC0474b;
import j.InterfaceC0522w;
import j.MenuC0508i;
import java.util.WeakHashMap;
import k.C0587f;
import k.C0602k;
import k.N1;
import k.ViewOnClickListenerC0575b;

/* loaded from: classes.dex */
public class ActionBarContextView extends ViewGroup {

    /* renamed from: c, reason: collision with root package name */
    public final I3.c f3275c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f3276d;

    /* renamed from: e, reason: collision with root package name */
    public ActionMenuView f3277e;
    public C0602k f;

    /* renamed from: g, reason: collision with root package name */
    public int f3278g;

    /* renamed from: h, reason: collision with root package name */
    public a0 f3279h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f3280i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f3281j;

    /* renamed from: k, reason: collision with root package name */
    public CharSequence f3282k;

    /* renamed from: l, reason: collision with root package name */
    public CharSequence f3283l;

    /* renamed from: m, reason: collision with root package name */
    public View f3284m;
    public View n;

    /* renamed from: o, reason: collision with root package name */
    public View f3285o;

    /* renamed from: p, reason: collision with root package name */
    public LinearLayout f3286p;

    /* renamed from: q, reason: collision with root package name */
    public TextView f3287q;

    /* renamed from: r, reason: collision with root package name */
    public TextView f3288r;

    /* renamed from: s, reason: collision with root package name */
    public final int f3289s;

    /* renamed from: t, reason: collision with root package name */
    public final int f3290t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f3291u;

    /* renamed from: v, reason: collision with root package name */
    public final int f3292v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f3293w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f3294x;

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        int resourceId;
        super(context, attributeSet, R.attr.actionModeStyle);
        this.f3275c = new I3.c(this);
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.f3276d = context;
        } else {
            this.f3276d = new ContextThemeWrapper(context, typedValue.resourceId);
        }
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0206a.f5164d, R.attr.actionModeStyle, 0);
        Drawable drawable = (!typedArrayObtainStyledAttributes.hasValue(0) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(0) : AbstractC0420a.A(context, resourceId);
        WeakHashMap weakHashMap = Q.f940a;
        setBackground(drawable);
        this.f3289s = typedArrayObtainStyledAttributes.getResourceId(5, 0);
        this.f3290t = typedArrayObtainStyledAttributes.getResourceId(4, 0);
        this.f3278g = typedArrayObtainStyledAttributes.getLayoutDimension(3, 0);
        this.f3292v = typedArrayObtainStyledAttributes.getResourceId(2, R.layout.sesl_action_mode_close_item);
        typedArrayObtainStyledAttributes.recycle();
    }

    public static int f(View view, int i5, int i6) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i5, Integer.MIN_VALUE), i6);
        return Math.max(0, i5 - view.getMeasuredWidth());
    }

    public static int h(int i5, int i6, int i7, View view, boolean z4) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i8 = ((i7 - measuredHeight) / 2) + i6;
        if (z4) {
            view.layout(i5 - measuredWidth, i8, i5, measuredHeight + i8);
        } else {
            view.layout(i5, i8, i5 + measuredWidth, measuredHeight + i8);
        }
        return z4 ? -measuredWidth : measuredWidth;
    }

    public final void c(AbstractC0474b abstractC0474b) {
        this.f3294x = true;
        View view = this.f3284m;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.f3292v, (ViewGroup) this, false);
            this.f3284m = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f3284m);
        }
        View viewFindViewById = this.f3284m.findViewById(R.id.action_mode_close_button);
        this.n = viewFindViewById;
        viewFindViewById.setOnClickListener(new ViewOnClickListenerC0575b(0, abstractC0474b));
        MenuC0508i menuC0508iE = abstractC0474b.e();
        C0602k c0602k = this.f;
        if (c0602k != null) {
            c0602k.i();
            C0587f c0587f = c0602k.f7896v;
            if (c0587f != null && c0587f.b()) {
                c0587f.f7300j.dismiss();
            }
        }
        C0602k c0602k2 = new C0602k(getContext());
        this.f = c0602k2;
        c0602k2.n = true;
        c0602k2.f7889o = true;
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        menuC0508iE.b(this.f, this.f3276d);
        C0602k c0602k3 = this.f;
        InterfaceC0522w interfaceC0522w = c0602k3.f7885j;
        if (interfaceC0522w == null) {
            InterfaceC0522w interfaceC0522w2 = (InterfaceC0522w) c0602k3.f.inflate(c0602k3.f7883h, (ViewGroup) this, false);
            c0602k3.f7885j = interfaceC0522w2;
            interfaceC0522w2.a(c0602k3.f7881e);
            c0602k3.f();
        }
        InterfaceC0522w interfaceC0522w3 = c0602k3.f7885j;
        if (interfaceC0522w != interfaceC0522w3) {
            ((ActionMenuView) interfaceC0522w3).setPresenter(c0602k3);
        }
        ActionMenuView actionMenuView = (ActionMenuView) interfaceC0522w3;
        this.f3277e = actionMenuView;
        WeakHashMap weakHashMap = Q.f940a;
        actionMenuView.setBackground(null);
        addView(this.f3277e, layoutParams);
    }

    public final void d() {
        if (this.f3286p == null) {
            LayoutInflater.from(getContext()).inflate(R.layout.sesl_action_bar_title_item, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.f3286p = linearLayout;
            this.f3287q = (TextView) linearLayout.findViewById(R.id.action_bar_title);
            this.f3288r = (TextView) this.f3286p.findViewById(R.id.action_bar_subtitle);
            int i5 = this.f3289s;
            if (i5 != 0) {
                this.f3287q.setTextAppearance(getContext(), i5);
            }
            int i6 = this.f3290t;
            if (i6 != 0) {
                this.f3288r.setTextAppearance(getContext(), i6);
            }
        }
        this.f3287q.setText(this.f3282k);
        this.f3288r.setText(this.f3283l);
        boolean z4 = !TextUtils.isEmpty(this.f3282k);
        boolean z5 = !TextUtils.isEmpty(this.f3283l);
        this.f3288r.setVisibility(z5 ? 0 : 8);
        this.f3286p.setVisibility((z4 || z5) ? 0 : 8);
        if (this.f3286p.getParent() == null) {
            addView(this.f3286p);
        }
    }

    public final void e() {
        removeAllViews();
        this.f3285o = null;
        this.f3277e = null;
        this.f = null;
        View view = this.n;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    public final void g(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, AbstractC0206a.f5161a, R.attr.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(13, 0));
        typedArrayObtainStyledAttributes.recycle();
        C0602k c0602k = this.f;
        if (c0602k != null) {
            c0602k.k();
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    public int getAnimatedVisibility() {
        return this.f3279h != null ? this.f3275c.f885b : getVisibility();
    }

    public int getContentHeight() {
        return this.f3278g;
    }

    public boolean getIsActionModeAccessibilityOn() {
        return this.f3293w;
    }

    public CharSequence getSubtitle() {
        return this.f3283l;
    }

    public CharSequence getTitle() {
        return this.f3282k;
    }

    @Override // android.view.View
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public final void setVisibility(int i5) {
        if (i5 != getVisibility()) {
            a0 a0Var = this.f3279h;
            if (a0Var != null) {
                a0Var.b();
            }
            super.setVisibility(i5);
        }
    }

    public final a0 j(int i5, long j3) {
        a0 a0Var = this.f3279h;
        if (a0Var != null) {
            a0Var.b();
        }
        I3.c cVar = this.f3275c;
        if (i5 != 0) {
            a0 a0VarA = Q.a(this);
            a0VarA.a(0.0f);
            a0VarA.c(j3);
            ((ActionBarContextView) cVar.f886c).f3279h = a0VarA;
            cVar.f885b = i5;
            a0VarA.d(cVar);
            return a0VarA;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        a0 a0VarA2 = Q.a(this);
        a0VarA2.a(1.0f);
        a0VarA2.c(j3);
        ((ActionBarContextView) cVar.f886c).f3279h = a0VarA2;
        cVar.f885b = i5;
        a0VarA2.d(cVar);
        return a0VarA2;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() throws Resources.NotFoundException {
        super.onAttachedToWindow();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_top_padding);
        setPadding(0, dimensionPixelSize, 0, 0);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, AbstractC0206a.f5164d, android.R.attr.actionModeStyle, 0);
        int dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, -1);
        typedArrayObtainStyledAttributes.recycle();
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        layoutParams.height = dimensionPixelSize2 + dimensionPixelSize;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        g(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, AbstractC0206a.f5164d, android.R.attr.actionModeStyle, 0);
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(3, -1);
        if (dimensionPixelSize >= 0) {
            setContentHeight(dimensionPixelSize);
        }
        setPadding(0, getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_top_padding), 0, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C0602k c0602k = this.f;
        if (c0602k != null) {
            c0602k.i();
            C0587f c0587f = this.f.f7896v;
            if (c0587f == null || !c0587f.b()) {
                return;
            }
            c0587f.f7300j.dismiss();
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f3281j = false;
        }
        if (!this.f3281j) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f3281j = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f3281j = false;
        }
        return true;
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() != 32) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            return;
        }
        Log.d("ActionBarContextView", "onInitializeAccessibilityEvent Check ActionMode :" + this.f3294x);
        if (this.f3294x) {
            this.f3293w = true;
            this.f3294x = false;
        } else {
            this.f3293w = false;
        }
        Log.d("ActionBarContextView", "onInitializeAccessibilityEvent mIsActionModeAccessibilityOn :" + this.f3293w);
        accessibilityEvent.setSource(this);
        accessibilityEvent.setClassName(getClass().getName());
        accessibilityEvent.setPackageName(getContext().getPackageName());
        accessibilityEvent.setContentDescription(this.f3282k);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        boolean zA = N1.a(this);
        int paddingRight = zA ? (i7 - i5) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i8 - i6) - getPaddingTop()) - getPaddingBottom();
        View view = this.f3284m;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f3284m.getLayoutParams();
            int i9 = zA ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i10 = zA ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i11 = zA ? paddingRight - i9 : paddingRight + i9;
            int iH = h(i11, paddingTop, paddingTop2, this.f3284m, zA) + i11;
            paddingRight = zA ? iH - i10 : iH + i10;
        }
        LinearLayout linearLayout = this.f3286p;
        if (linearLayout != null && this.f3285o == null && linearLayout.getVisibility() != 8) {
            paddingRight += h(paddingRight, paddingTop, paddingTop2, this.f3286p, zA);
        }
        View view2 = this.f3285o;
        if (view2 != null) {
            h(paddingRight, paddingTop, paddingTop2, view2, zA);
        }
        int paddingLeft = zA ? getPaddingLeft() : (i7 - i5) - getPaddingRight();
        ActionMenuView actionMenuView = this.f3277e;
        if (actionMenuView != null) {
            h(paddingLeft, paddingTop, paddingTop2, actionMenuView, !zA);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i5, int i6) throws Resources.NotFoundException {
        if (View.MeasureSpec.getMode(i5) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_width=\"match_parent\" (or fill_parent)"));
        }
        if (View.MeasureSpec.getMode(i6) == 0) {
            throw new IllegalStateException(getClass().getSimpleName().concat(" can only be used with android:layout_height=\"wrap_content\""));
        }
        int size = View.MeasureSpec.getSize(i5);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.sesl_action_bar_top_padding);
        int i7 = this.f3278g;
        int size2 = i7 > 0 ? i7 + dimensionPixelSize : View.MeasureSpec.getSize(i6);
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f3284m;
        if (view != null && view.getVisibility() == 0) {
            int iF = f(this.f3284m, paddingLeft, iMakeMeasureSpec);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f3284m.getLayoutParams();
            paddingLeft = iF - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f3277e;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = f(this.f3277e, paddingLeft, iMakeMeasureSpec);
        }
        if (this.f3286p != null && this.f3285o == null) {
            Context context = getContext();
            if (this.f3287q != null) {
                TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(this.f3289s, AbstractC0206a.f5157A);
                TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(0);
                typedArrayObtainStyledAttributes.recycle();
                float fComplexToFloat = TypedValue.complexToFloat(typedValuePeekValue.data);
                if (TextUtils.isEmpty(this.f3283l)) {
                    this.f3287q.setTextSize(1, fComplexToFloat * Math.min(context.getResources().getConfiguration().fontScale, 1.2f));
                } else {
                    this.f3287q.setTextSize(1, fComplexToFloat);
                }
            }
            View view2 = this.f3284m;
            if (view2 == null || view2.getVisibility() == 8) {
                int dimension = (int) context.getResources().getDimension(R.dimen.sesl_toolbar_content_inset);
                WeakHashMap weakHashMap = Q.f940a;
                boolean z4 = getLayoutDirection() == 0;
                TextView textView = this.f3287q;
                if (textView != null && textView.getVisibility() == 0) {
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f3287q.getLayoutParams();
                    if (z4) {
                        layoutParams.leftMargin = dimension;
                    } else {
                        layoutParams.rightMargin = dimension;
                    }
                    this.f3287q.setLayoutParams(layoutParams);
                }
                TextView textView2 = this.f3288r;
                if (textView2 != null && textView2.getVisibility() == 0) {
                    LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f3288r.getLayoutParams();
                    if (z4) {
                        layoutParams2.leftMargin = dimension;
                    } else {
                        layoutParams2.rightMargin = dimension;
                    }
                    this.f3288r.setLayoutParams(layoutParams2);
                }
            }
            if (this.f3291u) {
                this.f3286p.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.f3286p.getMeasuredWidth();
                boolean z5 = measuredWidth <= paddingLeft;
                if (z5) {
                    paddingLeft -= measuredWidth;
                }
                this.f3286p.setVisibility(z5 ? 0 : 8);
            } else {
                paddingLeft = f(this.f3286p, paddingLeft, iMakeMeasureSpec);
            }
        }
        View view3 = this.f3285o;
        if (view3 != null) {
            ViewGroup.LayoutParams layoutParams3 = view3.getLayoutParams();
            int i8 = layoutParams3.width;
            int i9 = i8 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i8 >= 0) {
                paddingLeft = Math.min(i8, paddingLeft);
            }
            int i10 = layoutParams3.height;
            int i11 = i10 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i10 >= 0) {
                iMin = Math.min(i10, iMin);
            }
            this.f3285o.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i9), View.MeasureSpec.makeMeasureSpec(iMin, i11));
        }
        if (this.f3278g > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i12 = 0;
        for (int i13 = 0; i13 < childCount; i13++) {
            int measuredHeight = getChildAt(i13).getMeasuredHeight() + paddingBottom;
            if (measuredHeight > i12) {
                i12 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i12);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f3280i = false;
        }
        if (!this.f3280i) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f3280i = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f3280i = false;
        }
        return true;
    }

    public void setContentHeight(int i5) {
        this.f3278g = i5;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.f3285o;
        if (view2 != null) {
            removeView(view2);
        }
        this.f3285o = view;
        if (view != null && (linearLayout = this.f3286p) != null) {
            removeView(linearLayout);
            this.f3286p = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f3283l = charSequence;
        d();
    }

    public void setTitle(CharSequence charSequence) {
        this.f3282k = charSequence;
        d();
        Q.i(this, charSequence);
    }

    public void setTitleOptional(boolean z4) {
        if (z4 != this.f3291u) {
            requestLayout();
        }
        this.f3291u = z4;
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }
}
