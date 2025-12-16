package k;

import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.animation.PathInterpolator;
import com.samsung.android.knox.custom.CustomDeviceManager;
import d.AbstractC0385a;

/* loaded from: classes.dex */
public final class U0 extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f7736a;

    /* renamed from: b, reason: collision with root package name */
    public float f7737b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f7738c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f7739d;

    /* renamed from: e, reason: collision with root package name */
    public final ValueAnimator f7740e;
    public final ValueAnimator f;

    /* renamed from: g, reason: collision with root package name */
    public int f7741g;

    /* renamed from: h, reason: collision with root package name */
    public final float f7742h;

    /* renamed from: i, reason: collision with root package name */
    public final float f7743i;

    /* renamed from: j, reason: collision with root package name */
    public int f7744j;

    /* renamed from: k, reason: collision with root package name */
    public final boolean f7745k;

    /* renamed from: l, reason: collision with root package name */
    public final D0.e f7746l;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ X0 f7747m;

    public U0(X0 x02, float f, float f5, ColorStateList colorStateList, boolean z4) {
        this.f7747m = x02;
        Paint paint = new Paint();
        this.f7736a = paint;
        this.f7739d = false;
        this.f7741g = CustomDeviceManager.CALL_SCREEN_ALL;
        this.f7746l = new D0.e(this, 1);
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        this.f7738c = colorStateList;
        int defaultColor = colorStateList.getDefaultColor();
        this.f7744j = defaultColor;
        paint.setColor(defaultColor);
        paint.setStrokeWidth(f);
        this.f7742h = f;
        this.f7743i = f5;
        this.f7737b = f / 2.0f;
        this.f7745k = z4;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, f5);
        this.f7740e = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(250L);
        ValueAnimator valueAnimator = this.f7740e;
        PathInterpolator pathInterpolator = AbstractC0385a.f6483a;
        valueAnimator.setInterpolator(pathInterpolator);
        this.f7740e.addUpdateListener(new T0(this, 0));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(f5, f);
        this.f = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setDuration(250L);
        this.f.setInterpolator(pathInterpolator);
        this.f.addUpdateListener(new T0(this, 1));
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint = this.f7736a;
        int alpha = paint.getAlpha();
        int i5 = this.f7741g;
        paint.setAlpha(((i5 + (i5 >>> 7)) * alpha) >>> 8);
        canvas.save();
        boolean z4 = this.f7745k;
        X0 x02 = this.f7747m;
        if (z4) {
            float width = (x02.getWidth() - x02.getPaddingLeft()) - x02.getPaddingRight();
            float height = (x02.getHeight() - x02.getPaddingTop()) - x02.getPaddingBottom();
            float f = this.f7737b;
            float f5 = width / 2.0f;
            canvas.drawLine(f5, height - f, f5, f, paint);
        } else {
            float width2 = (x02.getWidth() - x02.getPaddingLeft()) - x02.getPaddingRight();
            float f6 = this.f7737b;
            canvas.drawLine(f6, x02.getHeight() / 2.0f, width2 - f6, x02.getHeight() / 2.0f, paint);
        }
        canvas.restore();
        paint.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f7746l;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.f7743i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return (int) this.f7743i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Paint paint = this.f7736a;
        if (paint.getXfermode() != null) {
            return -3;
        }
        int alpha = paint.getAlpha();
        if (alpha == 0) {
            return -2;
        }
        return alpha == 255 ? -1 : -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        ValueAnimator valueAnimator = this.f;
        ValueAnimator valueAnimator2 = this.f7740e;
        boolean zOnStateChange = super.onStateChange(iArr);
        int colorForState = this.f7738c.getColorForState(iArr, this.f7744j);
        if (this.f7744j != colorForState) {
            this.f7744j = colorForState;
            this.f7736a.setColor(colorForState);
            invalidateSelf();
        }
        boolean z4 = false;
        boolean z5 = false;
        for (int i5 : iArr) {
            if (i5 == 16842910) {
                z4 = true;
            } else if (i5 == 16842919) {
                z5 = true;
            }
        }
        boolean z6 = z4 && z5;
        if (this.f7739d != z6) {
            float f = this.f7743i;
            float f5 = this.f7742h;
            if (z6) {
                if (!valueAnimator2.isRunning()) {
                    if (valueAnimator.isRunning()) {
                        valueAnimator.cancel();
                    }
                    valueAnimator2.setFloatValues(f5, f);
                    valueAnimator2.start();
                }
            } else if (!valueAnimator.isRunning()) {
                if (valueAnimator2.isRunning()) {
                    valueAnimator2.cancel();
                }
                valueAnimator.setFloatValues(f, f5);
                valueAnimator.start();
            }
            this.f7739d = z6;
        }
        return zOnStateChange;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i5) {
        this.f7741g = i5;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f7736a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
        if (colorStateList != null) {
            this.f7738c = colorStateList;
            int defaultColor = colorStateList.getDefaultColor();
            this.f7744j = defaultColor;
            this.f7736a.setColor(defaultColor);
            invalidateSelf();
        }
    }
}
