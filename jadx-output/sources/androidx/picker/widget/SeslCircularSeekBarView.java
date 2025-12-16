package androidx.picker.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathDashPathEffect;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.SweepGradient;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.PathInterpolator;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.wssyncmldm.R;
import e0.AbstractC0414a;
import java.util.Objects;

/* loaded from: classes.dex */
class SeslCircularSeekBarView extends View {
    public static final int r0 = Paint.Cap.ROUND.ordinal();
    public static final int s0 = Color.argb(CustomDeviceManager.CALL_SCREEN_ALL, 133, 135, 254);
    public static final int t0 = Color.argb(CustomDeviceManager.CALL_SCREEN_ALL, 133, 135, 254);
    public static final int u0 = Color.argb(CustomDeviceManager.CALL_SCREEN_ALL, 133, 135, 254);

    /* renamed from: v0, reason: collision with root package name */
    public static final int f4323v0 = Color.argb(CustomDeviceManager.CALL_SCREEN_ALL, CustomDeviceManager.CALL_SCREEN_ALL, 167, 0);

    /* renamed from: w0, reason: collision with root package name */
    public static final int f4324w0 = Color.argb(CustomDeviceManager.CALL_SCREEN_ALL, CustomDeviceManager.CALL_SCREEN_ALL, 167, 0);

    /* renamed from: A, reason: collision with root package name */
    public final RectF f4325A;

    /* renamed from: B, reason: collision with root package name */
    public final RectF f4326B;

    /* renamed from: C, reason: collision with root package name */
    public final int f4327C;

    /* renamed from: D, reason: collision with root package name */
    public final int f4328D;
    public final int E;

    /* renamed from: F, reason: collision with root package name */
    public final int f4329F;

    /* renamed from: G, reason: collision with root package name */
    public final int f4330G;

    /* renamed from: H, reason: collision with root package name */
    public final int f4331H;

    /* renamed from: I, reason: collision with root package name */
    public final int f4332I;

    /* renamed from: J, reason: collision with root package name */
    public final int f4333J;

    /* renamed from: K, reason: collision with root package name */
    public final int f4334K;

    /* renamed from: L, reason: collision with root package name */
    public Paint f4335L;

    /* renamed from: M, reason: collision with root package name */
    public Paint f4336M;

    /* renamed from: N, reason: collision with root package name */
    public float f4337N;

    /* renamed from: O, reason: collision with root package name */
    public float f4338O;

    /* renamed from: Q, reason: collision with root package name */
    public final Path f4339Q;

    /* renamed from: R, reason: collision with root package name */
    public final Path f4340R;

    /* renamed from: T, reason: collision with root package name */
    public final Path f4341T;

    /* renamed from: U, reason: collision with root package name */
    public final Path f4342U;

    /* renamed from: V, reason: collision with root package name */
    public final Path f4343V;

    /* renamed from: W, reason: collision with root package name */
    public float f4344W;

    /* renamed from: a0, reason: collision with root package name */
    public float f4345a0;

    /* renamed from: b0, reason: collision with root package name */
    public final boolean f4346b0;

    /* renamed from: c, reason: collision with root package name */
    public final float f4347c;

    /* renamed from: c0, reason: collision with root package name */
    public boolean f4348c0;

    /* renamed from: d, reason: collision with root package name */
    public Paint f4349d;

    /* renamed from: d0, reason: collision with root package name */
    public boolean f4350d0;

    /* renamed from: e, reason: collision with root package name */
    public Paint f4351e;

    /* renamed from: e0, reason: collision with root package name */
    public boolean f4352e0;
    public Paint f;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f4353f0;

    /* renamed from: g, reason: collision with root package name */
    public Paint f4354g;
    public int g0;

    /* renamed from: h, reason: collision with root package name */
    public Paint f4355h;

    /* renamed from: h0, reason: collision with root package name */
    public float f4356h0;

    /* renamed from: i, reason: collision with root package name */
    public Paint f4357i;

    /* renamed from: i0, reason: collision with root package name */
    public float f4358i0;

    /* renamed from: j, reason: collision with root package name */
    public Paint f4359j;

    /* renamed from: j0, reason: collision with root package name */
    public float f4360j0;

    /* renamed from: k, reason: collision with root package name */
    public Paint f4361k;
    public float k0;

    /* renamed from: l, reason: collision with root package name */
    public Paint f4362l;
    public final Drawable l0;

    /* renamed from: m, reason: collision with root package name */
    public Paint.Cap f4363m;
    public final Drawable m0;
    public final float n;
    public final P1.e n0;

    /* renamed from: o, reason: collision with root package name */
    public final float f4364o;
    public final C0159a o0;

    /* renamed from: p, reason: collision with root package name */
    public final float f4365p;

    /* renamed from: p0, reason: collision with root package name */
    public final A.j f4366p0;

    /* renamed from: q, reason: collision with root package name */
    public float f4367q;
    public final boolean q0;

    /* renamed from: r, reason: collision with root package name */
    public float f4368r;

    /* renamed from: s, reason: collision with root package name */
    public float f4369s;

    /* renamed from: t, reason: collision with root package name */
    public final float f4370t;

    /* renamed from: u, reason: collision with root package name */
    public float f4371u;

    /* renamed from: v, reason: collision with root package name */
    public final float f4372v;

    /* renamed from: w, reason: collision with root package name */
    public final float f4373w;

    /* renamed from: x, reason: collision with root package name */
    public final float f4374x;

    /* renamed from: y, reason: collision with root package name */
    public final RectF f4375y;

    /* renamed from: z, reason: collision with root package name */
    public final RectF f4376z;

    public SeslCircularSeekBarView(Context context, AttributeSet attributeSet) {
        Drawable drawable;
        super(context, attributeSet);
        this.f4347c = getResources().getDisplayMetrics().density;
        this.f4375y = new RectF();
        this.f4376z = new RectF();
        this.f4325A = new RectF();
        this.f4326B = new RectF();
        this.f4348c0 = true;
        this.f4350d0 = true;
        this.f4352e0 = false;
        this.q0 = false;
        new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, AbstractC0414a.f6805d, 0, 0);
        if (typedArrayObtainStyledAttributes != null) {
            this.f4369s = typedArrayObtainStyledAttributes.getDimension(23, 65.0f);
            this.f4370t = typedArrayObtainStyledAttributes.getDimension(13, 50.0f);
            typedArrayObtainStyledAttributes.getDimension(22, 15.0f);
            this.n = typedArrayObtainStyledAttributes.getDimension(6, 15.0f);
            this.f4364o = getResources().getDimension(R.dimen.sesl_sleep_goal_wheel_width);
            this.f4365p = getResources().getDimension(R.dimen.sesl_dot_line_stroke_width);
            this.f4363m = Paint.Cap.values()[typedArrayObtainStyledAttributes.getInt(0, r0)];
            this.E = typedArrayObtainStyledAttributes.getColor(17, t0);
            this.f4328D = typedArrayObtainStyledAttributes.getColor(10, s0);
            this.f4330G = typedArrayObtainStyledAttributes.getColor(11, u0);
            this.f4327C = typedArrayObtainStyledAttributes.getColor(25, f4323v0);
            this.f4329F = typedArrayObtainStyledAttributes.getColor(26, f4324w0);
            this.f4331H = typedArrayObtainStyledAttributes.getColor(1, -3355444);
            this.f4332I = typedArrayObtainStyledAttributes.getColor(2, 0);
            this.f4333J = typedArrayObtainStyledAttributes.getColor(4, -3355444);
            this.f4334K = typedArrayObtainStyledAttributes.getColor(3, -7829368);
            this.f4344W = typedArrayObtainStyledAttributes.getInt(16, 100);
            this.f4345a0 = typedArrayObtainStyledAttributes.getInt(24, 40);
            this.f4346b0 = typedArrayObtainStyledAttributes.getBoolean(15, true);
            typedArrayObtainStyledAttributes.getBoolean(18, true);
            this.f4348c0 = typedArrayObtainStyledAttributes.getBoolean(14, true);
            this.f4353f0 = typedArrayObtainStyledAttributes.getBoolean(12, false);
            this.f4360j0 = 7.5f;
            this.k0 = 225.0f;
            this.f4373w = ((typedArrayObtainStyledAttributes.getFloat(27, 270.0f) % 360.0f) + 360.0f) % 360.0f;
            float f = ((typedArrayObtainStyledAttributes.getFloat(9, 270.0f) % 360.0f) + 360.0f) % 360.0f;
            this.f4374x = f;
            if (this.f4373w % 360.0f == f % 360.0f) {
                this.f4374x = f - 0.1f;
            }
            float f5 = ((typedArrayObtainStyledAttributes.getFloat(20, 0.0f) % 360.0f) + 360.0f) % 360.0f;
            this.f4371u = f5;
            if (f5 == 0.0f) {
                this.f4371u = 0.1f;
            }
            float f6 = ((typedArrayObtainStyledAttributes.getFloat(20, 0.0f) % 360.0f) + 360.0f) % 360.0f;
            this.f4372v = f6;
            if (f6 == 0.0f) {
                this.f4372v = 0.1f;
            }
            P1.e eVar = new P1.e(11);
            new PathInterpolator(0.22f, 0.25f, 0.0f, 1.0f);
            this.n0 = eVar;
            typedArrayObtainStyledAttributes.recycle();
        }
        Drawable.ConstantState constantState = getResources().getDrawable(R.drawable.sesl_bedtime, null).mutate().getConstantState();
        Objects.requireNonNull(constantState);
        this.m0 = constantState.newDrawable().mutate();
        Drawable.ConstantState constantState2 = getResources().getDrawable(R.drawable.sesl_wakeup, null).mutate().getConstantState();
        Objects.requireNonNull(constantState2);
        this.l0 = constantState2.newDrawable().mutate();
        PorterDuffColorFilter porterDuffColorFilter = new PorterDuffColorFilter(getContext().getResources().getColor(R.color.sesl_picker_thumb_icon_color), PorterDuff.Mode.SRC_ATOP);
        if (this.m0 != null && (drawable = this.l0) != null) {
            drawable.setColorFilter(porterDuffColorFilter);
            this.m0.setColorFilter(porterDuffColorFilter);
        }
        c();
        this.f4339Q = new Path();
        this.f4340R = new Path();
        this.f4341T = new Path();
        this.f4342U = new Path();
        this.f4343V = new Path();
        new Path();
        this.o0 = new C0159a();
        this.f4366p0 = new A.j();
    }

    public final void a(Canvas canvas) {
        RectF rectF;
        canvas.drawPath(this.f4343V, this.f4361k);
        if (this.q0) {
            canvas.drawPath(this.f4343V, this.f4362l);
        }
        Drawable drawable = this.m0;
        if (drawable == null || (rectF = this.f4376z) == null) {
            return;
        }
        drawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        this.m0.draw(canvas);
    }

    public final void b(Canvas canvas) {
        RectF rectF;
        canvas.drawPath(this.f4342U, this.f4357i);
        if (this.q0) {
            canvas.drawPath(this.f4342U, this.f4359j);
        }
        Drawable drawable = this.l0;
        if (drawable == null || (rectF = this.f4325A) == null) {
            return;
        }
        drawable.setBounds((int) rectF.left, (int) rectF.top, (int) rectF.right, (int) rectF.bottom);
        this.l0.draw(canvas);
    }

    public final void c() {
        Paint paint = new Paint();
        this.f4349d = paint;
        paint.setAntiAlias(true);
        this.f4349d.setDither(true);
        this.f4349d.setColor(this.f4331H);
        this.f4349d.setStrokeWidth(this.n);
        Paint paint2 = this.f4349d;
        Paint.Style style = Paint.Style.STROKE;
        paint2.setStyle(style);
        Paint paint3 = this.f4349d;
        Paint.Join join = Paint.Join.ROUND;
        paint3.setStrokeJoin(join);
        this.f4349d.setStrokeCap(this.f4363m);
        Paint paint4 = new Paint();
        this.f4351e = paint4;
        paint4.setAntiAlias(true);
        this.f4351e.setDither(true);
        this.f4351e.setColor(this.f4332I);
        this.f4351e.setStyle(Paint.Style.FILL);
        Paint paint5 = new Paint();
        this.f = paint5;
        paint5.setAntiAlias(true);
        this.f.setDither(true);
        this.f.setStrokeWidth(this.n);
        this.f.setStyle(style);
        this.f.setStrokeJoin(join);
        this.f.setStrokeCap(this.f4363m);
        Paint paint6 = new Paint();
        this.f4354g = paint6;
        paint6.setAntiAlias(true);
        this.f4354g.setDither(true);
        this.f4354g.setStrokeWidth(this.f4364o);
        this.f4354g.setStyle(style);
        this.f4354g.setStrokeJoin(join);
        this.f4354g.setStrokeCap(Paint.Cap.ROUND);
        this.f4354g.setColor(getResources().getColor(R.color.sesl_sleep_goal_wheel_color));
        Paint paint7 = new Paint();
        this.f4357i = paint7;
        paint7.setAntiAlias(true);
        this.f4357i.setDither(true);
        this.f4357i.setColor(this.f4327C);
        this.f4357i.setStrokeWidth(this.f4369s);
        this.f4357i.setStyle(style);
        this.f4357i.setStrokeJoin(join);
        this.f4357i.setStrokeCap(this.f4363m);
        Paint paint8 = new Paint();
        this.f4359j = paint8;
        paint8.set(this.f4357i);
        this.f4359j.setColor(this.f4329F);
        this.f4359j.setStrokeWidth(this.f4369s);
        Paint paint9 = new Paint();
        this.f4361k = paint9;
        paint9.set(this.f4357i);
        this.f4361k.setColor(this.f4328D);
        Paint paint10 = new Paint();
        this.f4362l = paint10;
        paint10.set(this.f4359j);
        this.f4362l.setColor(this.f4330G);
        this.f4362l.setStrokeWidth(this.f4369s);
        Paint paint11 = new Paint(1);
        this.f4335L = paint11;
        float f = this.f4347c * 1.0f;
        paint11.setStrokeWidth(f);
        this.f4335L.setColor(this.f4333J);
        this.f4335L.setStyle(style);
        Paint paint12 = new Paint(1);
        this.f4336M = paint12;
        paint12.setStrokeWidth(f);
        this.f4336M.setColor(this.f4334K);
        this.f4336M.setStyle(style);
        Path path = new Path();
        float f5 = this.f4365p / 2.0f;
        path.addCircle(f5, 0.0f, f5, Path.Direction.CW);
        Paint paint13 = new Paint();
        this.f4355h = paint13;
        paint13.setStyle(style);
        this.f4355h.setStrokeWidth(this.f4365p);
        this.f4355h.setColor(getResources().getColor(R.color.sesl_dotted_line_color));
        this.f4355h.setPathEffect(new PathDashPathEffect(path, getResources().getDimension(R.dimen.sesl_dot_line_gap_width) + this.f4365p, 0.0f, PathDashPathEffect.Style.ROTATE));
    }

    public final void d() {
        float f = (360.0f - (this.f4373w - this.f4374x)) % 360.0f;
        this.f4337N = f;
        if (f <= 0.0f) {
            this.f4337N = 360.0f;
        }
        float f5 = this.f4360j0 - this.k0;
        this.f4338O = f5;
        if (f5 < 0.0f) {
            f5 += 360.0f;
        }
        this.f4338O = f5;
        RectF rectF = this.f4375y;
        float f6 = this.f4356h0;
        float f7 = this.f4358i0;
        rectF.set(-f6, -f7, f6, f7);
        RectF rectF2 = this.f4326B;
        rectF2.left = rectF.centerX() - (this.f4367q - 5.0f);
        rectF2.top = rectF.centerY() - (this.f4367q - 5.0f);
        rectF2.right = (this.f4367q - 5.0f) + rectF.centerY();
        rectF2.bottom = (this.f4367q - 5.0f) + rectF.centerY();
        this.f4339Q.reset();
        this.f4339Q.addArc(rectF, this.f4373w, this.f4337N);
        float f8 = this.k0;
        float f9 = this.f4371u;
        float f10 = f8 - (f9 / 2.0f);
        float f11 = this.f4338O + f9;
        if (f11 >= 360.0f) {
            f11 = 359.9f;
        }
        this.f4340R.reset();
        this.f4340R.addArc(rectF, f10, f11);
        this.f4341T.reset();
        if (this.f4345a0 > 6.5d) {
            this.f4341T.addArc(rectF, f10, f11);
        }
        float f12 = this.f4360j0 - (this.f4371u / 2.0f);
        this.f4342U.reset();
        this.f4342U.addArc(rectF, f12, this.f4371u);
        float f13 = this.k0 - (this.f4372v / 2.0f);
        this.f4343V.reset();
        this.f4343V.addArc(rectF, f13, this.f4372v);
        double d2 = (this.k0 / 180.0f) * 3.141592653589793d;
        RectF rectF3 = this.f4376z;
        rectF3.left = ((float) ((Math.cos(d2) * this.f4368r) + rectF.centerX())) - (this.f4370t / 2.0f);
        float fSin = (float) ((Math.sin(d2) * this.f4368r) + rectF.centerY());
        float f14 = this.f4370t;
        float f15 = fSin - (f14 / 2.0f);
        rectF3.top = f15;
        rectF3.right = rectF3.left + f14;
        rectF3.bottom = f15 + f14;
        double d5 = (this.f4360j0 / 180.0f) * 3.141592653589793d;
        RectF rectF4 = this.f4325A;
        rectF4.left = ((float) ((Math.cos(d5) * this.f4368r) + rectF.centerX())) - (this.f4370t / 2.0f);
        float fSin2 = (float) ((Math.sin(d5) * this.f4368r) + rectF.centerY());
        float f16 = this.f4370t;
        float f17 = fSin2 - (f16 / 2.0f);
        rectF4.top = f17;
        rectF4.right = rectF4.left + f16;
        rectF4.bottom = f17 + f16;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        requestLayout();
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        RectF rectF;
        super.onDraw(canvas);
        canvas.translate(getWidth() / 2.0f, getHeight() / 2.0f);
        canvas.drawPath(this.f4339Q, this.f4351e);
        canvas.drawPath(this.f4339Q, this.f4349d);
        double d2 = 0.0d;
        while (true) {
            rectF = this.f4375y;
            if (d2 > 360.0d) {
                break;
            }
            double d5 = ((this.f4373w + d2) / 180.0d) * 3.141592653589793d;
            double dCenterX = rectF.centerX();
            float f = this.f4367q;
            float f5 = this.f4347c * 2.5f;
            float fCos = (float) (dCenterX + (Math.cos(d5) * (f - f5)));
            float fSin = (float) ((Math.sin(d5) * (this.f4367q - f5)) + rectF.centerY());
            float fCos2 = (float) ((Math.cos(d5) * (this.f4367q + f5)) + rectF.centerX());
            float fSin2 = (float) ((Math.sin(d5) * (f5 + this.f4367q)) + rectF.centerY());
            double d6 = d2 % 90.0d;
            if (d6 != 0.0d && d6 != 2.5d && d6 != 3.0d && d6 != 87.0d && d6 != 87.5d && d2 != 175.0d && d2 != 185.0d) {
                if (d2 % 15.0d == 0.0d) {
                    canvas.drawLine(fCos, fSin, fCos2, fSin2, this.f4336M);
                } else {
                    canvas.drawLine(fCos, fSin, fCos2, fSin2, this.f4335L);
                }
            }
            d2 += 2.5d;
        }
        A.j jVar = this.f4366p0;
        int[] iArr = jVar.f23a;
        int i5 = this.f4328D;
        iArr[0] = i5;
        iArr[1] = i5;
        iArr[2] = this.E;
        int i6 = this.f4327C;
        iArr[3] = i6;
        iArr[4] = i6;
        float[] fArr = jVar.f24b;
        fArr[0] = 0.0f;
        float f6 = this.f4345a0 / this.f4344W;
        fArr[1] = 0.1f * f6;
        fArr[2] = 0.5f * f6;
        fArr[3] = 0.9f * f6;
        fArr[4] = f6;
        float fCenterX = rectF.centerX();
        float fCenterY = rectF.centerY();
        A.j jVar2 = this.f4366p0;
        SweepGradient sweepGradient = new SweepGradient(fCenterX, fCenterY, jVar2.f23a, jVar2.f24b);
        Matrix matrix = new Matrix();
        matrix.setRotate(this.k0, rectF.centerX(), rectF.centerY());
        sweepGradient.setLocalMatrix(matrix);
        this.f.setShader(sweepGradient);
        canvas.drawPath(this.f4340R, this.f);
        canvas.drawPath(this.f4341T, this.f4355h);
        if (this.g0 == 0) {
            b(canvas);
            a(canvas);
        } else {
            a(canvas);
            b(canvas);
        }
    }

    @Override // android.view.View
    public final void onMeasure(int i5, int i6) throws Resources.NotFoundException {
        int defaultSize = View.getDefaultSize(getSuggestedMinimumHeight(), i6);
        int defaultSize2 = View.getDefaultSize(getSuggestedMinimumWidth(), i5);
        if (defaultSize == 0) {
            defaultSize = defaultSize2;
        }
        if (defaultSize2 == 0) {
            defaultSize2 = defaultSize;
        }
        if (this.f4346b0) {
            int iMin = Math.min(defaultSize2, defaultSize);
            setMeasuredDimension(iMin, iMin);
        } else {
            setMeasuredDimension(defaultSize2, defaultSize);
        }
        this.f4369s = getResources().getDimension(R.dimen.sesl_sleep_time_pointer_size);
        float dimension = (this.f4369s / 2.0f) + getResources().getDimension(R.dimen.sesl_sleep_time_icon_touch_width);
        float f = getResources().getConfiguration().screenWidthDp * getResources().getDisplayMetrics().density;
        float f5 = getResources().getConfiguration().screenHeightDp;
        float dimension2 = getResources().getDimension(R.dimen.sesl_sleep_visual_edit_outer_circle_size);
        if (f5 < 420.0f) {
            dimension2 = (int) getResources().getDimension(R.dimen.sesl_sleep_visual_edit_outer_circle_min_size);
        }
        float f6 = (f / 2.0f) - dimension;
        this.f4356h0 = f6;
        float f7 = (dimension2 / 2.0f) - dimension;
        this.f4358i0 = f7;
        if (this.f4346b0) {
            float fMin = Math.min(f7, f6);
            this.f4358i0 = fMin;
            this.f4356h0 = fMin;
        }
        TypedValue typedValue = new TypedValue();
        getResources().getValue(R.dimen.sesl_time_picker_inner_circle_container_ratio, typedValue, true);
        float f8 = this.f4358i0;
        this.f4368r = f8;
        this.f4367q = typedValue.getFloat() * f8;
        d();
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Bundle bundle = (Bundle) parcelable;
        super.onRestoreInstanceState(bundle.getParcelable("PARENT"));
        this.f4344W = bundle.getFloat("MAX");
        this.f4345a0 = bundle.getFloat("PROGRESS");
        this.f4338O = bundle.getFloat("mProgressDegrees");
        this.f4360j0 = bundle.getFloat("mSecondPointerPosition");
        this.k0 = bundle.getFloat("mFirstPointerPosition");
        this.f4371u = bundle.getFloat("mSecondPointerAngle");
        this.f4348c0 = bundle.getBoolean("mLockEnabled");
        this.f4350d0 = bundle.getBoolean("mLockAtStart");
        this.f4352e0 = bundle.getBoolean("mLockAtEnd");
        this.f4363m = Paint.Cap.values()[bundle.getInt("mCircleStyle")];
        this.g0 = bundle.getInt("mLastPointerTouched");
        this.f4353f0 = bundle.getBoolean("mHideProgressWhenEmpty");
        c();
        d();
    }

    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        Parcelable parcelableOnSaveInstanceState = super.onSaveInstanceState();
        Bundle bundle = new Bundle();
        bundle.putParcelable("PARENT", parcelableOnSaveInstanceState);
        bundle.putFloat("MAX", this.f4344W);
        bundle.putFloat("PROGRESS", this.f4345a0);
        bundle.putFloat("mProgressDegrees", this.f4338O);
        bundle.putFloat("mSecondPointerPosition", this.f4360j0);
        bundle.putFloat("mFirstPointerPosition", this.k0);
        bundle.putFloat("mSecondPointerAngle", this.f4371u);
        bundle.putBoolean("mLockEnabled", this.f4348c0);
        bundle.putBoolean("mLockAtStart", this.f4350d0);
        bundle.putBoolean("mLockAtEnd", this.f4352e0);
        bundle.putInt("mCircleStyle", this.f4363m.ordinal());
        bundle.putInt("mLastPointerTouched", this.g0);
        bundle.putBoolean("mHideProgressWhenEmpty", this.f4353f0);
        return bundle;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i5, int i6, int i7, int i8) {
        super.onSizeChanged(i5, i6, i7, i8);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        this.n0.getClass();
        this.o0.f4499a = motionEvent.getX() - (getWidth() / 2.0f);
        this.o0.f4500b = motionEvent.getY() - (getHeight() / 2.0f);
        C0159a c0159a = this.o0;
        RectF rectF = this.f4375y;
        float fCenterX = rectF.centerX();
        C0159a c0159a2 = this.o0;
        c0159a.f4501c = fCenterX - c0159a2.f4499a;
        float fCenterY = rectF.centerY();
        C0159a c0159a3 = this.o0;
        c0159a2.f4502d = fCenterY - c0159a3.f4500b;
        c0159a3.f4503e = (float) Math.sqrt(Math.pow(this.o0.f4502d, 2.0d) + Math.pow(c0159a3.f4501c, 2.0d));
        C0159a c0159a4 = this.o0;
        float f = this.f4347c * 48.0f;
        c0159a4.getClass();
        float f5 = this.n;
        c0159a4.f = f5 < f ? f / 2.0f : f5 / 2.0f;
        float fMax = Math.max(this.f4358i0, this.f4356h0);
        C0159a c0159a5 = this.o0;
        c0159a4.f4504g = fMax + c0159a5.f;
        float fMin = Math.min(this.f4358i0, this.f4356h0);
        C0159a c0159a6 = this.o0;
        c0159a5.f4505h = fMin - c0159a6.f;
        c0159a6.f4506i = (float) (((Math.atan2(c0159a6.f4500b, c0159a6.f4499a) / 3.141592653589793d) * 180.0d) % 360.0d);
        C0159a c0159a7 = this.o0;
        float f6 = c0159a7.f4506i;
        if (f6 < 0.0f) {
            f6 += 360.0f;
        }
        c0159a7.f4506i = f6;
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action != 1) {
                if (action != 2) {
                    if (action != 3) {
                        return true;
                    }
                    Log.d("CircularSeekBar", "MotionEvent.ACTION_CANCEL");
                    return false;
                }
                float f7 = this.o0.f4504g;
            }
            return false;
        }
        C0159a c0159a8 = this.o0;
        float f8 = c0159a8.f4506i;
        float f9 = c0159a8.f4503e;
        float f10 = c0159a8.f4505h;
        float f11 = c0159a8.f4504g;
        float fMax2 = Math.max((float) ((this.f4369s * 180.0f) / (Math.max(this.f4358i0, this.f4356h0) * 3.141592653589793d)), this.f4371u / 2.0f);
        float f12 = f8 - this.f4360j0;
        if (f12 < 0.0f) {
            f12 += 360.0f;
        }
        float f13 = 360.0f - f12;
        float f14 = this.k0;
        float f15 = f8 - f14;
        if (f15 < 0.0f) {
            f15 += 360.0f;
        }
        float f16 = 360.0f - f15;
        boolean z4 = f9 >= f10 && f9 <= f11;
        boolean z5 = f12 <= fMax2 || f13 <= fMax2;
        boolean z6 = f15 <= fMax2 || f16 <= fMax2;
        float fT = i3.x.t(f14);
        float fT2 = i3.x.t(this.f4360j0);
        float fT3 = i3.x.t(f8);
        return (z4 && z5 && z6) || (z4 && z5) || ((z4 && z6) || (z4 && ((fT > fT2 ? 1 : (fT == fT2 ? 0 : -1)) >= 0 ? !((fT > fT2 ? 1 : (fT == fT2 ? 0 : -1)) <= 0 || (((fT3 > fT ? 1 : (fT3 == fT ? 0 : -1)) <= 0 || (fT3 > 1440.0f ? 1 : (fT3 == 1440.0f ? 0 : -1)) > 0) && ((fT3 > fT2 ? 1 : (fT3 == fT2 ? 0 : -1)) >= 0 || (fT3 > 0.0f ? 1 : (fT3 == 0.0f ? 0 : -1)) <= 0))) : !((fT3 > fT ? 1 : (fT3 == fT ? 0 : -1)) <= 0 || (fT3 > fT2 ? 1 : (fT3 == fT2 ? 0 : -1)) >= 0))));
    }
}
