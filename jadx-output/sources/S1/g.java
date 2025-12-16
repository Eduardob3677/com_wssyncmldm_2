package S1;

import android.graphics.Canvas;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class g extends P1.g {

    /* renamed from: A, reason: collision with root package name */
    public static final /* synthetic */ int f2479A = 0;

    /* renamed from: z, reason: collision with root package name */
    public f f2480z;

    public g(f fVar) {
        super(fVar);
        this.f2480z = fVar;
    }

    @Override // P1.g
    public final void f(Canvas canvas) {
        if (this.f2480z.f2478v.isEmpty()) {
            super.f(canvas);
            return;
        }
        canvas.save();
        canvas.clipOutRect(this.f2480z.f2478v);
        super.f(canvas);
        canvas.restore();
    }

    @Override // P1.g, android.graphics.drawable.Drawable
    public final Drawable mutate() {
        this.f2480z = new f(this.f2480z);
        return this;
    }

    public final void o(float f, float f5, float f6, float f7) {
        RectF rectF = this.f2480z.f2478v;
        if (f == rectF.left && f5 == rectF.top && f6 == rectF.right && f7 == rectF.bottom) {
            return;
        }
        rectF.set(f, f5, f6, f7);
        invalidateSelf();
    }
}
