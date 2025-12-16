package com.google.android.material.internal;

import A.k;
import A.r;
import C.a;
import J.Q;
import J1.e;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import j.C0510k;
import j.InterfaceC0521v;
import java.util.WeakHashMap;
import k.C0617p0;
import k.J1;

/* loaded from: classes.dex */
public class NavigationMenuItemView extends e implements InterfaceC0521v {

    /* renamed from: I, reason: collision with root package name */
    public static final int[] f6037I = {R.attr.state_checked};

    /* renamed from: A, reason: collision with root package name */
    public final boolean f6038A;

    /* renamed from: B, reason: collision with root package name */
    public final CheckedTextView f6039B;

    /* renamed from: C, reason: collision with root package name */
    public FrameLayout f6040C;

    /* renamed from: D, reason: collision with root package name */
    public C0510k f6041D;
    public ColorStateList E;

    /* renamed from: F, reason: collision with root package name */
    public boolean f6042F;

    /* renamed from: G, reason: collision with root package name */
    public Drawable f6043G;

    /* renamed from: H, reason: collision with root package name */
    public final C1.e f6044H;

    /* renamed from: x, reason: collision with root package name */
    public int f6045x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f6046y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f6047z;

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6038A = true;
        C1.e eVar = new C1.e(3, this);
        this.f6044H = eVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(com.wssyncmldm.R.layout.design_navigation_menu_item, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.design_navigation_icon_size));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(com.wssyncmldm.R.id.design_menu_item_text);
        this.f6039B = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        Q.h(checkedTextView, eVar);
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.f6040C == null) {
                this.f6040C = (FrameLayout) ((ViewStub) findViewById(com.wssyncmldm.R.id.design_menu_item_action_area_stub)).inflate();
            }
            this.f6040C.removeAllViews();
            this.f6040C.addView(view);
        }
    }

    @Override // j.InterfaceC0521v
    public final void d(C0510k c0510k) {
        StateListDrawable stateListDrawable;
        this.f6041D = c0510k;
        int i5 = c0510k.f7257a;
        if (i5 > 0) {
            setId(i5);
        }
        setVisibility(c0510k.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            TypedValue typedValue = new TypedValue();
            if (getContext().getTheme().resolveAttribute(com.wssyncmldm.R.attr.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new StateListDrawable();
                stateListDrawable.addState(f6037I, new ColorDrawable(typedValue.data));
                stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            WeakHashMap weakHashMap = Q.f940a;
            setBackground(stateListDrawable);
        }
        setCheckable(c0510k.isCheckable());
        setChecked(c0510k.isChecked());
        setEnabled(c0510k.isEnabled());
        setTitle(c0510k.f7261e);
        setIcon(c0510k.getIcon());
        setActionView(c0510k.getActionView());
        setContentDescription(c0510k.f7271q);
        J1.a(this, c0510k.f7272r);
        C0510k c0510k2 = this.f6041D;
        CharSequence charSequence = c0510k2.f7261e;
        CheckedTextView checkedTextView = this.f6039B;
        if (charSequence == null && c0510k2.getIcon() == null && this.f6041D.getActionView() != null) {
            checkedTextView.setVisibility(8);
            FrameLayout frameLayout = this.f6040C;
            if (frameLayout != null) {
                C0617p0 c0617p0 = (C0617p0) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) c0617p0).width = -1;
                this.f6040C.setLayoutParams(c0617p0);
                return;
            }
            return;
        }
        checkedTextView.setVisibility(0);
        FrameLayout frameLayout2 = this.f6040C;
        if (frameLayout2 != null) {
            C0617p0 c0617p02 = (C0617p0) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) c0617p02).width = -2;
            this.f6040C.setLayoutParams(c0617p02);
        }
    }

    @Override // j.InterfaceC0521v
    public C0510k getItemData() {
        return this.f6041D;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final int[] onCreateDrawableState(int i5) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i5 + 1);
        C0510k c0510k = this.f6041D;
        if (c0510k != null && c0510k.isCheckable() && this.f6041D.isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f6037I);
        }
        return iArrOnCreateDrawableState;
    }

    public void setCheckable(boolean z4) {
        refreshDrawableState();
        if (this.f6047z != z4) {
            this.f6047z = z4;
            this.f6044H.h(this.f6039B, 2048);
        }
    }

    public void setChecked(boolean z4) {
        refreshDrawableState();
        CheckedTextView checkedTextView = this.f6039B;
        checkedTextView.setChecked(z4);
        checkedTextView.setTypeface(checkedTextView.getTypeface(), (z4 && this.f6038A) ? 1 : 0);
    }

    public void setHorizontalPadding(int i5) {
        setPadding(i5, getPaddingTop(), i5, getPaddingBottom());
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.f6042F) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = drawable.mutate();
                a.h(drawable, this.E);
            }
            int i5 = this.f6045x;
            drawable.setBounds(0, 0, i5, i5);
        } else if (this.f6046y) {
            if (this.f6043G == null) {
                Resources resources = getResources();
                Resources.Theme theme = getContext().getTheme();
                ThreadLocal threadLocal = r.f36a;
                Drawable drawableA = k.a(resources, com.wssyncmldm.R.drawable.navigation_empty_icon, theme);
                this.f6043G = drawableA;
                if (drawableA != null) {
                    int i6 = this.f6045x;
                    drawableA.setBounds(0, 0, i6, i6);
                }
            }
            drawable = this.f6043G;
        }
        this.f6039B.setCompoundDrawablesRelative(drawable, null, null, null);
    }

    public void setIconPadding(int i5) {
        this.f6039B.setCompoundDrawablePadding(i5);
    }

    public void setIconSize(int i5) {
        this.f6045x = i5;
    }

    public void setIconTintList(ColorStateList colorStateList) {
        this.E = colorStateList;
        this.f6042F = colorStateList != null;
        C0510k c0510k = this.f6041D;
        if (c0510k != null) {
            setIcon(c0510k.getIcon());
        }
    }

    public void setMaxLines(int i5) {
        this.f6039B.setMaxLines(i5);
    }

    public void setNeedsEmptyIcon(boolean z4) {
        this.f6046y = z4;
    }

    public void setTextAppearance(int i5) {
        this.f6039B.setTextAppearance(i5);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.f6039B.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.f6039B.setText(charSequence);
    }
}
