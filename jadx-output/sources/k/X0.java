package k;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.LinearInterpolator;
import android.widget.AbsSeekBar;
import androidx.appcompat.widget.SeslProgressBar;
import androidx.appcompat.widget.SeslSeekBar;
import c.AbstractC0206a;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.wssyncmldm.R;
import d.AbstractC0385a;
import g.C0426a;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import o3.AbstractC0729f;
import p0.AbstractC0739a;

/* loaded from: classes.dex */
public abstract class X0 extends SeslProgressBar {

    /* renamed from: A0, reason: collision with root package name */
    public final Rect f7774A0;
    public int B0;

    /* renamed from: C0, reason: collision with root package name */
    public Drawable f7775C0;

    /* renamed from: D0, reason: collision with root package name */
    public Drawable f7776D0;

    /* renamed from: E0, reason: collision with root package name */
    public float f7777E0;

    /* renamed from: F0, reason: collision with root package name */
    public int f7778F0;

    /* renamed from: G0, reason: collision with root package name */
    public Drawable f7779G0;

    /* renamed from: H0, reason: collision with root package name */
    public ColorStateList f7780H0;

    /* renamed from: I0, reason: collision with root package name */
    public final ColorStateList f7781I0;

    /* renamed from: J0, reason: collision with root package name */
    public final ColorStateList f7782J0;

    /* renamed from: K0, reason: collision with root package name */
    public ColorStateList f7783K0;

    /* renamed from: L0, reason: collision with root package name */
    public ColorStateList f7784L0;

    /* renamed from: M0, reason: collision with root package name */
    public ColorStateList f7785M0;

    /* renamed from: N0, reason: collision with root package name */
    public boolean f7786N0;
    public AnimatorSet O0;

    /* renamed from: P0, reason: collision with root package name */
    public int f7787P0;

    /* renamed from: Q0, reason: collision with root package name */
    public boolean f7788Q0;

    /* renamed from: R0, reason: collision with root package name */
    public final boolean f7789R0;

    /* renamed from: S0, reason: collision with root package name */
    public final boolean f7790S0;

    /* renamed from: T0, reason: collision with root package name */
    public boolean f7791T0;

    /* renamed from: U0, reason: collision with root package name */
    public int f7792U0;

    /* renamed from: V0, reason: collision with root package name */
    public boolean f7793V0;
    public final int W0;

    /* renamed from: X0, reason: collision with root package name */
    public final int f7794X0;

    /* renamed from: Y0, reason: collision with root package name */
    public final int f7795Y0;

    /* renamed from: Z0, reason: collision with root package name */
    public final int f7796Z0;

    /* renamed from: a1, reason: collision with root package name */
    public final int f7797a1;

    /* renamed from: b1, reason: collision with root package name */
    public final int f7798b1;

    /* renamed from: c1, reason: collision with root package name */
    public boolean f7799c1;

    /* renamed from: d1, reason: collision with root package name */
    public ValueAnimator f7800d1;
    public float e1;

    /* renamed from: f0, reason: collision with root package name */
    public final Rect f7801f0;
    public Drawable g0;

    /* renamed from: h0, reason: collision with root package name */
    public ColorStateList f7802h0;

    /* renamed from: i0, reason: collision with root package name */
    public PorterDuff.Mode f7803i0;

    /* renamed from: j0, reason: collision with root package name */
    public boolean f7804j0;
    public boolean k0;
    public Drawable l0;
    public ColorStateList m0;
    public PorterDuff.Mode n0;
    public boolean o0;

    /* renamed from: p0, reason: collision with root package name */
    public boolean f7805p0;
    public int q0;
    public boolean r0;
    public final boolean s0;
    public int t0;
    public final float u0;

    /* renamed from: v0, reason: collision with root package name */
    public final int f7806v0;

    /* renamed from: w0, reason: collision with root package name */
    public float f7807w0;

    /* renamed from: x0, reason: collision with root package name */
    public boolean f7808x0;

    /* renamed from: y0, reason: collision with root package name */
    public List f7809y0;

    /* renamed from: z0, reason: collision with root package name */
    public final ArrayList f7810z0;

    public X0(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarStyle);
        this.f7801f0 = new Rect();
        this.f7802h0 = null;
        this.f7803i0 = null;
        this.f7804j0 = false;
        this.k0 = false;
        this.m0 = null;
        this.n0 = null;
        this.o0 = false;
        this.f7805p0 = false;
        this.s0 = true;
        this.t0 = 1;
        this.f7809y0 = Collections.emptyList();
        this.f7810z0 = new ArrayList();
        this.f7774A0 = new Rect();
        this.f7778F0 = -1;
        this.f7786N0 = false;
        this.f7788Q0 = false;
        this.f7791T0 = false;
        this.f7792U0 = 0;
        this.f7793V0 = false;
        this.f7799c1 = false;
        this.e1 = 0.0f;
        int[] iArr = AbstractC0206a.f5166g;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, R.attr.seekBarStyle, 0);
        try {
            saveAttributeDataForStyleable(context, iArr, attributeSet, typedArrayObtainStyledAttributes, R.attr.seekBarStyle, 0);
            Resources resources = context.getResources();
            setThumb(typedArrayObtainStyledAttributes.getDrawable(0));
            if (typedArrayObtainStyledAttributes.hasValue(4)) {
                this.f7803i0 = AbstractC0591g0.b(typedArrayObtainStyledAttributes.getInt(4, -1), this.f7803i0);
                this.k0 = true;
            }
            if (typedArrayObtainStyledAttributes.hasValue(3)) {
                this.f7802h0 = typedArrayObtainStyledAttributes.getColorStateList(3);
                this.f7804j0 = true;
            }
            setTickMark(typedArrayObtainStyledAttributes.getDrawable(10));
            if (typedArrayObtainStyledAttributes.hasValue(12)) {
                this.n0 = AbstractC0591g0.b(typedArrayObtainStyledAttributes.getInt(12, -1), this.n0);
                this.f7805p0 = true;
            }
            if (typedArrayObtainStyledAttributes.hasValue(11)) {
                this.m0 = typedArrayObtainStyledAttributes.getColorStateList(11);
                this.o0 = true;
            }
            this.r0 = typedArrayObtainStyledAttributes.getBoolean(2, false);
            this.f7790S0 = typedArrayObtainStyledAttributes.getBoolean(5, true);
            this.W0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, Math.round(resources.getDimension(R.dimen.sesl_seekbar_track_height)));
            this.f7794X0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, Math.round(resources.getDimension(R.dimen.sesl_seekbar_track_height_expand)));
            this.f7795Y0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(9, Math.round(resources.getDimension(R.dimen.sesl_seekbar_mode_expand_track_height)));
            this.f7796Z0 = typedArrayObtainStyledAttributes.getDimensionPixelSize(8, Math.round(resources.getDimension(R.dimen.sesl_seekbar_mode_expand_track_height_expand)));
            this.f7797a1 = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, Math.round(resources.getDimension(R.dimen.sesl_seekbar_thumb_radius)));
            this.f7798b1 = typedArrayObtainStyledAttributes.getDimensionPixelSize(7, Math.round(resources.getDimension(R.dimen.sesl_seekbar_mode_expand_thumb_radius)));
            setThumbOffset(typedArrayObtainStyledAttributes.getDimensionPixelOffset(1, getThumbOffset()));
            if (typedArrayObtainStyledAttributes.hasValue(6)) {
                this.f3442c = typedArrayObtainStyledAttributes.getInt(6, 0);
            }
            if (typedArrayObtainStyledAttributes.getBoolean(13, true)) {
                typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, AbstractC0206a.f5169j, 0, 0);
                try {
                    this.u0 = typedArrayObtainStyledAttributes.getFloat(0, 0.5f);
                    typedArrayObtainStyledAttributes.recycle();
                } finally {
                    typedArrayObtainStyledAttributes.recycle();
                }
            } else {
                this.u0 = 1.0f;
            }
            w();
            x();
            this.f7806v0 = ViewConfiguration.get(context).getScaledTouchSlop();
            boolean zS = W1.a.S(context);
            this.f7789R0 = zS;
            this.f7782J0 = y(resources.getColor(zS ? R.color.sesl_seekbar_control_color_default : R.color.sesl_seekbar_control_color_default_dark));
            this.f7781I0 = y(resources.getColor(R.color.sesl_seekbar_control_color_secondary));
            this.f7780H0 = y(resources.getColor(R.color.sesl_seekbar_control_color_activated));
            this.f7784L0 = y(resources.getColor(zS ? R.color.sesl_seekbar_overlap_color_default_light : R.color.sesl_seekbar_overlap_color_default_dark));
            this.f7785M0 = y(resources.getColor(zS ? R.color.sesl_seekbar_overlap_color_activated_light : R.color.sesl_seekbar_overlap_color_activated_dark));
            ColorStateList thumbTintList = getThumbTintList();
            this.f7783K0 = thumbTintList;
            if (thumbTintList == null) {
                this.f7783K0 = new ColorStateList(new int[][]{new int[]{android.R.attr.state_enabled}, new int[]{-16842910}}, new int[]{resources.getColor(R.color.sesl_thumb_control_color_activated), resources.getColor(zS ? R.color.sesl_seekbar_disable_color_activated_light : R.color.sesl_seekbar_disable_color_activated_dark)});
            }
            if (resources.getBoolean(R.bool.sesl_seekbar_sliding_animation)) {
                A();
            }
            int i5 = this.f3442c;
            if (i5 != 0) {
                setMode(i5);
            } else {
                B();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public static boolean C(int i5) {
        Method methodK = i3.x.K("com.samsung.android.widget.SemHoverPopupWindow", "hidden_TYPE_USER_CUSTOM", new Class[0]);
        Object objJ0 = methodK != null ? i3.x.j0(null, methodK, new Object[0]) : null;
        return i5 == (objJ0 instanceof Integer ? ((Integer) objJ0).intValue() : 3);
    }

    private int getHoverPopupType() {
        Method methodP = i3.x.P(View.class, "semGetHoverPopupType", new Class[0]);
        if (methodP == null) {
            return 0;
        }
        Object objJ0 = i3.x.j0(this, methodP, new Object[0]);
        if (objJ0 instanceof Integer) {
            return ((Integer) objJ0).intValue();
        }
        return 0;
    }

    private float getScale() {
        int max = getMax() - getMin();
        if (max > 0) {
            return (getProgress() - r0) / max;
        }
        return 0.0f;
    }

    private void setHoverPopupGravity(int i5) {
        Object objO = AbstractC0739a.o(this);
        Method methodK = i3.x.K("com.samsung.android.widget.SemHoverPopupWindow", "hidden_setGravity", Integer.TYPE);
        if (methodK != null) {
            i3.x.j0(objO, methodK, Integer.valueOf(i5));
        }
    }

    private void setProgressOverlapTintList(ColorStateList colorStateList) {
        super.setProgressTintList(colorStateList);
    }

    private void setThumbOverlapTintList(ColorStateList colorStateList) {
        this.f7802h0 = colorStateList;
        this.f7804j0 = true;
        w();
    }

    public static void v(X0 x02, int i5) {
        super.setProgress(i5);
    }

    public static ColorStateList y(int i5) {
        return new ColorStateList(new int[][]{new int[0]}, new int[]{i5});
    }

    public final void A() {
        this.O0 = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        int i5 = 400;
        for (int i6 = 0; i6 < 8; i6++) {
            boolean z4 = i6 % 2 == 0;
            ValueAnimator valueAnimatorOfInt = z4 ? ValueAnimator.ofInt(0, i5) : ValueAnimator.ofInt(i5, 0);
            valueAnimatorOfInt.setDuration(62);
            valueAnimatorOfInt.setInterpolator(new LinearInterpolator());
            valueAnimatorOfInt.addUpdateListener(new S0(this, 1));
            arrayList.add(valueAnimatorOfInt);
            if (z4) {
                i5 = (int) (i5 * 0.6d);
            }
        }
        this.O0.playSequentially(arrayList);
    }

    public final void B() throws NoSuchFieldException, SecurityException {
        int i5 = this.W0;
        int i6 = this.f7794X0;
        U0 u0 = new U0(this, i5, i6, this.f7782J0, false);
        U0 u02 = new U0(this, i5, i6, this.f7781I0, false);
        U0 u03 = new U0(this, i5, i6, this.f7780H0, false);
        Drawable c0426a = new C0426a(new W0(this, this.f7797a1, this.f7783K0, false));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{u0, new ClipDrawable(u02, 19, 1), new ClipDrawable(u03, 19, 1)});
        layerDrawable.setPaddingMode(1);
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        setProgressDrawable(layerDrawable);
        setThumb(c0426a);
        setBackgroundResource(R.drawable.sesl_seekbar_background_borderless_expand);
        if (getMaxHeight() > i6) {
            setMaxHeight(i6);
        }
    }

    public void D() {
        this.f7808x0 = false;
        if (!this.f7799c1 || !isPressed()) {
            if (this.f7799c1) {
                setProgress(Math.round(super.getProgress() / 1000.0f));
                return;
            }
            return;
        }
        ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(super.getProgress(), (int) (Math.round(super.getProgress() / 1000.0f) * 1000.0f));
        this.f7800d1 = valueAnimatorOfInt;
        valueAnimatorOfInt.setDuration(300L);
        this.f7800d1.setInterpolator(AbstractC0385a.f6484b);
        this.f7800d1.start();
        this.f7800d1.addUpdateListener(new S0((SeslSeekBar) this, 0));
    }

    public final void E(int i5, Drawable drawable, float f, int i6) throws NoSuchFieldException, SecurityException {
        int i7;
        int i8 = this.f3442c;
        if (i8 == 3 || i8 == 6) {
            F(getHeight(), drawable, f, i6);
            return;
        }
        int paddingLeft = ((i5 - getPaddingLeft()) - getPaddingRight()) - ((int) (this.e1 * 2.0f));
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        int i9 = (this.q0 * 2) + (paddingLeft - intrinsicWidth);
        int i10 = (int) ((f * i9) + 0.5f);
        if (i6 == Integer.MIN_VALUE) {
            Rect bounds = drawable.getBounds();
            i6 = bounds.top;
            i7 = bounds.bottom;
        } else {
            i7 = i6 + intrinsicHeight;
        }
        int i11 = (int) this.e1;
        if (N1.a(this) && this.f3437U) {
            i10 = i9 - i10;
        }
        int i12 = i11 + i10;
        int i13 = i12 + intrinsicWidth;
        Drawable background = getBackground();
        if (background != null) {
            int paddingLeft2 = getPaddingLeft() - this.q0;
            int paddingTop = getPaddingTop();
            C.a.f(background, i12 + paddingLeft2, i6 + paddingTop, paddingLeft2 + i13, paddingTop + i7);
        }
        drawable.setBounds(i12, i6, i13, i7);
        L();
        this.B0 = (getPaddingLeft() + i12) - (getPaddingLeft() - (intrinsicWidth / 2));
        M();
    }

    public final void F(int i5, Drawable drawable, float f, int i6) throws NoSuchFieldException, SecurityException {
        int i7;
        int paddingTop = (i5 - getPaddingTop()) - getPaddingBottom();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        int intrinsicHeight2 = drawable.getIntrinsicHeight();
        int i8 = (this.q0 * 2) + (paddingTop - intrinsicHeight2);
        int i9 = (int) ((f * i8) + 0.5f);
        if (i6 == Integer.MIN_VALUE) {
            Rect bounds = drawable.getBounds();
            i6 = bounds.left;
            i7 = bounds.right;
        } else {
            i7 = i6 + intrinsicHeight;
        }
        int i10 = i8 - i9;
        int i11 = intrinsicHeight2 + i10;
        Drawable background = getBackground();
        if (background != null) {
            int paddingLeft = getPaddingLeft();
            int paddingTop2 = getPaddingTop() - this.q0;
            C.a.f(background, i6 + paddingLeft, i10 + paddingTop2, paddingLeft + i7, paddingTop2 + i11);
        }
        drawable.setBounds(i6, i10, i7, i11);
        this.B0 = getPaddingLeft() + (intrinsicHeight / 2) + i10;
    }

    public final void G(MotionEvent motionEvent) {
        setPressed(true);
        Drawable drawable = this.g0;
        if (drawable != null) {
            invalidate(drawable.getBounds());
        }
        SeslSeekBar seslSeekBar = (SeslSeekBar) this;
        seslSeekBar.f7808x0 = true;
        ValueAnimator valueAnimator = seslSeekBar.f7800d1;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        o1 o1Var = seslSeekBar.f3467g1;
        if (o1Var != null) {
            ((androidx.preference.J) o1Var).f4614a.f4681b0 = true;
        }
        J(motionEvent);
        if (getParent() != null) {
            getParent().requestDisallowInterceptTouchEvent(true);
        }
    }

    public final boolean H() {
        Method methodJ = i3.x.J(View.class, "isHoveringUIEnabled", new Class[0]);
        if (methodJ == null) {
            return false;
        }
        Object objJ0 = i3.x.j0(this, methodJ, new Object[0]);
        if (objJ0 instanceof Boolean) {
            return ((Boolean) objJ0).booleanValue();
        }
        return false;
    }

    public final void I(int i5) throws NoSuchFieldException, SecurityException {
        int width = getWidth();
        getPaddingLeft();
        getPaddingRight();
        if (i5 >= getPaddingLeft() && i5 <= width - getPaddingRight()) {
            getPaddingLeft();
        }
        getMax();
    }

    public final void J(MotionEvent motionEvent) {
        float f;
        int min;
        float paddingLeft;
        float f5;
        float f6;
        int min2;
        int i5 = this.f3442c;
        if (i5 == 3 || i5 == 6) {
            int height = getHeight();
            int paddingTop = (height - getPaddingTop()) - getPaddingBottom();
            int iRound = Math.round(motionEvent.getX());
            int iRound2 = height - Math.round(motionEvent.getY());
            float paddingBottom = iRound2 < getPaddingBottom() ? 0.0f : iRound2 > height - getPaddingTop() ? 1.0f : (iRound2 - getPaddingBottom()) / paddingTop;
            if (this.f7799c1) {
                float max = super.getMax() - super.getMin();
                float f7 = 1.0f / max;
                if (paddingBottom > 0.0f && paddingBottom < 1.0f) {
                    float f8 = paddingBottom % f7;
                    if (f8 > f7 / 2.0f) {
                        paddingBottom += f7 - f8;
                    }
                }
                f = paddingBottom * max;
                min = super.getMin();
            } else {
                float max2 = getMax() - getMin();
                float f9 = 1.0f / max2;
                if (paddingBottom > 0.0f && paddingBottom < 1.0f) {
                    float f10 = paddingBottom % f9;
                    if (f10 > f9 / 2.0f) {
                        paddingBottom += f9 - f10;
                    }
                }
                f = paddingBottom * max2;
                min = getMin();
            }
            float f11 = f + min + 0.0f;
            float f12 = iRound;
            float f13 = iRound2;
            Drawable background = getBackground();
            if (background != null) {
                C.a.e(background, f12, f13);
            }
            n(Math.round(f11), true, false);
            return;
        }
        int iRound3 = Math.round(motionEvent.getX());
        int iRound4 = Math.round(motionEvent.getY());
        int width = getWidth();
        int paddingLeft2 = (width - getPaddingLeft()) - getPaddingRight();
        if (N1.a(this) && this.f3437U) {
            if (iRound3 <= width - getPaddingRight()) {
                if (iRound3 >= getPaddingLeft()) {
                    paddingLeft = getPaddingLeft() + (paddingLeft2 - iRound3);
                    f5 = paddingLeft / paddingLeft2;
                }
                f5 = 1.0f;
            }
            f5 = 0.0f;
        } else {
            if (iRound3 >= getPaddingLeft()) {
                if (iRound3 <= width - getPaddingRight()) {
                    paddingLeft = iRound3 - getPaddingLeft();
                    f5 = paddingLeft / paddingLeft2;
                }
                f5 = 1.0f;
            }
            f5 = 0.0f;
        }
        if (this.f7799c1) {
            float max3 = super.getMax() - super.getMin();
            float f14 = 1.0f / max3;
            if (f5 > 0.0f && f5 < 1.0f) {
                float f15 = f5 % f14;
                if (f15 > f14 / 2.0f) {
                    f5 += f14 - f15;
                }
            }
            f6 = f5 * max3;
            min2 = super.getMin();
        } else {
            float max4 = getMax() - getMin();
            float f16 = 1.0f / max4;
            if (f5 > 0.0f && f5 < 1.0f) {
                float f17 = f5 % f16;
                if (f17 > f16 / 2.0f) {
                    f5 += f16 - f17;
                }
            }
            f6 = f5 * max4;
            min2 = getMin();
        }
        float f18 = f6 + min2 + 0.0f;
        float f19 = iRound3;
        float f20 = iRound4;
        Drawable background2 = getBackground();
        if (background2 != null) {
            C.a.e(background2, f19, f20);
        }
        n(Math.round(f18), true, false);
    }

    public final void K() {
        Drawable drawable;
        if (this.f7778F0 == -1 || (drawable = this.f7779G0) == null) {
            return;
        }
        C.a.h(drawable, this.f7784L0);
        if (!this.f7788Q0) {
            if ((!this.f7799c1 || super.getProgress() <= this.f7778F0 * 1000.0f) && getProgress() <= this.f7778F0) {
                setProgressTintList(this.f7780H0);
                setThumbTintList(this.f7783K0);
            } else {
                setProgressOverlapTintList(this.f7785M0);
                setThumbOverlapTintList(this.f7785M0);
            }
        }
        if (getCurrentDrawable() == null || this.f7778F0 == -1 || this.f7779G0 == null) {
            return;
        }
        this.f7779G0.setBounds(getCurrentDrawable().getBounds());
    }

    public final void L() {
        Drawable drawable = this.g0;
        if (drawable == null) {
            super.setSystemGestureExclusionRects(this.f7809y0);
            return;
        }
        ArrayList arrayList = this.f7810z0;
        arrayList.clear();
        Rect rect = this.f7774A0;
        drawable.copyBounds(rect);
        arrayList.add(rect);
        arrayList.addAll(this.f7809y0);
        super.setSystemGestureExclusionRects(arrayList);
    }

    public final void M() {
        if (this.f3442c != 4) {
            return;
        }
        Drawable drawable = this.f7775C0;
        Rect bounds = getCurrentDrawable().getBounds();
        if (drawable != null) {
            if (this.f3437U && N1.a(this)) {
                drawable.setBounds(this.B0, bounds.top, getWidth() - getPaddingRight(), bounds.bottom);
            } else {
                drawable.setBounds(getPaddingLeft(), bounds.top, this.B0, bounds.bottom);
            }
        }
        int width = getWidth();
        int height = getHeight();
        Drawable drawable2 = this.f7776D0;
        if (drawable2 != null) {
            float f = width / 2.0f;
            float f5 = this.f3444d;
            float f6 = height / 2.0f;
            drawable2.setBounds((int) (f - ((f5 * 4.0f) / 2.0f)), (int) (f6 - ((f5 * 22.0f) / 2.0f)), (int) (((4.0f * f5) / 2.0f) + f), (int) (((f5 * 22.0f) / 2.0f) + f6));
        }
    }

    public final void N(int i5, int i6) throws NoSuchFieldException, SecurityException {
        int i7;
        int i8;
        int i9;
        int i10;
        int i11 = this.f3442c;
        if (i11 == 3 || i11 == 6) {
            int paddingLeft = (i5 - getPaddingLeft()) - getPaddingRight();
            Drawable currentDrawable = getCurrentDrawable();
            Drawable drawable = this.g0;
            int iMin = Math.min(this.f3454o, paddingLeft);
            int intrinsicWidth = drawable == null ? 0 : drawable.getIntrinsicWidth();
            if (intrinsicWidth > iMin) {
                i8 = (paddingLeft - intrinsicWidth) / 2;
                i7 = ((intrinsicWidth - iMin) / 2) + i8;
            } else {
                int i12 = (paddingLeft - iMin) / 2;
                int i13 = ((iMin - intrinsicWidth) / 2) + i12;
                i7 = i12;
                i8 = i13;
            }
            if (currentDrawable != null) {
                currentDrawable.setBounds(i7, 0, paddingLeft - i7, (i6 - getPaddingBottom()) - getPaddingTop());
            }
            if (drawable != null) {
                F(i6, drawable, getScale(), i8);
                return;
            }
            return;
        }
        int paddingTop = (i6 - getPaddingTop()) - getPaddingBottom();
        Drawable currentDrawable2 = getCurrentDrawable();
        Drawable drawable2 = this.g0;
        int iMin2 = Math.min(this.f3456q, paddingTop);
        int intrinsicHeight = drawable2 == null ? 0 : drawable2.getIntrinsicHeight();
        if (intrinsicHeight > iMin2) {
            i10 = (paddingTop - intrinsicHeight) / 2;
            i9 = ((intrinsicHeight - iMin2) / 2) + i10;
        } else {
            int i14 = (paddingTop - iMin2) / 2;
            int i15 = ((iMin2 - intrinsicHeight) / 2) + i14;
            i9 = i14;
            i10 = i15;
        }
        if (currentDrawable2 != null) {
            currentDrawable2.setBounds(0, i9, (i5 - getPaddingRight()) - getPaddingLeft(), iMin2 + i9);
        }
        if (drawable2 != null) {
            E(i5, drawable2, getScale(), i10);
        }
        M();
    }

    public final void O(int i5) {
        if (this.f3442c == 1) {
            if (i5 == getMax()) {
                setProgressOverlapTintList(this.f7785M0);
                setThumbOverlapTintList(this.f7785M0);
            } else {
                setProgressTintList(this.f7780H0);
                setThumbTintList(this.f7783K0);
            }
        }
    }

    @Override // androidx.appcompat.widget.SeslProgressBar, android.view.View
    public final void drawableHotspotChanged(float f, float f5) {
        super.drawableHotspotChanged(f, f5);
        Drawable drawable = this.g0;
        if (drawable != null) {
            C.a.e(drawable, f, f5);
        }
    }

    @Override // androidx.appcompat.widget.SeslProgressBar, android.view.View
    public final void drawableStateChanged() {
        Drawable drawable;
        super.drawableStateChanged();
        Drawable progressDrawable = getProgressDrawable();
        if (progressDrawable != null) {
            float f = this.u0;
            if (f < 1.0f) {
                int i5 = isEnabled() ? CustomDeviceManager.CALL_SCREEN_ALL : (int) (f * 255.0f);
                progressDrawable.setAlpha(i5);
                Drawable drawable2 = this.f7779G0;
                if (drawable2 != null) {
                    drawable2.setAlpha(i5);
                }
            }
        }
        if (this.g0 != null && this.f7804j0) {
            if (isEnabled()) {
                C.a.h(this.g0, this.f7783K0);
                K();
            } else {
                C.a.h(this.g0, null);
            }
        }
        if (this.f7791T0 && progressDrawable != null && progressDrawable.isStateful() && (drawable = this.f7779G0) != null) {
            drawable.setState(getDrawableState());
        }
        Drawable drawable3 = this.g0;
        if (drawable3 != null && drawable3.isStateful() && drawable3.setState(getDrawableState())) {
            invalidateDrawable(drawable3);
        }
        Drawable drawable4 = this.l0;
        if (drawable4 != null && drawable4.isStateful() && drawable4.setState(getDrawableState())) {
            invalidateDrawable(drawable4);
        }
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public final void f(Canvas canvas) {
        int iMax;
        int max;
        Drawable drawable = this.g0;
        Rect rect = this.f7801f0;
        if (drawable == null || !this.r0) {
            super.f(canvas);
            z(canvas);
        } else {
            Rect rectA = AbstractC0591g0.a(drawable);
            drawable.copyBounds(rect);
            rect.offset(getPaddingLeft() - this.q0, getPaddingTop());
            rect.left += rectA.left;
            rect.right -= rectA.right;
            int iSave = canvas.save();
            canvas.clipRect(rect, Region.Op.DIFFERENCE);
            super.f(canvas);
            z(canvas);
            canvas.restoreToCount(iSave);
        }
        if (this.f7778F0 == -1 || this.f7779G0 == null) {
            return;
        }
        canvas.save();
        if (this.f3437U && N1.a(this)) {
            canvas.translate(getWidth() - getPaddingRight(), getPaddingTop());
            canvas.scale(-1.0f, 1.0f);
        } else {
            canvas.translate(getPaddingLeft(), getPaddingTop());
        }
        Rect bounds = this.f7779G0.getBounds();
        this.f7779G0.copyBounds(rect);
        if (this.f7799c1) {
            iMax = Math.max(super.getProgress(), (int) (this.f7778F0 * 1000.0f));
            max = super.getMax();
        } else {
            iMax = Math.max(getProgress(), this.f7778F0);
            max = getMax();
        }
        int min = getMin();
        float f = (iMax - min) / (max - min);
        int i5 = this.f3442c;
        if (i5 == 3 || i5 == 6) {
            rect.bottom = (int) (bounds.bottom - (bounds.height() * f));
        } else {
            rect.left = (int) ((bounds.width() * f) + bounds.left);
        }
        canvas.clipRect(rect);
        if (this.f7782J0.getDefaultColor() != this.f7784L0.getDefaultColor()) {
            this.f7779G0.draw(canvas);
        }
        canvas.restore();
    }

    @Override // androidx.appcompat.widget.SeslProgressBar, android.view.View
    public CharSequence getAccessibilityClassName() {
        Log.d("SeslAbsSeekBar", "Stack:", new Throwable("stack dump"));
        return AbsSeekBar.class.getName();
    }

    public int getKeyProgressIncrement() {
        return this.t0;
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public synchronized int getMax() {
        try {
        } catch (Throwable th) {
            throw th;
        }
        return this.f7799c1 ? Math.round(super.getMax() / 1000.0f) : super.getMax();
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public synchronized int getMin() {
        try {
        } catch (Throwable th) {
            throw th;
        }
        return this.f7799c1 ? Math.round(super.getMin() / 1000.0f) : super.getMin();
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public synchronized int getProgress() {
        try {
        } catch (Throwable th) {
            throw th;
        }
        return this.f7799c1 ? Math.round(super.getProgress() / 1000.0f) : super.getProgress();
    }

    public boolean getSplitTrack() {
        return this.r0;
    }

    public Drawable getThumb() {
        return this.g0;
    }

    public Rect getThumbBounds() {
        Drawable drawable = this.g0;
        if (drawable != null) {
            return drawable.getBounds();
        }
        return null;
    }

    public int getThumbHeight() {
        return this.g0.getIntrinsicHeight();
    }

    public int getThumbOffset() {
        return this.q0;
    }

    public ColorStateList getThumbTintList() {
        return this.f7802h0;
    }

    public PorterDuff.Mode getThumbTintMode() {
        return this.f7803i0;
    }

    public Drawable getTickMark() {
        return this.l0;
    }

    public ColorStateList getTickMarkTintList() {
        return this.m0;
    }

    public PorterDuff.Mode getTickMarkTintMode() {
        return this.n0;
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public void j(float f, boolean z4, int i5) {
        int i6 = (int) (10000.0f * f);
        AnimatorSet animatorSet = this.O0;
        if (animatorSet != null && animatorSet.isRunning()) {
            this.O0.cancel();
        }
        this.f7787P0 = i6;
        super.j(f, z4, i5);
        Drawable drawable = this.g0;
        if (drawable != null) {
            E(getWidth(), drawable, f, Integer.MIN_VALUE);
            invalidate();
        }
        if (z4 && this.f3442c == 8) {
            performHapticFeedback(AbstractC0729f.s(41));
            return;
        }
        if (z4 && this.f7790S0) {
            int i7 = this.f3442c;
            if (i7 == 5 || i7 == 0 || i7 == 6 || i7 == 3) {
                if (i5 == getMin() || i5 == getMax()) {
                    performHapticFeedback(AbstractC0729f.s(41));
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.SeslProgressBar, android.view.View
    public final void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.g0;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.l0;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public final void k(int i5, float f) throws NoSuchFieldException, SecurityException {
        Drawable drawable;
        if (i5 != 16908301 || (drawable = this.g0) == null) {
            return;
        }
        E(getWidth(), drawable, f, Integer.MIN_VALUE);
        invalidate();
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public final boolean n(int i5, boolean z4, boolean z5) {
        boolean zN = super.n(i5, z4, z5);
        O(i5);
        K();
        return zN;
    }

    @Override // androidx.appcompat.widget.SeslProgressBar, android.view.View
    public final synchronized void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
            if (H()) {
                int hoverPopupType = getHoverPopupType();
                if (C(hoverPopupType) && this.f7792U0 != hoverPopupType) {
                    this.f7792U0 = hoverPopupType;
                    setHoverPopupGravity(12849);
                    int measuredHeight = getMeasuredHeight() / 2;
                    Object objO = AbstractC0739a.o(this);
                    Class cls = Integer.TYPE;
                    Method methodK = i3.x.K("com.samsung.android.widget.SemHoverPopupWindow", "hidden_setOffset", cls, cls);
                    if (methodK != null) {
                        i3.x.j0(objO, methodK, 0, Integer.valueOf(measuredHeight));
                    }
                    Object objO2 = AbstractC0739a.o(this);
                    Method methodK2 = i3.x.K("com.samsung.android.widget.SemHoverPopupWindow", "hidden_setHoverDetectTime", cls);
                    if (methodK2 != null) {
                        i3.x.j0(objO2, methodK2, 200);
                    }
                }
            }
            if (this.f3442c == 4) {
                this.f7775C0.draw(canvas);
                this.f7776D0.draw(canvas);
            }
            if (this.g0 != null) {
                int iSave = canvas.save();
                int i5 = this.f3442c;
                if (i5 == 3 || i5 == 6) {
                    canvas.translate(getPaddingLeft(), getPaddingTop() - this.q0);
                } else {
                    canvas.translate(getPaddingLeft() - this.q0, getPaddingTop());
                }
                this.g0.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) throws NoSuchFieldException, SecurityException {
        if (H()) {
            int action = motionEvent.getAction();
            int x4 = (int) motionEvent.getX();
            motionEvent.getY();
            if (action == 7) {
                I(x4);
                if (C(getHoverPopupType())) {
                    int rawX = (int) motionEvent.getRawX();
                    int rawY = (int) motionEvent.getRawY();
                    Object objO = AbstractC0739a.o(this);
                    Class cls = Integer.TYPE;
                    Method methodQ = i3.x.Q("com.samsung.android.widget.SemHoverPopupWindow", "setHoveringPoint", cls, cls);
                    if (methodQ != null) {
                        i3.x.j0(objO, methodQ, Integer.valueOf(rawX), Integer.valueOf(rawY));
                    }
                    Object objO2 = AbstractC0739a.o(this);
                    Method methodK = i3.x.K("com.samsung.android.widget.SemHoverPopupWindow", "hidden_update", new Class[0]);
                    if (methodK != null) {
                        i3.x.j0(objO2, methodK, new Object[0]);
                    }
                }
            } else if (action == 9) {
                I(x4);
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.SeslProgressBar, android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (isEnabled()) {
            int progress = getProgress();
            if (progress > getMin()) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_BACKWARD);
            }
            if (progress < getMax()) {
                accessibilityNodeInfo.addAction(AccessibilityNodeInfo.AccessibilityAction.ACTION_SCROLL_FORWARD);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0063  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x007f A[RETURN] */
    @Override // android.view.View, android.view.KeyEvent.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onKeyDown(int i5, KeyEvent keyEvent) {
        if (isEnabled()) {
            int i6 = this.t0;
            int i7 = this.f3442c;
            if (i7 == 3 || i7 == 6) {
                if (i5 == 19) {
                    if (N1.a(this)) {
                        i6 = -i6;
                    }
                    if (n(!this.f7799c1 ? Math.round((getProgress() + i6) * 1000.0f) : i6 + getProgress(), true, true)) {
                        return true;
                    }
                } else {
                    if (i5 == 20 || i5 == 69) {
                        i6 = -i6;
                    } else if (i5 == 70 || i5 == 81) {
                    }
                    if (N1.a(this)) {
                    }
                    if (n(!this.f7799c1 ? Math.round((getProgress() + i6) * 1000.0f) : i6 + getProgress(), true, true)) {
                    }
                }
            } else if (i5 == 21) {
                i6 = -i6;
                if (N1.a(this)) {
                    i6 = -i6;
                }
                if (n(this.f7799c1 ? Math.round((getProgress() + i6) * 1000.0f) : i6 + getProgress(), true, true)) {
                    return true;
                }
            } else if (i5 == 22) {
                if (N1.a(this)) {
                }
                if (n(this.f7799c1 ? Math.round((getProgress() + i6) * 1000.0f) : i6 + getProgress(), true, true)) {
                }
            } else {
                if (i5 != 69) {
                    if (i5 == 70 || i5 == 81) {
                    }
                }
                if (N1.a(this)) {
                }
                if (n(this.f7799c1 ? Math.round((getProgress() + i6) * 1000.0f) : i6 + getProgress(), true, true)) {
                }
            }
        }
        return super.onKeyDown(i5, keyEvent);
    }

    @Override // androidx.appcompat.widget.SeslProgressBar, android.view.View
    public final synchronized void onMeasure(int i5, int i6) {
        int iMax;
        int iMax2;
        try {
            Drawable currentDrawable = getCurrentDrawable();
            if (currentDrawable != null) {
                int i7 = this.f3442c;
                if (i7 == 3 || i7 == 6) {
                    Drawable drawable = this.g0;
                    int intrinsicHeight = drawable == null ? 0 : drawable.getIntrinsicHeight();
                    int iMax3 = Math.max(this.n, Math.min(this.f3454o, currentDrawable.getIntrinsicHeight()));
                    iMax = Math.max(this.f3455p, Math.min(this.f3456q, currentDrawable.getIntrinsicWidth()));
                    iMax2 = Math.max(intrinsicHeight, iMax3);
                } else {
                    Drawable drawable2 = this.g0;
                    int intrinsicHeight2 = drawable2 == null ? 0 : drawable2.getIntrinsicHeight();
                    iMax2 = Math.max(this.n, Math.min(this.f3454o, currentDrawable.getIntrinsicWidth()));
                    iMax = Math.max(intrinsicHeight2, Math.max(this.f3455p, Math.min(this.f3456q, currentDrawable.getIntrinsicHeight())));
                }
            } else {
                iMax = 0;
                iMax2 = 0;
            }
            setMeasuredDimension(View.resolveSizeAndState(getPaddingLeft() + getPaddingRight() + iMax2, i5, 0), View.resolveSizeAndState(getPaddingTop() + getPaddingBottom() + iMax, i6, 0));
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // android.view.View
    public final void onRtlPropertiesChanged(int i5) throws NoSuchFieldException, SecurityException {
        super.onRtlPropertiesChanged(i5);
        Drawable drawable = this.g0;
        if (drawable != null) {
            E(getWidth(), drawable, getScale(), Integer.MIN_VALUE);
            invalidate();
        }
    }

    @Override // androidx.appcompat.widget.SeslProgressBar, android.view.View
    public final void onSizeChanged(int i5, int i6, int i7, int i8) throws NoSuchFieldException, SecurityException {
        t(i5, i6);
        N(i5, i6);
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00d0  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        int i5;
        boolean zBooleanValue = false;
        if (!this.s0 || !isEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f7786N0 = false;
            int i6 = this.f3442c;
            if (i6 == 5 || i6 == 6 || i6 == 0) {
                this.f7807w0 = motionEvent.getX();
                this.f7777E0 = motionEvent.getY();
            } else {
                Method methodP = i3.x.P(View.class, "hidden_isInScrollingContainer", new Class[0]);
                if (methodP != null) {
                    Object objJ0 = i3.x.j0(this, methodP, new Object[0]);
                    if (objJ0 instanceof Boolean) {
                        zBooleanValue = ((Boolean) objJ0).booleanValue();
                    }
                }
                if (!zBooleanValue) {
                    G(motionEvent);
                }
            }
        } else if (action == 1) {
            if (this.f7786N0) {
                this.f7786N0 = false;
            }
            if (this.f7808x0) {
                J(motionEvent);
                D();
                setPressed(false);
            } else {
                SeslSeekBar seslSeekBar = (SeslSeekBar) this;
                seslSeekBar.f7808x0 = true;
                ValueAnimator valueAnimator = seslSeekBar.f7800d1;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                o1 o1Var = seslSeekBar.f3467g1;
                if (o1Var != null) {
                    ((androidx.preference.J) o1Var).f4614a.f4681b0 = true;
                }
                J(motionEvent);
                D();
            }
            invalidate();
        } else if (action == 2) {
            this.f7786N0 = true;
            if (this.f7808x0) {
                J(motionEvent);
            } else {
                float x4 = motionEvent.getX();
                float y3 = motionEvent.getY();
                int i7 = this.f3442c;
                int i8 = this.f7806v0;
                if ((i7 != 3 && i7 != 6 && Math.abs(x4 - this.f7807w0) > i8) || (((i5 = this.f3442c) == 3 || i5 == 6) && Math.abs(y3 - this.f7777E0) > i8)) {
                    G(motionEvent);
                }
            }
        } else if (action == 3) {
            this.f7786N0 = false;
            if (this.f7808x0) {
                D();
                setPressed(false);
            }
            invalidate();
        }
        return true;
    }

    @Override // android.view.View
    public final boolean performAccessibilityAction(int i5, Bundle bundle) {
        boolean z4;
        boolean z5;
        if (super.performAccessibilityAction(i5, bundle)) {
            return true;
        }
        if (!isEnabled()) {
            return false;
        }
        if (i5 == 4096 || i5 == 8192) {
            synchronized (this) {
                z4 = this.f3465z;
            }
            if (!z4 && isEnabled()) {
                int iMax = Math.max(1, Math.round((getMax() - getMin()) / 20.0f));
                if (i5 == 8192) {
                    iMax = -iMax;
                }
                if (n(this.f7799c1 ? Math.round((getProgress() + iMax) * 1000.0f) : getProgress() + iMax, true, true)) {
                    return true;
                }
            }
            return false;
        }
        if (i5 != 16908349) {
            return false;
        }
        synchronized (this) {
            z5 = this.f3465z;
        }
        if (z5 || !isEnabled() || bundle == null || !bundle.containsKey("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE")) {
            return false;
        }
        float f = bundle.getFloat("android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE");
        return n(this.f7799c1 ? Math.round(f * 1000.0f) : (int) f, true, true);
    }

    public void setKeyProgressIncrement(int i5) {
        if (i5 < 0) {
            i5 = -i5;
        }
        this.t0 = i5;
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public synchronized void setMax(int i5) {
        try {
            if (this.f7799c1) {
                i5 = Math.round(i5 * 1000.0f);
            }
            super.setMax(i5);
            int max = getMax() - getMin();
            int i6 = this.t0;
            if (i6 == 0 || max / i6 > 20) {
                setKeyProgressIncrement(Math.max(1, Math.round(max / 20.0f)));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public synchronized void setMin(int i5) {
        try {
            if (this.f7799c1) {
                i5 = Math.round(i5 * 1000.0f);
            }
            super.setMin(i5);
            int max = getMax() - getMin();
            int i6 = this.t0;
            if (i6 == 0 || max / i6 > 20) {
                setKeyProgressIncrement(Math.max(1, Math.round(max / 20.0f)));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public void setMode(int i5) throws NoSuchFieldException, SecurityException {
        if (this.f3442c == i5 && this.f7793V0) {
            Log.w("SeslAbsSeekBar", "Seekbar mode is already set. Do not call this method redundant");
            return;
        }
        super.setMode(i5);
        this.e1 = 0.0f;
        if (i5 == 0) {
            setProgressTintList(this.f7780H0);
            setThumbTintList(this.f7783K0);
        } else if (i5 == 1) {
            O(getProgress());
        } else if (i5 == 3) {
            setThumb(getContext().getResources().getDrawable(this.f7789R0 ? R.drawable.sesl_scrubber_control_anim_light : R.drawable.sesl_scrubber_control_anim_dark));
            setBackgroundResource(R.drawable.sesl_seek_bar_background_borderless);
        } else if (i5 != 4) {
            ColorStateList colorStateList = this.f7781I0;
            ColorStateList colorStateList2 = this.f7782J0;
            if (i5 == 5) {
                float f = this.f7795Y0;
                int i6 = this.f7796Z0;
                float f5 = i6;
                U0 u0 = new U0(this, f, f5, colorStateList2, false);
                U0 u02 = new U0(this, f, f5, colorStateList, false);
                U0 u03 = new U0(this, f, f5, this.f7780H0, false);
                Drawable c0426a = new C0426a(new W0(this, this.f7798b1, this.f7783K0, false));
                LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{u0, new ClipDrawable(u02, 19, 1), new ClipDrawable(u03, 19, 1)});
                layerDrawable.setPaddingMode(1);
                layerDrawable.setId(0, android.R.id.background);
                layerDrawable.setId(1, android.R.id.secondaryProgress);
                layerDrawable.setId(2, android.R.id.progress);
                setProgressDrawable(layerDrawable);
                setThumb(c0426a);
                setBackgroundResource(R.drawable.sesl_seekbar_background_borderless_expand);
                if (getMaxHeight() > i6) {
                    setMaxHeight(i6);
                }
                this.e1 = getContext().getResources().getDimension(R.dimen.sesl_seekbar_level_progress_padding_start_end);
            } else if (i5 == 6) {
                float f6 = this.W0;
                int i7 = this.f7794X0;
                float f7 = i7;
                U0 u04 = new U0(this, f6, f7, colorStateList2, true);
                U0 u05 = new U0(this, f6, f7, colorStateList, true);
                U0 u06 = new U0(this, f6, f7, this.f7780H0, true);
                Drawable c0426a2 = new C0426a(new W0(this, this.f7797a1, this.f7783K0, true));
                LayerDrawable layerDrawable2 = new LayerDrawable(new Drawable[]{u04, new ClipDrawable(u05, 81, 2), new ClipDrawable(u06, 81, 2)});
                layerDrawable2.setPaddingMode(1);
                layerDrawable2.setId(0, android.R.id.background);
                layerDrawable2.setId(1, android.R.id.secondaryProgress);
                layerDrawable2.setId(2, android.R.id.progress);
                setProgressDrawable(layerDrawable2);
                setThumb(c0426a2);
                setBackgroundResource(R.drawable.sesl_seekbar_background_borderless_expand);
                if (getMaxWidth() > i7) {
                    setMaxWidth(i7);
                }
            } else if (i5 == 8) {
                this.e1 = getContext().getResources().getDimension(R.dimen.sesl_seekbar_level_progress_padding_start_end);
                setProgressDrawable(getContext().getResources().getDrawable(R.drawable.sesl_level_seekbar_progress));
                setTickMark(getContext().getResources().getDrawable(R.drawable.sesl_level_seekbar_tick_mark));
                setThumb(getContext().getResources().getDrawable(R.drawable.sesl_level_seekbar_thumb));
                setBackgroundResource(R.drawable.sesl_seek_bar_background_borderless);
            }
        } else {
            this.f7775C0 = getContext().getResources().getDrawable(R.drawable.sesl_split_seekbar_primary_progress);
            this.f7776D0 = getContext().getResources().getDrawable(R.drawable.sesl_split_seekbar_vertical_bar);
            M();
        }
        invalidate();
        this.f7793V0 = true;
    }

    @Deprecated
    public void setOverlapBackgroundForDualColor(int i5) {
        ColorStateList colorStateListY = y(i5);
        if (!colorStateListY.equals(this.f7784L0)) {
            this.f7784L0 = colorStateListY;
        }
        this.f7785M0 = this.f7784L0;
        this.f7788Q0 = true;
    }

    public void setOverlapPointForDualColor(int i5) {
        if (i5 >= getMax()) {
            return;
        }
        this.f7791T0 = true;
        this.f7778F0 = i5;
        if (i5 == -1) {
            setProgressTintList(this.f7780H0);
            setThumbTintList(this.f7783K0);
        } else {
            if (this.f7779G0 == null) {
                int i6 = this.f3442c;
                if (i6 == 5) {
                    this.f7779G0 = new U0(this, this.f7795Y0, this.f7796Z0, this.f7784L0, false);
                } else {
                    int i7 = this.f7794X0;
                    int i8 = this.W0;
                    if (i6 == 6) {
                        this.f7779G0 = new U0(this, i8, i7, this.f7784L0, true);
                    } else if (i6 == 0) {
                        this.f7779G0 = new U0(this, i8, i7, this.f7784L0, false);
                    } else if (getProgressDrawable() != null && getProgressDrawable().getConstantState() != null) {
                        this.f7779G0 = getProgressDrawable().getConstantState().newDrawable().mutate();
                    }
                }
            }
            K();
        }
        invalidate();
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public synchronized void setProgress(int i5) {
        try {
            if (this.f7799c1) {
                i5 = Math.round(i5 * 1000.0f);
            }
            super.setProgress(i5);
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public void setProgressDrawable(Drawable drawable) throws NoSuchFieldException, SecurityException {
        super.setProgressDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public void setProgressTintList(ColorStateList colorStateList) {
        super.setProgressTintList(colorStateList);
        this.f7780H0 = colorStateList;
    }

    public void setSeamless(boolean z4) {
        if (this.f7799c1 != z4) {
            this.f7799c1 = z4;
            if (z4) {
                super.setMax(Math.round(super.getMax() * 1000.0f));
                super.setMin(Math.round(super.getMin() * 1000.0f));
                super.setProgress(Math.round(super.getProgress() * 1000.0f));
                super.setSecondaryProgress(Math.round(super.getSecondaryProgress() * 1000.0f));
                return;
            }
            super.setProgress(Math.round(super.getProgress() / 1000.0f));
            super.setSecondaryProgress(Math.round(super.getSecondaryProgress() / 1000.0f));
            super.setMax(Math.round(super.getMax() / 1000.0f));
            super.setMin(Math.round(super.getMin() / 1000.0f));
        }
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public synchronized void setSecondaryProgress(int i5) {
        try {
            if (this.f7799c1) {
                i5 = Math.round(i5 * 1000.0f);
            }
            super.setSecondaryProgress(i5);
        } catch (Throwable th) {
            throw th;
        }
    }

    public void setSplitTrack(boolean z4) {
        this.r0 = z4;
        invalidate();
    }

    @Override // android.view.View
    public void setSystemGestureExclusionRects(List<Rect> list) {
        Z0.j.m("rects must not be null", list);
        this.f7809y0 = list;
        L();
    }

    public void setThumb(Drawable drawable) throws NoSuchFieldException, SecurityException {
        boolean z4;
        Drawable drawable2 = this.g0;
        if (drawable2 == null || drawable == drawable2) {
            z4 = false;
        } else {
            drawable2.setCallback(null);
            z4 = true;
        }
        if (drawable != null) {
            drawable.setCallback(this);
            if (canResolveLayoutDirection()) {
                WeakHashMap weakHashMap = J.Q.f940a;
                C.b.b(drawable, getLayoutDirection());
            }
            int i5 = this.f3442c;
            if (i5 == 3 || i5 == 6) {
                this.q0 = drawable.getIntrinsicHeight() / 2;
            } else {
                this.q0 = drawable.getIntrinsicWidth() / 2;
            }
            if (z4 && (drawable.getIntrinsicWidth() != this.g0.getIntrinsicWidth() || drawable.getIntrinsicHeight() != this.g0.getIntrinsicHeight())) {
                requestLayout();
            }
        }
        this.g0 = drawable;
        w();
        invalidate();
        if (z4) {
            N(getWidth(), getHeight());
            if (drawable == null || !drawable.isStateful()) {
                return;
            }
            drawable.setState(getDrawableState());
        }
    }

    public void setThumbOffset(int i5) {
        this.q0 = i5;
        invalidate();
    }

    public void setThumbTintColor(int i5) {
        ColorStateList colorStateListY = y(i5);
        if (colorStateListY.equals(this.f7783K0)) {
            return;
        }
        this.f7783K0 = colorStateListY;
    }

    public void setThumbTintList(ColorStateList colorStateList) {
        this.f7802h0 = colorStateList;
        this.f7804j0 = true;
        w();
        this.f7783K0 = colorStateList;
    }

    public void setThumbTintMode(PorterDuff.Mode mode) {
        this.f7803i0 = mode;
        this.k0 = true;
        w();
    }

    public void setTickMark(Drawable drawable) {
        Drawable drawable2 = this.l0;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.l0 = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            WeakHashMap weakHashMap = J.Q.f940a;
            C.b.b(drawable, getLayoutDirection());
            if (drawable.isStateful()) {
                drawable.setState(getDrawableState());
            }
            x();
        }
        invalidate();
    }

    public void setTickMarkTintList(ColorStateList colorStateList) {
        this.m0 = colorStateList;
        this.o0 = true;
        x();
    }

    public void setTickMarkTintMode(PorterDuff.Mode mode) {
        this.n0 = mode;
        this.f7805p0 = true;
        x();
    }

    @Override // androidx.appcompat.widget.SeslProgressBar
    public final void t(int i5, int i6) throws NoSuchFieldException, SecurityException {
        super.t(i5, i6);
        N(i5, i6);
        if (getCurrentDrawable() == null || this.f7778F0 == -1 || this.f7779G0 == null) {
            return;
        }
        this.f7779G0.setBounds(getCurrentDrawable().getBounds());
    }

    @Override // androidx.appcompat.widget.SeslProgressBar, android.view.View
    public final boolean verifyDrawable(Drawable drawable) {
        return drawable == this.g0 || drawable == this.l0 || super.verifyDrawable(drawable);
    }

    public final void w() {
        Drawable drawable = this.g0;
        if (drawable != null) {
            if (this.f7804j0 || this.k0) {
                Drawable drawableMutate = drawable.mutate();
                this.g0 = drawableMutate;
                if (this.f7804j0) {
                    C.a.h(drawableMutate, this.f7802h0);
                }
                if (this.k0) {
                    C.a.i(this.g0, this.f7803i0);
                }
                if (this.g0.isStateful()) {
                    this.g0.setState(getDrawableState());
                }
            }
        }
    }

    public final void x() {
        Drawable drawable = this.l0;
        if (drawable != null) {
            if (this.o0 || this.f7805p0) {
                Drawable drawableMutate = drawable.mutate();
                this.l0 = drawableMutate;
                if (this.o0) {
                    C.a.h(drawableMutate, this.m0);
                }
                if (this.f7805p0) {
                    C.a.i(this.l0, this.n0);
                }
                if (this.l0.isStateful()) {
                    this.l0.setState(getDrawableState());
                }
            }
        }
    }

    public final void z(Canvas canvas) {
        if (this.l0 != null) {
            int max = getMax() - getMin();
            if (max > 1) {
                int intrinsicWidth = this.l0.getIntrinsicWidth();
                int intrinsicHeight = this.l0.getIntrinsicHeight();
                int i5 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i6 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.l0.setBounds(-i5, -i6, i5, i6);
                float width = (((getWidth() - getPaddingLeft()) - getPaddingRight()) - (this.e1 * 2.0f)) / max;
                int iSave = canvas.save();
                canvas.translate(this.e1 + getPaddingLeft(), getHeight() / 2.0f);
                for (int i7 = 0; i7 <= max; i7++) {
                    this.l0.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }
}
