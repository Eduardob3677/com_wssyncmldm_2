package com.google.android.material.button;

import B.f;
import C1.a;
import C1.b;
import C1.c;
import J.Q;
import J1.m;
import P1.j;
import P1.k;
import P1.v;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import androidx.appcompat.widget.AppCompatButton;
import f1.AbstractC0420a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.WeakHashMap;
import s2.C0837c;
import z.AbstractC0936d;

/* loaded from: classes.dex */
public class MaterialButton extends AppCompatButton implements Checkable, v {

    /* renamed from: u, reason: collision with root package name */
    public static final int[] f5890u = {R.attr.state_checkable};

    /* renamed from: v, reason: collision with root package name */
    public static final int[] f5891v = {R.attr.state_checked};

    /* renamed from: g, reason: collision with root package name */
    public final c f5892g;

    /* renamed from: h, reason: collision with root package name */
    public final LinkedHashSet f5893h;

    /* renamed from: i, reason: collision with root package name */
    public a f5894i;

    /* renamed from: j, reason: collision with root package name */
    public PorterDuff.Mode f5895j;

    /* renamed from: k, reason: collision with root package name */
    public ColorStateList f5896k;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f5897l;

    /* renamed from: m, reason: collision with root package name */
    public String f5898m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f5899o;

    /* renamed from: p, reason: collision with root package name */
    public int f5900p;

    /* renamed from: q, reason: collision with root package name */
    public int f5901q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f5902r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f5903s;

    /* renamed from: t, reason: collision with root package name */
    public int f5904t;

    public MaterialButton(Context context, AttributeSet attributeSet) {
        super(U1.a.a(context, attributeSet, com.wssyncmldm.R.attr.materialButtonStyle, com.wssyncmldm.R.style.Widget_MaterialComponents_Button), attributeSet, com.wssyncmldm.R.attr.materialButtonStyle);
        this.f5893h = new LinkedHashSet();
        this.f5902r = false;
        this.f5903s = false;
        Context context2 = getContext();
        TypedArray typedArrayF = m.f(context2, attributeSet, v1.a.f9537l, com.wssyncmldm.R.attr.materialButtonStyle, com.wssyncmldm.R.style.Widget_MaterialComponents_Button, new int[0]);
        this.f5901q = typedArrayF.getDimensionPixelSize(12, 0);
        int i5 = typedArrayF.getInt(15, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        this.f5895j = m.g(i5, mode);
        this.f5896k = W1.a.B(getContext(), typedArrayF, 14);
        this.f5897l = W1.a.C(getContext(), typedArrayF, 10);
        this.f5904t = typedArrayF.getInteger(11, 1);
        this.n = typedArrayF.getDimensionPixelSize(13, 0);
        c cVar = new c(this, k.b(context2, attributeSet, com.wssyncmldm.R.attr.materialButtonStyle, com.wssyncmldm.R.style.Widget_MaterialComponents_Button).a());
        this.f5892g = cVar;
        cVar.f342c = typedArrayF.getDimensionPixelOffset(1, 0);
        cVar.f343d = typedArrayF.getDimensionPixelOffset(2, 0);
        cVar.f344e = typedArrayF.getDimensionPixelOffset(3, 0);
        cVar.f = typedArrayF.getDimensionPixelOffset(4, 0);
        if (typedArrayF.hasValue(8)) {
            int dimensionPixelSize = typedArrayF.getDimensionPixelSize(8, -1);
            cVar.f345g = dimensionPixelSize;
            float f = dimensionPixelSize;
            j jVarE = cVar.f341b.e();
            jVarE.f2100e = new P1.a(f);
            jVarE.f = new P1.a(f);
            jVarE.f2101g = new P1.a(f);
            jVarE.f2102h = new P1.a(f);
            cVar.c(jVarE.a());
            cVar.f353p = true;
        }
        cVar.f346h = typedArrayF.getDimensionPixelSize(20, 0);
        cVar.f347i = m.g(typedArrayF.getInt(7, -1), mode);
        cVar.f348j = W1.a.B(getContext(), typedArrayF, 6);
        cVar.f349k = W1.a.B(getContext(), typedArrayF, 19);
        cVar.f350l = W1.a.B(getContext(), typedArrayF, 16);
        cVar.f354q = typedArrayF.getBoolean(5, false);
        cVar.f357t = typedArrayF.getDimensionPixelSize(9, 0);
        cVar.f355r = typedArrayF.getBoolean(21, true);
        WeakHashMap weakHashMap = Q.f940a;
        int paddingStart = getPaddingStart();
        int paddingTop = getPaddingTop();
        int paddingEnd = getPaddingEnd();
        int paddingBottom = getPaddingBottom();
        if (typedArrayF.hasValue(0)) {
            cVar.f352o = true;
            setSupportBackgroundTintList(cVar.f348j);
            setSupportBackgroundTintMode(cVar.f347i);
        } else {
            cVar.e();
        }
        setPaddingRelative(paddingStart + cVar.f342c, paddingTop + cVar.f344e, paddingEnd + cVar.f343d, paddingBottom + cVar.f);
        typedArrayF.recycle();
        setCompoundDrawablePadding(this.f5901q);
        d(this.f5897l != null);
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        return textAlignment != 1 ? (textAlignment == 6 || textAlignment == 3) ? Layout.Alignment.ALIGN_OPPOSITE : textAlignment != 4 ? Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER : getGravityTextAlignment();
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        return gravity != 1 ? (gravity == 5 || gravity == 8388613) ? Layout.Alignment.ALIGN_OPPOSITE : Layout.Alignment.ALIGN_NORMAL : Layout.Alignment.ALIGN_CENTER;
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String string = getText().toString();
        if (getTransformationMethod() != null) {
            string = getTransformationMethod().getTransformation(string, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(string, 0, string.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float fMax = 0.0f;
        for (int i5 = 0; i5 < lineCount; i5++) {
            fMax = Math.max(fMax, getLayout().getLineWidth(i5));
        }
        return (int) Math.ceil(fMax);
    }

    public final boolean a() {
        c cVar = this.f5892g;
        return cVar != null && cVar.f354q;
    }

    public final boolean b() {
        c cVar = this.f5892g;
        return (cVar == null || cVar.f352o) ? false : true;
    }

    public final void c() {
        int i5 = this.f5904t;
        boolean z4 = true;
        if (i5 != 1 && i5 != 2) {
            z4 = false;
        }
        if (z4) {
            setCompoundDrawablesRelative(this.f5897l, null, null, null);
            return;
        }
        if (i5 == 3 || i5 == 4) {
            setCompoundDrawablesRelative(null, null, this.f5897l, null);
        } else if (i5 == 16 || i5 == 32) {
            setCompoundDrawablesRelative(null, this.f5897l, null, null);
        }
    }

    public final void d(boolean z4) {
        Drawable drawable = this.f5897l;
        if (drawable != null) {
            Drawable drawableMutate = drawable.mutate();
            this.f5897l = drawableMutate;
            C.a.h(drawableMutate, this.f5896k);
            PorterDuff.Mode mode = this.f5895j;
            if (mode != null) {
                C.a.i(this.f5897l, mode);
            }
            int intrinsicWidth = this.n;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f5897l.getIntrinsicWidth();
            }
            int intrinsicHeight = this.n;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f5897l.getIntrinsicHeight();
            }
            Drawable drawable2 = this.f5897l;
            int i5 = this.f5899o;
            int i6 = this.f5900p;
            drawable2.setBounds(i5, i6, intrinsicWidth + i5, intrinsicHeight + i6);
            this.f5897l.setVisible(true, z4);
        }
        if (z4) {
            c();
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i7 = this.f5904t;
        if (((i7 == 1 || i7 == 2) && drawable3 != this.f5897l) || (((i7 == 3 || i7 == 4) && drawable5 != this.f5897l) || ((i7 == 16 || i7 == 32) && drawable4 != this.f5897l))) {
            c();
        }
    }

    public final void e(int i5, int i6) {
        if (this.f5897l == null || getLayout() == null) {
            return;
        }
        int i7 = this.f5904t;
        if (!(i7 == 1 || i7 == 2) && i7 != 3 && i7 != 4) {
            if (i7 == 16 || i7 == 32) {
                this.f5899o = 0;
                if (i7 == 16) {
                    this.f5900p = 0;
                    d(false);
                    return;
                }
                int intrinsicHeight = this.n;
                if (intrinsicHeight == 0) {
                    intrinsicHeight = this.f5897l.getIntrinsicHeight();
                }
                int iMax = Math.max(0, (((((i6 - getTextHeight()) - getPaddingTop()) - intrinsicHeight) - this.f5901q) - getPaddingBottom()) / 2);
                if (this.f5900p != iMax) {
                    this.f5900p = iMax;
                    d(false);
                    return;
                }
                return;
            }
            return;
        }
        this.f5900p = 0;
        Layout.Alignment actualTextAlignment = getActualTextAlignment();
        int i8 = this.f5904t;
        if (i8 == 1 || i8 == 3 || ((i8 == 2 && actualTextAlignment == Layout.Alignment.ALIGN_NORMAL) || (i8 == 4 && actualTextAlignment == Layout.Alignment.ALIGN_OPPOSITE))) {
            this.f5899o = 0;
            d(false);
            return;
        }
        int intrinsicWidth = this.n;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f5897l.getIntrinsicWidth();
        }
        int textLayoutWidth = i5 - getTextLayoutWidth();
        WeakHashMap weakHashMap = Q.f940a;
        int paddingEnd = (((textLayoutWidth - getPaddingEnd()) - intrinsicWidth) - this.f5901q) - getPaddingStart();
        if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
            paddingEnd /= 2;
        }
        if ((getLayoutDirection() == 1) != (this.f5904t == 4)) {
            paddingEnd = -paddingEnd;
        }
        if (this.f5899o != paddingEnd) {
            this.f5899o = paddingEnd;
            d(false);
        }
    }

    public String getA11yClassName() {
        if (TextUtils.isEmpty(this.f5898m)) {
            return (a() ? CompoundButton.class : Button.class).getName();
        }
        return this.f5898m;
    }

    @Override // android.view.View
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (b()) {
            return this.f5892g.f345g;
        }
        return 0;
    }

    public Drawable getIcon() {
        return this.f5897l;
    }

    public int getIconGravity() {
        return this.f5904t;
    }

    public int getIconPadding() {
        return this.f5901q;
    }

    public int getIconSize() {
        return this.n;
    }

    public ColorStateList getIconTint() {
        return this.f5896k;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.f5895j;
    }

    public int getInsetBottom() {
        return this.f5892g.f;
    }

    public int getInsetTop() {
        return this.f5892g.f344e;
    }

    public ColorStateList getRippleColor() {
        if (b()) {
            return this.f5892g.f350l;
        }
        return null;
    }

    public k getShapeAppearanceModel() {
        if (b()) {
            return this.f5892g.f341b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (b()) {
            return this.f5892g.f349k;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (b()) {
            return this.f5892g.f346h;
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public ColorStateList getSupportBackgroundTintList() {
        return b() ? this.f5892g.f348j : super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        return b() ? this.f5892g.f347i : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f5902r;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (b()) {
            AbstractC0420a.m0(this, this.f5892g.b(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i5) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i5 + 2);
        if (a()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f5890u);
        }
        if (this.f5902r) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f5891v);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.f5902r);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        accessibilityNodeInfo.setCheckable(a());
        accessibilityNodeInfo.setChecked(this.f5902r);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.f2270c);
        setChecked(bVar.f339e);
    }

    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        b bVar = new b(super.onSaveInstanceState());
        bVar.f339e = this.f5902r;
        return bVar;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
        super.onTextChanged(charSequence, i5, i6, i7);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (this.f5892g.f355r) {
            toggle();
        }
        return super.performClick();
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.f5897l != null) {
            if (this.f5897l.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    public void setA11yClassName(String str) {
        this.f5898m = str;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i5) {
        if (!b()) {
            super.setBackgroundColor(i5);
            return;
        }
        c cVar = this.f5892g;
        if (cVar.b(false) != null) {
            cVar.b(false).setTint(i5);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (!b()) {
            super.setBackgroundDrawable(drawable);
            return;
        }
        if (drawable == getBackground()) {
            getBackground().setState(drawable.getState());
            return;
        }
        Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
        c cVar = this.f5892g;
        cVar.f352o = true;
        ColorStateList colorStateList = cVar.f348j;
        MaterialButton materialButton = cVar.f340a;
        materialButton.setSupportBackgroundTintList(colorStateList);
        materialButton.setSupportBackgroundTintMode(cVar.f347i);
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(int i5) {
        setBackgroundDrawable(i5 != 0 ? AbstractC0420a.A(getContext(), i5) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z4) {
        if (b()) {
            this.f5892g.f354q = z4;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z4) {
        if (a() && isEnabled() && this.f5902r != z4) {
            this.f5902r = z4;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
                boolean z5 = this.f5902r;
                if (!materialButtonToggleGroup.f5910h) {
                    materialButtonToggleGroup.b(getId(), z5);
                }
            }
            if (this.f5903s) {
                return;
            }
            this.f5903s = true;
            Iterator it = this.f5893h.iterator();
            if (it.hasNext()) {
                f.F(it.next());
                throw null;
            }
            this.f5903s = false;
        }
    }

    public void setCornerRadius(int i5) {
        if (b()) {
            c cVar = this.f5892g;
            if (cVar.f353p && cVar.f345g == i5) {
                return;
            }
            cVar.f345g = i5;
            cVar.f353p = true;
            float f = i5;
            j jVarE = cVar.f341b.e();
            jVarE.f2100e = new P1.a(f);
            jVarE.f = new P1.a(f);
            jVarE.f2101g = new P1.a(f);
            jVarE.f2102h = new P1.a(f);
            cVar.c(jVarE.a());
        }
    }

    public void setCornerRadiusResource(int i5) {
        if (b()) {
            setCornerRadius(getResources().getDimensionPixelSize(i5));
        }
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (b()) {
            this.f5892g.b(false).j(f);
        }
    }

    public void setIcon(Drawable drawable) {
        if (this.f5897l != drawable) {
            this.f5897l = drawable;
            d(true);
            e(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i5) {
        if (this.f5904t != i5) {
            this.f5904t = i5;
            e(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(int i5) {
        if (this.f5901q != i5) {
            this.f5901q = i5;
            setCompoundDrawablePadding(i5);
        }
    }

    public void setIconResource(int i5) {
        setIcon(i5 != 0 ? AbstractC0420a.A(getContext(), i5) : null);
    }

    public void setIconSize(int i5) {
        if (i5 < 0) {
            throw new IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.n != i5) {
            this.n = i5;
            d(true);
        }
    }

    public void setIconTint(ColorStateList colorStateList) {
        if (this.f5896k != colorStateList) {
            this.f5896k = colorStateList;
            d(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.f5895j != mode) {
            this.f5895j = mode;
            d(false);
        }
    }

    public void setIconTintResource(int i5) {
        setIconTint(AbstractC0936d.b(getContext(), i5));
    }

    public void setInsetBottom(int i5) {
        c cVar = this.f5892g;
        cVar.d(cVar.f344e, i5);
    }

    public void setInsetTop(int i5) {
        c cVar = this.f5892g;
        cVar.d(i5, cVar.f);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(a aVar) {
        this.f5894i = aVar;
    }

    @Override // android.view.View
    public void setPressed(boolean z4) {
        a aVar = this.f5894i;
        if (aVar != null) {
            ((MaterialButtonToggleGroup) ((C0837c) aVar).f9022c).invalidate();
        }
        super.setPressed(z4);
    }

    public void setRippleColor(ColorStateList colorStateList) {
        if (b()) {
            c cVar = this.f5892g;
            if (cVar.f350l != colorStateList) {
                cVar.f350l = colorStateList;
                MaterialButton materialButton = cVar.f340a;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    RippleDrawable rippleDrawable = (RippleDrawable) materialButton.getBackground();
                    if (colorStateList == null) {
                        colorStateList = ColorStateList.valueOf(0);
                    }
                    rippleDrawable.setColor(colorStateList);
                }
            }
        }
    }

    public void setRippleColorResource(int i5) {
        if (b()) {
            setRippleColor(AbstractC0936d.b(getContext(), i5));
        }
    }

    @Override // P1.v
    public void setShapeAppearanceModel(k kVar) {
        if (!b()) {
            throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
        }
        this.f5892g.c(kVar);
    }

    public void setShouldDrawSurfaceColorStroke(boolean z4) {
        if (b()) {
            c cVar = this.f5892g;
            cVar.n = z4;
            cVar.f();
        }
    }

    public void setStrokeColor(ColorStateList colorStateList) {
        if (b()) {
            c cVar = this.f5892g;
            if (cVar.f349k != colorStateList) {
                cVar.f349k = colorStateList;
                cVar.f();
            }
        }
    }

    public void setStrokeColorResource(int i5) {
        if (b()) {
            setStrokeColor(AbstractC0936d.b(getContext(), i5));
        }
    }

    public void setStrokeWidth(int i5) {
        if (b()) {
            c cVar = this.f5892g;
            if (cVar.f346h != i5) {
                cVar.f346h = i5;
                cVar.f();
            }
        }
    }

    public void setStrokeWidthResource(int i5) {
        if (b()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i5));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (!b()) {
            super.setSupportBackgroundTintList(colorStateList);
            return;
        }
        c cVar = this.f5892g;
        if (cVar.f348j != colorStateList) {
            cVar.f348j = colorStateList;
            if (cVar.b(false) != null) {
                C.a.h(cVar.b(false), cVar.f348j);
            }
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (!b()) {
            super.setSupportBackgroundTintMode(mode);
            return;
        }
        c cVar = this.f5892g;
        if (cVar.f347i != mode) {
            cVar.f347i = mode;
            if (cVar.b(false) == null || cVar.f347i == null) {
                return;
            }
            C.a.i(cVar.b(false), cVar.f347i);
        }
    }

    @Override // android.view.View
    public void setTextAlignment(int i5) {
        super.setTextAlignment(i5);
        e(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z4) {
        this.f5892g.f355r = z4;
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.f5902r);
    }
}
