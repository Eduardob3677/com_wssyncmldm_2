package com.google.android.material.textfield;

import B1.h;
import C0.j;
import J.K;
import J.Q;
import J.r0;
import J1.b;
import J1.c;
import J1.m;
import M1.d;
import P1.e;
import P1.f;
import P1.g;
import P1.i;
import P1.k;
import S1.A;
import S1.l;
import S1.n;
import S1.q;
import S1.r;
import S1.u;
import S1.w;
import S1.x;
import S1.y;
import S1.z;
import U1.a;
import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Parcelable;
import android.text.Editable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.animation.LinearInterpolator;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.internal.CheckableImageButton;
import com.samsung.android.knox.custom.CustomDeviceManager;
import f1.AbstractC0420a;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;
import k.AbstractC0591g0;
import k.C0622s;
import k.D0;
import s2.C0837c;
import w1.AbstractC0899a;
import z.AbstractC0934b;

/* loaded from: classes.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: F0, reason: collision with root package name */
    public static final int[][] f6081F0 = {new int[]{R.attr.state_pressed}, new int[0]};

    /* renamed from: A, reason: collision with root package name */
    public ColorStateList f6082A;

    /* renamed from: A0, reason: collision with root package name */
    public boolean f6083A0;

    /* renamed from: B, reason: collision with root package name */
    public ColorStateList f6084B;
    public ValueAnimator B0;

    /* renamed from: C, reason: collision with root package name */
    public ColorStateList f6085C;

    /* renamed from: C0, reason: collision with root package name */
    public boolean f6086C0;

    /* renamed from: D, reason: collision with root package name */
    public ColorStateList f6087D;

    /* renamed from: D0, reason: collision with root package name */
    public boolean f6088D0;
    public boolean E;

    /* renamed from: E0, reason: collision with root package name */
    public boolean f6089E0;

    /* renamed from: F, reason: collision with root package name */
    public CharSequence f6090F;

    /* renamed from: G, reason: collision with root package name */
    public boolean f6091G;

    /* renamed from: H, reason: collision with root package name */
    public g f6092H;

    /* renamed from: I, reason: collision with root package name */
    public g f6093I;

    /* renamed from: J, reason: collision with root package name */
    public StateListDrawable f6094J;

    /* renamed from: K, reason: collision with root package name */
    public boolean f6095K;

    /* renamed from: L, reason: collision with root package name */
    public g f6096L;

    /* renamed from: M, reason: collision with root package name */
    public g f6097M;

    /* renamed from: N, reason: collision with root package name */
    public k f6098N;

    /* renamed from: O, reason: collision with root package name */
    public boolean f6099O;

    /* renamed from: Q, reason: collision with root package name */
    public final int f6100Q;

    /* renamed from: R, reason: collision with root package name */
    public int f6101R;

    /* renamed from: T, reason: collision with root package name */
    public int f6102T;

    /* renamed from: U, reason: collision with root package name */
    public int f6103U;

    /* renamed from: V, reason: collision with root package name */
    public int f6104V;

    /* renamed from: W, reason: collision with root package name */
    public int f6105W;

    /* renamed from: a0, reason: collision with root package name */
    public int f6106a0;

    /* renamed from: b0, reason: collision with root package name */
    public int f6107b0;

    /* renamed from: c, reason: collision with root package name */
    public final FrameLayout f6108c;

    /* renamed from: c0, reason: collision with root package name */
    public final Rect f6109c0;

    /* renamed from: d, reason: collision with root package name */
    public final w f6110d;

    /* renamed from: d0, reason: collision with root package name */
    public final Rect f6111d0;

    /* renamed from: e, reason: collision with root package name */
    public final n f6112e;

    /* renamed from: e0, reason: collision with root package name */
    public final RectF f6113e0;
    public EditText f;

    /* renamed from: f0, reason: collision with root package name */
    public Typeface f6114f0;

    /* renamed from: g, reason: collision with root package name */
    public CharSequence f6115g;
    public ColorDrawable g0;

    /* renamed from: h, reason: collision with root package name */
    public int f6116h;

    /* renamed from: h0, reason: collision with root package name */
    public int f6117h0;

    /* renamed from: i, reason: collision with root package name */
    public int f6118i;

    /* renamed from: i0, reason: collision with root package name */
    public final LinkedHashSet f6119i0;

    /* renamed from: j, reason: collision with root package name */
    public int f6120j;

    /* renamed from: j0, reason: collision with root package name */
    public ColorDrawable f6121j0;

    /* renamed from: k, reason: collision with root package name */
    public int f6122k;
    public int k0;

    /* renamed from: l, reason: collision with root package name */
    public final r f6123l;
    public Drawable l0;

    /* renamed from: m, reason: collision with root package name */
    public boolean f6124m;
    public ColorStateList m0;
    public int n;
    public ColorStateList n0;

    /* renamed from: o, reason: collision with root package name */
    public boolean f6125o;
    public int o0;

    /* renamed from: p, reason: collision with root package name */
    public z f6126p;

    /* renamed from: p0, reason: collision with root package name */
    public int f6127p0;

    /* renamed from: q, reason: collision with root package name */
    public AppCompatTextView f6128q;
    public int q0;

    /* renamed from: r, reason: collision with root package name */
    public int f6129r;
    public ColorStateList r0;

    /* renamed from: s, reason: collision with root package name */
    public int f6130s;
    public int s0;

    /* renamed from: t, reason: collision with root package name */
    public CharSequence f6131t;
    public int t0;

    /* renamed from: u, reason: collision with root package name */
    public boolean f6132u;
    public int u0;

    /* renamed from: v, reason: collision with root package name */
    public AppCompatTextView f6133v;

    /* renamed from: v0, reason: collision with root package name */
    public int f6134v0;

    /* renamed from: w, reason: collision with root package name */
    public ColorStateList f6135w;

    /* renamed from: w0, reason: collision with root package name */
    public int f6136w0;

    /* renamed from: x, reason: collision with root package name */
    public int f6137x;

    /* renamed from: x0, reason: collision with root package name */
    public boolean f6138x0;

    /* renamed from: y, reason: collision with root package name */
    public j f6139y;

    /* renamed from: y0, reason: collision with root package name */
    public final b f6140y0;

    /* renamed from: z, reason: collision with root package name */
    public j f6141z;

    /* renamed from: z0, reason: collision with root package name */
    public boolean f6142z0;

    public TextInputLayout(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        super(a.a(context, attributeSet, com.wssyncmldm.R.attr.textInputStyle, com.wssyncmldm.R.style.Widget_Design_TextInputLayout), attributeSet, com.wssyncmldm.R.attr.textInputStyle);
        this.f6116h = -1;
        this.f6118i = -1;
        this.f6120j = -1;
        this.f6122k = -1;
        this.f6123l = new r(this);
        this.f6126p = new E2.a(7);
        this.f6109c0 = new Rect();
        this.f6111d0 = new Rect();
        this.f6113e0 = new RectF();
        this.f6119i0 = new LinkedHashSet();
        b bVar = new b(this);
        this.f6140y0 = bVar;
        this.f6089E0 = false;
        Context context2 = getContext();
        setOrientation(1);
        setWillNotDraw(false);
        setAddStatesFromChildren(true);
        FrameLayout frameLayout = new FrameLayout(context2);
        this.f6108c = frameLayout;
        frameLayout.setAddStatesFromChildren(true);
        LinearInterpolator linearInterpolator = AbstractC0899a.f9596a;
        bVar.f1058Q = linearInterpolator;
        bVar.h(false);
        bVar.f1057P = linearInterpolator;
        bVar.h(false);
        if (bVar.f1079g != 8388659) {
            bVar.f1079g = 8388659;
            bVar.h(false);
        }
        int[] iArr = v1.a.f9525B;
        m.a(context2, attributeSet, com.wssyncmldm.R.attr.textInputStyle, com.wssyncmldm.R.style.Widget_Design_TextInputLayout);
        m.b(context2, attributeSet, iArr, com.wssyncmldm.R.attr.textInputStyle, com.wssyncmldm.R.style.Widget_Design_TextInputLayout, 22, 20, 40, 45, 49);
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, iArr, com.wssyncmldm.R.attr.textInputStyle, com.wssyncmldm.R.style.Widget_Design_TextInputLayout);
        r0 r0Var = new r0(context2, typedArrayObtainStyledAttributes);
        w wVar = new w(this, r0Var);
        this.f6110d = wVar;
        this.E = typedArrayObtainStyledAttributes.getBoolean(48, true);
        setHint(typedArrayObtainStyledAttributes.getText(4));
        this.f6083A0 = typedArrayObtainStyledAttributes.getBoolean(47, true);
        this.f6142z0 = typedArrayObtainStyledAttributes.getBoolean(42, true);
        if (typedArrayObtainStyledAttributes.hasValue(6)) {
            setMinEms(typedArrayObtainStyledAttributes.getInt(6, -1));
        } else if (typedArrayObtainStyledAttributes.hasValue(3)) {
            setMinWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(3, -1));
        }
        if (typedArrayObtainStyledAttributes.hasValue(5)) {
            setMaxEms(typedArrayObtainStyledAttributes.getInt(5, -1));
        } else if (typedArrayObtainStyledAttributes.hasValue(2)) {
            setMaxWidth(typedArrayObtainStyledAttributes.getDimensionPixelSize(2, -1));
        }
        this.f6098N = k.b(context2, attributeSet, com.wssyncmldm.R.attr.textInputStyle, com.wssyncmldm.R.style.Widget_Design_TextInputLayout).a();
        this.f6100Q = context2.getResources().getDimensionPixelOffset(com.wssyncmldm.R.dimen.mtrl_textinput_box_label_cutout_padding);
        this.f6102T = typedArrayObtainStyledAttributes.getDimensionPixelOffset(9, 0);
        this.f6104V = typedArrayObtainStyledAttributes.getDimensionPixelSize(16, context2.getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.mtrl_textinput_box_stroke_width_default));
        this.f6105W = typedArrayObtainStyledAttributes.getDimensionPixelSize(17, context2.getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.mtrl_textinput_box_stroke_width_focused));
        this.f6103U = this.f6104V;
        float dimension = typedArrayObtainStyledAttributes.getDimension(13, -1.0f);
        float dimension2 = typedArrayObtainStyledAttributes.getDimension(12, -1.0f);
        float dimension3 = typedArrayObtainStyledAttributes.getDimension(10, -1.0f);
        float dimension4 = typedArrayObtainStyledAttributes.getDimension(11, -1.0f);
        P1.j jVarE = this.f6098N.e();
        if (dimension >= 0.0f) {
            jVarE.f2100e = new P1.a(dimension);
        }
        if (dimension2 >= 0.0f) {
            jVarE.f = new P1.a(dimension2);
        }
        if (dimension3 >= 0.0f) {
            jVarE.f2101g = new P1.a(dimension3);
        }
        if (dimension4 >= 0.0f) {
            jVarE.f2102h = new P1.a(dimension4);
        }
        this.f6098N = jVarE.a();
        ColorStateList colorStateListA = W1.a.A(context2, r0Var, 7);
        if (colorStateListA != null) {
            int defaultColor = colorStateListA.getDefaultColor();
            this.s0 = defaultColor;
            this.f6107b0 = defaultColor;
            if (colorStateListA.isStateful()) {
                this.t0 = colorStateListA.getColorForState(new int[]{-16842910}, -1);
                this.u0 = colorStateListA.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
                this.f6134v0 = colorStateListA.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            } else {
                this.u0 = this.s0;
                ColorStateList colorStateListA2 = A.r.a(context2.getResources(), com.wssyncmldm.R.color.mtrl_filled_background_color, context2.getTheme());
                this.t0 = colorStateListA2.getColorForState(new int[]{-16842910}, -1);
                this.f6134v0 = colorStateListA2.getColorForState(new int[]{R.attr.state_hovered}, -1);
            }
        } else {
            this.f6107b0 = 0;
            this.s0 = 0;
            this.t0 = 0;
            this.u0 = 0;
            this.f6134v0 = 0;
        }
        if (typedArrayObtainStyledAttributes.hasValue(1)) {
            ColorStateList colorStateListF = r0Var.f(1);
            this.n0 = colorStateListF;
            this.m0 = colorStateListF;
        }
        ColorStateList colorStateListA3 = W1.a.A(context2, r0Var, 14);
        this.q0 = typedArrayObtainStyledAttributes.getColor(14, 0);
        this.o0 = AbstractC0934b.a(context2, com.wssyncmldm.R.color.mtrl_textinput_default_box_stroke_color);
        this.f6136w0 = AbstractC0934b.a(context2, com.wssyncmldm.R.color.mtrl_textinput_disabled_color);
        this.f6127p0 = AbstractC0934b.a(context2, com.wssyncmldm.R.color.mtrl_textinput_hovered_box_stroke_color);
        if (colorStateListA3 != null) {
            setBoxStrokeColorStateList(colorStateListA3);
        }
        if (typedArrayObtainStyledAttributes.hasValue(15)) {
            setBoxStrokeErrorColor(W1.a.A(context2, r0Var, 15));
        }
        if (typedArrayObtainStyledAttributes.getResourceId(49, -1) != -1) {
            setHintTextAppearance(typedArrayObtainStyledAttributes.getResourceId(49, 0));
        }
        this.f6085C = r0Var.f(24);
        this.f6087D = r0Var.f(25);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(40, 0);
        CharSequence text = typedArrayObtainStyledAttributes.getText(35);
        int i5 = typedArrayObtainStyledAttributes.getInt(34, 1);
        boolean z4 = typedArrayObtainStyledAttributes.getBoolean(36, false);
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(45, 0);
        boolean z5 = typedArrayObtainStyledAttributes.getBoolean(44, false);
        CharSequence text2 = typedArrayObtainStyledAttributes.getText(43);
        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(57, 0);
        CharSequence text3 = typedArrayObtainStyledAttributes.getText(56);
        boolean z6 = typedArrayObtainStyledAttributes.getBoolean(18, false);
        setCounterMaxLength(typedArrayObtainStyledAttributes.getInt(19, -1));
        this.f6130s = typedArrayObtainStyledAttributes.getResourceId(22, 0);
        this.f6129r = typedArrayObtainStyledAttributes.getResourceId(20, 0);
        setBoxBackgroundMode(typedArrayObtainStyledAttributes.getInt(8, 0));
        setErrorContentDescription(text);
        setErrorAccessibilityLiveRegion(i5);
        setCounterOverflowTextAppearance(this.f6129r);
        setHelperTextTextAppearance(resourceId2);
        setErrorTextAppearance(resourceId);
        setCounterTextAppearance(this.f6130s);
        setPlaceholderText(text3);
        setPlaceholderTextAppearance(resourceId3);
        if (typedArrayObtainStyledAttributes.hasValue(41)) {
            setErrorTextColor(r0Var.f(41));
        }
        if (typedArrayObtainStyledAttributes.hasValue(46)) {
            setHelperTextColor(r0Var.f(46));
        }
        if (typedArrayObtainStyledAttributes.hasValue(50)) {
            setHintTextColor(r0Var.f(50));
        }
        if (typedArrayObtainStyledAttributes.hasValue(23)) {
            setCounterTextColor(r0Var.f(23));
        }
        if (typedArrayObtainStyledAttributes.hasValue(21)) {
            setCounterOverflowTextColor(r0Var.f(21));
        }
        if (typedArrayObtainStyledAttributes.hasValue(58)) {
            setPlaceholderTextColor(r0Var.f(58));
        }
        n nVar = new n(this, r0Var);
        this.f6112e = nVar;
        boolean z7 = typedArrayObtainStyledAttributes.getBoolean(0, true);
        r0Var.n();
        WeakHashMap weakHashMap = Q.f940a;
        setImportantForAccessibility(2);
        K.m(this, 1);
        frameLayout.addView(wVar);
        frameLayout.addView(nVar);
        addView(frameLayout);
        setEnabled(z7);
        setHelperTextEnabled(z5);
        setErrorEnabled(z4);
        setCounterEnabled(z6);
        setHelperText(text2);
    }

    private Drawable getEditTextBoxBackground() {
        EditText editText = this.f;
        if (!(editText instanceof AutoCompleteTextView) || AbstractC0420a.P(editText)) {
            return this.f6092H;
        }
        int iY = W1.a.y(com.wssyncmldm.R.attr.colorControlHighlight, this.f);
        int i5 = this.f6101R;
        int[][] iArr = f6081F0;
        if (i5 != 2) {
            if (i5 != 1) {
                return null;
            }
            g gVar = this.f6092H;
            int i6 = this.f6107b0;
            return new RippleDrawable(new ColorStateList(iArr, new int[]{W1.a.W(iY, 0.1f, i6), i6}), gVar, gVar);
        }
        Context context = getContext();
        g gVar2 = this.f6092H;
        TypedValue typedValueG = L2.b.G(context, com.wssyncmldm.R.attr.colorSurface, "TextInputLayout");
        int i7 = typedValueG.resourceId;
        int iA = i7 != 0 ? AbstractC0934b.a(context, i7) : typedValueG.data;
        g gVar3 = new g(gVar2.f2075c.f2055a);
        int iW = W1.a.W(iY, 0.1f, iA);
        gVar3.k(new ColorStateList(iArr, new int[]{iW, 0}));
        gVar3.setTint(iA);
        ColorStateList colorStateList = new ColorStateList(iArr, new int[]{iW, iA});
        g gVar4 = new g(gVar2.f2075c.f2055a);
        gVar4.setTint(-1);
        return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, gVar3, gVar4), gVar2});
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.f6094J == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.f6094J = stateListDrawable;
            stateListDrawable.addState(new int[]{R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.f6094J.addState(new int[0], f(false));
        }
        return this.f6094J;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.f6093I == null) {
            this.f6093I = f(true);
        }
        return this.f6093I;
    }

    public static void k(ViewGroup viewGroup, boolean z4) {
        int childCount = viewGroup.getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = viewGroup.getChildAt(i5);
            childAt.setEnabled(z4);
            if (childAt instanceof ViewGroup) {
                k((ViewGroup) childAt, z4);
            }
        }
    }

    private void setEditText(EditText editText) throws Resources.NotFoundException {
        if (this.f != null) {
            throw new IllegalArgumentException("We already have an EditText, can only have one");
        }
        if (getEndIconMode() != 3 && !(editText instanceof TextInputEditText)) {
            Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
        }
        this.f = editText;
        int i5 = this.f6116h;
        if (i5 != -1) {
            setMinEms(i5);
        } else {
            setMinWidth(this.f6120j);
        }
        int i6 = this.f6118i;
        if (i6 != -1) {
            setMaxEms(i6);
        } else {
            setMaxWidth(this.f6122k);
        }
        this.f6095K = false;
        i();
        setTextInputAccessibilityDelegate(new y(this));
        Typeface typeface = this.f.getTypeface();
        b bVar = this.f6140y0;
        bVar.m(typeface);
        float textSize = this.f.getTextSize();
        if (bVar.f1080h != textSize) {
            bVar.f1080h = textSize;
            bVar.h(false);
        }
        float letterSpacing = this.f.getLetterSpacing();
        if (bVar.f1064W != letterSpacing) {
            bVar.f1064W = letterSpacing;
            bVar.h(false);
        }
        int gravity = this.f.getGravity();
        int i7 = (gravity & (-113)) | 48;
        if (bVar.f1079g != i7) {
            bVar.f1079g = i7;
            bVar.h(false);
        }
        if (bVar.f != gravity) {
            bVar.f = gravity;
            bVar.h(false);
        }
        this.f.addTextChangedListener(new x(0, this));
        if (this.m0 == null) {
            this.m0 = this.f.getHintTextColors();
        }
        if (this.E) {
            if (TextUtils.isEmpty(this.f6090F)) {
                CharSequence hint = this.f.getHint();
                this.f6115g = hint;
                setHint(hint);
                this.f.setHint((CharSequence) null);
            }
            this.f6091G = true;
        }
        p();
        if (this.f6128q != null) {
            n(this.f.getText());
        }
        r();
        this.f6123l.b();
        this.f6110d.bringToFront();
        n nVar = this.f6112e;
        nVar.bringToFront();
        Iterator it = this.f6119i0.iterator();
        while (it.hasNext()) {
            ((l) it.next()).a(this);
        }
        nVar.m();
        if (!isEnabled()) {
            editText.setEnabled(false);
        }
        u(false, true);
    }

    private void setHintInternal(CharSequence charSequence) {
        if (TextUtils.equals(charSequence, this.f6090F)) {
            return;
        }
        this.f6090F = charSequence;
        b bVar = this.f6140y0;
        if (charSequence == null || !TextUtils.equals(bVar.f1043A, charSequence)) {
            bVar.f1043A = charSequence;
            bVar.f1044B = null;
            Bitmap bitmap = bVar.E;
            if (bitmap != null) {
                bitmap.recycle();
                bVar.E = null;
            }
            bVar.h(false);
        }
        if (this.f6138x0) {
            return;
        }
        j();
    }

    private void setPlaceholderTextEnabled(boolean z4) {
        if (this.f6132u == z4) {
            return;
        }
        if (z4) {
            AppCompatTextView appCompatTextView = this.f6133v;
            if (appCompatTextView != null) {
                this.f6108c.addView(appCompatTextView);
                this.f6133v.setVisibility(0);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.f6133v;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setVisibility(8);
            }
            this.f6133v = null;
        }
        this.f6132u = z4;
    }

    public final void a(float f) {
        int i5 = 1;
        b bVar = this.f6140y0;
        if (bVar.f1070b == f) {
            return;
        }
        if (this.B0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.B0 = valueAnimator;
            valueAnimator.setInterpolator(i3.x.V0(getContext(), com.wssyncmldm.R.attr.motionEasingEmphasizedInterpolator, AbstractC0899a.f9597b));
            this.B0.setDuration(i3.x.U0(getContext(), com.wssyncmldm.R.attr.motionDurationMedium4, 167));
            this.B0.addUpdateListener(new B1.b(i5, this));
        }
        this.B0.setFloatValues(bVar.f1070b, f);
        this.B0.start();
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i5, ViewGroup.LayoutParams layoutParams) throws Resources.NotFoundException {
        if (!(view instanceof EditText)) {
            super.addView(view, i5, layoutParams);
            return;
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
        layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
        FrameLayout frameLayout = this.f6108c;
        frameLayout.addView(view, layoutParams2);
        frameLayout.setLayoutParams(layoutParams);
        t();
        setEditText((EditText) view);
    }

    public final void b() {
        int i5;
        int i6;
        g gVar = this.f6092H;
        if (gVar == null) {
            return;
        }
        k kVar = gVar.f2075c.f2055a;
        k kVar2 = this.f6098N;
        if (kVar != kVar2) {
            gVar.setShapeAppearanceModel(kVar2);
        }
        if (this.f6101R == 2 && (i5 = this.f6103U) > -1 && (i6 = this.f6106a0) != 0) {
            g gVar2 = this.f6092H;
            gVar2.f2075c.f2064k = i5;
            gVar2.invalidateSelf();
            ColorStateList colorStateListValueOf = ColorStateList.valueOf(i6);
            f fVar = gVar2.f2075c;
            if (fVar.f2058d != colorStateListValueOf) {
                fVar.f2058d = colorStateListValueOf;
                gVar2.onStateChange(gVar2.getState());
            }
        }
        int iX = this.f6107b0;
        if (this.f6101R == 1) {
            iX = W1.a.X(W1.a.z(getContext(), com.wssyncmldm.R.attr.colorSurface, 0), this.f6107b0);
        }
        this.f6107b0 = iX;
        this.f6092H.k(ColorStateList.valueOf(iX));
        g gVar3 = this.f6096L;
        if (gVar3 != null && this.f6097M != null) {
            if (this.f6103U > -1 && this.f6106a0 != 0) {
                gVar3.k(this.f.isFocused() ? ColorStateList.valueOf(this.o0) : ColorStateList.valueOf(this.f6106a0));
                this.f6097M.k(ColorStateList.valueOf(this.f6106a0));
            }
            invalidate();
        }
        s();
    }

    public final int c() {
        float fD;
        if (!this.E) {
            return 0;
        }
        int i5 = this.f6101R;
        b bVar = this.f6140y0;
        if (i5 == 0) {
            fD = bVar.d();
        } else {
            if (i5 != 2) {
                return 0;
            }
            fD = bVar.d() / 2.0f;
        }
        return (int) fD;
    }

    public final j d() {
        j jVar = new j();
        jVar.f308e = i3.x.U0(getContext(), com.wssyncmldm.R.attr.motionDurationShort2, 87);
        jVar.f = i3.x.V0(getContext(), com.wssyncmldm.R.attr.motionEasingLinearInterpolator, AbstractC0899a.f9596a);
        return jVar;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i5) {
        EditText editText = this.f;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i5);
            return;
        }
        if (this.f6115g != null) {
            boolean z4 = this.f6091G;
            this.f6091G = false;
            CharSequence hint = editText.getHint();
            this.f.setHint(this.f6115g);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i5);
                return;
            } finally {
                this.f.setHint(hint);
                this.f6091G = z4;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i5);
        onProvideAutofillVirtualStructure(viewStructure, i5);
        FrameLayout frameLayout = this.f6108c;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i6 = 0; i6 < frameLayout.getChildCount(); i6++) {
            View childAt = frameLayout.getChildAt(i6);
            ViewStructure viewStructureNewChild = viewStructure.newChild(i6);
            childAt.dispatchProvideAutofillStructure(viewStructureNewChild, i5);
            if (childAt == this.f) {
                viewStructureNewChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.f6088D0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.f6088D0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        g gVar;
        super.draw(canvas);
        boolean z4 = this.E;
        b bVar = this.f6140y0;
        if (z4) {
            bVar.getClass();
            int iSave = canvas.save();
            if (bVar.f1044B != null) {
                RectF rectF = bVar.f1076e;
                if (rectF.width() > 0.0f && rectF.height() > 0.0f) {
                    TextPaint textPaint = bVar.f1055N;
                    textPaint.setTextSize(bVar.f1048G);
                    float f = bVar.f1087p;
                    float f5 = bVar.f1088q;
                    float f6 = bVar.f1047F;
                    if (f6 != 1.0f) {
                        canvas.scale(f6, f6, f, f5);
                    }
                    if (bVar.f1075d0 <= 1 || bVar.f1045C) {
                        canvas.translate(f, f5);
                        bVar.f1066Y.draw(canvas);
                    } else {
                        float lineStart = bVar.f1087p - bVar.f1066Y.getLineStart(0);
                        int alpha = textPaint.getAlpha();
                        canvas.translate(lineStart, f5);
                        float f7 = alpha;
                        textPaint.setAlpha((int) (bVar.f1071b0 * f7));
                        float f8 = bVar.f1049H;
                        float f9 = bVar.f1050I;
                        float f10 = bVar.f1051J;
                        int i5 = bVar.f1052K;
                        textPaint.setShadowLayer(f8, f9, f10, B.a.c(i5, (Color.alpha(i5) * textPaint.getAlpha()) / CustomDeviceManager.CALL_SCREEN_ALL));
                        bVar.f1066Y.draw(canvas);
                        textPaint.setAlpha((int) (bVar.f1069a0 * f7));
                        float f11 = bVar.f1049H;
                        float f12 = bVar.f1050I;
                        float f13 = bVar.f1051J;
                        int i6 = bVar.f1052K;
                        textPaint.setShadowLayer(f11, f12, f13, B.a.c(i6, (Color.alpha(i6) * textPaint.getAlpha()) / CustomDeviceManager.CALL_SCREEN_ALL));
                        int lineBaseline = bVar.f1066Y.getLineBaseline(0);
                        CharSequence charSequence = bVar.f1073c0;
                        float f14 = lineBaseline;
                        canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f14, textPaint);
                        textPaint.setShadowLayer(bVar.f1049H, bVar.f1050I, bVar.f1051J, bVar.f1052K);
                        String strTrim = bVar.f1073c0.toString().trim();
                        if (strTrim.endsWith("…")) {
                            strTrim = strTrim.substring(0, strTrim.length() - 1);
                        }
                        String str = strTrim;
                        textPaint.setAlpha(alpha);
                        canvas.drawText(str, 0, Math.min(bVar.f1066Y.getLineEnd(0), str.length()), 0.0f, f14, (Paint) textPaint);
                    }
                    canvas.restoreToCount(iSave);
                }
            }
        }
        if (this.f6097M == null || (gVar = this.f6096L) == null) {
            return;
        }
        gVar.draw(canvas);
        if (this.f.isFocused()) {
            Rect bounds = this.f6097M.getBounds();
            Rect bounds2 = this.f6096L.getBounds();
            float f15 = bVar.f1070b;
            int iCenterX = bounds2.centerX();
            bounds.left = AbstractC0899a.c(iCenterX, f15, bounds2.left);
            bounds.right = AbstractC0899a.c(iCenterX, f15, bounds2.right);
            this.f6097M.draw(canvas);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002f  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void drawableStateChanged() throws Resources.NotFoundException {
        boolean z4;
        ColorStateList colorStateList;
        if (this.f6086C0) {
            return;
        }
        this.f6086C0 = true;
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        b bVar = this.f6140y0;
        if (bVar != null) {
            bVar.f1053L = drawableState;
            ColorStateList colorStateList2 = bVar.f1083k;
            if ((colorStateList2 == null || !colorStateList2.isStateful()) && ((colorStateList = bVar.f1082j) == null || !colorStateList.isStateful())) {
                z4 = false;
            } else {
                bVar.h(false);
                z4 = true;
            }
        }
        if (this.f != null) {
            WeakHashMap weakHashMap = Q.f940a;
            u(isLaidOut() && isEnabled(), false);
        }
        r();
        x();
        if (z4) {
            invalidate();
        }
        this.f6086C0 = false;
    }

    public final boolean e() {
        return this.E && !TextUtils.isEmpty(this.f6090F) && (this.f6092H instanceof S1.g);
    }

    public final g f(boolean z4) throws Resources.NotFoundException {
        int i5 = 0;
        float dimensionPixelOffset = getResources().getDimensionPixelOffset(com.wssyncmldm.R.dimen.mtrl_shape_corner_size_small_component);
        float f = z4 ? dimensionPixelOffset : 0.0f;
        EditText editText = this.f;
        float popupElevation = editText instanceof u ? ((u) editText).getPopupElevation() : getResources().getDimensionPixelOffset(com.wssyncmldm.R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        int dimensionPixelOffset2 = getResources().getDimensionPixelOffset(com.wssyncmldm.R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        i iVar = new i();
        i iVar2 = new i();
        i iVar3 = new i();
        i iVar4 = new i();
        e eVar = new e(i5);
        e eVar2 = new e(i5);
        e eVar3 = new e(i5);
        e eVar4 = new e(i5);
        P1.a aVar = new P1.a(f);
        P1.a aVar2 = new P1.a(f);
        P1.a aVar3 = new P1.a(dimensionPixelOffset);
        P1.a aVar4 = new P1.a(dimensionPixelOffset);
        k kVar = new k();
        kVar.f2107a = iVar;
        kVar.f2108b = iVar2;
        kVar.f2109c = iVar3;
        kVar.f2110d = iVar4;
        kVar.f2111e = aVar;
        kVar.f = aVar2;
        kVar.f2112g = aVar4;
        kVar.f2113h = aVar3;
        kVar.f2114i = eVar;
        kVar.f2115j = eVar2;
        kVar.f2116k = eVar3;
        kVar.f2117l = eVar4;
        EditText editText2 = this.f;
        ColorStateList dropDownBackgroundTintList = editText2 instanceof u ? ((u) editText2).getDropDownBackgroundTintList() : null;
        Context context = getContext();
        if (dropDownBackgroundTintList == null) {
            Paint paint = g.f2074y;
            TypedValue typedValueG = L2.b.G(context, com.wssyncmldm.R.attr.colorSurface, g.class.getSimpleName());
            int i6 = typedValueG.resourceId;
            dropDownBackgroundTintList = ColorStateList.valueOf(i6 != 0 ? AbstractC0934b.a(context, i6) : typedValueG.data);
        }
        g gVar = new g();
        gVar.i(context);
        gVar.k(dropDownBackgroundTintList);
        gVar.j(popupElevation);
        gVar.setShapeAppearanceModel(kVar);
        f fVar = gVar.f2075c;
        if (fVar.f2061h == null) {
            fVar.f2061h = new Rect();
        }
        gVar.f2075c.f2061h.set(0, dimensionPixelOffset2, 0, dimensionPixelOffset2);
        gVar.invalidateSelf();
        return gVar;
    }

    public final int g(int i5, boolean z4) {
        return ((z4 || getPrefixText() == null) ? (!z4 || getSuffixText() == null) ? this.f.getCompoundPaddingLeft() : this.f6112e.c() : this.f6110d.a()) + i5;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.f;
        if (editText == null) {
            return super.getBaseline();
        }
        return c() + getPaddingTop() + editText.getBaseline();
    }

    public g getBoxBackground() {
        int i5 = this.f6101R;
        if (i5 == 1 || i5 == 2) {
            return this.f6092H;
        }
        throw new IllegalStateException();
    }

    public int getBoxBackgroundColor() {
        return this.f6107b0;
    }

    public int getBoxBackgroundMode() {
        return this.f6101R;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.f6102T;
    }

    public float getBoxCornerRadiusBottomEnd() {
        boolean zE = m.e(this);
        RectF rectF = this.f6113e0;
        return zE ? this.f6098N.f2113h.a(rectF) : this.f6098N.f2112g.a(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        boolean zE = m.e(this);
        RectF rectF = this.f6113e0;
        return zE ? this.f6098N.f2112g.a(rectF) : this.f6098N.f2113h.a(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        boolean zE = m.e(this);
        RectF rectF = this.f6113e0;
        return zE ? this.f6098N.f2111e.a(rectF) : this.f6098N.f.a(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        boolean zE = m.e(this);
        RectF rectF = this.f6113e0;
        return zE ? this.f6098N.f.a(rectF) : this.f6098N.f2111e.a(rectF);
    }

    public int getBoxStrokeColor() {
        return this.q0;
    }

    public ColorStateList getBoxStrokeErrorColor() {
        return this.r0;
    }

    public int getBoxStrokeWidth() {
        return this.f6104V;
    }

    public int getBoxStrokeWidthFocused() {
        return this.f6105W;
    }

    public int getCounterMaxLength() {
        return this.n;
    }

    public CharSequence getCounterOverflowDescription() {
        AppCompatTextView appCompatTextView;
        if (this.f6124m && this.f6125o && (appCompatTextView = this.f6128q) != null) {
            return appCompatTextView.getContentDescription();
        }
        return null;
    }

    public ColorStateList getCounterOverflowTextColor() {
        return this.f6084B;
    }

    public ColorStateList getCounterTextColor() {
        return this.f6082A;
    }

    public ColorStateList getCursorColor() {
        return this.f6085C;
    }

    public ColorStateList getCursorErrorColor() {
        return this.f6087D;
    }

    public ColorStateList getDefaultHintTextColor() {
        return this.m0;
    }

    public EditText getEditText() {
        return this.f;
    }

    public CharSequence getEndIconContentDescription() {
        return this.f6112e.f2504i.getContentDescription();
    }

    public Drawable getEndIconDrawable() {
        return this.f6112e.f2504i.getDrawable();
    }

    public int getEndIconMinSize() {
        return this.f6112e.f2509o;
    }

    public int getEndIconMode() {
        return this.f6112e.f2506k;
    }

    public ImageView.ScaleType getEndIconScaleType() {
        return this.f6112e.f2510p;
    }

    public CheckableImageButton getEndIconView() {
        return this.f6112e.f2504i;
    }

    public CharSequence getError() {
        r rVar = this.f6123l;
        if (rVar.f2546q) {
            return rVar.f2545p;
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.f6123l.f2549t;
    }

    public CharSequence getErrorContentDescription() {
        return this.f6123l.f2548s;
    }

    public int getErrorCurrentTextColors() {
        AppCompatTextView appCompatTextView = this.f6123l.f2547r;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public Drawable getErrorIconDrawable() {
        return this.f6112e.f2501e.getDrawable();
    }

    public CharSequence getHelperText() {
        r rVar = this.f6123l;
        if (rVar.f2553x) {
            return rVar.f2552w;
        }
        return null;
    }

    public int getHelperTextCurrentTextColor() {
        AppCompatTextView appCompatTextView = this.f6123l.f2554y;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    public CharSequence getHint() {
        if (this.E) {
            return this.f6090F;
        }
        return null;
    }

    public final float getHintCollapsedTextHeight() {
        return this.f6140y0.d();
    }

    public final int getHintCurrentCollapsedTextColor() {
        b bVar = this.f6140y0;
        return bVar.e(bVar.f1083k);
    }

    public ColorStateList getHintTextColor() {
        return this.n0;
    }

    public z getLengthCounter() {
        return this.f6126p;
    }

    public int getMaxEms() {
        return this.f6118i;
    }

    public int getMaxWidth() {
        return this.f6122k;
    }

    public int getMinEms() {
        return this.f6116h;
    }

    public int getMinWidth() {
        return this.f6120j;
    }

    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.f6112e.f2504i.getContentDescription();
    }

    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.f6112e.f2504i.getDrawable();
    }

    public CharSequence getPlaceholderText() {
        if (this.f6132u) {
            return this.f6131t;
        }
        return null;
    }

    public int getPlaceholderTextAppearance() {
        return this.f6137x;
    }

    public ColorStateList getPlaceholderTextColor() {
        return this.f6135w;
    }

    public CharSequence getPrefixText() {
        return this.f6110d.f2571e;
    }

    public ColorStateList getPrefixTextColor() {
        return this.f6110d.f2570d.getTextColors();
    }

    public TextView getPrefixTextView() {
        return this.f6110d.f2570d;
    }

    public k getShapeAppearanceModel() {
        return this.f6098N;
    }

    public CharSequence getStartIconContentDescription() {
        return this.f6110d.f.getContentDescription();
    }

    public Drawable getStartIconDrawable() {
        return this.f6110d.f.getDrawable();
    }

    public int getStartIconMinSize() {
        return this.f6110d.f2574i;
    }

    public ImageView.ScaleType getStartIconScaleType() {
        return this.f6110d.f2575j;
    }

    public CharSequence getSuffixText() {
        return this.f6112e.f2512r;
    }

    public ColorStateList getSuffixTextColor() {
        return this.f6112e.f2513s.getTextColors();
    }

    public TextView getSuffixTextView() {
        return this.f6112e.f2513s;
    }

    public Typeface getTypeface() {
        return this.f6114f0;
    }

    public final int h(int i5, boolean z4) {
        return i5 - ((z4 || getSuffixText() == null) ? (!z4 || getPrefixText() == null) ? this.f.getCompoundPaddingRight() : this.f6110d.a() : this.f6112e.c());
    }

    public final void i() throws Resources.NotFoundException {
        int i5 = this.f6101R;
        if (i5 == 0) {
            this.f6092H = null;
            this.f6096L = null;
            this.f6097M = null;
        } else if (i5 == 1) {
            this.f6092H = new g(this.f6098N);
            this.f6096L = new g();
            this.f6097M = new g();
        } else {
            if (i5 != 2) {
                throw new IllegalArgumentException(this.f6101R + " is illegal; only @BoxBackgroundMode constants are supported.");
            }
            if (!this.E || (this.f6092H instanceof S1.g)) {
                this.f6092H = new g(this.f6098N);
            } else {
                k kVar = this.f6098N;
                int i6 = S1.g.f2479A;
                if (kVar == null) {
                    kVar = new k();
                }
                this.f6092H = new S1.g(new S1.f(kVar, new RectF()));
            }
            this.f6096L = null;
            this.f6097M = null;
        }
        s();
        x();
        if (this.f6101R == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.f6102T = getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (W1.a.R(getContext())) {
                this.f6102T = getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        if (this.f != null && this.f6101R == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                EditText editText = this.f;
                WeakHashMap weakHashMap = Q.f940a;
                editText.setPaddingRelative(editText.getPaddingStart(), getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.material_filled_edittext_font_2_0_padding_top), this.f.getPaddingEnd(), getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.material_filled_edittext_font_2_0_padding_bottom));
            } else if (W1.a.R(getContext())) {
                EditText editText2 = this.f;
                WeakHashMap weakHashMap2 = Q.f940a;
                editText2.setPaddingRelative(editText2.getPaddingStart(), getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.material_filled_edittext_font_1_3_padding_top), this.f.getPaddingEnd(), getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.material_filled_edittext_font_1_3_padding_bottom));
            }
        }
        if (this.f6101R != 0) {
            t();
        }
        EditText editText3 = this.f;
        if (editText3 instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText3;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i7 = this.f6101R;
                if (i7 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i7 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x008d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void j() {
        float f;
        float f5;
        float f6;
        RectF rectF;
        float f7;
        int i5;
        int i6;
        if (e()) {
            int width = this.f.getWidth();
            int gravity = this.f.getGravity();
            b bVar = this.f6140y0;
            boolean zB = bVar.b(bVar.f1043A);
            bVar.f1045C = zB;
            Rect rect = bVar.f1074d;
            if (gravity != 17 && (gravity & 7) != 1) {
                if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (zB) {
                        i6 = rect.left;
                        f6 = i6;
                    } else {
                        f = rect.right;
                        f5 = bVar.f1067Z;
                    }
                } else if (zB) {
                    f = rect.right;
                    f5 = bVar.f1067Z;
                } else {
                    i6 = rect.left;
                    f6 = i6;
                }
                float fMax = Math.max(f6, rect.left);
                rectF = this.f6113e0;
                rectF.left = fMax;
                rectF.top = rect.top;
                if (gravity != 17 || (gravity & 7) == 1) {
                    f7 = (width / 2.0f) + (bVar.f1067Z / 2.0f);
                } else if ((gravity & 8388613) == 8388613 || (gravity & 5) == 5) {
                    if (bVar.f1045C) {
                        f7 = fMax + bVar.f1067Z;
                    } else {
                        i5 = rect.right;
                        f7 = i5;
                    }
                } else if (bVar.f1045C) {
                    i5 = rect.right;
                    f7 = i5;
                } else {
                    f7 = bVar.f1067Z + fMax;
                }
                rectF.right = Math.min(f7, rect.right);
                rectF.bottom = bVar.d() + rect.top;
                if (rectF.width() > 0.0f || rectF.height() <= 0.0f) {
                }
                float f8 = rectF.left;
                float f9 = this.f6100Q;
                rectF.left = f8 - f9;
                rectF.right += f9;
                rectF.offset(-getPaddingLeft(), ((-getPaddingTop()) - (rectF.height() / 2.0f)) + this.f6103U);
                S1.g gVar = (S1.g) this.f6092H;
                gVar.getClass();
                gVar.o(rectF.left, rectF.top, rectF.right, rectF.bottom);
                return;
            }
            f = width / 2.0f;
            f5 = bVar.f1067Z / 2.0f;
            f6 = f - f5;
            float fMax2 = Math.max(f6, rect.left);
            rectF = this.f6113e0;
            rectF.left = fMax2;
            rectF.top = rect.top;
            if (gravity != 17) {
                f7 = (width / 2.0f) + (bVar.f1067Z / 2.0f);
            }
            rectF.right = Math.min(f7, rect.right);
            rectF.bottom = bVar.d() + rect.top;
            if (rectF.width() > 0.0f) {
            }
        }
    }

    public final void l(TextView textView, int i5) {
        try {
            textView.setTextAppearance(i5);
            if (textView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        textView.setTextAppearance(2132017730);
        textView.setTextColor(AbstractC0934b.a(getContext(), com.wssyncmldm.R.color.design_error));
    }

    public final boolean m() {
        r rVar = this.f6123l;
        return (rVar.f2544o != 1 || rVar.f2547r == null || TextUtils.isEmpty(rVar.f2545p)) ? false : true;
    }

    public final void n(Editable editable) {
        ((E2.a) this.f6126p).getClass();
        int length = editable != null ? editable.length() : 0;
        boolean z4 = this.f6125o;
        int i5 = this.n;
        String string = null;
        if (i5 == -1) {
            this.f6128q.setText(String.valueOf(length));
            this.f6128q.setContentDescription(null);
            this.f6125o = false;
        } else {
            this.f6125o = length > i5;
            Context context = getContext();
            this.f6128q.setContentDescription(context.getString(this.f6125o ? com.wssyncmldm.R.string.character_counter_overflowed_content_description : com.wssyncmldm.R.string.character_counter_content_description, Integer.valueOf(length), Integer.valueOf(this.n)));
            if (z4 != this.f6125o) {
                o();
            }
            String str = H.b.f814d;
            H.b bVar = TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? H.b.f816g : H.b.f;
            AppCompatTextView appCompatTextView = this.f6128q;
            String string2 = getContext().getString(com.wssyncmldm.R.string.character_counter_pattern, Integer.valueOf(length), Integer.valueOf(this.n));
            if (string2 == null) {
                bVar.getClass();
            } else {
                string = bVar.c(string2, bVar.f819c).toString();
            }
            appCompatTextView.setText(string);
        }
        if (this.f == null || z4 == this.f6125o) {
            return;
        }
        u(false, false);
        x();
        r();
    }

    public final void o() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.f6128q;
        if (appCompatTextView != null) {
            l(appCompatTextView, this.f6125o ? this.f6129r : this.f6130s);
            if (!this.f6125o && (colorStateList2 = this.f6082A) != null) {
                this.f6128q.setTextColor(colorStateList2);
            }
            if (!this.f6125o || (colorStateList = this.f6084B) == null) {
                return;
            }
            this.f6128q.setTextColor(colorStateList);
        }
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f6140y0.g(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int iMax;
        n nVar = this.f6112e;
        nVar.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z4 = false;
        this.f6089E0 = false;
        if (this.f != null && this.f.getMeasuredHeight() < (iMax = Math.max(nVar.getMeasuredHeight(), this.f6110d.getMeasuredHeight()))) {
            this.f.setMinimumHeight(iMax);
            z4 = true;
        }
        boolean zQ = q();
        if (z4 || zQ) {
            this.f.post(new D1.b(6, this));
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        EditText editText = this.f;
        if (editText != null) {
            ThreadLocal threadLocal = c.f1098a;
            int width = editText.getWidth();
            int height = editText.getHeight();
            Rect rect = this.f6109c0;
            rect.set(0, 0, width, height);
            ThreadLocal threadLocal2 = c.f1098a;
            Matrix matrix = (Matrix) threadLocal2.get();
            if (matrix == null) {
                matrix = new Matrix();
                threadLocal2.set(matrix);
            } else {
                matrix.reset();
            }
            c.a(this, editText, matrix);
            ThreadLocal threadLocal3 = c.f1099b;
            RectF rectF = (RectF) threadLocal3.get();
            if (rectF == null) {
                rectF = new RectF();
                threadLocal3.set(rectF);
            }
            rectF.set(rect);
            matrix.mapRect(rectF);
            rect.set((int) (rectF.left + 0.5f), (int) (rectF.top + 0.5f), (int) (rectF.right + 0.5f), (int) (rectF.bottom + 0.5f));
            g gVar = this.f6096L;
            if (gVar != null) {
                int i9 = rect.bottom;
                gVar.setBounds(rect.left, i9 - this.f6104V, rect.right, i9);
            }
            g gVar2 = this.f6097M;
            if (gVar2 != null) {
                int i10 = rect.bottom;
                gVar2.setBounds(rect.left, i10 - this.f6105W, rect.right, i10);
            }
            if (this.E) {
                float textSize = this.f.getTextSize();
                b bVar = this.f6140y0;
                if (bVar.f1080h != textSize) {
                    bVar.f1080h = textSize;
                    bVar.h(false);
                }
                int gravity = this.f.getGravity();
                int i11 = (gravity & (-113)) | 48;
                if (bVar.f1079g != i11) {
                    bVar.f1079g = i11;
                    bVar.h(false);
                }
                if (bVar.f != gravity) {
                    bVar.f = gravity;
                    bVar.h(false);
                }
                if (this.f == null) {
                    throw new IllegalStateException();
                }
                boolean zE = m.e(this);
                int i12 = rect.bottom;
                Rect rect2 = this.f6111d0;
                rect2.bottom = i12;
                int i13 = this.f6101R;
                if (i13 == 1) {
                    rect2.left = g(rect.left, zE);
                    rect2.top = rect.top + this.f6102T;
                    rect2.right = h(rect.right, zE);
                } else if (i13 != 2) {
                    rect2.left = g(rect.left, zE);
                    rect2.top = getPaddingTop();
                    rect2.right = h(rect.right, zE);
                } else {
                    rect2.left = this.f.getPaddingLeft() + rect.left;
                    rect2.top = rect.top - c();
                    rect2.right = rect.right - this.f.getPaddingRight();
                }
                int i14 = rect2.left;
                int i15 = rect2.top;
                int i16 = rect2.right;
                int i17 = rect2.bottom;
                Rect rect3 = bVar.f1074d;
                if (rect3.left != i14 || rect3.top != i15 || rect3.right != i16 || rect3.bottom != i17) {
                    rect3.set(i14, i15, i16, i17);
                    bVar.f1054M = true;
                }
                if (this.f == null) {
                    throw new IllegalStateException();
                }
                TextPaint textPaint = bVar.f1056O;
                textPaint.setTextSize(bVar.f1080h);
                textPaint.setTypeface(bVar.f1092u);
                textPaint.setLetterSpacing(bVar.f1064W);
                float f = -textPaint.ascent();
                rect2.left = this.f.getCompoundPaddingLeft() + rect.left;
                rect2.top = (this.f6101R != 1 || this.f.getMinLines() > 1) ? rect.top + this.f.getCompoundPaddingTop() : (int) (rect.centerY() - (f / 2.0f));
                rect2.right = rect.right - this.f.getCompoundPaddingRight();
                int compoundPaddingBottom = (this.f6101R != 1 || this.f.getMinLines() > 1) ? rect.bottom - this.f.getCompoundPaddingBottom() : (int) (rect2.top + f);
                rect2.bottom = compoundPaddingBottom;
                int i18 = rect2.left;
                int i19 = rect2.top;
                int i20 = rect2.right;
                Rect rect4 = bVar.f1072c;
                if (rect4.left != i18 || rect4.top != i19 || rect4.right != i20 || rect4.bottom != compoundPaddingBottom) {
                    rect4.set(i18, i19, i20, compoundPaddingBottom);
                    bVar.f1054M = true;
                }
                bVar.h(false);
                if (!e() || this.f6138x0) {
                    return;
                }
                j();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i5, int i6) throws Resources.NotFoundException {
        EditText editText;
        super.onMeasure(i5, i6);
        boolean z4 = this.f6089E0;
        n nVar = this.f6112e;
        if (!z4) {
            nVar.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.f6089E0 = true;
        }
        if (this.f6133v != null && (editText = this.f) != null) {
            this.f6133v.setGravity(editText.getGravity());
            this.f6133v.setPadding(this.f.getCompoundPaddingLeft(), this.f.getCompoundPaddingTop(), this.f.getCompoundPaddingRight(), this.f.getCompoundPaddingBottom());
        }
        nVar.m();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) throws Resources.NotFoundException {
        if (!(parcelable instanceof A)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        A a3 = (A) parcelable;
        super.onRestoreInstanceState(a3.f2270c);
        setError(a3.f2462e);
        if (a3.f) {
            post(new h(6, this));
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i5) {
        super.onRtlPropertiesChanged(i5);
        boolean z4 = i5 == 1;
        if (z4 != this.f6099O) {
            P1.c cVar = this.f6098N.f2111e;
            RectF rectF = this.f6113e0;
            float fA = cVar.a(rectF);
            float fA2 = this.f6098N.f.a(rectF);
            float fA3 = this.f6098N.f2113h.a(rectF);
            float fA4 = this.f6098N.f2112g.a(rectF);
            k kVar = this.f6098N;
            Z0.j jVar = kVar.f2107a;
            Z0.j jVar2 = kVar.f2108b;
            Z0.j jVar3 = kVar.f2110d;
            Z0.j jVar4 = kVar.f2109c;
            e eVar = new e(0);
            e eVar2 = new e(0);
            e eVar3 = new e(0);
            e eVar4 = new e(0);
            P1.j.b(jVar2);
            P1.j.b(jVar);
            P1.j.b(jVar4);
            P1.j.b(jVar3);
            P1.a aVar = new P1.a(fA2);
            P1.a aVar2 = new P1.a(fA);
            P1.a aVar3 = new P1.a(fA4);
            P1.a aVar4 = new P1.a(fA3);
            k kVar2 = new k();
            kVar2.f2107a = jVar2;
            kVar2.f2108b = jVar;
            kVar2.f2109c = jVar3;
            kVar2.f2110d = jVar4;
            kVar2.f2111e = aVar;
            kVar2.f = aVar2;
            kVar2.f2112g = aVar4;
            kVar2.f2113h = aVar3;
            kVar2.f2114i = eVar;
            kVar2.f2115j = eVar2;
            kVar2.f2116k = eVar3;
            kVar2.f2117l = eVar4;
            this.f6099O = z4;
            setShapeAppearanceModel(kVar2);
        }
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        A a3 = new A(super.onSaveInstanceState());
        if (m()) {
            a3.f2462e = getError();
        }
        n nVar = this.f6112e;
        a3.f = nVar.f2506k != 0 && nVar.f2504i.f6034g;
        return a3;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p() {
        ColorStateList colorStateList;
        ColorStateList colorStateListValueOf = this.f6085C;
        if (colorStateListValueOf == null) {
            Context context = getContext();
            TypedValue typedValueE = L2.b.E(context, com.wssyncmldm.R.attr.colorControlActivated);
            if (typedValueE != null) {
                int i5 = typedValueE.resourceId;
                if (i5 != 0) {
                    colorStateListValueOf = A.r.a(context.getResources(), i5, context.getTheme());
                } else {
                    int i6 = typedValueE.data;
                    colorStateListValueOf = i6 != 0 ? ColorStateList.valueOf(i6) : null;
                }
            }
        }
        EditText editText = this.f;
        if (editText == null || editText.getTextCursorDrawable() == null) {
            return;
        }
        Drawable drawableMutate = this.f.getTextCursorDrawable().mutate();
        if ((m() || (this.f6128q != null && this.f6125o)) && (colorStateList = this.f6087D) != null) {
            colorStateListValueOf = colorStateList;
        }
        C.a.h(drawableMutate, colorStateListValueOf);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean q() {
        boolean z4;
        if (this.f == null) {
            return false;
        }
        CheckableImageButton checkableImageButton = null;
        boolean z5 = true;
        if (getStartIconDrawable() != null || (getPrefixText() != null && getPrefixTextView().getVisibility() == 0)) {
            w wVar = this.f6110d;
            if (wVar.getMeasuredWidth() > 0) {
                int measuredWidth = wVar.getMeasuredWidth() - this.f.getPaddingLeft();
                if (this.g0 == null || this.f6117h0 != measuredWidth) {
                    ColorDrawable colorDrawable = new ColorDrawable();
                    this.g0 = colorDrawable;
                    this.f6117h0 = measuredWidth;
                    colorDrawable.setBounds(0, 0, measuredWidth, 1);
                }
                Drawable[] compoundDrawablesRelative = this.f.getCompoundDrawablesRelative();
                Drawable drawable = compoundDrawablesRelative[0];
                ColorDrawable colorDrawable2 = this.g0;
                if (drawable != colorDrawable2) {
                    this.f.setCompoundDrawablesRelative(colorDrawable2, compoundDrawablesRelative[1], compoundDrawablesRelative[2], compoundDrawablesRelative[3]);
                    z4 = true;
                }
                z4 = false;
            } else {
                if (this.g0 != null) {
                    Drawable[] compoundDrawablesRelative2 = this.f.getCompoundDrawablesRelative();
                    this.f.setCompoundDrawablesRelative(null, compoundDrawablesRelative2[1], compoundDrawablesRelative2[2], compoundDrawablesRelative2[3]);
                    this.g0 = null;
                    z4 = true;
                }
                z4 = false;
            }
        }
        n nVar = this.f6112e;
        if ((nVar.e() || ((nVar.f2506k != 0 && nVar.d()) || nVar.f2512r != null)) && nVar.getMeasuredWidth() > 0) {
            int measuredWidth2 = nVar.f2513s.getMeasuredWidth() - this.f.getPaddingRight();
            if (nVar.e()) {
                checkableImageButton = nVar.f2501e;
            } else if (nVar.f2506k != 0 && nVar.d()) {
                checkableImageButton = nVar.f2504i;
            }
            if (checkableImageButton != null) {
                measuredWidth2 = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth() + measuredWidth2;
            }
            Drawable[] compoundDrawablesRelative3 = this.f.getCompoundDrawablesRelative();
            ColorDrawable colorDrawable3 = this.f6121j0;
            if (colorDrawable3 == null || this.k0 == measuredWidth2) {
                if (colorDrawable3 == null) {
                    ColorDrawable colorDrawable4 = new ColorDrawable();
                    this.f6121j0 = colorDrawable4;
                    this.k0 = measuredWidth2;
                    colorDrawable4.setBounds(0, 0, measuredWidth2, 1);
                }
                Drawable drawable2 = compoundDrawablesRelative3[2];
                ColorDrawable colorDrawable5 = this.f6121j0;
                if (drawable2 != colorDrawable5) {
                    this.l0 = drawable2;
                    this.f.setCompoundDrawablesRelative(compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], colorDrawable5, compoundDrawablesRelative3[3]);
                } else {
                    z5 = z4;
                }
            } else {
                this.k0 = measuredWidth2;
                colorDrawable3.setBounds(0, 0, measuredWidth2, 1);
                this.f.setCompoundDrawablesRelative(compoundDrawablesRelative3[0], compoundDrawablesRelative3[1], this.f6121j0, compoundDrawablesRelative3[3]);
            }
        } else {
            if (this.f6121j0 == null) {
                return z4;
            }
            Drawable[] compoundDrawablesRelative4 = this.f.getCompoundDrawablesRelative();
            if (compoundDrawablesRelative4[2] == this.f6121j0) {
                this.f.setCompoundDrawablesRelative(compoundDrawablesRelative4[0], compoundDrawablesRelative4[1], this.l0, compoundDrawablesRelative4[3]);
            } else {
                z5 = z4;
            }
            this.f6121j0 = null;
        }
        return z5;
    }

    public final void r() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        PorterDuffColorFilter porterDuffColorFilterE;
        PorterDuffColorFilter porterDuffColorFilterE2;
        EditText editText = this.f;
        if (editText == null || this.f6101R != 0 || (background = editText.getBackground()) == null) {
            return;
        }
        Rect rect = AbstractC0591g0.f7856a;
        Drawable drawableMutate = background.mutate();
        if (m()) {
            int errorCurrentTextColors = getErrorCurrentTextColors();
            PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
            C0622s c0622s = C0622s.f7985b;
            synchronized (C0622s.class) {
                porterDuffColorFilterE2 = D0.e(errorCurrentTextColors, mode);
            }
            drawableMutate.setColorFilter(porterDuffColorFilterE2);
            return;
        }
        if (!this.f6125o || (appCompatTextView = this.f6128q) == null) {
            drawableMutate.clearColorFilter();
            this.f.refreshDrawableState();
            return;
        }
        int currentTextColor = appCompatTextView.getCurrentTextColor();
        PorterDuff.Mode mode2 = PorterDuff.Mode.SRC_IN;
        C0622s c0622s2 = C0622s.f7985b;
        synchronized (C0622s.class) {
            porterDuffColorFilterE = D0.e(currentTextColor, mode2);
        }
        drawableMutate.setColorFilter(porterDuffColorFilterE);
    }

    public final void s() {
        EditText editText = this.f;
        if (editText == null || this.f6092H == null) {
            return;
        }
        if ((this.f6095K || editText.getBackground() == null) && this.f6101R != 0) {
            Drawable editTextBoxBackground = getEditTextBoxBackground();
            EditText editText2 = this.f;
            WeakHashMap weakHashMap = Q.f940a;
            editText2.setBackground(editTextBoxBackground);
            this.f6095K = true;
        }
    }

    public void setBoxBackgroundColor(int i5) {
        if (this.f6107b0 != i5) {
            this.f6107b0 = i5;
            this.s0 = i5;
            this.u0 = i5;
            this.f6134v0 = i5;
            b();
        }
    }

    public void setBoxBackgroundColorResource(int i5) {
        setBoxBackgroundColor(AbstractC0934b.a(getContext(), i5));
    }

    public void setBoxBackgroundColorStateList(ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.s0 = defaultColor;
        this.f6107b0 = defaultColor;
        this.t0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.u0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        this.f6134v0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
        b();
    }

    public void setBoxBackgroundMode(int i5) throws Resources.NotFoundException {
        if (i5 == this.f6101R) {
            return;
        }
        this.f6101R = i5;
        if (this.f != null) {
            i();
        }
    }

    public void setBoxCollapsedPaddingTop(int i5) {
        this.f6102T = i5;
    }

    public void setBoxCornerFamily(int i5) {
        P1.j jVarE = this.f6098N.e();
        P1.c cVar = this.f6098N.f2111e;
        Z0.j jVarJ = AbstractC0420a.j(i5);
        jVarE.f2096a = jVarJ;
        P1.j.b(jVarJ);
        jVarE.f2100e = cVar;
        P1.c cVar2 = this.f6098N.f;
        Z0.j jVarJ2 = AbstractC0420a.j(i5);
        jVarE.f2097b = jVarJ2;
        P1.j.b(jVarJ2);
        jVarE.f = cVar2;
        P1.c cVar3 = this.f6098N.f2113h;
        Z0.j jVarJ3 = AbstractC0420a.j(i5);
        jVarE.f2099d = jVarJ3;
        P1.j.b(jVarJ3);
        jVarE.f2102h = cVar3;
        P1.c cVar4 = this.f6098N.f2112g;
        Z0.j jVarJ4 = AbstractC0420a.j(i5);
        jVarE.f2098c = jVarJ4;
        P1.j.b(jVarJ4);
        jVarE.f2101g = cVar4;
        this.f6098N = jVarE.a();
        b();
    }

    public void setBoxStrokeColor(int i5) throws Resources.NotFoundException {
        if (this.q0 != i5) {
            this.q0 = i5;
            x();
        }
    }

    public void setBoxStrokeColorStateList(ColorStateList colorStateList) throws Resources.NotFoundException {
        if (colorStateList.isStateful()) {
            this.o0 = colorStateList.getDefaultColor();
            this.f6136w0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.f6127p0 = colorStateList.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, -1);
            this.q0 = colorStateList.getColorForState(new int[]{R.attr.state_focused, R.attr.state_enabled}, -1);
        } else if (this.q0 != colorStateList.getDefaultColor()) {
            this.q0 = colorStateList.getDefaultColor();
        }
        x();
    }

    public void setBoxStrokeErrorColor(ColorStateList colorStateList) throws Resources.NotFoundException {
        if (this.r0 != colorStateList) {
            this.r0 = colorStateList;
            x();
        }
    }

    public void setBoxStrokeWidth(int i5) throws Resources.NotFoundException {
        this.f6104V = i5;
        x();
    }

    public void setBoxStrokeWidthFocused(int i5) throws Resources.NotFoundException {
        this.f6105W = i5;
        x();
    }

    public void setBoxStrokeWidthFocusedResource(int i5) throws Resources.NotFoundException {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i5));
    }

    public void setBoxStrokeWidthResource(int i5) throws Resources.NotFoundException {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i5));
    }

    public void setCounterEnabled(boolean z4) {
        if (this.f6124m != z4) {
            r rVar = this.f6123l;
            if (z4) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
                this.f6128q = appCompatTextView;
                appCompatTextView.setId(com.wssyncmldm.R.id.textinput_counter);
                Typeface typeface = this.f6114f0;
                if (typeface != null) {
                    this.f6128q.setTypeface(typeface);
                }
                this.f6128q.setMaxLines(1);
                rVar.a(this.f6128q, 2);
                ((ViewGroup.MarginLayoutParams) this.f6128q.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(com.wssyncmldm.R.dimen.mtrl_textinput_counter_margin_start));
                o();
                if (this.f6128q != null) {
                    EditText editText = this.f;
                    n(editText != null ? editText.getText() : null);
                }
            } else {
                rVar.g(this.f6128q, 2);
                this.f6128q = null;
            }
            this.f6124m = z4;
        }
    }

    public void setCounterMaxLength(int i5) {
        if (this.n != i5) {
            if (i5 > 0) {
                this.n = i5;
            } else {
                this.n = -1;
            }
            if (!this.f6124m || this.f6128q == null) {
                return;
            }
            EditText editText = this.f;
            n(editText == null ? null : editText.getText());
        }
    }

    public void setCounterOverflowTextAppearance(int i5) {
        if (this.f6129r != i5) {
            this.f6129r = i5;
            o();
        }
    }

    public void setCounterOverflowTextColor(ColorStateList colorStateList) {
        if (this.f6084B != colorStateList) {
            this.f6084B = colorStateList;
            o();
        }
    }

    public void setCounterTextAppearance(int i5) {
        if (this.f6130s != i5) {
            this.f6130s = i5;
            o();
        }
    }

    public void setCounterTextColor(ColorStateList colorStateList) {
        if (this.f6082A != colorStateList) {
            this.f6082A = colorStateList;
            o();
        }
    }

    public void setCursorColor(ColorStateList colorStateList) {
        if (this.f6085C != colorStateList) {
            this.f6085C = colorStateList;
            p();
        }
    }

    public void setCursorErrorColor(ColorStateList colorStateList) {
        if (this.f6087D != colorStateList) {
            this.f6087D = colorStateList;
            if (m() || (this.f6128q != null && this.f6125o)) {
                p();
            }
        }
    }

    public void setDefaultHintTextColor(ColorStateList colorStateList) {
        this.m0 = colorStateList;
        this.n0 = colorStateList;
        if (this.f != null) {
            u(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z4) {
        k(this, z4);
        super.setEnabled(z4);
    }

    public void setEndIconActivated(boolean z4) {
        this.f6112e.f2504i.setActivated(z4);
    }

    public void setEndIconCheckable(boolean z4) {
        this.f6112e.f2504i.setCheckable(z4);
    }

    public void setEndIconContentDescription(int i5) {
        n nVar = this.f6112e;
        CharSequence text = i5 != 0 ? nVar.getResources().getText(i5) : null;
        CheckableImageButton checkableImageButton = nVar.f2504i;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
    }

    public void setEndIconDrawable(int i5) {
        n nVar = this.f6112e;
        Drawable drawableA = i5 != 0 ? AbstractC0420a.A(nVar.getContext(), i5) : null;
        CheckableImageButton checkableImageButton = nVar.f2504i;
        checkableImageButton.setImageDrawable(drawableA);
        if (drawableA != null) {
            ColorStateList colorStateList = nVar.f2508m;
            PorterDuff.Mode mode = nVar.n;
            TextInputLayout textInputLayout = nVar.f2499c;
            i3.x.c(textInputLayout, checkableImageButton, colorStateList, mode);
            i3.x.P0(textInputLayout, checkableImageButton, nVar.f2508m);
        }
    }

    public void setEndIconMinSize(int i5) {
        n nVar = this.f6112e;
        if (i5 < 0) {
            nVar.getClass();
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (i5 != nVar.f2509o) {
            nVar.f2509o = i5;
            CheckableImageButton checkableImageButton = nVar.f2504i;
            checkableImageButton.setMinimumWidth(i5);
            checkableImageButton.setMinimumHeight(i5);
            CheckableImageButton checkableImageButton2 = nVar.f2501e;
            checkableImageButton2.setMinimumWidth(i5);
            checkableImageButton2.setMinimumHeight(i5);
        }
    }

    public void setEndIconMode(int i5) throws Resources.NotFoundException {
        this.f6112e.g(i5);
    }

    public void setEndIconOnClickListener(View.OnClickListener onClickListener) {
        n nVar = this.f6112e;
        View.OnLongClickListener onLongClickListener = nVar.f2511q;
        CheckableImageButton checkableImageButton = nVar.f2504i;
        checkableImageButton.setOnClickListener(onClickListener);
        i3.x.b1(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        n nVar = this.f6112e;
        nVar.f2511q = onLongClickListener;
        CheckableImageButton checkableImageButton = nVar.f2504i;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        i3.x.b1(checkableImageButton, onLongClickListener);
    }

    public void setEndIconScaleType(ImageView.ScaleType scaleType) {
        n nVar = this.f6112e;
        nVar.f2510p = scaleType;
        nVar.f2504i.setScaleType(scaleType);
        nVar.f2501e.setScaleType(scaleType);
    }

    public void setEndIconTintList(ColorStateList colorStateList) {
        n nVar = this.f6112e;
        if (nVar.f2508m != colorStateList) {
            nVar.f2508m = colorStateList;
            i3.x.c(nVar.f2499c, nVar.f2504i, colorStateList, nVar.n);
        }
    }

    public void setEndIconTintMode(PorterDuff.Mode mode) {
        n nVar = this.f6112e;
        if (nVar.n != mode) {
            nVar.n = mode;
            i3.x.c(nVar.f2499c, nVar.f2504i, nVar.f2508m, mode);
        }
    }

    public void setEndIconVisible(boolean z4) {
        this.f6112e.h(z4);
    }

    public void setError(CharSequence charSequence) throws Resources.NotFoundException {
        r rVar = this.f6123l;
        if (!rVar.f2546q) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (TextUtils.isEmpty(charSequence)) {
            rVar.f();
            return;
        }
        rVar.c();
        rVar.f2545p = charSequence;
        rVar.f2547r.setText(charSequence);
        int i5 = rVar.n;
        if (i5 != 1) {
            rVar.f2544o = 1;
        }
        rVar.i(i5, rVar.h(rVar.f2547r, charSequence), rVar.f2544o);
    }

    public void setErrorAccessibilityLiveRegion(int i5) {
        r rVar = this.f6123l;
        rVar.f2549t = i5;
        AppCompatTextView appCompatTextView = rVar.f2547r;
        if (appCompatTextView != null) {
            WeakHashMap weakHashMap = Q.f940a;
            appCompatTextView.setAccessibilityLiveRegion(i5);
        }
    }

    public void setErrorContentDescription(CharSequence charSequence) {
        r rVar = this.f6123l;
        rVar.f2548s = charSequence;
        AppCompatTextView appCompatTextView = rVar.f2547r;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z4) throws Resources.NotFoundException {
        r rVar = this.f6123l;
        if (rVar.f2546q == z4) {
            return;
        }
        rVar.c();
        TextInputLayout textInputLayout = rVar.f2538h;
        if (z4) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(rVar.f2537g, null);
            rVar.f2547r = appCompatTextView;
            appCompatTextView.setId(com.wssyncmldm.R.id.textinput_error);
            rVar.f2547r.setTextAlignment(5);
            Typeface typeface = rVar.f2531B;
            if (typeface != null) {
                rVar.f2547r.setTypeface(typeface);
            }
            int i5 = rVar.f2550u;
            rVar.f2550u = i5;
            AppCompatTextView appCompatTextView2 = rVar.f2547r;
            if (appCompatTextView2 != null) {
                textInputLayout.l(appCompatTextView2, i5);
            }
            ColorStateList colorStateList = rVar.f2551v;
            rVar.f2551v = colorStateList;
            AppCompatTextView appCompatTextView3 = rVar.f2547r;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = rVar.f2548s;
            rVar.f2548s = charSequence;
            AppCompatTextView appCompatTextView4 = rVar.f2547r;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            int i6 = rVar.f2549t;
            rVar.f2549t = i6;
            AppCompatTextView appCompatTextView5 = rVar.f2547r;
            if (appCompatTextView5 != null) {
                WeakHashMap weakHashMap = Q.f940a;
                appCompatTextView5.setAccessibilityLiveRegion(i6);
            }
            rVar.f2547r.setVisibility(4);
            rVar.a(rVar.f2547r, 0);
        } else {
            rVar.f();
            rVar.g(rVar.f2547r, 0);
            rVar.f2547r = null;
            textInputLayout.r();
            textInputLayout.x();
        }
        rVar.f2546q = z4;
    }

    public void setErrorIconDrawable(int i5) throws Resources.NotFoundException {
        n nVar = this.f6112e;
        nVar.i(i5 != 0 ? AbstractC0420a.A(nVar.getContext(), i5) : null);
        i3.x.P0(nVar.f2499c, nVar.f2501e, nVar.f);
    }

    public void setErrorIconOnClickListener(View.OnClickListener onClickListener) {
        n nVar = this.f6112e;
        CheckableImageButton checkableImageButton = nVar.f2501e;
        View.OnLongClickListener onLongClickListener = nVar.f2503h;
        checkableImageButton.setOnClickListener(onClickListener);
        i3.x.b1(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        n nVar = this.f6112e;
        nVar.f2503h = onLongClickListener;
        CheckableImageButton checkableImageButton = nVar.f2501e;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        i3.x.b1(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(ColorStateList colorStateList) {
        n nVar = this.f6112e;
        if (nVar.f != colorStateList) {
            nVar.f = colorStateList;
            i3.x.c(nVar.f2499c, nVar.f2501e, colorStateList, nVar.f2502g);
        }
    }

    public void setErrorIconTintMode(PorterDuff.Mode mode) {
        n nVar = this.f6112e;
        if (nVar.f2502g != mode) {
            nVar.f2502g = mode;
            i3.x.c(nVar.f2499c, nVar.f2501e, nVar.f, mode);
        }
    }

    public void setErrorTextAppearance(int i5) {
        r rVar = this.f6123l;
        rVar.f2550u = i5;
        AppCompatTextView appCompatTextView = rVar.f2547r;
        if (appCompatTextView != null) {
            rVar.f2538h.l(appCompatTextView, i5);
        }
    }

    public void setErrorTextColor(ColorStateList colorStateList) {
        r rVar = this.f6123l;
        rVar.f2551v = colorStateList;
        AppCompatTextView appCompatTextView = rVar.f2547r;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setExpandedHintEnabled(boolean z4) {
        if (this.f6142z0 != z4) {
            this.f6142z0 = z4;
            u(false, false);
        }
    }

    public void setHelperText(CharSequence charSequence) throws Resources.NotFoundException {
        boolean zIsEmpty = TextUtils.isEmpty(charSequence);
        r rVar = this.f6123l;
        if (zIsEmpty) {
            if (rVar.f2553x) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!rVar.f2553x) {
            setHelperTextEnabled(true);
        }
        rVar.c();
        rVar.f2552w = charSequence;
        rVar.f2554y.setText(charSequence);
        int i5 = rVar.n;
        if (i5 != 2) {
            rVar.f2544o = 2;
        }
        rVar.i(i5, rVar.h(rVar.f2554y, charSequence), rVar.f2544o);
    }

    public void setHelperTextColor(ColorStateList colorStateList) {
        r rVar = this.f6123l;
        rVar.f2530A = colorStateList;
        AppCompatTextView appCompatTextView = rVar.f2554y;
        if (appCompatTextView == null || colorStateList == null) {
            return;
        }
        appCompatTextView.setTextColor(colorStateList);
    }

    public void setHelperTextEnabled(boolean z4) throws Resources.NotFoundException {
        int i5 = 0;
        r rVar = this.f6123l;
        if (rVar.f2553x == z4) {
            return;
        }
        rVar.c();
        if (z4) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(rVar.f2537g, null);
            rVar.f2554y = appCompatTextView;
            appCompatTextView.setId(com.wssyncmldm.R.id.textinput_helper_text);
            rVar.f2554y.setTextAlignment(5);
            Typeface typeface = rVar.f2531B;
            if (typeface != null) {
                rVar.f2554y.setTypeface(typeface);
            }
            rVar.f2554y.setVisibility(4);
            AppCompatTextView appCompatTextView2 = rVar.f2554y;
            WeakHashMap weakHashMap = Q.f940a;
            appCompatTextView2.setAccessibilityLiveRegion(1);
            int i6 = rVar.f2555z;
            rVar.f2555z = i6;
            AppCompatTextView appCompatTextView3 = rVar.f2554y;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTextAppearance(i6);
            }
            ColorStateList colorStateList = rVar.f2530A;
            rVar.f2530A = colorStateList;
            AppCompatTextView appCompatTextView4 = rVar.f2554y;
            if (appCompatTextView4 != null && colorStateList != null) {
                appCompatTextView4.setTextColor(colorStateList);
            }
            rVar.a(rVar.f2554y, 1);
            rVar.f2554y.setAccessibilityDelegate(new q(i5, rVar));
        } else {
            rVar.c();
            int i7 = rVar.n;
            if (i7 == 2) {
                rVar.f2544o = 0;
            }
            rVar.i(i7, rVar.h(rVar.f2554y, ""), rVar.f2544o);
            rVar.g(rVar.f2554y, 1);
            rVar.f2554y = null;
            TextInputLayout textInputLayout = rVar.f2538h;
            textInputLayout.r();
            textInputLayout.x();
        }
        rVar.f2553x = z4;
    }

    public void setHelperTextTextAppearance(int i5) {
        r rVar = this.f6123l;
        rVar.f2555z = i5;
        AppCompatTextView appCompatTextView = rVar.f2554y;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(i5);
        }
    }

    public void setHint(CharSequence charSequence) {
        if (this.E) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z4) {
        this.f6083A0 = z4;
    }

    public void setHintEnabled(boolean z4) {
        if (z4 != this.E) {
            this.E = z4;
            if (z4) {
                CharSequence hint = this.f.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.f6090F)) {
                        setHint(hint);
                    }
                    this.f.setHint((CharSequence) null);
                }
                this.f6091G = true;
            } else {
                this.f6091G = false;
                if (!TextUtils.isEmpty(this.f6090F) && TextUtils.isEmpty(this.f.getHint())) {
                    this.f.setHint(this.f6090F);
                }
                setHintInternal(null);
            }
            if (this.f != null) {
                t();
            }
        }
    }

    public void setHintTextAppearance(int i5) {
        b bVar = this.f6140y0;
        View view = bVar.f1068a;
        d dVar = new d(view.getContext(), i5);
        ColorStateList colorStateList = dVar.f1841j;
        if (colorStateList != null) {
            bVar.f1083k = colorStateList;
        }
        float f = dVar.f1842k;
        if (f != 0.0f) {
            bVar.f1081i = f;
        }
        ColorStateList colorStateList2 = dVar.f1833a;
        if (colorStateList2 != null) {
            bVar.f1062U = colorStateList2;
        }
        bVar.f1060S = dVar.f1837e;
        bVar.f1061T = dVar.f;
        bVar.f1059R = dVar.f1838g;
        bVar.f1063V = dVar.f1840i;
        M1.a aVar = bVar.f1096y;
        if (aVar != null) {
            aVar.f1827d = true;
        }
        C0837c c0837c = new C0837c(bVar);
        dVar.a();
        bVar.f1096y = new M1.a(c0837c, dVar.n);
        dVar.c(view.getContext(), bVar.f1096y);
        bVar.h(false);
        this.n0 = bVar.f1083k;
        if (this.f != null) {
            u(false, false);
            t();
        }
    }

    public void setHintTextColor(ColorStateList colorStateList) {
        if (this.n0 != colorStateList) {
            if (this.m0 == null) {
                b bVar = this.f6140y0;
                if (bVar.f1083k != colorStateList) {
                    bVar.f1083k = colorStateList;
                    bVar.h(false);
                }
            }
            this.n0 = colorStateList;
            if (this.f != null) {
                u(false, false);
            }
        }
    }

    public void setLengthCounter(z zVar) {
        this.f6126p = zVar;
    }

    public void setMaxEms(int i5) {
        this.f6118i = i5;
        EditText editText = this.f;
        if (editText == null || i5 == -1) {
            return;
        }
        editText.setMaxEms(i5);
    }

    public void setMaxWidth(int i5) {
        this.f6122k = i5;
        EditText editText = this.f;
        if (editText == null || i5 == -1) {
            return;
        }
        editText.setMaxWidth(i5);
    }

    public void setMaxWidthResource(int i5) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i5));
    }

    public void setMinEms(int i5) {
        this.f6116h = i5;
        EditText editText = this.f;
        if (editText == null || i5 == -1) {
            return;
        }
        editText.setMinEms(i5);
    }

    public void setMinWidth(int i5) {
        this.f6120j = i5;
        EditText editText = this.f;
        if (editText == null || i5 == -1) {
            return;
        }
        editText.setMinWidth(i5);
    }

    public void setMinWidthResource(int i5) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i5));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(int i5) {
        n nVar = this.f6112e;
        nVar.f2504i.setContentDescription(i5 != 0 ? nVar.getResources().getText(i5) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(int i5) {
        n nVar = this.f6112e;
        nVar.f2504i.setImageDrawable(i5 != 0 ? AbstractC0420a.A(nVar.getContext(), i5) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z4) throws Resources.NotFoundException {
        n nVar = this.f6112e;
        if (z4 && nVar.f2506k != 1) {
            nVar.g(1);
        } else if (z4) {
            nVar.getClass();
        } else {
            nVar.g(0);
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(ColorStateList colorStateList) {
        n nVar = this.f6112e;
        nVar.f2508m = colorStateList;
        i3.x.c(nVar.f2499c, nVar.f2504i, colorStateList, nVar.n);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(PorterDuff.Mode mode) {
        n nVar = this.f6112e;
        nVar.n = mode;
        i3.x.c(nVar.f2499c, nVar.f2504i, nVar.f2508m, mode);
    }

    public void setPlaceholderText(CharSequence charSequence) {
        if (this.f6133v == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
            this.f6133v = appCompatTextView;
            appCompatTextView.setId(com.wssyncmldm.R.id.textinput_placeholder);
            AppCompatTextView appCompatTextView2 = this.f6133v;
            WeakHashMap weakHashMap = Q.f940a;
            appCompatTextView2.setImportantForAccessibility(2);
            j jVarD = d();
            this.f6139y = jVarD;
            jVarD.f307d = 67L;
            this.f6141z = d();
            setPlaceholderTextAppearance(this.f6137x);
            setPlaceholderTextColor(this.f6135w);
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.f6132u) {
                setPlaceholderTextEnabled(true);
            }
            this.f6131t = charSequence;
        }
        EditText editText = this.f;
        v(editText != null ? editText.getText() : null);
    }

    public void setPlaceholderTextAppearance(int i5) {
        this.f6137x = i5;
        AppCompatTextView appCompatTextView = this.f6133v;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(i5);
        }
    }

    public void setPlaceholderTextColor(ColorStateList colorStateList) {
        if (this.f6135w != colorStateList) {
            this.f6135w = colorStateList;
            AppCompatTextView appCompatTextView = this.f6133v;
            if (appCompatTextView == null || colorStateList == null) {
                return;
            }
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setPrefixText(CharSequence charSequence) {
        w wVar = this.f6110d;
        wVar.getClass();
        wVar.f2571e = TextUtils.isEmpty(charSequence) ? null : charSequence;
        wVar.f2570d.setText(charSequence);
        wVar.e();
    }

    public void setPrefixTextAppearance(int i5) {
        this.f6110d.f2570d.setTextAppearance(i5);
    }

    public void setPrefixTextColor(ColorStateList colorStateList) {
        this.f6110d.f2570d.setTextColor(colorStateList);
    }

    public void setShapeAppearanceModel(k kVar) {
        g gVar = this.f6092H;
        if (gVar == null || gVar.f2075c.f2055a == kVar) {
            return;
        }
        this.f6098N = kVar;
        b();
    }

    public void setStartIconCheckable(boolean z4) {
        this.f6110d.f.setCheckable(z4);
    }

    public void setStartIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f6110d.f;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(int i5) {
        setStartIconDrawable(i5 != 0 ? AbstractC0420a.A(getContext(), i5) : null);
    }

    public void setStartIconMinSize(int i5) {
        w wVar = this.f6110d;
        if (i5 < 0) {
            wVar.getClass();
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i5 != wVar.f2574i) {
            wVar.f2574i = i5;
            CheckableImageButton checkableImageButton = wVar.f;
            checkableImageButton.setMinimumWidth(i5);
            checkableImageButton.setMinimumHeight(i5);
        }
    }

    public void setStartIconOnClickListener(View.OnClickListener onClickListener) {
        w wVar = this.f6110d;
        View.OnLongClickListener onLongClickListener = wVar.f2576k;
        CheckableImageButton checkableImageButton = wVar.f;
        checkableImageButton.setOnClickListener(onClickListener);
        i3.x.b1(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        w wVar = this.f6110d;
        wVar.f2576k = onLongClickListener;
        CheckableImageButton checkableImageButton = wVar.f;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        i3.x.b1(checkableImageButton, onLongClickListener);
    }

    public void setStartIconScaleType(ImageView.ScaleType scaleType) {
        w wVar = this.f6110d;
        wVar.f2575j = scaleType;
        wVar.f.setScaleType(scaleType);
    }

    public void setStartIconTintList(ColorStateList colorStateList) {
        w wVar = this.f6110d;
        if (wVar.f2572g != colorStateList) {
            wVar.f2572g = colorStateList;
            i3.x.c(wVar.f2569c, wVar.f, colorStateList, wVar.f2573h);
        }
    }

    public void setStartIconTintMode(PorterDuff.Mode mode) {
        w wVar = this.f6110d;
        if (wVar.f2573h != mode) {
            wVar.f2573h = mode;
            i3.x.c(wVar.f2569c, wVar.f, wVar.f2572g, mode);
        }
    }

    public void setStartIconVisible(boolean z4) {
        this.f6110d.c(z4);
    }

    public void setSuffixText(CharSequence charSequence) {
        n nVar = this.f6112e;
        nVar.getClass();
        nVar.f2512r = TextUtils.isEmpty(charSequence) ? null : charSequence;
        nVar.f2513s.setText(charSequence);
        nVar.n();
    }

    public void setSuffixTextAppearance(int i5) {
        this.f6112e.f2513s.setTextAppearance(i5);
    }

    public void setSuffixTextColor(ColorStateList colorStateList) {
        this.f6112e.f2513s.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(y yVar) {
        EditText editText = this.f;
        if (editText != null) {
            Q.h(editText, yVar);
        }
    }

    public void setTypeface(Typeface typeface) {
        if (typeface != this.f6114f0) {
            this.f6114f0 = typeface;
            this.f6140y0.m(typeface);
            r rVar = this.f6123l;
            if (typeface != rVar.f2531B) {
                rVar.f2531B = typeface;
                AppCompatTextView appCompatTextView = rVar.f2547r;
                if (appCompatTextView != null) {
                    appCompatTextView.setTypeface(typeface);
                }
                AppCompatTextView appCompatTextView2 = rVar.f2554y;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTypeface(typeface);
                }
            }
            AppCompatTextView appCompatTextView3 = this.f6128q;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTypeface(typeface);
            }
        }
    }

    public final void t() {
        if (this.f6101R != 1) {
            FrameLayout frameLayout = this.f6108c;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int iC = c();
            if (iC != layoutParams.topMargin) {
                layoutParams.topMargin = iC;
                frameLayout.requestLayout();
            }
        }
    }

    public final void u(boolean z4, boolean z5) {
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        boolean zIsEnabled = isEnabled();
        EditText editText = this.f;
        boolean z6 = (editText == null || TextUtils.isEmpty(editText.getText())) ? false : true;
        EditText editText2 = this.f;
        boolean z7 = editText2 != null && editText2.hasFocus();
        ColorStateList colorStateList2 = this.m0;
        b bVar = this.f6140y0;
        if (colorStateList2 != null) {
            bVar.i(colorStateList2);
        }
        if (!zIsEnabled) {
            ColorStateList colorStateList3 = this.m0;
            bVar.i(ColorStateList.valueOf(colorStateList3 != null ? colorStateList3.getColorForState(new int[]{-16842910}, this.f6136w0) : this.f6136w0));
        } else if (m()) {
            AppCompatTextView appCompatTextView2 = this.f6123l.f2547r;
            bVar.i(appCompatTextView2 != null ? appCompatTextView2.getTextColors() : null);
        } else if (this.f6125o && (appCompatTextView = this.f6128q) != null) {
            bVar.i(appCompatTextView.getTextColors());
        } else if (z7 && (colorStateList = this.n0) != null && bVar.f1083k != colorStateList) {
            bVar.f1083k = colorStateList;
            bVar.h(false);
        }
        n nVar = this.f6112e;
        w wVar = this.f6110d;
        if (z6 || !this.f6142z0 || (isEnabled() && z7)) {
            if (z5 || this.f6138x0) {
                ValueAnimator valueAnimator = this.B0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.B0.cancel();
                }
                if (z4 && this.f6083A0) {
                    a(1.0f);
                } else {
                    bVar.k(1.0f);
                }
                this.f6138x0 = false;
                if (e()) {
                    j();
                }
                EditText editText3 = this.f;
                v(editText3 != null ? editText3.getText() : null);
                wVar.f2577l = false;
                wVar.e();
                nVar.f2514t = false;
                nVar.n();
                return;
            }
            return;
        }
        if (z5 || !this.f6138x0) {
            ValueAnimator valueAnimator2 = this.B0;
            if (valueAnimator2 != null && valueAnimator2.isRunning()) {
                this.B0.cancel();
            }
            if (z4 && this.f6083A0) {
                a(0.0f);
            } else {
                bVar.k(0.0f);
            }
            if (e() && (!((S1.g) this.f6092H).f2480z.f2478v.isEmpty()) && e()) {
                ((S1.g) this.f6092H).o(0.0f, 0.0f, 0.0f, 0.0f);
            }
            this.f6138x0 = true;
            AppCompatTextView appCompatTextView3 = this.f6133v;
            if (appCompatTextView3 != null && this.f6132u) {
                appCompatTextView3.setText((CharSequence) null);
                C0.x.a(this.f6108c, this.f6141z);
                this.f6133v.setVisibility(4);
            }
            wVar.f2577l = true;
            wVar.e();
            nVar.f2514t = true;
            nVar.n();
        }
    }

    public final void v(Editable editable) {
        ((E2.a) this.f6126p).getClass();
        int length = editable != null ? editable.length() : 0;
        FrameLayout frameLayout = this.f6108c;
        if (length != 0 || this.f6138x0) {
            AppCompatTextView appCompatTextView = this.f6133v;
            if (appCompatTextView == null || !this.f6132u) {
                return;
            }
            appCompatTextView.setText((CharSequence) null);
            C0.x.a(frameLayout, this.f6141z);
            this.f6133v.setVisibility(4);
            return;
        }
        if (this.f6133v == null || !this.f6132u || TextUtils.isEmpty(this.f6131t)) {
            return;
        }
        this.f6133v.setText(this.f6131t);
        C0.x.a(frameLayout, this.f6139y);
        this.f6133v.setVisibility(0);
        this.f6133v.bringToFront();
        announceForAccessibility(this.f6131t);
    }

    public final void w(boolean z4, boolean z5) {
        int defaultColor = this.r0.getDefaultColor();
        int colorForState = this.r0.getColorForState(new int[]{R.attr.state_hovered, R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.r0.getColorForState(new int[]{R.attr.state_activated, R.attr.state_enabled}, defaultColor);
        if (z4) {
            this.f6106a0 = colorForState2;
        } else if (z5) {
            this.f6106a0 = colorForState;
        } else {
            this.f6106a0 = defaultColor;
        }
    }

    public final void x() throws Resources.NotFoundException {
        AppCompatTextView appCompatTextView;
        EditText editText;
        EditText editText2;
        if (this.f6092H == null || this.f6101R == 0) {
            return;
        }
        boolean z4 = false;
        boolean z5 = isFocused() || ((editText2 = this.f) != null && editText2.hasFocus());
        if (isHovered() || ((editText = this.f) != null && editText.isHovered())) {
            z4 = true;
        }
        if (!isEnabled()) {
            this.f6106a0 = this.f6136w0;
        } else if (m()) {
            if (this.r0 != null) {
                w(z5, z4);
            } else {
                this.f6106a0 = getErrorCurrentTextColors();
            }
        } else if (!this.f6125o || (appCompatTextView = this.f6128q) == null) {
            if (z5) {
                this.f6106a0 = this.q0;
            } else if (z4) {
                this.f6106a0 = this.f6127p0;
            } else {
                this.f6106a0 = this.o0;
            }
        } else if (this.r0 != null) {
            w(z5, z4);
        } else {
            this.f6106a0 = appCompatTextView.getCurrentTextColor();
        }
        p();
        n nVar = this.f6112e;
        nVar.l();
        CheckableImageButton checkableImageButton = nVar.f2501e;
        ColorStateList colorStateList = nVar.f;
        TextInputLayout textInputLayout = nVar.f2499c;
        i3.x.P0(textInputLayout, checkableImageButton, colorStateList);
        ColorStateList colorStateList2 = nVar.f2508m;
        CheckableImageButton checkableImageButton2 = nVar.f2504i;
        i3.x.P0(textInputLayout, checkableImageButton2, colorStateList2);
        if (nVar.b() instanceof S1.j) {
            if (!textInputLayout.m() || checkableImageButton2.getDrawable() == null) {
                i3.x.c(textInputLayout, checkableImageButton2, nVar.f2508m, nVar.n);
            } else {
                Drawable drawableMutate = checkableImageButton2.getDrawable().mutate();
                C.a.g(drawableMutate, textInputLayout.getErrorCurrentTextColors());
                checkableImageButton2.setImageDrawable(drawableMutate);
            }
        }
        w wVar = this.f6110d;
        i3.x.P0(wVar.f2569c, wVar.f, wVar.f2572g);
        if (this.f6101R == 2) {
            int i5 = this.f6103U;
            if (z5 && isEnabled()) {
                this.f6103U = this.f6105W;
            } else {
                this.f6103U = this.f6104V;
            }
            if (this.f6103U != i5 && e() && !this.f6138x0) {
                if (e()) {
                    ((S1.g) this.f6092H).o(0.0f, 0.0f, 0.0f, 0.0f);
                }
                j();
            }
        }
        if (this.f6101R == 1) {
            if (!isEnabled()) {
                this.f6107b0 = this.t0;
            } else if (z4 && !z5) {
                this.f6107b0 = this.f6134v0;
            } else if (z5) {
                this.f6107b0 = this.u0;
            } else {
                this.f6107b0 = this.s0;
            }
        }
        b();
    }

    public void setStartIconDrawable(Drawable drawable) {
        this.f6110d.b(drawable);
    }

    public void setHint(int i5) {
        setHint(i5 != 0 ? getResources().getText(i5) : null);
    }

    public void setStartIconContentDescription(int i5) {
        setStartIconContentDescription(i5 != 0 ? getResources().getText(i5) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(CharSequence charSequence) {
        this.f6112e.f2504i.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(Drawable drawable) {
        this.f6112e.f2504i.setImageDrawable(drawable);
    }

    public void setErrorIconDrawable(Drawable drawable) {
        this.f6112e.i(drawable);
    }

    public void setEndIconContentDescription(CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f6112e.f2504i;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(Drawable drawable) {
        n nVar = this.f6112e;
        CheckableImageButton checkableImageButton = nVar.f2504i;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = nVar.f2508m;
            PorterDuff.Mode mode = nVar.n;
            TextInputLayout textInputLayout = nVar.f2499c;
            i3.x.c(textInputLayout, checkableImageButton, colorStateList, mode);
            i3.x.P0(textInputLayout, checkableImageButton, nVar.f2508m);
        }
    }
}
