package F1;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import com.google.android.material.chip.Chip;
import com.samsung.android.knox.custom.CustomDeviceManager;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import w1.C0900b;

/* loaded from: classes.dex */
public final class f extends P1.g implements Drawable.Callback, J1.j {

    /* renamed from: K0, reason: collision with root package name */
    public static final int[] f682K0 = {R.attr.state_enabled};

    /* renamed from: L0, reason: collision with root package name */
    public static final ShapeDrawable f683L0 = new ShapeDrawable(new OvalShape());

    /* renamed from: A, reason: collision with root package name */
    public ColorStateList f684A;

    /* renamed from: A0, reason: collision with root package name */
    public ColorStateList f685A0;

    /* renamed from: B, reason: collision with root package name */
    public float f686B;
    public PorterDuff.Mode B0;

    /* renamed from: C, reason: collision with root package name */
    public float f687C;

    /* renamed from: C0, reason: collision with root package name */
    public int[] f688C0;

    /* renamed from: D, reason: collision with root package name */
    public ColorStateList f689D;

    /* renamed from: D0, reason: collision with root package name */
    public boolean f690D0;
    public float E;

    /* renamed from: E0, reason: collision with root package name */
    public ColorStateList f691E0;

    /* renamed from: F, reason: collision with root package name */
    public ColorStateList f692F;

    /* renamed from: F0, reason: collision with root package name */
    public WeakReference f693F0;

    /* renamed from: G, reason: collision with root package name */
    public CharSequence f694G;

    /* renamed from: G0, reason: collision with root package name */
    public TextUtils.TruncateAt f695G0;

    /* renamed from: H, reason: collision with root package name */
    public boolean f696H;

    /* renamed from: H0, reason: collision with root package name */
    public boolean f697H0;

    /* renamed from: I, reason: collision with root package name */
    public Drawable f698I;

    /* renamed from: I0, reason: collision with root package name */
    public int f699I0;

    /* renamed from: J, reason: collision with root package name */
    public ColorStateList f700J;

    /* renamed from: J0, reason: collision with root package name */
    public boolean f701J0;

    /* renamed from: K, reason: collision with root package name */
    public float f702K;

    /* renamed from: L, reason: collision with root package name */
    public boolean f703L;

    /* renamed from: M, reason: collision with root package name */
    public boolean f704M;

    /* renamed from: N, reason: collision with root package name */
    public Drawable f705N;

    /* renamed from: O, reason: collision with root package name */
    public RippleDrawable f706O;

    /* renamed from: Q, reason: collision with root package name */
    public ColorStateList f707Q;

    /* renamed from: R, reason: collision with root package name */
    public float f708R;

    /* renamed from: T, reason: collision with root package name */
    public SpannableStringBuilder f709T;

    /* renamed from: U, reason: collision with root package name */
    public boolean f710U;

    /* renamed from: V, reason: collision with root package name */
    public boolean f711V;

    /* renamed from: W, reason: collision with root package name */
    public Drawable f712W;

    /* renamed from: X, reason: collision with root package name */
    public ColorStateList f713X;

    /* renamed from: Y, reason: collision with root package name */
    public C0900b f714Y;

    /* renamed from: Z, reason: collision with root package name */
    public C0900b f715Z;

    /* renamed from: a0, reason: collision with root package name */
    public float f716a0;

    /* renamed from: b0, reason: collision with root package name */
    public float f717b0;

    /* renamed from: c0, reason: collision with root package name */
    public float f718c0;

    /* renamed from: d0, reason: collision with root package name */
    public float f719d0;

    /* renamed from: e0, reason: collision with root package name */
    public float f720e0;

    /* renamed from: f0, reason: collision with root package name */
    public float f721f0;
    public float g0;

    /* renamed from: h0, reason: collision with root package name */
    public float f722h0;

    /* renamed from: i0, reason: collision with root package name */
    public final Context f723i0;

    /* renamed from: j0, reason: collision with root package name */
    public final Paint f724j0;
    public final Paint.FontMetrics k0;
    public final RectF l0;
    public final PointF m0;
    public final Path n0;
    public final J1.k o0;

    /* renamed from: p0, reason: collision with root package name */
    public int f725p0;
    public int q0;
    public int r0;
    public int s0;
    public int t0;
    public int u0;

    /* renamed from: v0, reason: collision with root package name */
    public boolean f726v0;

    /* renamed from: w0, reason: collision with root package name */
    public int f727w0;

    /* renamed from: x0, reason: collision with root package name */
    public int f728x0;

    /* renamed from: y0, reason: collision with root package name */
    public ColorFilter f729y0;

    /* renamed from: z, reason: collision with root package name */
    public ColorStateList f730z;

    /* renamed from: z0, reason: collision with root package name */
    public PorterDuffColorFilter f731z0;

    public f(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, com.wssyncmldm.R.attr.chipStyle, com.wssyncmldm.R.style.Widget_MaterialComponents_Chip_Action);
        this.f687C = -1.0f;
        this.f724j0 = new Paint(1);
        this.k0 = new Paint.FontMetrics();
        this.l0 = new RectF();
        this.m0 = new PointF();
        this.n0 = new Path();
        this.f728x0 = CustomDeviceManager.CALL_SCREEN_ALL;
        this.B0 = PorterDuff.Mode.SRC_IN;
        this.f693F0 = new WeakReference(null);
        i(context);
        this.f723i0 = context;
        J1.k kVar = new J1.k(this);
        this.o0 = kVar;
        this.f694G = "";
        kVar.f1120a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = f682K0;
        setState(iArr);
        if (!Arrays.equals(this.f688C0, iArr)) {
            this.f688C0 = iArr;
            if (U()) {
                w(getState(), iArr);
            }
        }
        this.f697H0 = true;
        f683L0.setTint(-1);
    }

    public static void V(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public static boolean t(ColorStateList colorStateList) {
        return colorStateList != null && colorStateList.isStateful();
    }

    public static boolean u(Drawable drawable) {
        return drawable != null && drawable.isStateful();
    }

    public final void A(boolean z4) {
        if (this.f711V != z4) {
            boolean zS = S();
            this.f711V = z4;
            boolean zS2 = S();
            if (zS != zS2) {
                if (zS2) {
                    o(this.f712W);
                } else {
                    V(this.f712W);
                }
                invalidateSelf();
                v();
            }
        }
    }

    public final void B(float f) {
        if (this.f687C != f) {
            this.f687C = f;
            P1.j jVarE = this.f2075c.f2055a.e();
            jVarE.f2100e = new P1.a(f);
            jVarE.f = new P1.a(f);
            jVarE.f2101g = new P1.a(f);
            jVarE.f2102h = new P1.a(f);
            setShapeAppearanceModel(jVarE.a());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void C(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f698I;
        if (drawable3 != 0) {
            boolean z4 = drawable3 instanceof C.g;
            drawable2 = drawable3;
            if (z4) {
                ((C.h) ((C.g) drawable3)).getClass();
                drawable2 = null;
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float fQ = q();
            this.f698I = drawable != null ? drawable.mutate() : null;
            float fQ2 = q();
            V(drawable2);
            if (T()) {
                o(this.f698I);
            }
            invalidateSelf();
            if (fQ != fQ2) {
                v();
            }
        }
    }

    public final void D(float f) {
        if (this.f702K != f) {
            float fQ = q();
            this.f702K = f;
            float fQ2 = q();
            invalidateSelf();
            if (fQ != fQ2) {
                v();
            }
        }
    }

    public final void E(ColorStateList colorStateList) {
        this.f703L = true;
        if (this.f700J != colorStateList) {
            this.f700J = colorStateList;
            if (T()) {
                C.a.h(this.f698I, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void F(boolean z4) {
        if (this.f696H != z4) {
            boolean zT = T();
            this.f696H = z4;
            boolean zT2 = T();
            if (zT != zT2) {
                if (zT2) {
                    o(this.f698I);
                } else {
                    V(this.f698I);
                }
                invalidateSelf();
                v();
            }
        }
    }

    public final void G(ColorStateList colorStateList) {
        if (this.f689D != colorStateList) {
            this.f689D = colorStateList;
            if (this.f701J0) {
                P1.f fVar = this.f2075c;
                if (fVar.f2058d != colorStateList) {
                    fVar.f2058d = colorStateList;
                    onStateChange(getState());
                }
            }
            onStateChange(getState());
        }
    }

    public final void H(float f) {
        if (this.E != f) {
            this.E = f;
            this.f724j0.setStrokeWidth(f);
            if (this.f701J0) {
                this.f2075c.f2064k = f;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void I(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f705N;
        if (drawable3 != 0) {
            boolean z4 = drawable3 instanceof C.g;
            drawable2 = drawable3;
            if (z4) {
                ((C.h) ((C.g) drawable3)).getClass();
                drawable2 = null;
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float fR = r();
            this.f705N = drawable != null ? drawable.mutate() : null;
            ColorStateList colorStateListValueOf = this.f692F;
            if (colorStateListValueOf == null) {
                colorStateListValueOf = ColorStateList.valueOf(0);
            }
            this.f706O = new RippleDrawable(colorStateListValueOf, this.f705N, f683L0);
            float fR2 = r();
            V(drawable2);
            if (U()) {
                o(this.f705N);
            }
            invalidateSelf();
            if (fR != fR2) {
                v();
            }
        }
    }

    public final void J(float f) {
        if (this.g0 != f) {
            this.g0 = f;
            invalidateSelf();
            if (U()) {
                v();
            }
        }
    }

    public final void K(float f) {
        if (this.f708R != f) {
            this.f708R = f;
            invalidateSelf();
            if (U()) {
                v();
            }
        }
    }

    public final void L(float f) {
        if (this.f721f0 != f) {
            this.f721f0 = f;
            invalidateSelf();
            if (U()) {
                v();
            }
        }
    }

    public final void M(ColorStateList colorStateList) {
        if (this.f707Q != colorStateList) {
            this.f707Q = colorStateList;
            if (U()) {
                C.a.h(this.f705N, colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void N(boolean z4) {
        if (this.f704M != z4) {
            boolean zU = U();
            this.f704M = z4;
            boolean zU2 = U();
            if (zU != zU2) {
                if (zU2) {
                    o(this.f705N);
                } else {
                    V(this.f705N);
                }
                invalidateSelf();
                v();
            }
        }
    }

    public final void O(float f) {
        if (this.f718c0 != f) {
            float fQ = q();
            this.f718c0 = f;
            float fQ2 = q();
            invalidateSelf();
            if (fQ != fQ2) {
                v();
            }
        }
    }

    public final void P(float f) {
        if (this.f717b0 != f) {
            float fQ = q();
            this.f717b0 = f;
            float fQ2 = q();
            invalidateSelf();
            if (fQ != fQ2) {
                v();
            }
        }
    }

    public final void Q(ColorStateList colorStateList) {
        if (this.f692F != colorStateList) {
            this.f692F = colorStateList;
            if (!this.f690D0) {
                colorStateList = null;
            } else if (colorStateList == null) {
                colorStateList = ColorStateList.valueOf(0);
            }
            this.f691E0 = colorStateList;
            onStateChange(getState());
        }
    }

    public final void R(M1.d dVar) {
        J1.k kVar = this.o0;
        if (kVar.f != dVar) {
            kVar.f = dVar;
            if (dVar != null) {
                TextPaint textPaint = kVar.f1120a;
                Context context = this.f723i0;
                b bVar = kVar.f1121b;
                dVar.f(context, textPaint, bVar);
                J1.j jVar = (J1.j) kVar.f1124e.get();
                if (jVar != null) {
                    textPaint.drawableState = jVar.getState();
                }
                dVar.e(context, textPaint, bVar);
                kVar.f1123d = true;
            }
            J1.j jVar2 = (J1.j) kVar.f1124e.get();
            if (jVar2 != null) {
                f fVar = (f) jVar2;
                fVar.v();
                fVar.invalidateSelf();
                fVar.onStateChange(jVar2.getState());
            }
        }
    }

    public final boolean S() {
        return this.f711V && this.f712W != null && this.f726v0;
    }

    public final boolean T() {
        return this.f696H && this.f698I != null;
    }

    public final boolean U() {
        return this.f704M && this.f705N != null;
    }

    @Override // P1.g, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i5;
        RectF rectF;
        int i6;
        int i7;
        int i8;
        RectF rectF2;
        int iSave;
        Rect bounds = getBounds();
        if (bounds.isEmpty() || (i5 = this.f728x0) == 0) {
            return;
        }
        int iSaveLayerAlpha = i5 < 255 ? canvas.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i5) : 0;
        boolean z4 = this.f701J0;
        Paint paint = this.f724j0;
        RectF rectF3 = this.l0;
        if (!z4) {
            paint.setColor(this.f725p0);
            paint.setStyle(Paint.Style.FILL);
            rectF3.set(bounds);
            canvas.drawRoundRect(rectF3, s(), s(), paint);
        }
        if (!this.f701J0) {
            paint.setColor(this.q0);
            paint.setStyle(Paint.Style.FILL);
            ColorFilter colorFilter = this.f729y0;
            if (colorFilter == null) {
                colorFilter = this.f731z0;
            }
            paint.setColorFilter(colorFilter);
            rectF3.set(bounds);
            canvas.drawRoundRect(rectF3, s(), s(), paint);
        }
        if (this.f701J0) {
            super.draw(canvas);
        }
        if (this.E > 0.0f && !this.f701J0) {
            paint.setColor(this.s0);
            paint.setStyle(Paint.Style.STROKE);
            if (!this.f701J0) {
                ColorFilter colorFilter2 = this.f729y0;
                if (colorFilter2 == null) {
                    colorFilter2 = this.f731z0;
                }
                paint.setColorFilter(colorFilter2);
            }
            float f = bounds.left;
            float f5 = this.E / 2.0f;
            rectF3.set(f + f5, bounds.top + f5, bounds.right - f5, bounds.bottom - f5);
            float f6 = this.f687C - (this.E / 2.0f);
            canvas.drawRoundRect(rectF3, f6, f6, paint);
        }
        paint.setColor(this.t0);
        paint.setStyle(Paint.Style.FILL);
        rectF3.set(bounds);
        if (this.f701J0) {
            RectF rectF4 = new RectF(bounds);
            Path path = this.n0;
            P1.f fVar = this.f2075c;
            this.f2090t.a(fVar.f2055a, fVar.f2063j, rectF4, this.f2089s, path);
            e(canvas, paint, path, this.f2075c.f2055a, g());
        } else {
            canvas.drawRoundRect(rectF3, s(), s(), paint);
        }
        if (T()) {
            p(bounds, rectF3);
            float f7 = rectF3.left;
            float f8 = rectF3.top;
            canvas.translate(f7, f8);
            this.f698I.setBounds(0, 0, (int) rectF3.width(), (int) rectF3.height());
            this.f698I.draw(canvas);
            canvas.translate(-f7, -f8);
        }
        if (S()) {
            p(bounds, rectF3);
            float f9 = rectF3.left;
            float f10 = rectF3.top;
            canvas.translate(f9, f10);
            this.f712W.setBounds(0, 0, (int) rectF3.width(), (int) rectF3.height());
            this.f712W.draw(canvas);
            canvas.translate(-f9, -f10);
        }
        if (!this.f697H0 || this.f694G == null) {
            rectF = rectF3;
            i6 = iSaveLayerAlpha;
            i7 = 0;
            i8 = 255;
        } else {
            PointF pointF = this.m0;
            pointF.set(0.0f, 0.0f);
            Paint.Align align = Paint.Align.LEFT;
            CharSequence charSequence = this.f694G;
            J1.k kVar = this.o0;
            if (charSequence != null) {
                float fQ = this.f716a0 + q() + this.f719d0;
                if (C.b.a(this) == 0) {
                    pointF.x = bounds.left + fQ;
                } else {
                    pointF.x = bounds.right - fQ;
                    align = Paint.Align.RIGHT;
                }
                float fCenterY = bounds.centerY();
                TextPaint textPaint = kVar.f1120a;
                Paint.FontMetrics fontMetrics = this.k0;
                textPaint.getFontMetrics(fontMetrics);
                pointF.y = fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f);
            }
            rectF3.setEmpty();
            if (this.f694G != null) {
                float fQ2 = q();
                float fR = r();
                float f11 = this.f716a0 + fQ2 + this.f719d0;
                float f12 = this.f722h0 + fR + this.f720e0;
                if (C.b.a(this) == 0) {
                    rectF3.left = bounds.left + f11;
                    rectF3.right = bounds.right - f12;
                } else {
                    rectF3.left = bounds.left + f12;
                    rectF3.right = bounds.right - f11;
                }
                rectF3.top = bounds.top;
                rectF3.bottom = bounds.bottom;
            }
            M1.d dVar = kVar.f;
            TextPaint textPaint2 = kVar.f1120a;
            if (dVar != null) {
                textPaint2.drawableState = getState();
                kVar.f.e(this.f723i0, textPaint2, kVar.f1121b);
            }
            textPaint2.setTextAlign(align);
            boolean z5 = Math.round(kVar.a(this.f694G.toString())) > Math.round(rectF3.width());
            if (z5) {
                iSave = canvas.save();
                canvas.clipRect(rectF3);
            } else {
                iSave = 0;
            }
            CharSequence charSequenceEllipsize = this.f694G;
            if (z5 && this.f695G0 != null) {
                charSequenceEllipsize = TextUtils.ellipsize(charSequenceEllipsize, textPaint2, rectF3.width(), this.f695G0);
            }
            CharSequence charSequence2 = charSequenceEllipsize;
            int length = charSequence2.length();
            float f13 = pointF.x;
            float f14 = pointF.y;
            rectF = rectF3;
            i6 = iSaveLayerAlpha;
            i7 = 0;
            i8 = 255;
            canvas.drawText(charSequence2, 0, length, f13, f14, textPaint2);
            if (z5) {
                canvas.restoreToCount(iSave);
            }
        }
        if (U()) {
            rectF.setEmpty();
            if (U()) {
                float f15 = this.f722h0 + this.g0;
                if (C.b.a(this) == 0) {
                    float f16 = bounds.right - f15;
                    rectF2 = rectF;
                    rectF2.right = f16;
                    rectF2.left = f16 - this.f708R;
                } else {
                    rectF2 = rectF;
                    float f17 = bounds.left + f15;
                    rectF2.left = f17;
                    rectF2.right = f17 + this.f708R;
                }
                float fExactCenterY = bounds.exactCenterY();
                float f18 = this.f708R;
                float f19 = fExactCenterY - (f18 / 2.0f);
                rectF2.top = f19;
                rectF2.bottom = f19 + f18;
            } else {
                rectF2 = rectF;
            }
            float f20 = rectF2.left;
            float f21 = rectF2.top;
            canvas.translate(f20, f21);
            this.f705N.setBounds(i7, i7, (int) rectF2.width(), (int) rectF2.height());
            this.f706O.setBounds(this.f705N.getBounds());
            this.f706O.jumpToCurrentState();
            this.f706O.draw(canvas);
            canvas.translate(-f20, -f21);
        }
        if (this.f728x0 < i8) {
            canvas.restoreToCount(i6);
        }
    }

    @Override // P1.g, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f728x0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.f729y0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f686B;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.min(Math.round(r() + this.o0.a(this.f694G.toString()) + q() + this.f716a0 + this.f719d0 + this.f720e0 + this.f722h0), this.f699I0);
    }

    @Override // P1.g, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // P1.g, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        if (this.f701J0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (bounds.isEmpty()) {
            outline.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.f686B, this.f687C);
        } else {
            outline.setRoundRect(bounds, this.f687C);
        }
        outline.setAlpha(this.f728x0 / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // P1.g, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        M1.d dVar;
        ColorStateList colorStateList;
        return t(this.f730z) || t(this.f684A) || t(this.f689D) || (this.f690D0 && t(this.f691E0)) || (!((dVar = this.o0.f) == null || (colorStateList = dVar.f1841j) == null || !colorStateList.isStateful()) || ((this.f711V && this.f712W != null && this.f710U) || u(this.f698I) || u(this.f712W) || t(this.f685A0)));
    }

    public final void o(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        drawable.setCallback(this);
        C.b.b(drawable, C.b.a(this));
        drawable.setLevel(getLevel());
        drawable.setVisible(isVisible(), false);
        if (drawable == this.f705N) {
            if (drawable.isStateful()) {
                drawable.setState(this.f688C0);
            }
            C.a.h(drawable, this.f707Q);
            return;
        }
        Drawable drawable2 = this.f698I;
        if (drawable == drawable2 && this.f703L) {
            C.a.h(drawable2, this.f700J);
        }
        if (drawable.isStateful()) {
            drawable.setState(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i5) {
        boolean zOnLayoutDirectionChanged = super.onLayoutDirectionChanged(i5);
        if (T()) {
            zOnLayoutDirectionChanged |= C.b.b(this.f698I, i5);
        }
        if (S()) {
            zOnLayoutDirectionChanged |= C.b.b(this.f712W, i5);
        }
        if (U()) {
            zOnLayoutDirectionChanged |= C.b.b(this.f705N, i5);
        }
        if (!zOnLayoutDirectionChanged) {
            return true;
        }
        invalidateSelf();
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i5) {
        boolean zOnLevelChange = super.onLevelChange(i5);
        if (T()) {
            zOnLevelChange |= this.f698I.setLevel(i5);
        }
        if (S()) {
            zOnLevelChange |= this.f712W.setLevel(i5);
        }
        if (U()) {
            zOnLevelChange |= this.f705N.setLevel(i5);
        }
        if (zOnLevelChange) {
            invalidateSelf();
        }
        return zOnLevelChange;
    }

    @Override // P1.g, android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        if (this.f701J0) {
            super.onStateChange(iArr);
        }
        return w(iArr, this.f688C0);
    }

    public final void p(Rect rect, RectF rectF) {
        rectF.setEmpty();
        if (T() || S()) {
            float f = this.f716a0 + this.f717b0;
            Drawable drawable = this.f726v0 ? this.f712W : this.f698I;
            float intrinsicWidth = this.f702K;
            if (intrinsicWidth <= 0.0f && drawable != null) {
                intrinsicWidth = drawable.getIntrinsicWidth();
            }
            if (C.b.a(this) == 0) {
                float f5 = rect.left + f;
                rectF.left = f5;
                rectF.right = f5 + intrinsicWidth;
            } else {
                float f6 = rect.right - f;
                rectF.right = f6;
                rectF.left = f6 - intrinsicWidth;
            }
            Drawable drawable2 = this.f726v0 ? this.f712W : this.f698I;
            float fCeil = this.f702K;
            if (fCeil <= 0.0f && drawable2 != null) {
                fCeil = (float) Math.ceil(TypedValue.applyDimension(1, 24, this.f723i0.getResources().getDisplayMetrics()));
                if (drawable2.getIntrinsicHeight() <= fCeil) {
                    fCeil = drawable2.getIntrinsicHeight();
                }
            }
            float fExactCenterY = rect.exactCenterY() - (fCeil / 2.0f);
            rectF.top = fExactCenterY;
            rectF.bottom = fExactCenterY + fCeil;
        }
    }

    public final float q() {
        if (!T() && !S()) {
            return 0.0f;
        }
        float f = this.f717b0;
        Drawable drawable = this.f726v0 ? this.f712W : this.f698I;
        float intrinsicWidth = this.f702K;
        if (intrinsicWidth <= 0.0f && drawable != null) {
            intrinsicWidth = drawable.getIntrinsicWidth();
        }
        return intrinsicWidth + f + this.f718c0;
    }

    public final float r() {
        if (U()) {
            return this.f721f0 + this.f708R + this.g0;
        }
        return 0.0f;
    }

    public final float s() {
        return this.f701J0 ? this.f2075c.f2055a.f2111e.a(g()) : this.f687C;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j3) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j3);
        }
    }

    @Override // P1.g, android.graphics.drawable.Drawable
    public final void setAlpha(int i5) {
        if (this.f728x0 != i5) {
            this.f728x0 = i5;
            invalidateSelf();
        }
    }

    @Override // P1.g, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f729y0 != colorFilter) {
            this.f729y0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // P1.g, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.f685A0 != colorStateList) {
            this.f685A0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // P1.g, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        if (this.B0 != mode) {
            this.B0 = mode;
            ColorStateList colorStateList = this.f685A0;
            this.f731z0 = (colorStateList == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z4, boolean z5) {
        boolean visible = super.setVisible(z4, z5);
        if (T()) {
            visible |= this.f698I.setVisible(z4, z5);
        }
        if (S()) {
            visible |= this.f712W.setVisible(z4, z5);
        }
        if (U()) {
            visible |= this.f705N.setVisible(z4, z5);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final void v() {
        e eVar = (e) this.f693F0.get();
        if (eVar != null) {
            Chip chip = (Chip) eVar;
            chip.c(chip.f5931s);
            chip.requestLayout();
            chip.invalidateOutline();
        }
    }

    public final boolean w(int[] iArr, int[] iArr2) {
        boolean z4;
        boolean z5;
        ColorStateList colorStateList;
        boolean zOnStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.f730z;
        int iC = c(colorStateList2 != null ? colorStateList2.getColorForState(iArr, this.f725p0) : 0);
        boolean state = true;
        if (this.f725p0 != iC) {
            this.f725p0 = iC;
            zOnStateChange = true;
        }
        ColorStateList colorStateList3 = this.f684A;
        int iC2 = c(colorStateList3 != null ? colorStateList3.getColorForState(iArr, this.q0) : 0);
        if (this.q0 != iC2) {
            this.q0 = iC2;
            zOnStateChange = true;
        }
        int iX = W1.a.X(iC, iC2);
        if ((this.r0 != iX) | (this.f2075c.f2057c == null)) {
            this.r0 = iX;
            k(ColorStateList.valueOf(iX));
            zOnStateChange = true;
        }
        ColorStateList colorStateList4 = this.f689D;
        int colorForState = colorStateList4 != null ? colorStateList4.getColorForState(iArr, this.s0) : 0;
        if (this.s0 != colorForState) {
            this.s0 = colorForState;
            zOnStateChange = true;
        }
        int colorForState2 = (this.f691E0 == null || !L2.b.J(iArr)) ? 0 : this.f691E0.getColorForState(iArr, this.t0);
        if (this.t0 != colorForState2) {
            this.t0 = colorForState2;
            if (this.f690D0) {
                zOnStateChange = true;
            }
        }
        M1.d dVar = this.o0.f;
        int colorForState3 = (dVar == null || (colorStateList = dVar.f1841j) == null) ? 0 : colorStateList.getColorForState(iArr, this.u0);
        if (this.u0 != colorForState3) {
            this.u0 = colorForState3;
            zOnStateChange = true;
        }
        int[] state2 = getState();
        if (state2 == null) {
            z4 = false;
        } else {
            int length = state2.length;
            int i5 = 0;
            while (true) {
                if (i5 >= length) {
                    break;
                }
                if (state2[i5] != 16842912) {
                    i5++;
                } else if (this.f710U) {
                    z4 = true;
                }
            }
            z4 = false;
        }
        if (this.f726v0 == z4 || this.f712W == null) {
            z5 = false;
        } else {
            float fQ = q();
            this.f726v0 = z4;
            if (fQ != q()) {
                zOnStateChange = true;
                z5 = true;
            } else {
                z5 = false;
                zOnStateChange = true;
            }
        }
        ColorStateList colorStateList5 = this.f685A0;
        int colorForState4 = colorStateList5 != null ? colorStateList5.getColorForState(iArr, this.f727w0) : 0;
        if (this.f727w0 != colorForState4) {
            this.f727w0 = colorForState4;
            ColorStateList colorStateList6 = this.f685A0;
            PorterDuff.Mode mode = this.B0;
            this.f731z0 = (colorStateList6 == null || mode == null) ? null : new PorterDuffColorFilter(colorStateList6.getColorForState(getState(), 0), mode);
        } else {
            state = zOnStateChange;
        }
        if (u(this.f698I)) {
            state |= this.f698I.setState(iArr);
        }
        if (u(this.f712W)) {
            state |= this.f712W.setState(iArr);
        }
        if (u(this.f705N)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            state |= this.f705N.setState(iArr3);
        }
        if (u(this.f706O)) {
            state |= this.f706O.setState(iArr2);
        }
        if (state) {
            invalidateSelf();
        }
        if (z5) {
            v();
        }
        return state;
    }

    public final void x(boolean z4) {
        if (this.f710U != z4) {
            this.f710U = z4;
            float fQ = q();
            if (!z4 && this.f726v0) {
                this.f726v0 = false;
            }
            float fQ2 = q();
            invalidateSelf();
            if (fQ != fQ2) {
                v();
            }
        }
    }

    public final void y(Drawable drawable) {
        if (this.f712W != drawable) {
            float fQ = q();
            this.f712W = drawable;
            float fQ2 = q();
            V(this.f712W);
            o(this.f712W);
            invalidateSelf();
            if (fQ != fQ2) {
                v();
            }
        }
    }

    public final void z(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.f713X != colorStateList) {
            this.f713X = colorStateList;
            if (this.f711V && (drawable = this.f712W) != null && this.f710U) {
                C.a.h(drawable, colorStateList);
            }
            onStateChange(getState());
        }
    }
}
