package k;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public final class V0 implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7760a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ W0 f7761b;

    public /* synthetic */ V0(W0 w02, int i5) {
        this.f7760a = i5;
        this.f7761b = w02;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f7760a) {
            case 0:
                int iFloatValue = (int) ((Float) valueAnimator.getAnimatedValue()).floatValue();
                W0 w02 = this.f7761b;
                w02.f7766e = iFloatValue;
                w02.invalidateSelf();
                break;
            default:
                int iFloatValue2 = (int) ((Float) valueAnimator.getAnimatedValue()).floatValue();
                W0 w03 = this.f7761b;
                w03.f7766e = iFloatValue2;
                w03.invalidateSelf();
                break;
        }
    }
}
