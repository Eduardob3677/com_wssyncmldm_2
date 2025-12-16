package com.google.android.material.chip;

import C.h;
import F1.b;
import F1.c;
import F1.d;
import F1.e;
import F1.f;
import F1.l;
import J.I;
import J.Q;
import J1.g;
import J1.m;
import P1.k;
import P1.v;
import U1.a;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.CompoundButton;
import android.widget.TextView;
import com.google.android.material.chip.Chip;
import com.idm.adapter.callback.IDMCallbackStatusInterface;
import f1.AbstractC0420a;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.Locale;
import java.util.WeakHashMap;
import k.C0616p;
import s2.C0837c;
import w1.C0900b;
import z.AbstractC0936d;

/* loaded from: classes.dex */
public class Chip extends C0616p implements e, v, g {

    /* renamed from: g, reason: collision with root package name */
    public f f5920g;

    /* renamed from: h, reason: collision with root package name */
    public InsetDrawable f5921h;

    /* renamed from: i, reason: collision with root package name */
    public RippleDrawable f5922i;

    /* renamed from: j, reason: collision with root package name */
    public View.OnClickListener f5923j;

    /* renamed from: k, reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f5924k;

    /* renamed from: l, reason: collision with root package name */
    public J1.f f5925l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f5926m;
    public boolean n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f5927o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f5928p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f5929q;

    /* renamed from: r, reason: collision with root package name */
    public int f5930r;

    /* renamed from: s, reason: collision with root package name */
    public int f5931s;

    /* renamed from: t, reason: collision with root package name */
    public CharSequence f5932t;

    /* renamed from: u, reason: collision with root package name */
    public final d f5933u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f5934v;

    /* renamed from: w, reason: collision with root package name */
    public final Rect f5935w;

    /* renamed from: x, reason: collision with root package name */
    public final RectF f5936x;

    /* renamed from: y, reason: collision with root package name */
    public final b f5937y;

    /* renamed from: z, reason: collision with root package name */
    public static final Rect f5919z = new Rect();

    /* renamed from: A, reason: collision with root package name */
    public static final int[] f5917A = {R.attr.state_selected};

    /* renamed from: B, reason: collision with root package name */
    public static final int[] f5918B = {R.attr.state_checkable};

    public Chip(Context context, AttributeSet attributeSet) {
        int resourceId;
        int resourceId2;
        int resourceId3;
        super(a.a(context, attributeSet, com.wssyncmldm.R.attr.chipStyle, com.wssyncmldm.R.style.Widget_MaterialComponents_Chip_Action), attributeSet, com.wssyncmldm.R.attr.chipStyle);
        this.f5935w = new Rect();
        this.f5936x = new RectF();
        this.f5937y = new b(0, this);
        Context context2 = getContext();
        if (attributeSet != null) {
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "background") != null) {
                Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableLeft") != null) {
                throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableStart") != null) {
                throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableEnd") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (attributeSet.getAttributeValue("http://schemas.android.com/apk/res/android", "drawableRight") != null) {
                throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
            }
            if (!attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res/android", "singleLine", true) || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "lines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "minLines", 1) != 1 || attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "maxLines", 1) != 1) {
                throw new UnsupportedOperationException("Chip does not support multi-line text");
            }
            if (attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 8388627) != 8388627) {
                Log.w("Chip", "Chip text must be vertically center and start aligned");
            }
        }
        f fVar = new f(context2, attributeSet);
        int[] iArr = v1.a.f9529c;
        TypedArray typedArrayF = m.f(fVar.f723i0, attributeSet, iArr, com.wssyncmldm.R.attr.chipStyle, com.wssyncmldm.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        fVar.f701J0 = typedArrayF.hasValue(37);
        Context context3 = fVar.f723i0;
        ColorStateList colorStateListB = W1.a.B(context3, typedArrayF, 24);
        if (fVar.f730z != colorStateListB) {
            fVar.f730z = colorStateListB;
            fVar.onStateChange(fVar.getState());
        }
        ColorStateList colorStateListB2 = W1.a.B(context3, typedArrayF, 11);
        if (fVar.f684A != colorStateListB2) {
            fVar.f684A = colorStateListB2;
            fVar.onStateChange(fVar.getState());
        }
        float dimension = typedArrayF.getDimension(19, 0.0f);
        if (fVar.f686B != dimension) {
            fVar.f686B = dimension;
            fVar.invalidateSelf();
            fVar.v();
        }
        if (typedArrayF.hasValue(12)) {
            fVar.B(typedArrayF.getDimension(12, 0.0f));
        }
        fVar.G(W1.a.B(context3, typedArrayF, 22));
        fVar.H(typedArrayF.getDimension(23, 0.0f));
        fVar.Q(W1.a.B(context3, typedArrayF, 36));
        String text = typedArrayF.getText(5);
        text = text == null ? "" : text;
        if (!TextUtils.equals(fVar.f694G, text)) {
            fVar.f694G = text;
            fVar.o0.f1123d = true;
            fVar.invalidateSelf();
            fVar.v();
        }
        M1.d dVar = (!typedArrayF.hasValue(0) || (resourceId3 = typedArrayF.getResourceId(0, 0)) == 0) ? null : new M1.d(context3, resourceId3);
        dVar.f1842k = typedArrayF.getDimension(1, dVar.f1842k);
        fVar.R(dVar);
        int i5 = typedArrayF.getInt(3, 0);
        if (i5 == 1) {
            fVar.f695G0 = TextUtils.TruncateAt.START;
        } else if (i5 == 2) {
            fVar.f695G0 = TextUtils.TruncateAt.MIDDLE;
        } else if (i5 == 3) {
            fVar.f695G0 = TextUtils.TruncateAt.END;
        }
        fVar.F(typedArrayF.getBoolean(18, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "chipIconVisible") == null) {
            fVar.F(typedArrayF.getBoolean(15, false));
        }
        fVar.C(W1.a.C(context3, typedArrayF, 14));
        if (typedArrayF.hasValue(17)) {
            fVar.E(W1.a.B(context3, typedArrayF, 17));
        }
        fVar.D(typedArrayF.getDimension(16, -1.0f));
        fVar.N(typedArrayF.getBoolean(31, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "closeIconVisible") == null) {
            fVar.N(typedArrayF.getBoolean(26, false));
        }
        fVar.I(W1.a.C(context3, typedArrayF, 25));
        fVar.M(W1.a.B(context3, typedArrayF, 30));
        fVar.K(typedArrayF.getDimension(28, 0.0f));
        fVar.x(typedArrayF.getBoolean(6, false));
        fVar.A(typedArrayF.getBoolean(10, false));
        if (attributeSet != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconEnabled") != null && attributeSet.getAttributeValue("http://schemas.android.com/apk/res-auto", "checkedIconVisible") == null) {
            fVar.A(typedArrayF.getBoolean(8, false));
        }
        fVar.y(W1.a.C(context3, typedArrayF, 7));
        if (typedArrayF.hasValue(9)) {
            fVar.z(W1.a.B(context3, typedArrayF, 9));
        }
        fVar.f714Y = (!typedArrayF.hasValue(39) || (resourceId2 = typedArrayF.getResourceId(39, 0)) == 0) ? null : C0900b.a(context3, resourceId2);
        fVar.f715Z = (!typedArrayF.hasValue(33) || (resourceId = typedArrayF.getResourceId(33, 0)) == 0) ? null : C0900b.a(context3, resourceId);
        float dimension2 = typedArrayF.getDimension(21, 0.0f);
        if (fVar.f716a0 != dimension2) {
            fVar.f716a0 = dimension2;
            fVar.invalidateSelf();
            fVar.v();
        }
        fVar.P(typedArrayF.getDimension(35, 0.0f));
        fVar.O(typedArrayF.getDimension(34, 0.0f));
        float dimension3 = typedArrayF.getDimension(41, 0.0f);
        if (fVar.f719d0 != dimension3) {
            fVar.f719d0 = dimension3;
            fVar.invalidateSelf();
            fVar.v();
        }
        float dimension4 = typedArrayF.getDimension(40, 0.0f);
        if (fVar.f720e0 != dimension4) {
            fVar.f720e0 = dimension4;
            fVar.invalidateSelf();
            fVar.v();
        }
        fVar.L(typedArrayF.getDimension(29, 0.0f));
        fVar.J(typedArrayF.getDimension(27, 0.0f));
        float dimension5 = typedArrayF.getDimension(13, 0.0f);
        if (fVar.f722h0 != dimension5) {
            fVar.f722h0 = dimension5;
            fVar.invalidateSelf();
            fVar.v();
        }
        fVar.f699I0 = typedArrayF.getDimensionPixelSize(4, Integer.MAX_VALUE);
        typedArrayF.recycle();
        m.a(context2, attributeSet, com.wssyncmldm.R.attr.chipStyle, com.wssyncmldm.R.style.Widget_MaterialComponents_Chip_Action);
        m.b(context2, attributeSet, iArr, com.wssyncmldm.R.attr.chipStyle, com.wssyncmldm.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, com.wssyncmldm.R.attr.chipStyle, com.wssyncmldm.R.style.Widget_MaterialComponents_Chip_Action);
        this.f5929q = typedArrayObtainStyledAttributes.getBoolean(32, false);
        this.f5931s = (int) Math.ceil(typedArrayObtainStyledAttributes.getDimension(20, (float) Math.ceil(TypedValue.applyDimension(1, 48, getContext().getResources().getDisplayMetrics()))));
        typedArrayObtainStyledAttributes.recycle();
        setChipDrawable(fVar);
        WeakHashMap weakHashMap = Q.f940a;
        fVar.j(I.i(this));
        m.a(context2, attributeSet, com.wssyncmldm.R.attr.chipStyle, com.wssyncmldm.R.style.Widget_MaterialComponents_Chip_Action);
        m.b(context2, attributeSet, iArr, com.wssyncmldm.R.attr.chipStyle, com.wssyncmldm.R.style.Widget_MaterialComponents_Chip_Action, new int[0]);
        TypedArray typedArrayObtainStyledAttributes2 = context2.obtainStyledAttributes(attributeSet, iArr, com.wssyncmldm.R.attr.chipStyle, com.wssyncmldm.R.style.Widget_MaterialComponents_Chip_Action);
        boolean zHasValue = typedArrayObtainStyledAttributes2.hasValue(37);
        typedArrayObtainStyledAttributes2.recycle();
        this.f5933u = new d(this, this);
        f();
        if (!zHasValue) {
            setOutlineProvider(new c(this));
        }
        setChecked(this.f5926m);
        setText(fVar.f694G);
        setEllipsize(fVar.f695G0);
        i();
        if (!this.f5920g.f697H0) {
            setLines(1);
            setHorizontallyScrolling(true);
        }
        setGravity(8388627);
        h();
        if (this.f5929q) {
            setMinHeight(this.f5931s);
        }
        this.f5930r = getLayoutDirection();
        super.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: F1.a
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z4) {
                Chip chip = this.f677a;
                J1.f fVar2 = chip.f5925l;
                if (fVar2 != null) {
                    I3.p pVar = (I3.p) ((C0837c) fVar2).f9022c;
                    if (!z4 ? pVar.k(chip, pVar.f919b) : pVar.a(chip)) {
                        pVar.i();
                    }
                }
                CompoundButton.OnCheckedChangeListener onCheckedChangeListener = chip.f5924k;
                if (onCheckedChangeListener != null) {
                    onCheckedChangeListener.onCheckedChanged(compoundButton, z4);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public RectF getCloseIconTouchBounds() {
        RectF rectF = this.f5936x;
        rectF.setEmpty();
        if (d() && this.f5923j != null) {
            f fVar = this.f5920g;
            Rect bounds = fVar.getBounds();
            rectF.setEmpty();
            if (fVar.U()) {
                float f = fVar.f722h0 + fVar.g0 + fVar.f708R + fVar.f721f0 + fVar.f720e0;
                if (C.b.a(fVar) == 0) {
                    float f5 = bounds.right;
                    rectF.right = f5;
                    rectF.left = f5 - f;
                } else {
                    float f6 = bounds.left;
                    rectF.left = f6;
                    rectF.right = f6 + f;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i5 = (int) closeIconTouchBounds.left;
        int i6 = (int) closeIconTouchBounds.top;
        int i7 = (int) closeIconTouchBounds.right;
        int i8 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.f5935w;
        rect.set(i5, i6, i7, i8);
        return rect;
    }

    private M1.d getTextAppearance() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.o0.f;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z4) {
        if (this.f5927o != z4) {
            this.f5927o = z4;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z4) {
        if (this.n != z4) {
            this.n = z4;
            refreshDrawableState();
        }
    }

    public final void c(int i5) {
        this.f5931s = i5;
        if (!this.f5929q) {
            InsetDrawable insetDrawable = this.f5921h;
            if (insetDrawable == null) {
                g();
                return;
            } else {
                if (insetDrawable != null) {
                    this.f5921h = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    g();
                    return;
                }
                return;
            }
        }
        int iMax = Math.max(0, i5 - ((int) this.f5920g.f686B));
        int iMax2 = Math.max(0, i5 - this.f5920g.getIntrinsicWidth());
        if (iMax2 <= 0 && iMax <= 0) {
            InsetDrawable insetDrawable2 = this.f5921h;
            if (insetDrawable2 == null) {
                g();
                return;
            } else {
                if (insetDrawable2 != null) {
                    this.f5921h = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    g();
                    return;
                }
                return;
            }
        }
        int i6 = iMax2 > 0 ? iMax2 / 2 : 0;
        int i7 = iMax > 0 ? iMax / 2 : 0;
        if (this.f5921h != null) {
            Rect rect = new Rect();
            this.f5921h.getPadding(rect);
            if (rect.top == i7 && rect.bottom == i7 && rect.left == i6 && rect.right == i6) {
                g();
                return;
            }
        }
        if (getMinHeight() != i5) {
            setMinHeight(i5);
        }
        if (getMinWidth() != i5) {
            setMinWidth(i5);
        }
        this.f5921h = new InsetDrawable((Drawable) this.f5920g, i6, i7, i6, i7);
        g();
    }

    public final boolean d() {
        f fVar = this.f5920g;
        if (fVar != null) {
            Object obj = fVar.f705N;
            if (obj == null) {
                obj = null;
            } else if (obj instanceof C.g) {
                ((h) ((C.g) obj)).getClass();
                obj = null;
            }
            if (obj != null) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        return !this.f5934v ? super.dispatchHoverEvent(motionEvent) : this.f5933u.m(motionEvent) || super.dispatchHoverEvent(motionEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0057  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.f5934v) {
            return super.dispatchKeyEvent(keyEvent);
        }
        d dVar = this.f5933u;
        dVar.getClass();
        boolean zQ = false;
        int i5 = 0;
        zQ = false;
        zQ = false;
        zQ = false;
        zQ = false;
        zQ = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i6 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode == 19) {
                                    i6 = 33;
                                } else if (keyCode == 21) {
                                    i6 = 17;
                                } else if (keyCode != 22) {
                                    i6 = 130;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z4 = false;
                                while (i5 < repeatCount && dVar.q(i6, null)) {
                                    i5++;
                                    z4 = true;
                                }
                                zQ = z4;
                                break;
                            }
                            break;
                        case 23:
                            if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                                int i7 = dVar.f2436l;
                                if (i7 != Integer.MIN_VALUE) {
                                    dVar.s(i7, 16);
                                }
                                zQ = true;
                                break;
                            }
                            break;
                    }
                }
            } else if (keyEvent.hasNoModifiers()) {
                zQ = dVar.q(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                zQ = dVar.q(1, null);
            }
        }
        if (!zQ || dVar.f2436l == Integer.MIN_VALUE) {
            return super.dispatchKeyEvent(keyEvent);
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [boolean, int] */
    @Override // k.C0616p, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        int i5;
        super.drawableStateChanged();
        f fVar = this.f5920g;
        boolean zW = false;
        if (fVar != null && f.u(fVar.f705N)) {
            f fVar2 = this.f5920g;
            ?? IsEnabled = isEnabled();
            int i6 = IsEnabled;
            if (this.f5928p) {
                i6 = IsEnabled + 1;
            }
            int i7 = i6;
            if (this.f5927o) {
                i7 = i6 + 1;
            }
            int i8 = i7;
            if (this.n) {
                i8 = i7 + 1;
            }
            int i9 = i8;
            if (isChecked()) {
                i9 = i8 + 1;
            }
            int[] iArr = new int[i9];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i5 = 1;
            } else {
                i5 = 0;
            }
            if (this.f5928p) {
                iArr[i5] = 16842908;
                i5++;
            }
            if (this.f5927o) {
                iArr[i5] = 16843623;
                i5++;
            }
            if (this.n) {
                iArr[i5] = 16842919;
                i5++;
            }
            if (isChecked()) {
                iArr[i5] = 16842913;
            }
            if (!Arrays.equals(fVar2.f688C0, iArr)) {
                fVar2.f688C0 = iArr;
                if (fVar2.U()) {
                    zW = fVar2.w(fVar2.getState(), iArr);
                }
            }
        }
        if (zW) {
            invalidate();
        }
    }

    public final boolean e() {
        f fVar = this.f5920g;
        return fVar != null && fVar.f710U;
    }

    public final void f() {
        f fVar;
        if (!d() || (fVar = this.f5920g) == null || !fVar.f704M || this.f5923j == null) {
            Q.h(this, null);
            this.f5934v = false;
        } else {
            Q.h(this, this.f5933u);
            this.f5934v = true;
        }
    }

    public final void g() {
        ColorStateList colorStateListValueOf = this.f5920g.f692F;
        if (colorStateListValueOf == null) {
            colorStateListValueOf = ColorStateList.valueOf(0);
        }
        this.f5922i = new RippleDrawable(colorStateListValueOf, getBackgroundDrawable(), null);
        f fVar = this.f5920g;
        if (fVar.f690D0) {
            fVar.f690D0 = false;
            fVar.f691E0 = null;
            fVar.onStateChange(fVar.getState());
        }
        RippleDrawable rippleDrawable = this.f5922i;
        WeakHashMap weakHashMap = Q.f940a;
        setBackground(rippleDrawable);
        h();
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.f5932t)) {
            return this.f5932t;
        }
        if (!e()) {
            return isClickable() ? "android.widget.Button" : "android.view.View";
        }
        ViewParent parent = getParent();
        return ((parent instanceof l) && ((l) parent).f737i.f918a) ? "android.widget.RadioButton" : "android.widget.Button";
    }

    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.f5921h;
        return insetDrawable == null ? this.f5920g : insetDrawable;
    }

    public Drawable getCheckedIcon() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f712W;
        }
        return null;
    }

    public ColorStateList getCheckedIconTint() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f713X;
        }
        return null;
    }

    public ColorStateList getChipBackgroundColor() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f684A;
        }
        return null;
    }

    public float getChipCornerRadius() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return Math.max(0.0f, fVar.s());
        }
        return 0.0f;
    }

    public Drawable getChipDrawable() {
        return this.f5920g;
    }

    public float getChipEndPadding() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f722h0;
        }
        return 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getChipIcon() {
        Drawable drawable;
        f fVar = this.f5920g;
        if (fVar == null || (drawable = fVar.f698I) == 0) {
            return null;
        }
        if (!(drawable instanceof C.g)) {
            return drawable;
        }
        ((h) ((C.g) drawable)).getClass();
        return null;
    }

    public float getChipIconSize() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f702K;
        }
        return 0.0f;
    }

    public ColorStateList getChipIconTint() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f700J;
        }
        return null;
    }

    public float getChipMinHeight() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f686B;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f716a0;
        }
        return 0.0f;
    }

    public ColorStateList getChipStrokeColor() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f689D;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.E;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Drawable getCloseIcon() {
        Drawable drawable;
        f fVar = this.f5920g;
        if (fVar == null || (drawable = fVar.f705N) == 0) {
            return null;
        }
        if (!(drawable instanceof C.g)) {
            return drawable;
        }
        ((h) ((C.g) drawable)).getClass();
        return null;
    }

    public CharSequence getCloseIconContentDescription() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f709T;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.g0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f708R;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f721f0;
        }
        return 0.0f;
    }

    public ColorStateList getCloseIconTint() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f707Q;
        }
        return null;
    }

    @Override // android.widget.TextView
    public TextUtils.TruncateAt getEllipsize() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f695G0;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.f5934v) {
            d dVar = this.f5933u;
            if (dVar.f2436l == 1 || dVar.f2435k == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    public C0900b getHideMotionSpec() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f715Z;
        }
        return null;
    }

    public float getIconEndPadding() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f718c0;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f717b0;
        }
        return 0.0f;
    }

    public ColorStateList getRippleColor() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f692F;
        }
        return null;
    }

    public k getShapeAppearanceModel() {
        return this.f5920g.f2075c.f2055a;
    }

    public C0900b getShowMotionSpec() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f714Y;
        }
        return null;
    }

    public float getTextEndPadding() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f720e0;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        f fVar = this.f5920g;
        if (fVar != null) {
            return fVar.f719d0;
        }
        return 0.0f;
    }

    public final void h() {
        f fVar;
        if (TextUtils.isEmpty(getText()) || (fVar = this.f5920g) == null) {
            return;
        }
        int iR = (int) (fVar.r() + fVar.f722h0 + fVar.f720e0);
        f fVar2 = this.f5920g;
        int iQ = (int) (fVar2.q() + fVar2.f716a0 + fVar2.f719d0);
        if (this.f5921h != null) {
            Rect rect = new Rect();
            this.f5921h.getPadding(rect);
            iQ += rect.left;
            iR += rect.right;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        WeakHashMap weakHashMap = Q.f940a;
        setPaddingRelative(iQ, paddingTop, iR, paddingBottom);
    }

    public final void i() {
        TextPaint paint = getPaint();
        f fVar = this.f5920g;
        if (fVar != null) {
            paint.drawableState = fVar.getState();
        }
        M1.d textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.e(getContext(), paint, this.f5937y);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC0420a.m0(this, this.f5920g);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i5) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i5 + 2);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f5917A);
        }
        if (e()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f5918B);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z4, int i5, Rect rect) {
        super.onFocusChanged(z4, i5, rect);
        if (this.f5934v) {
            d dVar = this.f5933u;
            int i6 = dVar.f2436l;
            if (i6 != Integer.MIN_VALUE) {
                dVar.j(i6);
            }
            if (z4) {
                dVar.q(i5, rect);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 7) {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        } else if (actionMasked == 10) {
            setCloseIconHovered(false);
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        int i5;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        accessibilityNodeInfo.setCheckable(e());
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof l) {
            l lVar = (l) getParent();
            if (lVar.f1102e) {
                i5 = 0;
                for (int i6 = 0; i6 < lVar.getChildCount(); i6++) {
                    View childAt = lVar.getChildAt(i6);
                    if ((childAt instanceof Chip) && lVar.getChildAt(i6).getVisibility() == 0) {
                        if (((Chip) childAt) == this) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                }
                i5 = -1;
            } else {
                i5 = -1;
            }
            Object tag = getTag(com.wssyncmldm.R.id.row_index_key);
            accessibilityNodeInfo.setCollectionItemInfo((AccessibilityNodeInfo.CollectionItemInfo) K.g.a(isChecked(), tag instanceof Integer ? ((Integer) tag).intValue() : -1, 1, i5, 1).f1200a);
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i5) {
        return (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) ? PointerIcon.getSystemIcon(getContext(), IDMCallbackStatusInterface.IDM_STATUS_INITIALIZED) : super.onResolvePointerIcon(motionEvent, i5);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i5) {
        super.onRtlPropertiesChanged(i5);
        if (this.f5930r != i5) {
            this.f5930r = i5;
            h();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        if (r0 != 3) goto L28;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z4;
        int actionMasked = motionEvent.getActionMasked();
        boolean zContains = getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY());
        if (actionMasked != 0) {
            if (actionMasked != 1) {
                if (actionMasked == 2) {
                    if (this.n) {
                        if (!zContains) {
                            setCloseIconPressed(false);
                        }
                        z4 = true;
                    }
                }
                z4 = false;
            } else {
                if (this.n) {
                    playSoundEffect(0);
                    View.OnClickListener onClickListener = this.f5923j;
                    if (onClickListener != null) {
                        onClickListener.onClick(this);
                    }
                    if (this.f5934v) {
                        this.f5933u.y(1, 1);
                    }
                    z4 = true;
                }
                setCloseIconPressed(false);
            }
            z4 = false;
            setCloseIconPressed(false);
        } else {
            if (zContains) {
                setCloseIconPressed(true);
                z4 = true;
            }
            z4 = false;
        }
        return z4 || super.onTouchEvent(motionEvent);
    }

    public void setAccessibilityClassName(CharSequence charSequence) {
        this.f5932t = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f5922i) {
            super.setBackground(drawable);
        } else {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i5) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // k.C0616p, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable == getBackgroundDrawable() || drawable == this.f5922i) {
            super.setBackgroundDrawable(drawable);
        } else {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        }
    }

    @Override // k.C0616p, android.view.View
    public void setBackgroundResource(int i5) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z4) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.x(z4);
        }
    }

    public void setCheckableResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.x(fVar.f723i0.getResources().getBoolean(i5));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z4) {
        f fVar = this.f5920g;
        if (fVar == null) {
            this.f5926m = z4;
        } else if (fVar.f710U) {
            super.setChecked(z4);
        }
    }

    public void setCheckedIcon(Drawable drawable) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.y(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z4) {
        setCheckedIconVisible(z4);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(int i5) {
        setCheckedIconVisible(i5);
    }

    public void setCheckedIconResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.y(AbstractC0420a.A(fVar.f723i0, i5));
        }
    }

    public void setCheckedIconTint(ColorStateList colorStateList) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.z(colorStateList);
        }
    }

    public void setCheckedIconTintResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.z(AbstractC0936d.b(fVar.f723i0, i5));
        }
    }

    public void setCheckedIconVisible(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.A(fVar.f723i0.getResources().getBoolean(i5));
        }
    }

    public void setChipBackgroundColor(ColorStateList colorStateList) {
        f fVar = this.f5920g;
        if (fVar == null || fVar.f684A == colorStateList) {
            return;
        }
        fVar.f684A = colorStateList;
        fVar.onStateChange(fVar.getState());
    }

    public void setChipBackgroundColorResource(int i5) {
        ColorStateList colorStateListB;
        f fVar = this.f5920g;
        if (fVar == null || fVar.f684A == (colorStateListB = AbstractC0936d.b(fVar.f723i0, i5))) {
            return;
        }
        fVar.f684A = colorStateListB;
        fVar.onStateChange(fVar.getState());
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.B(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.B(fVar.f723i0.getResources().getDimension(i5));
        }
    }

    public void setChipDrawable(f fVar) {
        f fVar2 = this.f5920g;
        if (fVar2 != fVar) {
            if (fVar2 != null) {
                fVar2.f693F0 = new WeakReference(null);
            }
            this.f5920g = fVar;
            fVar.f697H0 = false;
            fVar.f693F0 = new WeakReference(this);
            c(this.f5931s);
        }
    }

    public void setChipEndPadding(float f) {
        f fVar = this.f5920g;
        if (fVar == null || fVar.f722h0 == f) {
            return;
        }
        fVar.f722h0 = f;
        fVar.invalidateSelf();
        fVar.v();
    }

    public void setChipEndPaddingResource(int i5) throws Resources.NotFoundException {
        f fVar = this.f5920g;
        if (fVar != null) {
            float dimension = fVar.f723i0.getResources().getDimension(i5);
            if (fVar.f722h0 != dimension) {
                fVar.f722h0 = dimension;
                fVar.invalidateSelf();
                fVar.v();
            }
        }
    }

    public void setChipIcon(Drawable drawable) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.C(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z4) {
        setChipIconVisible(z4);
    }

    @Deprecated
    public void setChipIconEnabledResource(int i5) {
        setChipIconVisible(i5);
    }

    public void setChipIconResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.C(AbstractC0420a.A(fVar.f723i0, i5));
        }
    }

    public void setChipIconSize(float f) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.D(f);
        }
    }

    public void setChipIconSizeResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.D(fVar.f723i0.getResources().getDimension(i5));
        }
    }

    public void setChipIconTint(ColorStateList colorStateList) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.E(colorStateList);
        }
    }

    public void setChipIconTintResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.E(AbstractC0936d.b(fVar.f723i0, i5));
        }
    }

    public void setChipIconVisible(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.F(fVar.f723i0.getResources().getBoolean(i5));
        }
    }

    public void setChipMinHeight(float f) {
        f fVar = this.f5920g;
        if (fVar == null || fVar.f686B == f) {
            return;
        }
        fVar.f686B = f;
        fVar.invalidateSelf();
        fVar.v();
    }

    public void setChipMinHeightResource(int i5) throws Resources.NotFoundException {
        f fVar = this.f5920g;
        if (fVar != null) {
            float dimension = fVar.f723i0.getResources().getDimension(i5);
            if (fVar.f686B != dimension) {
                fVar.f686B = dimension;
                fVar.invalidateSelf();
                fVar.v();
            }
        }
    }

    public void setChipStartPadding(float f) {
        f fVar = this.f5920g;
        if (fVar == null || fVar.f716a0 == f) {
            return;
        }
        fVar.f716a0 = f;
        fVar.invalidateSelf();
        fVar.v();
    }

    public void setChipStartPaddingResource(int i5) throws Resources.NotFoundException {
        f fVar = this.f5920g;
        if (fVar != null) {
            float dimension = fVar.f723i0.getResources().getDimension(i5);
            if (fVar.f716a0 != dimension) {
                fVar.f716a0 = dimension;
                fVar.invalidateSelf();
                fVar.v();
            }
        }
    }

    public void setChipStrokeColor(ColorStateList colorStateList) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.G(colorStateList);
        }
    }

    public void setChipStrokeColorResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.G(AbstractC0936d.b(fVar.f723i0, i5));
        }
    }

    public void setChipStrokeWidth(float f) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.H(f);
        }
    }

    public void setChipStrokeWidthResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.H(fVar.f723i0.getResources().getDimension(i5));
        }
    }

    @Deprecated
    public void setChipText(CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(int i5) {
        setText(getResources().getString(i5));
    }

    public void setCloseIcon(Drawable drawable) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.I(drawable);
        }
        f();
    }

    public void setCloseIconContentDescription(CharSequence charSequence) {
        f fVar = this.f5920g;
        if (fVar == null || fVar.f709T == charSequence) {
            return;
        }
        String str = H.b.f814d;
        H.b bVar = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? H.b.f816g : H.b.f;
        fVar.f709T = bVar.c(charSequence, bVar.f819c);
        fVar.invalidateSelf();
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z4) {
        setCloseIconVisible(z4);
    }

    @Deprecated
    public void setCloseIconEnabledResource(int i5) {
        setCloseIconVisible(i5);
    }

    public void setCloseIconEndPadding(float f) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.J(f);
        }
    }

    public void setCloseIconEndPaddingResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.J(fVar.f723i0.getResources().getDimension(i5));
        }
    }

    public void setCloseIconResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.I(AbstractC0420a.A(fVar.f723i0, i5));
        }
        f();
    }

    public void setCloseIconSize(float f) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.K(f);
        }
    }

    public void setCloseIconSizeResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.K(fVar.f723i0.getResources().getDimension(i5));
        }
    }

    public void setCloseIconStartPadding(float f) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.L(f);
        }
    }

    public void setCloseIconStartPaddingResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.L(fVar.f723i0.getResources().getDimension(i5));
        }
    }

    public void setCloseIconTint(ColorStateList colorStateList) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.M(colorStateList);
        }
    }

    public void setCloseIconTintResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.M(AbstractC0936d.b(fVar.f723i0, i5));
        }
    }

    public void setCloseIconVisible(int i5) {
        setCloseIconVisible(getResources().getBoolean(i5));
    }

    @Override // k.C0616p, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
    }

    @Override // k.C0616p, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 != null) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i5, int i6, int i7, int i8) {
        if (i5 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i7 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesRelativeWithIntrinsicBounds(i5, i6, i7, i8);
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i5, int i6, int i7, int i8) {
        if (i5 != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i7 != 0) {
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        super.setCompoundDrawablesWithIntrinsicBounds(i5, i6, i7, i8);
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.j(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.f5920g == null) {
            return;
        }
        if (truncateAt == TextUtils.TruncateAt.MARQUEE) {
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
        super.setEllipsize(truncateAt);
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.f695G0 = truncateAt;
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z4) {
        this.f5929q = z4;
        c(this.f5931s);
    }

    @Override // android.widget.TextView
    public void setGravity(int i5) {
        if (i5 != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i5);
        }
    }

    public void setHideMotionSpec(C0900b c0900b) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.f715Z = c0900b;
        }
    }

    public void setHideMotionSpecResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.f715Z = C0900b.a(fVar.f723i0, i5);
        }
    }

    public void setIconEndPadding(float f) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.O(f);
        }
    }

    public void setIconEndPaddingResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.O(fVar.f723i0.getResources().getDimension(i5));
        }
    }

    public void setIconStartPadding(float f) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.P(f);
        }
    }

    public void setIconStartPaddingResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.P(fVar.f723i0.getResources().getDimension(i5));
        }
    }

    @Override // J1.g
    public void setInternalOnCheckedChangeListener(J1.f fVar) {
        this.f5925l = fVar;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i5) {
        if (this.f5920g == null) {
            return;
        }
        super.setLayoutDirection(i5);
    }

    @Override // android.widget.TextView
    public void setLines(int i5) {
        if (i5 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setLines(i5);
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i5) {
        if (i5 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMaxLines(i5);
    }

    @Override // android.widget.TextView
    public void setMaxWidth(int i5) {
        super.setMaxWidth(i5);
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.f699I0 = i5;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i5) {
        if (i5 > 1) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setMinLines(i5);
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f5924k = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.f5923j = onClickListener;
        f();
    }

    public void setRippleColor(ColorStateList colorStateList) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.Q(colorStateList);
        }
        if (this.f5920g.f690D0) {
            return;
        }
        g();
    }

    public void setRippleColorResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.Q(AbstractC0936d.b(fVar.f723i0, i5));
            if (this.f5920g.f690D0) {
                return;
            }
            g();
        }
    }

    @Override // P1.v
    public void setShapeAppearanceModel(k kVar) {
        this.f5920g.setShapeAppearanceModel(kVar);
    }

    public void setShowMotionSpec(C0900b c0900b) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.f714Y = c0900b;
        }
    }

    public void setShowMotionSpecResource(int i5) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.f714Y = C0900b.a(fVar.f723i0, i5);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z4) {
        if (!z4) {
            throw new UnsupportedOperationException("Chip does not support multi-line text");
        }
        super.setSingleLine(z4);
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        f fVar = this.f5920g;
        if (fVar == null) {
            return;
        }
        if (charSequence == null) {
            charSequence = "";
        }
        super.setText(fVar.f697H0 ? null : charSequence, bufferType);
        f fVar2 = this.f5920g;
        if (fVar2 == null || TextUtils.equals(fVar2.f694G, charSequence)) {
            return;
        }
        fVar2.f694G = charSequence;
        fVar2.o0.f1123d = true;
        fVar2.invalidateSelf();
        fVar2.v();
    }

    public void setTextAppearance(M1.d dVar) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.R(dVar);
        }
        i();
    }

    public void setTextAppearanceResource(int i5) {
        setTextAppearance(getContext(), i5);
    }

    public void setTextEndPadding(float f) {
        f fVar = this.f5920g;
        if (fVar == null || fVar.f720e0 == f) {
            return;
        }
        fVar.f720e0 = f;
        fVar.invalidateSelf();
        fVar.v();
    }

    public void setTextEndPaddingResource(int i5) throws Resources.NotFoundException {
        f fVar = this.f5920g;
        if (fVar != null) {
            float dimension = fVar.f723i0.getResources().getDimension(i5);
            if (fVar.f720e0 != dimension) {
                fVar.f720e0 = dimension;
                fVar.invalidateSelf();
                fVar.v();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i5, float f) {
        super.setTextSize(i5, f);
        f fVar = this.f5920g;
        if (fVar != null) {
            float fApplyDimension = TypedValue.applyDimension(i5, f, getResources().getDisplayMetrics());
            J1.k kVar = fVar.o0;
            M1.d dVar = kVar.f;
            if (dVar != null) {
                dVar.f1842k = fApplyDimension;
                kVar.f1120a.setTextSize(fApplyDimension);
                fVar.v();
                fVar.invalidateSelf();
            }
        }
        i();
    }

    public void setTextStartPadding(float f) {
        f fVar = this.f5920g;
        if (fVar == null || fVar.f719d0 == f) {
            return;
        }
        fVar.f719d0 = f;
        fVar.invalidateSelf();
        fVar.v();
    }

    public void setTextStartPaddingResource(int i5) throws Resources.NotFoundException {
        f fVar = this.f5920g;
        if (fVar != null) {
            float dimension = fVar.f723i0.getResources().getDimension(i5);
            if (fVar.f719d0 != dimension) {
                fVar.f719d0 = dimension;
                fVar.invalidateSelf();
                fVar.v();
            }
        }
    }

    public void setCloseIconVisible(boolean z4) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.N(z4);
        }
        f();
    }

    public void setCheckedIconVisible(boolean z4) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.A(z4);
        }
    }

    public void setChipIconVisible(boolean z4) {
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.F(z4);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i5) {
        super.setTextAppearance(context, i5);
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.R(new M1.d(fVar.f723i0, i5));
        }
        i();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i5) {
        super.setTextAppearance(i5);
        f fVar = this.f5920g;
        if (fVar != null) {
            fVar.R(new M1.d(fVar.f723i0, i5));
        }
        i();
    }
}
