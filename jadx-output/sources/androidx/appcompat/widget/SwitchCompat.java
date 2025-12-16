package androidx.appcompat.widget;

import C0.C0013c;
import J.D;
import J.N;
import J.Q;
import J.r0;
import X.h;
import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.text.InputFilter;
import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.TransformationMethod;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.PathInterpolator;
import android.widget.CompoundButton;
import androidx.emoji2.text.j;
import c.AbstractC0206a;
import f1.AbstractC0420a;
import h.C0429a;
import java.util.WeakHashMap;
import k.AbstractC0591g0;
import k.C0628v;
import k.N1;
import k.V;
import k.t1;
import k.u1;
import k.v1;
import o3.AbstractC0729f;
import p0.AbstractC0739a;
import z.AbstractC0936d;

/* loaded from: classes.dex */
public class SwitchCompat extends CompoundButton {

    /* renamed from: c0, reason: collision with root package name */
    public static final int[] f3468c0;

    /* renamed from: A, reason: collision with root package name */
    public float f3469A;

    /* renamed from: B, reason: collision with root package name */
    public int f3470B;

    /* renamed from: C, reason: collision with root package name */
    public int f3471C;

    /* renamed from: D, reason: collision with root package name */
    public int f3472D;
    public int E;

    /* renamed from: F, reason: collision with root package name */
    public int f3473F;

    /* renamed from: G, reason: collision with root package name */
    public int f3474G;

    /* renamed from: H, reason: collision with root package name */
    public int f3475H;

    /* renamed from: I, reason: collision with root package name */
    public final TextPaint f3476I;

    /* renamed from: J, reason: collision with root package name */
    public final ColorStateList f3477J;

    /* renamed from: K, reason: collision with root package name */
    public StaticLayout f3478K;

    /* renamed from: L, reason: collision with root package name */
    public StaticLayout f3479L;

    /* renamed from: M, reason: collision with root package name */
    public final C0429a f3480M;

    /* renamed from: N, reason: collision with root package name */
    public u1 f3481N;

    /* renamed from: O, reason: collision with root package name */
    public C0628v f3482O;

    /* renamed from: Q, reason: collision with root package name */
    public h f3483Q;

    /* renamed from: R, reason: collision with root package name */
    public final Rect f3484R;

    /* renamed from: T, reason: collision with root package name */
    public Drawable f3485T;

    /* renamed from: U, reason: collision with root package name */
    public Drawable f3486U;

    /* renamed from: V, reason: collision with root package name */
    public String f3487V;

    /* renamed from: W, reason: collision with root package name */
    public String f3488W;

    /* renamed from: a0, reason: collision with root package name */
    public final PathInterpolator f3489a0;

    /* renamed from: b0, reason: collision with root package name */
    public int f3490b0;

    /* renamed from: c, reason: collision with root package name */
    public Drawable f3491c;

    /* renamed from: d, reason: collision with root package name */
    public ColorStateList f3492d;

    /* renamed from: e, reason: collision with root package name */
    public PorterDuff.Mode f3493e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f3494g;

    /* renamed from: h, reason: collision with root package name */
    public Drawable f3495h;

    /* renamed from: i, reason: collision with root package name */
    public ColorStateList f3496i;

    /* renamed from: j, reason: collision with root package name */
    public PorterDuff.Mode f3497j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f3498k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f3499l;

    /* renamed from: m, reason: collision with root package name */
    public int f3500m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f3501o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f3502p;

    /* renamed from: q, reason: collision with root package name */
    public CharSequence f3503q;

    /* renamed from: r, reason: collision with root package name */
    public CharSequence f3504r;

    /* renamed from: s, reason: collision with root package name */
    public CharSequence f3505s;

    /* renamed from: t, reason: collision with root package name */
    public CharSequence f3506t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f3507u;

    /* renamed from: v, reason: collision with root package name */
    public int f3508v;

    /* renamed from: w, reason: collision with root package name */
    public final int f3509w;

    /* renamed from: x, reason: collision with root package name */
    public float f3510x;

    /* renamed from: y, reason: collision with root package name */
    public float f3511y;

    /* renamed from: z, reason: collision with root package name */
    public final VelocityTracker f3512z;

    static {
        new C0013c("thumbPos", 7, Float.class);
        f3468c0 = new int[]{R.attr.state_checked};
    }

    public SwitchCompat(Context context, AttributeSet attributeSet) throws Resources.NotFoundException {
        int resourceId;
        super(context, attributeSet, com.wssyncmldm.R.attr.switchStyle);
        this.f3492d = null;
        this.f3493e = null;
        this.f = false;
        this.f3494g = false;
        this.f3496i = null;
        this.f3497j = null;
        this.f3498k = false;
        this.f3499l = false;
        this.f3512z = VelocityTracker.obtain();
        this.f3484R = new Rect();
        this.f3490b0 = 0;
        v1.a(this, getContext());
        TextPaint textPaint = new TextPaint(1);
        this.f3476I = textPaint;
        textPaint.density = getResources().getDisplayMetrics().density;
        int i5 = Settings.System.getString(context.getContentResolver(), "current_sec_active_themepackage") != null ? com.wssyncmldm.R.attr.themeSwitchStyle : com.wssyncmldm.R.attr.switchStyle;
        int[] iArr = AbstractC0206a.f5184z;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i5, 0);
        r0 r0Var = new r0(context, typedArrayObtainStyledAttributes);
        WeakHashMap weakHashMap = Q.f940a;
        N.d(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i5, 0);
        Drawable drawableG = r0Var.g(2);
        this.f3491c = drawableG;
        if (drawableG != null) {
            drawableG.setCallback(this);
        }
        Drawable drawableG2 = r0Var.g(12);
        this.f3495h = drawableG2;
        if (drawableG2 != null) {
            drawableG2.setCallback(this);
            Drawable.ConstantState constantState = this.f3495h.getConstantState();
            if (constantState != null) {
                this.f3485T = constantState.newDrawable();
                this.f3486U = constantState.newDrawable();
            } else {
                Drawable drawable = this.f3495h;
                this.f3485T = drawable;
                this.f3486U = drawable;
            }
            this.f3485T.setState(new int[]{R.attr.state_enabled, R.attr.state_checked});
            this.f3486U.setState(new int[]{R.attr.state_enabled, -16842912});
        }
        setTextOnInternal(typedArrayObtainStyledAttributes.getText(0));
        setTextOffInternal(typedArrayObtainStyledAttributes.getText(1));
        this.f3507u = typedArrayObtainStyledAttributes.getBoolean(3, true);
        this.f3500m = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, 0);
        this.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(5, 0);
        this.f3501o = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, 0);
        this.f3502p = typedArrayObtainStyledAttributes.getBoolean(4, false);
        ColorStateList colorStateListF = r0Var.f(10);
        if (colorStateListF != null) {
            this.f3492d = colorStateListF;
            this.f = true;
        }
        PorterDuff.Mode modeB = AbstractC0591g0.b(typedArrayObtainStyledAttributes.getInt(11, -1), null);
        if (this.f3493e != modeB) {
            this.f3493e = modeB;
            this.f3494g = true;
        }
        if (this.f || this.f3494g) {
            a();
        }
        ColorStateList colorStateListF2 = r0Var.f(13);
        if (colorStateListF2 != null) {
            this.f3496i = colorStateListF2;
            this.f3498k = true;
        }
        PorterDuff.Mode modeB2 = AbstractC0591g0.b(typedArrayObtainStyledAttributes.getInt(14, -1), null);
        if (this.f3497j != modeB2) {
            this.f3497j = modeB2;
            this.f3499l = true;
        }
        if (this.f3498k || this.f3499l) {
            b();
        }
        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(8, 0);
        if (resourceId2 != 0) {
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(resourceId2, AbstractC0206a.f5157A);
            ColorStateList colorStateList = (!typedArrayObtainStyledAttributes2.hasValue(3) || (resourceId = typedArrayObtainStyledAttributes2.getResourceId(3, 0)) == 0 || (colorStateList = AbstractC0936d.b(context, resourceId)) == null) ? typedArrayObtainStyledAttributes2.getColorStateList(3) : colorStateList;
            if (colorStateList != null) {
                this.f3477J = colorStateList;
            } else {
                this.f3477J = getTextColors();
            }
            int dimensionPixelSize = typedArrayObtainStyledAttributes2.getDimensionPixelSize(0, 0);
            if (dimensionPixelSize != 0) {
                float f = dimensionPixelSize;
                if (f != textPaint.getTextSize()) {
                    textPaint.setTextSize(f);
                    requestLayout();
                }
            }
            int i6 = typedArrayObtainStyledAttributes2.getInt(1, -1);
            int i7 = typedArrayObtainStyledAttributes2.getInt(2, -1);
            Typeface typeface = i6 != 1 ? i6 != 2 ? i6 != 3 ? null : Typeface.MONOSPACE : Typeface.SERIF : Typeface.SANS_SERIF;
            if (i7 > 0) {
                Typeface typefaceDefaultFromStyle = typeface == null ? Typeface.defaultFromStyle(i7) : Typeface.create(typeface, i7);
                setSwitchTypeface(typefaceDefaultFromStyle);
                int i8 = (~(typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i7;
                textPaint.setFakeBoldText((i8 & 1) != 0);
                textPaint.setTextSkewX((2 & i8) != 0 ? -0.25f : 0.0f);
            } else {
                textPaint.setFakeBoldText(false);
                textPaint.setTextSkewX(0.0f);
                setSwitchTypeface(typeface);
            }
            if (typedArrayObtainStyledAttributes2.getBoolean(14, false)) {
                Context context2 = getContext();
                C0429a c0429a = new C0429a();
                c0429a.f6952a = context2.getResources().getConfiguration().locale;
                this.f3480M = c0429a;
            } else {
                this.f3480M = null;
            }
            setTextOnInternal(this.f3503q);
            setTextOffInternal(this.f3505s);
            typedArrayObtainStyledAttributes2.recycle();
        }
        new V(this).f(attributeSet, com.wssyncmldm.R.attr.switchStyle);
        r0Var.n();
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f3509w = viewConfiguration.getScaledTouchSlop();
        viewConfiguration.getScaledMinimumFlingVelocity();
        getEmojiTextViewHelper().b(attributeSet, com.wssyncmldm.R.attr.switchStyle);
        this.f3470B = getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_switch_width);
        this.f3487V = getResources().getString(com.wssyncmldm.R.string.sesl_switch_on);
        this.f3488W = getResources().getString(com.wssyncmldm.R.string.sesl_switch_off);
        this.f3489a0 = new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f);
        refreshDrawableState();
        setChecked(isChecked());
    }

    private C0628v getEmojiTextViewHelper() {
        if (this.f3482O == null) {
            this.f3482O = new C0628v(this);
        }
        return this.f3482O;
    }

    private boolean getTargetCheckedState() {
        return this.f3469A > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((N1.a(this) ? 1.0f - this.f3469A : this.f3469A) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        Drawable drawable = this.f3495h;
        if (drawable == null) {
            return 0;
        }
        Rect rect = this.f3484R;
        drawable.getPadding(rect);
        Drawable drawable2 = this.f3491c;
        Rect rectA = drawable2 != null ? AbstractC0591g0.a(drawable2) : AbstractC0591g0.f7856a;
        return (((((this.f3470B + this.f3490b0) - this.f3472D) - rect.left) - rect.right) - rectA.left) - rectA.right;
    }

    private void setTextOffInternal(CharSequence charSequence) {
        this.f3505s = charSequence;
        C0628v emojiTextViewHelper = getEmojiTextViewHelper();
        TransformationMethod transformationMethodS0 = ((AbstractC0420a) emojiTextViewHelper.f8016b.f9022c).s0(this.f3480M);
        if (transformationMethodS0 != null) {
            charSequence = transformationMethodS0.getTransformation(charSequence, this);
        }
        this.f3506t = charSequence;
        this.f3479L = null;
        if (this.f3507u) {
            g();
        }
    }

    private void setTextOnInternal(CharSequence charSequence) {
        this.f3503q = charSequence;
        C0628v emojiTextViewHelper = getEmojiTextViewHelper();
        TransformationMethod transformationMethodS0 = ((AbstractC0420a) emojiTextViewHelper.f8016b.f9022c).s0(this.f3480M);
        if (transformationMethodS0 != null) {
            charSequence = transformationMethodS0.getTransformation(charSequence, this);
        }
        this.f3504r = charSequence;
        this.f3478K = null;
        if (this.f3507u) {
            g();
        }
    }

    public final void a() {
        Drawable drawable = this.f3491c;
        if (drawable != null) {
            if (this.f || this.f3494g) {
                Drawable drawableMutate = drawable.mutate();
                this.f3491c = drawableMutate;
                if (this.f) {
                    C.a.h(drawableMutate, this.f3492d);
                }
                if (this.f3494g) {
                    C.a.i(this.f3491c, this.f3493e);
                }
                if (this.f3491c.isStateful()) {
                    this.f3491c.setState(getDrawableState());
                }
            }
        }
    }

    public final void b() {
        Drawable drawable = this.f3495h;
        if (drawable != null) {
            if (this.f3498k || this.f3499l) {
                Drawable drawableMutate = drawable.mutate();
                this.f3495h = drawableMutate;
                if (this.f3498k) {
                    C.a.h(drawableMutate, this.f3496i);
                }
                if (this.f3499l) {
                    C.a.i(this.f3495h, this.f3497j);
                }
                if (this.f3495h.isStateful()) {
                    this.f3495h.setState(getDrawableState());
                }
            }
        }
    }

    public final boolean c(boolean z4) {
        return z4 != isChecked() && hasWindowFocus() && AbstractC0739a.m(null, this) && !isTemporarilyDetached();
    }

    public final void d() {
        setTextOnInternal(this.f3503q);
        setTextOffInternal(this.f3505s);
        requestLayout();
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        int i5;
        int i6;
        int i7 = this.E;
        int i8 = this.f3473F;
        int i9 = this.f3474G;
        int i10 = this.f3475H;
        int thumbOffset = getThumbOffset() + i7;
        Drawable drawable = this.f3491c;
        Rect rectA = drawable != null ? AbstractC0591g0.a(drawable) : AbstractC0591g0.f7856a;
        Drawable drawable2 = this.f3495h;
        Rect rect = this.f3484R;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i11 = rect.left;
            thumbOffset += i11;
            int i12 = this.f3490b0;
            int i13 = (i12 / 2) + i7;
            int i14 = i9 - (i12 / 2);
            if (rectA != null) {
                int i15 = rectA.left;
                if (i15 > i11) {
                    i13 += i15 - i11;
                }
                int i16 = rectA.top;
                int i17 = rect.top;
                i5 = i16 > i17 ? (i16 - i17) + i8 : i8;
                int i18 = rectA.right;
                int i19 = rect.right;
                if (i18 > i19) {
                    i14 -= i18 - i19;
                }
                int i20 = rectA.bottom;
                int i21 = rect.bottom;
                if (i20 > i21) {
                    i6 = i10 - (i20 - i21);
                }
                this.f3495h.setBounds(i13, i5, i14, i6);
            } else {
                i5 = i8;
            }
            i6 = i10;
            this.f3495h.setBounds(i13, i5, i14, i6);
        }
        Drawable drawable3 = this.f3491c;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i22 = thumbOffset - rect.left;
            int i23 = thumbOffset + this.f3472D + rect.right;
            this.f3491c.setBounds(i22, i8, i23, i10);
            Drawable background = getBackground();
            if (background != null) {
                C.a.f(background, i22, i8, i23, i10);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableHotspotChanged(float f, float f5) {
        super.drawableHotspotChanged(f, f5);
        Drawable drawable = this.f3491c;
        if (drawable != null) {
            C.a.e(drawable, f, f5);
        }
        Drawable drawable2 = this.f3495h;
        if (drawable2 != null) {
            C.a.e(drawable2, f, f5);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.f3491c;
        boolean state = (drawable == null || !drawable.isStateful()) ? false : drawable.setState(drawableState);
        Drawable drawable2 = this.f3495h;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    public final void e() throws Resources.NotFoundException {
        String string = this.f3488W;
        if (string == null) {
            string = getResources().getString(com.wssyncmldm.R.string.abc_capital_off);
        }
        WeakHashMap weakHashMap = Q.f940a;
        new D(com.wssyncmldm.R.id.tag_state_description, CharSequence.class, 64, 30, 1).e(this, string);
    }

    public final void f() throws Resources.NotFoundException {
        String string = this.f3487V;
        if (string == null) {
            string = getResources().getString(com.wssyncmldm.R.string.abc_capital_on);
        }
        WeakHashMap weakHashMap = Q.f940a;
        new D(com.wssyncmldm.R.id.tag_state_description, CharSequence.class, 64, 30, 1).e(this, string);
    }

    public final void g() {
        if (this.f3483Q == null && ((AbstractC0420a) this.f3482O.f8016b.f9022c).Q() && j.f3695j != null) {
            j jVarA = j.a();
            int iB = jVarA.b();
            if (iB == 3 || iB == 0) {
                h hVar = new h(this);
                this.f3483Q = hVar;
                jVarA.g(hVar);
            }
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!N1.a(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.f3470B + this.f3490b0;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.f3501o : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (N1.a(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.f3470B + this.f3490b0;
        return !TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.f3501o : compoundPaddingRight;
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return super.getCustomSelectionActionModeCallback();
    }

    public boolean getShowText() {
        return this.f3507u;
    }

    public boolean getSplitTrack() {
        return this.f3502p;
    }

    public int getSwitchMinWidth() {
        return this.n;
    }

    public int getSwitchPadding() {
        return this.f3501o;
    }

    public CharSequence getTextOff() {
        return this.f3505s;
    }

    public CharSequence getTextOn() {
        return this.f3503q;
    }

    public Drawable getThumbDrawable() {
        return this.f3491c;
    }

    public final float getThumbPosition() {
        return this.f3469A;
    }

    public int getThumbTextPadding() {
        return this.f3500m;
    }

    public ColorStateList getThumbTintList() {
        return this.f3492d;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f3493e;
    }

    public Drawable getTrackDrawable() {
        return this.f3495h;
    }

    public ColorStateList getTrackTintList() {
        return this.f3496i;
    }

    public PorterDuff.Mode getTrackTintMode() {
        return this.f3497j;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f3491c;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f3495h;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        if (this.f3481N != null) {
            clearAnimation();
            this.f3481N = null;
        }
        setThumbPosition(isChecked() ? 1.0f : 0.0f);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.f3470B = getResources().getDimensionPixelSize(com.wssyncmldm.R.dimen.sesl_switch_width);
        this.f3487V = getResources().getString(com.wssyncmldm.R.string.sesl_switch_on);
        this.f3488W = getResources().getString(com.wssyncmldm.R.string.sesl_switch_off);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i5) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i5 + 1);
        if (isChecked()) {
            View.mergeDrawableStates(iArrOnCreateDrawableState, f3468c0);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        int width;
        super.onDraw(canvas);
        Drawable drawable = this.f3495h;
        Rect rect = this.f3484R;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i5 = this.f3473F;
        int i6 = this.f3475H;
        int i7 = i5 + rect.top;
        int i8 = i6 - rect.bottom;
        Drawable drawable2 = this.f3491c;
        if (drawable != null) {
            if (!this.f3502p || drawable2 == null) {
                Drawable drawable3 = isChecked() ? this.f3486U : this.f3485T;
                drawable3.setBounds(drawable.getBounds());
                int i9 = (int) (this.f3469A * 255.0f);
                if (i9 > 255) {
                    i9 = 255;
                } else if (i9 < 0) {
                    i9 = 0;
                }
                int i10 = 255 - i9;
                if (isChecked()) {
                    drawable.setAlpha(i9);
                    drawable3.setAlpha(i10);
                } else {
                    drawable.setAlpha(i10);
                    drawable3.setAlpha(i9);
                }
                drawable.draw(canvas);
                drawable3.draw(canvas);
            } else {
                Rect rectA = AbstractC0591g0.a(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectA.left;
                rect.right -= rectA.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        StaticLayout staticLayout = getTargetCheckedState() ? this.f3478K : this.f3479L;
        if (staticLayout != null) {
            int[] drawableState = getDrawableState();
            ColorStateList colorStateList = this.f3477J;
            TextPaint textPaint = this.f3476I;
            if (colorStateList != null) {
                textPaint.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            textPaint.drawableState = drawableState;
            if (drawable2 != null) {
                Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (staticLayout.getWidth() / 2), ((i7 + i8) / 2) - (staticLayout.getHeight() / 2));
            staticLayout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
    }

    @Override // android.widget.TextView, android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        int iMax;
        int width;
        int paddingLeft;
        int height;
        int paddingTop;
        super.onLayout(z4, i5, i6, i7, i8);
        int iMax2 = 0;
        if (this.f3491c != null) {
            Drawable drawable = this.f3495h;
            Rect rect = this.f3484R;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            Rect rectA = AbstractC0591g0.a(this.f3491c);
            iMax = Math.max(0, rectA.left - rect.left);
            iMax2 = Math.max(0, rectA.right - rect.right);
        } else {
            iMax = 0;
        }
        if (N1.a(this)) {
            paddingLeft = getPaddingLeft() + iMax;
            width = (((this.f3470B + paddingLeft) + this.f3490b0) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = ((width - this.f3470B) - this.f3490b0) + iMax + iMax2;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height2 = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i9 = this.f3471C;
            int i10 = height2 - (i9 / 2);
            height = i9 + i10;
            paddingTop = i10;
        } else if (gravity != 80) {
            paddingTop = getPaddingTop();
            height = this.f3471C + paddingTop;
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = height - this.f3471C;
        }
        this.E = paddingLeft;
        this.f3473F = paddingTop;
        this.f3475H = height;
        this.f3474G = width;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onMeasure(int i5, int i6) {
        int intrinsicWidth;
        int intrinsicHeight;
        int intrinsicHeight2;
        if (this.f3507u) {
            StaticLayout staticLayout = this.f3478K;
            TextPaint textPaint = this.f3476I;
            if (staticLayout == null) {
                CharSequence charSequence = this.f3504r;
                this.f3478K = new StaticLayout(charSequence, textPaint, charSequence != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
            if (this.f3479L == null) {
                CharSequence charSequence2 = this.f3506t;
                this.f3479L = new StaticLayout(charSequence2, textPaint, charSequence2 != null ? (int) Math.ceil(Layout.getDesiredWidth(charSequence2, textPaint)) : 0, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
            }
        }
        Drawable drawable = this.f3491c;
        Rect rect = this.f3484R;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.f3491c.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.f3491c.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        this.f3472D = Math.max(this.f3507u ? (this.f3500m * 2) + Math.max(this.f3478K.getWidth(), this.f3479L.getWidth()) : 0, intrinsicWidth);
        Drawable drawable2 = this.f3495h;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.f3495h.getIntrinsicHeight();
        } else {
            rect.setEmpty();
            intrinsicHeight2 = 0;
        }
        int i7 = rect.left;
        int i8 = rect.right;
        Drawable drawable3 = this.f3491c;
        if (drawable3 != null) {
            Rect rectA = AbstractC0591g0.a(drawable3);
            Math.max(i7, rectA.left);
            Math.max(i8, rectA.right);
        }
        int iMax = Math.max(intrinsicHeight2, intrinsicHeight);
        this.f3471C = iMax;
        this.f3490b0 = this.f3472D / this.f3470B > 0.5714286f ? (int) Math.ceil(r2 - (r3 * 0.5714286f)) : 0;
        super.onMeasure(i5, i6);
        if (getMeasuredHeight() < iMax) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax);
        }
    }

    @Override // android.view.View
    public final void onPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        String str = isChecked() ? this.f3487V : this.f3488W;
        if (str != null) {
            accessibilityEvent.getText().add(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00d6  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) throws Resources.NotFoundException {
        boolean targetCheckedState;
        VelocityTracker velocityTracker = this.f3512z;
        velocityTracker.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int i5 = this.f3509w;
        if (actionMasked != 0) {
            float f = 1.0f;
            if (actionMasked == 1) {
                if (this.f3508v == 2) {
                    this.f3508v = 0;
                    boolean z4 = motionEvent.getAction() == 1 && isEnabled();
                    boolean zIsChecked = isChecked();
                    if (z4) {
                        velocityTracker.computeCurrentVelocity(1000);
                        float xVelocity = velocityTracker.getXVelocity();
                        if (Math.abs(xVelocity) > 2000.0f || Math.abs(xVelocity) > 500.0f) {
                            targetCheckedState = !N1.a(this) ? xVelocity <= 0.0f : xVelocity >= 0.0f;
                        } else {
                            float f5 = this.f3469A;
                            if (f5 == 0.0f || f5 == 1.0f) {
                                targetCheckedState = getTargetCheckedState();
                            }
                        }
                    } else {
                        targetCheckedState = zIsChecked;
                    }
                    if (targetCheckedState != zIsChecked) {
                        playSoundEffect(0);
                    }
                    setChecked(targetCheckedState);
                    MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
                    motionEventObtain.setAction(3);
                    super.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                    super.onTouchEvent(motionEvent);
                    return true;
                }
                this.f3508v = 0;
                velocityTracker.clear();
            } else if (actionMasked == 2) {
                int i6 = this.f3508v;
                if (i6 == 1) {
                    float x4 = motionEvent.getX();
                    float y3 = motionEvent.getY();
                    if (Math.abs(x4 - this.f3510x) > i5 || Math.abs(y3 - this.f3511y) > i5) {
                        this.f3508v = 2;
                        getParent().requestDisallowInterceptTouchEvent(true);
                        this.f3510x = x4;
                        this.f3511y = y3;
                        return true;
                    }
                } else if (i6 == 2) {
                    float x5 = motionEvent.getX();
                    int thumbScrollRange = getThumbScrollRange();
                    float f6 = x5 - this.f3510x;
                    float f7 = thumbScrollRange != 0 ? f6 / thumbScrollRange : f6 > 0.0f ? 1.0f : -1.0f;
                    if (N1.a(this)) {
                        f7 = -f7;
                    }
                    float f8 = this.f3469A;
                    float f9 = f7 + f8;
                    if (f9 < 0.0f) {
                        f = 0.0f;
                    } else if (f9 <= 1.0f) {
                        f = f9;
                    }
                    if (f != f8) {
                        this.f3510x = x5;
                        setThumbPosition(f);
                    }
                    return true;
                }
            } else if (actionMasked == 3) {
            }
        } else {
            float x6 = motionEvent.getX();
            float y4 = motionEvent.getY();
            if (isEnabled() && this.f3491c != null) {
                int thumbOffset = getThumbOffset();
                Drawable drawable = this.f3491c;
                Rect rect = this.f3484R;
                drawable.getPadding(rect);
                int i7 = this.f3473F - i5;
                int i8 = (this.E + thumbOffset) - i5;
                int i9 = this.f3472D + i8 + rect.left + rect.right + i5;
                int i10 = this.f3475H + i5;
                if (x6 > i8 && x6 < i9 && y4 > i7 && y4 < i10) {
                    this.f3508v = 1;
                    this.f3510x = x6;
                    this.f3511y = y4;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z4) {
        super.setAllCaps(z4);
        getEmojiTextViewHelper().c(z4);
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z4) throws Resources.NotFoundException {
        if (c(z4)) {
            performHapticFeedback(AbstractC0729f.s(27));
        }
        super.setChecked(z4);
        boolean zIsChecked = isChecked();
        if (zIsChecked) {
            f();
        } else {
            e();
        }
        if (getWindowToken() != null) {
            WeakHashMap weakHashMap = Q.f940a;
            if (isLaidOut()) {
                u1 u1Var = this.f3481N;
                if (u1Var != null && u1Var != null) {
                    clearAnimation();
                    this.f3481N = null;
                }
                u1 u1Var2 = new u1(this, this.f3469A, zIsChecked ? 1.0f : 0.0f);
                this.f3481N = u1Var2;
                u1Var2.setDuration(150L);
                this.f3481N.setDuration(300L);
                this.f3481N.setInterpolator(this.f3489a0);
                this.f3481N.setAnimationListener(new t1(this, zIsChecked));
                startAnimation(this.f3481N);
                return;
            }
        }
        if (this.f3481N != null) {
            clearAnimation();
            this.f3481N = null;
        }
        setThumbPosition(zIsChecked ? 1.0f : 0.0f);
    }

    public void setCheckedWithoutAnimation(boolean z4) throws Resources.NotFoundException {
        super.setChecked(z4);
        boolean zIsChecked = isChecked();
        if (zIsChecked) {
            f();
        } else {
            e();
        }
        if (this.f3481N != null) {
            clearAnimation();
            this.f3481N = null;
        }
        setThumbPosition(zIsChecked ? 1.0f : 0.0f);
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(callback);
    }

    public void setEmojiCompatEnabled(boolean z4) {
        getEmojiTextViewHelper().d(z4);
        setTextOnInternal(this.f3503q);
        setTextOffInternal(this.f3505s);
        requestLayout();
    }

    public final void setEnforceSwitchWidth(boolean z4) {
        invalidate();
    }

    @Override // android.widget.TextView
    public void setFilters(InputFilter[] inputFilterArr) {
        super.setFilters(getEmojiTextViewHelper().a(inputFilterArr));
    }

    public void setShowText(boolean z4) {
        if (this.f3507u != z4) {
            this.f3507u = z4;
            requestLayout();
            if (z4) {
                g();
            }
        }
    }

    public void setSplitTrack(boolean z4) {
        this.f3502p = z4;
        invalidate();
    }

    public void setSwitchMinWidth(int i5) {
        this.n = i5;
        requestLayout();
    }

    public void setSwitchPadding(int i5) {
        this.f3501o = i5;
        requestLayout();
    }

    public void setSwitchTypeface(Typeface typeface) {
        TextPaint textPaint = this.f3476I;
        if ((textPaint.getTypeface() == null || textPaint.getTypeface().equals(typeface)) && (textPaint.getTypeface() != null || typeface == null)) {
            return;
        }
        textPaint.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(CharSequence charSequence) throws Resources.NotFoundException {
        setTextOffInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            return;
        }
        e();
    }

    public void setTextOn(CharSequence charSequence) throws Resources.NotFoundException {
        setTextOnInternal(charSequence);
        requestLayout();
        if (isChecked()) {
            f();
        }
    }

    public void setThumbDrawable(Drawable drawable) {
        Drawable drawable2 = this.f3491c;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f3491c = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f) {
        this.f3469A = f;
        invalidate();
    }

    public void setThumbResource(int i5) {
        setThumbDrawable(AbstractC0420a.A(getContext(), i5));
    }

    public void setThumbTextPadding(int i5) {
        this.f3500m = i5;
        requestLayout();
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f3492d = colorStateList;
        this.f = true;
        a();
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f3493e = mode;
        this.f3494g = true;
        a();
    }

    public void setTrackDrawable(Drawable drawable) {
        Drawable drawable2 = this.f3495h;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f3495h = drawable;
        if (drawable != null) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                this.f3485T = constantState.newDrawable();
                this.f3486U = constantState.newDrawable();
            } else {
                this.f3485T = drawable;
                this.f3486U = drawable;
            }
            this.f3485T.setState(new int[]{R.attr.state_enabled, R.attr.state_checked});
            this.f3486U.setState(new int[]{R.attr.state_enabled, -16842912});
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i5) {
        setTrackDrawable(AbstractC0420a.A(getContext(), i5));
    }

    public void setTrackTintList(ColorStateList colorStateList) {
        this.f3496i = colorStateList;
        this.f3498k = true;
        b();
    }

    public void setTrackTintMode(PorterDuff.Mode mode) {
        this.f3497j = mode;
        this.f3499l = true;
        b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() throws Resources.NotFoundException {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.f3491c || drawable == this.f3495h;
    }
}
