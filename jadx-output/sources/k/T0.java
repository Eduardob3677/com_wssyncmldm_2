package k;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class T0 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7734a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ U0 f7735b;

    public /* synthetic */ T0(U0 u0, int i5) {
        this.f7734a = i5;
        this.f7735b = u0;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f7734a) {
            case 0:
                float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                U0 u0 = this.f7735b;
                u0.f7736a.setStrokeWidth(fFloatValue);
                u0.f7737b = fFloatValue / 2.0f;
                u0.invalidateSelf();
                break;
            default:
                float fFloatValue2 = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                U0 u02 = this.f7735b;
                u02.f7736a.setStrokeWidth(fFloatValue2);
                u02.f7737b = fFloatValue2 / 2.0f;
                u02.invalidateSelf();
                break;
        }
    }
}
