package com.google.android.material.timepicker;

import J.Q;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import com.wssyncmldm.R;
import i3.x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.WeakHashMap;
import w1.AbstractC0899a;

/* loaded from: classes.dex */
class ClockHandView extends View {

    /* renamed from: c, reason: collision with root package name */
    public final ValueAnimator f6159c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6160d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayList f6161e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final float f6162g;

    /* renamed from: h, reason: collision with root package name */
    public final Paint f6163h;

    /* renamed from: i, reason: collision with root package name */
    public final RectF f6164i;

    /* renamed from: j, reason: collision with root package name */
    public final int f6165j;

    /* renamed from: k, reason: collision with root package name */
    public float f6166k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f6167l;

    /* renamed from: m, reason: collision with root package name */
    public double f6168m;
    public int n;

    /* renamed from: o, reason: collision with root package name */
    public int f6169o;

    public ClockHandView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.materialClockStyle);
        this.f6159c = new ValueAnimator();
        this.f6161e = new ArrayList();
        Paint paint = new Paint();
        this.f6163h = paint;
        this.f6164i = new RectF();
        this.f6169o = 1;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, v1.a.f, R.attr.materialClockStyle, R.style.Widget_MaterialComponents_TimePicker_Clock);
        x.U0(context, R.attr.motionDurationLong2, 200);
        x.V0(context, R.attr.motionEasingEmphasizedInterpolator, AbstractC0899a.f9597b);
        this.n = typedArrayObtainStyledAttributes.getDimensionPixelSize(1, 0);
        this.f = typedArrayObtainStyledAttributes.getDimensionPixelSize(2, 0);
        this.f6165j = getResources().getDimensionPixelSize(R.dimen.material_clock_hand_stroke_width);
        this.f6162g = r4.getDimensionPixelSize(R.dimen.material_clock_hand_center_dot_radius);
        int color = typedArrayObtainStyledAttributes.getColor(0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        b(0.0f);
        ViewConfiguration.get(context).getScaledTouchSlop();
        WeakHashMap weakHashMap = Q.f940a;
        setImportantForAccessibility(2);
        typedArrayObtainStyledAttributes.recycle();
    }

    public final int a(int i5) {
        int i6 = this.n;
        return i5 == 2 ? Math.round(i6 * 0.66f) : i6;
    }

    public final void b(float f) {
        ValueAnimator valueAnimator = this.f6159c;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        c(f);
    }

    public final void c(float f) {
        float f5 = f % 360.0f;
        this.f6166k = f5;
        this.f6168m = Math.toRadians(f5 - 90.0f);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float fA = a(this.f6169o);
        float fCos = (((float) Math.cos(this.f6168m)) * fA) + width;
        float fSin = (fA * ((float) Math.sin(this.f6168m))) + height;
        float f6 = this.f;
        this.f6164i.set(fCos - f6, fSin - f6, fCos + f6, fSin + f6);
        Iterator it = this.f6161e.iterator();
        while (it.hasNext()) {
            ClockFaceView clockFaceView = (ClockFaceView) ((d) it.next());
            if (Math.abs(clockFaceView.f6153J - f5) > 0.001f) {
                clockFaceView.f6153J = f5;
                clockFaceView.h();
            }
        }
        invalidate();
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight() / 2;
        int width = getWidth() / 2;
        float f = width;
        float fA = a(this.f6169o);
        float fCos = (((float) Math.cos(this.f6168m)) * fA) + f;
        float f5 = height;
        float fSin = (fA * ((float) Math.sin(this.f6168m))) + f5;
        Paint paint = this.f6163h;
        paint.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.f, paint);
        double dSin = Math.sin(this.f6168m);
        paint.setStrokeWidth(this.f6165j);
        canvas.drawLine(f, f5, width + ((int) (Math.cos(this.f6168m) * d)), height + ((int) (d * dSin)), paint);
        canvas.drawCircle(f, f5, this.f6162g, paint);
    }

    @Override // android.view.View
    public final void onLayout(boolean z4, int i5, int i6, int i7, int i8) {
        super.onLayout(z4, i5, i6, i7, i8);
        if (this.f6159c.isRunning()) {
            return;
        }
        b(this.f6166k);
    }

    @Override // android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z4;
        boolean z5;
        int actionMasked = motionEvent.getActionMasked();
        float x4 = motionEvent.getX();
        float y3 = motionEvent.getY();
        boolean z6 = false;
        if (actionMasked == 0) {
            this.f6167l = false;
            z4 = true;
            z5 = false;
        } else if (actionMasked == 1 || actionMasked == 2) {
            z5 = this.f6167l;
            if (this.f6160d) {
                this.f6169o = ((float) Math.hypot((double) (x4 - ((float) (getWidth() / 2))), (double) (y3 - ((float) (getHeight() / 2))))) <= ((float) a(2)) + TypedValue.applyDimension(1, (float) 12, getContext().getResources().getDisplayMetrics()) ? 2 : 1;
            }
            z4 = false;
        } else {
            z5 = false;
            z4 = false;
        }
        boolean z7 = this.f6167l;
        int degrees = (int) Math.toDegrees(Math.atan2(y3 - (getHeight() / 2), x4 - (getWidth() / 2)));
        int i5 = degrees + 90;
        if (i5 < 0) {
            i5 = degrees + 450;
        }
        float f = i5;
        boolean z8 = this.f6166k != f;
        if (z4 && z8) {
            z6 = true;
        } else if (z8 || z5) {
            b(f);
            z6 = true;
        }
        this.f6167l = z7 | z6;
        return true;
    }
}
