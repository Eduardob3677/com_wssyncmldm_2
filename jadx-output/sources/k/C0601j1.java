package k;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.SeslProgressBar;
import com.samsung.android.knox.custom.CustomDeviceManager;

/* renamed from: k.j1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0601j1 extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public final Paint f7869a;

    /* renamed from: b, reason: collision with root package name */
    public ColorStateList f7870b;

    /* renamed from: c, reason: collision with root package name */
    public int f7871c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f7872d;

    /* renamed from: e, reason: collision with root package name */
    public int f7873e;
    public final RectF f;

    /* renamed from: g, reason: collision with root package name */
    public int f7874g;

    /* renamed from: h, reason: collision with root package name */
    public final D0.e f7875h;

    /* renamed from: i, reason: collision with root package name */
    public final C0598i1 f7876i;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ SeslProgressBar f7877j;

    public C0601j1(SeslProgressBar seslProgressBar, boolean z4, ColorStateList colorStateList) {
        this.f7877j = seslProgressBar;
        Paint paint = new Paint();
        this.f7869a = paint;
        this.f7871c = CustomDeviceManager.CALL_SCREEN_ALL;
        this.f = new RectF();
        this.f7875h = new D0.e(this, 2);
        this.f7876i = new C0598i1(this);
        this.f7872d = z4;
        paint.setStyle(Paint.Style.STROKE);
        paint.setStrokeCap(Paint.Cap.ROUND);
        this.f7870b = colorStateList;
        int defaultColor = colorStateList.getDefaultColor();
        this.f7874g = defaultColor;
        paint.setColor(defaultColor);
        this.f7873e = 0;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint = this.f7869a;
        SeslProgressBar seslProgressBar = this.f7877j;
        paint.setStrokeWidth(seslProgressBar.f3446e);
        int alpha = paint.getAlpha();
        int i5 = this.f7871c;
        paint.setAlpha(((i5 + (i5 >>> 7)) * alpha) >>> 8);
        paint.setAntiAlias(true);
        RectF rectF = this.f;
        int i6 = seslProgressBar.f3446e;
        int i7 = seslProgressBar.f;
        rectF.set((i6 / 2.0f) + i7, (i6 / 2.0f) + i7, (seslProgressBar.getWidth() - (seslProgressBar.f3446e / 2.0f)) - seslProgressBar.f, (seslProgressBar.getWidth() - (seslProgressBar.f3446e / 2.0f)) - seslProgressBar.f);
        int i8 = seslProgressBar.f3461v - seslProgressBar.f3459t;
        float f = i8 > 0 ? (this.f7873e - r0) / i8 : 0.0f;
        canvas.save();
        if (this.f7872d) {
            canvas.drawArc(rectF, 270.0f, 360.0f, false, paint);
        } else {
            canvas.drawArc(rectF, 270.0f, f * 360.0f, false, paint);
        }
        canvas.restore();
        paint.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f7875h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Paint paint = this.f7869a;
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
        int colorForState = this.f7870b.getColorForState(iArr, this.f7874g);
        if (this.f7874g != colorForState) {
            this.f7874g = colorForState;
            this.f7869a.setColor(colorForState);
            invalidateSelf();
        }
        return zOnStateChange;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i5) {
        this.f7871c = i5;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        this.f7869a.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        super.setTintList(colorStateList);
        if (colorStateList != null) {
            this.f7870b = colorStateList;
            int defaultColor = colorStateList.getDefaultColor();
            this.f7874g = defaultColor;
            this.f7869a.setColor(defaultColor);
            invalidateSelf();
        }
    }
}
