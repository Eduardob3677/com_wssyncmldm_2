package E1;

import A.k;
import A.r;
import C0.q;
import D0.d;
import D0.e;
import D0.f;
import J.r0;
import J1.m;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.AnimatedVectorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import com.wssyncmldm.R;
import f1.AbstractC0420a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import k.C0616p;

/* loaded from: classes.dex */
public final class c extends C0616p {

    /* renamed from: A, reason: collision with root package name */
    public static final int[] f521A = {R.attr.state_indeterminate};

    /* renamed from: B, reason: collision with root package name */
    public static final int[] f522B = {R.attr.state_error};

    /* renamed from: C, reason: collision with root package name */
    public static final int[][] f523C = {new int[]{android.R.attr.state_enabled, R.attr.state_error}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: D, reason: collision with root package name */
    public static final int f524D = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");

    /* renamed from: g, reason: collision with root package name */
    public final LinkedHashSet f525g;

    /* renamed from: h, reason: collision with root package name */
    public final LinkedHashSet f526h;

    /* renamed from: i, reason: collision with root package name */
    public ColorStateList f527i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f528j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f529k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f530l;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence f531m;
    public Drawable n;

    /* renamed from: o, reason: collision with root package name */
    public Drawable f532o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f533p;

    /* renamed from: q, reason: collision with root package name */
    public ColorStateList f534q;

    /* renamed from: r, reason: collision with root package name */
    public ColorStateList f535r;

    /* renamed from: s, reason: collision with root package name */
    public PorterDuff.Mode f536s;

    /* renamed from: t, reason: collision with root package name */
    public int f537t;

    /* renamed from: u, reason: collision with root package name */
    public int[] f538u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f539v;

    /* renamed from: w, reason: collision with root package name */
    public CharSequence f540w;

    /* renamed from: x, reason: collision with root package name */
    public CompoundButton.OnCheckedChangeListener f541x;

    /* renamed from: y, reason: collision with root package name */
    public final f f542y;

    /* renamed from: z, reason: collision with root package name */
    public final a f543z;

    public c(Context context, AttributeSet attributeSet) {
        super(U1.a.a(context, attributeSet, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox), attributeSet, R.attr.checkboxStyle);
        this.f525g = new LinkedHashSet();
        this.f526h = new LinkedHashSet();
        Context context2 = getContext();
        f fVar = new f(context2);
        Resources resources = context2.getResources();
        Resources.Theme theme = context2.getTheme();
        ThreadLocal threadLocal = r.f36a;
        Drawable drawableA = k.a(resources, R.drawable.mtrl_checkbox_button_checked_unchecked, theme);
        fVar.f395c = drawableA;
        drawableA.setCallback(fVar.f394h);
        new e(fVar.f395c.getConstantState());
        this.f542y = fVar;
        this.f543z = new a(this);
        Context context3 = getContext();
        this.n = O.c.a(this);
        this.f534q = getSuperButtonTintList();
        setSupportButtonTintList(null);
        int[] iArr = v1.a.f9540p;
        m.a(context3, attributeSet, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
        m.b(context3, attributeSet, iArr, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox, new int[0]);
        TypedArray typedArrayObtainStyledAttributes = context3.obtainStyledAttributes(attributeSet, iArr, R.attr.checkboxStyle, R.style.Widget_MaterialComponents_CompoundButton_CheckBox);
        r0 r0Var = new r0(context3, typedArrayObtainStyledAttributes);
        this.f532o = r0Var.g(2);
        if (this.n != null && L2.b.F(context3, R.attr.isMaterial3Theme, false)) {
            int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
            int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(1, 0);
            if (resourceId == f524D && resourceId2 == 0) {
                super.setButtonDrawable((Drawable) null);
                this.n = AbstractC0420a.A(context3, R.drawable.mtrl_checkbox_button);
                this.f533p = true;
                if (this.f532o == null) {
                    this.f532o = AbstractC0420a.A(context3, R.drawable.mtrl_checkbox_button_icon);
                }
            }
        }
        this.f535r = W1.a.A(context3, r0Var, 3);
        this.f536s = m.g(typedArrayObtainStyledAttributes.getInt(4, -1), PorterDuff.Mode.SRC_IN);
        this.f528j = typedArrayObtainStyledAttributes.getBoolean(10, false);
        this.f529k = typedArrayObtainStyledAttributes.getBoolean(6, true);
        this.f530l = typedArrayObtainStyledAttributes.getBoolean(9, false);
        this.f531m = typedArrayObtainStyledAttributes.getText(8);
        if (typedArrayObtainStyledAttributes.hasValue(7)) {
            setCheckedState(typedArrayObtainStyledAttributes.getInt(7, 0));
        }
        r0Var.n();
        a();
    }

    private String getButtonStateDescription() {
        int i5 = this.f537t;
        return i5 == 1 ? getResources().getString(R.string.mtrl_checkbox_state_description_checked) : i5 == 0 ? getResources().getString(R.string.mtrl_checkbox_state_description_unchecked) : getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f527i == null) {
            int iY = W1.a.y(R.attr.colorControlActivated, this);
            int iY2 = W1.a.y(R.attr.colorError, this);
            int iY3 = W1.a.y(R.attr.colorSurface, this);
            int iY4 = W1.a.y(R.attr.colorOnSurface, this);
            this.f527i = new ColorStateList(f523C, new int[]{W1.a.W(iY3, 1.0f, iY2), W1.a.W(iY3, 1.0f, iY), W1.a.W(iY3, 0.54f, iY4), W1.a.W(iY3, 0.38f, iY4), W1.a.W(iY3, 0.38f, iY4)});
        }
        return this.f527i;
    }

    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.f534q;
        return colorStateList != null ? colorStateList : super.getButtonTintList() != null ? super.getButtonTintList() : getSupportButtonTintList();
    }

    public final void a() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        q qVar;
        Drawable drawableMutate = this.n;
        ColorStateList colorStateList3 = this.f534q;
        PorterDuff.Mode modeB = O.b.b(this);
        if (drawableMutate == null) {
            drawableMutate = null;
        } else if (colorStateList3 != null) {
            drawableMutate = drawableMutate.mutate();
            if (modeB != null) {
                C.a.i(drawableMutate, modeB);
            }
        }
        this.n = drawableMutate;
        Drawable drawableMutate2 = this.f532o;
        ColorStateList colorStateList4 = this.f535r;
        PorterDuff.Mode mode = this.f536s;
        if (drawableMutate2 == null) {
            drawableMutate2 = null;
        } else if (colorStateList4 != null) {
            drawableMutate2 = drawableMutate2.mutate();
            if (mode != null) {
                C.a.i(drawableMutate2, mode);
            }
        }
        this.f532o = drawableMutate2;
        if (this.f533p) {
            f fVar = this.f542y;
            if (fVar != null) {
                Drawable drawable = fVar.f395c;
                a aVar = this.f543z;
                if (drawable != null) {
                    AnimatedVectorDrawable animatedVectorDrawable = (AnimatedVectorDrawable) drawable;
                    if (aVar.f518a == null) {
                        aVar.f518a = new D0.b(aVar);
                    }
                    animatedVectorDrawable.unregisterAnimationCallback(aVar.f518a);
                }
                ArrayList arrayList = fVar.f393g;
                d dVar = fVar.f391d;
                if (arrayList != null && aVar != null) {
                    arrayList.remove(aVar);
                    if (fVar.f393g.size() == 0 && (qVar = fVar.f) != null) {
                        dVar.f386b.removeListener(qVar);
                        fVar.f = null;
                    }
                }
                Drawable drawable2 = fVar.f395c;
                if (drawable2 != null) {
                    AnimatedVectorDrawable animatedVectorDrawable2 = (AnimatedVectorDrawable) drawable2;
                    if (aVar.f518a == null) {
                        aVar.f518a = new D0.b(aVar);
                    }
                    animatedVectorDrawable2.registerAnimationCallback(aVar.f518a);
                } else if (aVar != null) {
                    if (fVar.f393g == null) {
                        fVar.f393g = new ArrayList();
                    }
                    if (!fVar.f393g.contains(aVar)) {
                        fVar.f393g.add(aVar);
                        if (fVar.f == null) {
                            fVar.f = new q(1, fVar);
                        }
                        dVar.f386b.addListener(fVar.f);
                    }
                }
            }
            Drawable drawable3 = this.n;
            if ((drawable3 instanceof AnimatedStateListDrawable) && fVar != null) {
                ((AnimatedStateListDrawable) drawable3).addTransition(R.id.checked, R.id.unchecked, fVar, false);
                ((AnimatedStateListDrawable) this.n).addTransition(R.id.indeterminate, R.id.unchecked, fVar, false);
            }
        }
        Drawable drawable4 = this.n;
        if (drawable4 != null && (colorStateList2 = this.f534q) != null) {
            C.a.h(drawable4, colorStateList2);
        }
        Drawable drawable5 = this.f532o;
        if (drawable5 != null && (colorStateList = this.f535r) != null) {
            C.a.h(drawable5, colorStateList);
        }
        Drawable drawable6 = this.n;
        Drawable drawable7 = this.f532o;
        if (drawable6 == null) {
            drawable6 = drawable7;
        } else if (drawable7 != null) {
            int intrinsicWidth = drawable7.getIntrinsicWidth();
            if (intrinsicWidth == -1) {
                intrinsicWidth = drawable6.getIntrinsicWidth();
            }
            int intrinsicHeight = drawable7.getIntrinsicHeight();
            if (intrinsicHeight == -1) {
                intrinsicHeight = drawable6.getIntrinsicHeight();
            }
            if (intrinsicWidth > drawable6.getIntrinsicWidth() || intrinsicHeight > drawable6.getIntrinsicHeight()) {
                float f = intrinsicWidth / intrinsicHeight;
                if (f >= drawable6.getIntrinsicWidth() / drawable6.getIntrinsicHeight()) {
                    int intrinsicWidth2 = drawable6.getIntrinsicWidth();
                    intrinsicHeight = (int) (intrinsicWidth2 / f);
                    intrinsicWidth = intrinsicWidth2;
                } else {
                    intrinsicHeight = drawable6.getIntrinsicHeight();
                    intrinsicWidth = (int) (f * intrinsicHeight);
                }
            }
            LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable6, drawable7});
            layerDrawable.setLayerSize(1, intrinsicWidth, intrinsicHeight);
            layerDrawable.setLayerGravity(1, 17);
            drawable6 = layerDrawable;
        }
        super.setButtonDrawable(drawable6);
        refreshDrawableState();
    }

    @Override // android.widget.CompoundButton
    public Drawable getButtonDrawable() {
        return this.n;
    }

    public Drawable getButtonIconDrawable() {
        return this.f532o;
    }

    public ColorStateList getButtonIconTintList() {
        return this.f535r;
    }

    public PorterDuff.Mode getButtonIconTintMode() {
        return this.f536s;
    }

    @Override // android.widget.CompoundButton
    public ColorStateList getButtonTintList() {
        return this.f534q;
    }

    public int getCheckedState() {
        return this.f537t;
    }

    public CharSequence getErrorAccessibilityLabel() {
        return this.f531m;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final boolean isChecked() {
        return this.f537t == 1;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f528j && this.f534q == null && this.f535r == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i5) {
        int[] iArrCopyOf;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i5 + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f521A);
        }
        if (this.f530l) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f522B);
        }
        int i6 = 0;
        while (true) {
            if (i6 >= iArrOnCreateDrawableState.length) {
                iArrCopyOf = Arrays.copyOf(iArrOnCreateDrawableState, iArrOnCreateDrawableState.length + 1);
                iArrCopyOf[iArrOnCreateDrawableState.length] = 16842912;
                break;
            }
            int i7 = iArrOnCreateDrawableState[i6];
            if (i7 == 16842912) {
                iArrCopyOf = iArrOnCreateDrawableState;
                break;
            }
            if (i7 == 0) {
                iArrCopyOf = (int[]) iArrOnCreateDrawableState.clone();
                iArrCopyOf[i6] = 16842912;
                break;
            }
            i6++;
        }
        this.f538u = iArrCopyOf;
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable drawableA;
        if (!this.f529k || !TextUtils.isEmpty(getText()) || (drawableA = O.c.a(this)) == null) {
            super.onDraw(canvas);
            return;
        }
        int width = ((getWidth() - drawableA.getIntrinsicWidth()) / 2) * (m.e(this) ? -1 : 1);
        int iSave = canvas.save();
        canvas.translate(width, 0.0f);
        super.onDraw(canvas);
        canvas.restoreToCount(iSave);
        if (getBackground() != null) {
            Rect bounds = drawableA.getBounds();
            C.a.f(getBackground(), bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.f530l) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.f531m));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof b)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        b bVar = (b) parcelable;
        super.onRestoreInstanceState(bVar.getSuperState());
        setCheckedState(bVar.f520c);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        b bVar = new b(super.onSaveInstanceState());
        bVar.f520c = getCheckedState();
        return bVar;
    }

    @Override // k.C0616p, android.widget.CompoundButton
    public void setButtonDrawable(int i5) {
        setButtonDrawable(AbstractC0420a.A(getContext(), i5));
    }

    public void setButtonIconDrawable(Drawable drawable) {
        this.f532o = drawable;
        a();
    }

    public void setButtonIconDrawableResource(int i5) {
        setButtonIconDrawable(AbstractC0420a.A(getContext(), i5));
    }

    public void setButtonIconTintList(ColorStateList colorStateList) {
        if (this.f535r == colorStateList) {
            return;
        }
        this.f535r = colorStateList;
        a();
    }

    public void setButtonIconTintMode(PorterDuff.Mode mode) {
        if (this.f536s == mode) {
            return;
        }
        this.f536s = mode;
        a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(ColorStateList colorStateList) {
        if (this.f534q == colorStateList) {
            return;
        }
        this.f534q = colorStateList;
        a();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        a();
    }

    public void setCenterIfNoTextEnabled(boolean z4) {
        this.f529k = z4;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z4) {
        setCheckedState(z4 ? 1 : 0);
    }

    public void setCheckedState(int i5) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.f537t != i5) {
            this.f537t = i5;
            super.setChecked(i5 == 1);
            refreshDrawableState();
            if (this.f540w == null) {
                super.setStateDescription(getButtonStateDescription());
            }
            if (this.f539v) {
                return;
            }
            this.f539v = true;
            LinkedHashSet linkedHashSet = this.f526h;
            if (linkedHashSet != null) {
                Iterator it = linkedHashSet.iterator();
                if (it.hasNext()) {
                    B.f.F(it.next());
                    throw null;
                }
            }
            if (this.f537t != 2 && (onCheckedChangeListener = this.f541x) != null) {
                onCheckedChangeListener.onCheckedChanged(this, isChecked());
            }
            AutofillManager autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class);
            if (autofillManager != null) {
                autofillManager.notifyValueChanged(this);
            }
            this.f539v = false;
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void setEnabled(boolean z4) {
        super.setEnabled(z4);
    }

    public void setErrorAccessibilityLabel(CharSequence charSequence) {
        this.f531m = charSequence;
    }

    public void setErrorAccessibilityLabelResource(int i5) {
        setErrorAccessibilityLabel(i5 != 0 ? getResources().getText(i5) : null);
    }

    public void setErrorShown(boolean z4) {
        if (this.f530l == z4) {
            return;
        }
        this.f530l = z4;
        refreshDrawableState();
        Iterator it = this.f525g.iterator();
        if (it.hasNext()) {
            B.f.F(it.next());
            throw null;
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.f541x = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    public void setStateDescription(CharSequence charSequence) {
        this.f540w = charSequence;
        if (charSequence != null) {
            super.setStateDescription(charSequence);
        } else if (charSequence == null) {
            super.setStateDescription(getButtonStateDescription());
        }
    }

    public void setUseMaterialThemeColors(boolean z4) {
        this.f528j = z4;
        if (z4) {
            O.b.c(this, getMaterialThemeColorsTintList());
        } else {
            O.b.c(this, null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // k.C0616p, android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        this.n = drawable;
        this.f533p = false;
        a();
    }
}
