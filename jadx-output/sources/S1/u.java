package S1;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.Filterable;
import android.widget.ListAdapter;
import com.google.android.material.textfield.TextInputLayout;
import com.wssyncmldm.R;
import java.util.Locale;
import k.C0614o;
import k.C0633x0;

/* loaded from: classes.dex */
public final class u extends C0614o {
    public final C0633x0 f;

    /* renamed from: g, reason: collision with root package name */
    public final AccessibilityManager f2560g;

    /* renamed from: h, reason: collision with root package name */
    public final Rect f2561h;

    /* renamed from: i, reason: collision with root package name */
    public final int f2562i;

    /* renamed from: j, reason: collision with root package name */
    public final float f2563j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f2564k;

    /* renamed from: l, reason: collision with root package name */
    public int f2565l;

    /* renamed from: m, reason: collision with root package name */
    public ColorStateList f2566m;

    public u(Context context, AttributeSet attributeSet) {
        super(U1.a.a(context, attributeSet, R.attr.autoCompleteTextViewStyle, 0), attributeSet);
        this.f2561h = new Rect();
        Context context2 = getContext();
        TypedArray typedArrayF = J1.m.f(context2, attributeSet, v1.a.f9536k, R.attr.autoCompleteTextViewStyle, 2132018150, new int[0]);
        if (typedArrayF.hasValue(0) && typedArrayF.getInt(0, 0) == 0) {
            setKeyListener(null);
        }
        this.f2562i = typedArrayF.getResourceId(3, R.layout.mtrl_auto_complete_simple_item);
        this.f2563j = typedArrayF.getDimensionPixelOffset(1, R.dimen.mtrl_exposed_dropdown_menu_popup_elevation);
        if (typedArrayF.hasValue(2)) {
            this.f2564k = ColorStateList.valueOf(typedArrayF.getColor(2, 0));
        }
        this.f2565l = typedArrayF.getColor(4, 0);
        this.f2566m = W1.a.B(context2, typedArrayF, 5);
        this.f2560g = (AccessibilityManager) context2.getSystemService("accessibility");
        C0633x0 c0633x0 = new C0633x0(context2, null, R.attr.listPopupWindowStyle, 0);
        this.f = c0633x0;
        c0633x0.f8049y = true;
        c0633x0.f8050z.setFocusable(true);
        c0633x0.f8039o = this;
        c0633x0.f8050z.setInputMethodMode(2);
        c0633x0.n(getAdapter());
        c0633x0.f8040p = new s(this);
        if (typedArrayF.hasValue(6)) {
            setSimpleItems(typedArrayF.getResourceId(6, 0));
        }
        typedArrayF.recycle();
    }

    public static void a(u uVar, Object obj) {
        uVar.setText(uVar.convertSelectionToString(obj), false);
    }

    public final TextInputLayout b() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    @Override // android.widget.AutoCompleteTextView
    public final void dismissDropDown() {
        AccessibilityManager accessibilityManager = this.f2560g;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.dismissDropDown();
        } else {
            this.f.dismiss();
        }
    }

    public ColorStateList getDropDownBackgroundTintList() {
        return this.f2564k;
    }

    @Override // android.widget.TextView
    public CharSequence getHint() {
        TextInputLayout textInputLayoutB = b();
        return (textInputLayoutB == null || !textInputLayoutB.f6091G) ? super.getHint() : textInputLayoutB.getHint();
    }

    public float getPopupElevation() {
        return this.f2563j;
    }

    public int getSimpleItemSelectedColor() {
        return this.f2565l;
    }

    public ColorStateList getSimpleItemSelectedRippleColor() {
        return this.f2566m;
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout textInputLayoutB = b();
        if (textInputLayoutB != null && textInputLayoutB.f6091G && super.getHint() == null) {
            String str = Build.MANUFACTURER;
            if ((str != null ? str.toLowerCase(Locale.ENGLISH) : "").equals("meizu")) {
                setHint("");
            }
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.f.dismiss();
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i5, int i6) {
        super.onMeasure(i5, i6);
        if (View.MeasureSpec.getMode(i5) == Integer.MIN_VALUE) {
            int measuredWidth = getMeasuredWidth();
            ListAdapter adapter = getAdapter();
            TextInputLayout textInputLayoutB = b();
            int measuredWidth2 = 0;
            if (adapter != null && textInputLayoutB != null) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
                C0633x0 c0633x0 = this.f;
                int iMin = Math.min(adapter.getCount(), Math.max(0, !c0633x0.f8050z.isShowing() ? -1 : c0633x0.f8031e.getSelectedItemPosition()) + 15);
                View view = null;
                int iMax = 0;
                for (int iMax2 = Math.max(0, iMin - 15); iMax2 < iMin; iMax2++) {
                    int itemViewType = adapter.getItemViewType(iMax2);
                    if (itemViewType != measuredWidth2) {
                        view = null;
                        measuredWidth2 = itemViewType;
                    }
                    view = adapter.getView(iMax2, view, textInputLayoutB);
                    if (view.getLayoutParams() == null) {
                        view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    }
                    view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                    iMax = Math.max(iMax, view.getMeasuredWidth());
                }
                Drawable background = c0633x0.f8050z.getBackground();
                if (background != null) {
                    Rect rect = this.f2561h;
                    background.getPadding(rect);
                    iMax += rect.left + rect.right;
                }
                measuredWidth2 = textInputLayoutB.getEndIconView().getMeasuredWidth() + iMax;
            }
            setMeasuredDimension(Math.min(Math.max(measuredWidth, measuredWidth2), View.MeasureSpec.getSize(i5)), getMeasuredHeight());
        }
    }

    @Override // android.widget.AutoCompleteTextView, android.widget.TextView, android.view.View
    public final void onWindowFocusChanged(boolean z4) {
        AccessibilityManager accessibilityManager = this.f2560g;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.onWindowFocusChanged(z4);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public <T extends ListAdapter & Filterable> void setAdapter(T t2) {
        super.setAdapter(t2);
        this.f.n(getAdapter());
    }

    @Override // android.widget.AutoCompleteTextView
    public void setDropDownBackgroundDrawable(Drawable drawable) {
        super.setDropDownBackgroundDrawable(drawable);
        C0633x0 c0633x0 = this.f;
        if (c0633x0 != null) {
            c0633x0.l(drawable);
        }
    }

    public void setDropDownBackgroundTint(int i5) {
        setDropDownBackgroundTintList(ColorStateList.valueOf(i5));
    }

    public void setDropDownBackgroundTintList(ColorStateList colorStateList) {
        this.f2564k = colorStateList;
        Drawable dropDownBackground = getDropDownBackground();
        if (dropDownBackground instanceof P1.g) {
            ((P1.g) dropDownBackground).k(this.f2564k);
        }
    }

    @Override // android.widget.AutoCompleteTextView
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
        super.setOnItemSelectedListener(onItemSelectedListener);
        this.f.f8041q = getOnItemSelectedListener();
    }

    @Override // android.widget.TextView
    public void setRawInputType(int i5) {
        super.setRawInputType(i5);
        TextInputLayout textInputLayoutB = b();
        if (textInputLayoutB != null) {
            textInputLayoutB.s();
        }
    }

    public void setSimpleItemSelectedColor(int i5) {
        this.f2565l = i5;
        if (getAdapter() instanceof t) {
            ((t) getAdapter()).a();
        }
    }

    public void setSimpleItemSelectedRippleColor(ColorStateList colorStateList) {
        this.f2566m = colorStateList;
        if (getAdapter() instanceof t) {
            ((t) getAdapter()).a();
        }
    }

    public void setSimpleItems(int i5) {
        setSimpleItems(getResources().getStringArray(i5));
    }

    @Override // android.widget.AutoCompleteTextView
    public final void showDropDown() {
        AccessibilityManager accessibilityManager = this.f2560g;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.f.r();
        }
    }

    public void setSimpleItems(String[] strArr) {
        setAdapter(new t(this, getContext(), this.f2562i, strArr));
    }
}
