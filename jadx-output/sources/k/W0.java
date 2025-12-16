package k;

import android.animation.ValueAnimator;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.view.animation.LinearInterpolator;
import com.samsung.android.knox.custom.CustomDeviceManager;
import com.wssyncmldm.R;
import d.AbstractC0385a;

/* loaded from: classes.dex */
public final class W0 extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f7762a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f7763b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f7764c;

    /* renamed from: d, reason: collision with root package name */
    public final int f7765d;

    /* renamed from: e, reason: collision with root package name */
    public int f7766e;
    public final ValueAnimator f;

    /* renamed from: g, reason: collision with root package name */
    public final ValueAnimator f7767g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f7768h;

    /* renamed from: i, reason: collision with root package name */
    public int f7769i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f7770j;

    /* renamed from: k, reason: collision with root package name */
    public int f7771k;

    /* renamed from: l, reason: collision with root package name */
    public final int f7772l;

    /* renamed from: m, reason: collision with root package name */
    public final /* synthetic */ X0 f7773m;

    public W0(X0 x02, int i5, ColorStateList colorStateList, boolean z4) {
        this.f7773m = x02;
        Paint paint = new Paint(1);
        this.f7762a = paint;
        Paint paint2 = new Paint(1);
        this.f7763b = paint2;
        this.f7768h = false;
        this.f7769i = CustomDeviceManager.CALL_SCREEN_ALL;
        this.f7770j = false;
        this.f7772l = x02.getContext().getResources().getDimensionPixelSize(R.dimen.sesl_seekbar_thumb_stroke);
        this.f7766e = i5;
        this.f7765d = i5;
        this.f7764c = colorStateList;
        this.f7771k = colorStateList.getDefaultColor();
        Paint.Style style = Paint.Style.FILL;
        paint.setStyle(style);
        paint2.setStyle(style);
        paint.setColor(this.f7771k);
        paint2.setColor(x02.getContext().getResources().getColor(R.color.sesl_thumb_control_fill_color_activated));
        this.f7770j = z4;
        float f = i5;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f, 0.0f);
        this.f = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(100L);
        this.f.setInterpolator(new LinearInterpolator());
        this.f.addUpdateListener(new V0(this, 0));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.0f, f);
        this.f7767g = valueAnimatorOfFloat2;
        valueAnimatorOfFloat2.setDuration(300L);
        this.f7767g.setInterpolator(AbstractC0385a.f6484b);
        this.f7767g.addUpdateListener(new V0(this, 1));
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint = this.f7762a;
        int alpha = paint.getAlpha();
        int i5 = this.f7769i;
        paint.setAlpha(((i5 + (i5 >>> 7)) * alpha) >>> 8);
        Paint paint2 = this.f7763b;
        int i6 = this.f7769i;
        paint2.setAlpha(((i6 + (i6 >>> 7)) * alpha) >>> 8);
        canvas.save();
        boolean z4 = this.f7770j;
        int i7 = this.f7772l;
        X0 x02 = this.f7773m;
        if (z4) {
            float width = ((x02.getWidth() - x02.getPaddingLeft()) - x02.getPaddingRight()) / 2.0f;
            canvas.drawCircle(width, x02.B0 - x02.getPaddingLeft(), this.f7766e, paint);
            canvas.drawCircle(width, x02.B0 - x02.getPaddingLeft(), this.f7766e - i7, paint2);
        } else {
            canvas.drawCircle(x02.B0, x02.getHeight() / 2.0f, this.f7766e, paint);
            canvas.drawCircle(x02.B0, x02.getHeight() / 2.0f, this.f7766e - i7, paint2);
        }
        canvas.restore();
        paint.setAlpha(alpha);
        paint2.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f7765d * 2;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f7765d * 2;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Paint paint = this.f7762a;
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
        boolean zOnStateChange = super.onStateChange(iArr);
        int colorForState = this.f7764c.getColorForState(iArr, this.f7771k);
        if (this.f7771k != colorForState) {
            this.f7771k = colorForState;
            this.f7762a.setColor(colorForState);
            invalidateSelf();
        }
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        for (int i5 : iArr) {
            if (i5 == 16842910) {
                z5 = true;
            } else if (i5 == 16842919) {
                z6 = true;
            }
        }
        if (z5 && z6) {
            z4 = true;
        }
        if (this.f7768h != z4) {
            if (z4) {
                if (!this.f.isRunning()) {
                    if (this.f7767g.isRunning()) {
                        this.f7767g.cancel();
                    }
                    this.f.start();
                }
            } else if (!this.f7767g.isRunning()) {
                if (this.f.isRunning()) {
                    this.f.cancel();
                }
                this.f7767g.start();
            }
            this.f7768h = z4;
        }
        return zOnStateChange;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i5) {
        this.f7769i = i5;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f7762a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
        if (colorStateList != null) {
            this.f7764c = colorStateList;
            int colorForState = colorStateList.getColorForState(this.f7773m.getDrawableState(), this.f7771k);
            this.f7771k = colorForState;
            this.f7762a.setColor(colorForState);
            invalidateSelf();
        }
    }
}
